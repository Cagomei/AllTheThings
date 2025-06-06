-- App locals
local appName, app = ...;
local GetProgressColorText = app.Modules.Color.GetProgressColorText;

-- Global locals
local ipairs, pairs, time, tinsert, tremove, tsort =
	  ipairs, pairs, time, tinsert, tremove, table.sort;
local BNGetInfo, BNSendGameData, C_BattleNet, C_ChatInfo = 
	  BNGetInfo, BNSendGameData, C_BattleNet, C_ChatInfo;
-- NOTES: BNGetFriendInfo and BNGetNumFriends are useless

-- Temporary cache variables (these get replaced in OnLoad!)
local AccountWideData, CharacterData, CurrentCharacter, LinkedCharacters, OnlineAccounts, SilentlyLinkedCharacters = {}, {}, {}, {}, {}, {}

-- Module locals
local AddonMessagePrefix, MESSAGE_HANDLERS, EnableBattleNet = "ATTSYNC", {}, true;
local uid, pendingReceiveChunksForUser, pendingSendChunksForUser, pendingSendResponsesForUser = 1, {}, {}, {};
local function ProcessSendChunks()
	local any;
	repeat
		repeat
			any = false;
			for key,user in pairs(pendingSendChunksForUser) do
				for uid,pendingChunk in pairs(user) do
					-- Acquire the cooldown and see if we're still on cooldown.
					local cooldown = pendingChunk.cooldown;
					if cooldown > time() then
						-- We're still on cooldown. Don't do anything this cycle.
					else
						-- Off cooldown! do something!
						local acks = pendingChunk.acks;
						local chunks = pendingChunk.chunks;
						local chunkCount = #chunks;
						local finished = true;
						for i=1,chunkCount,1 do
							if not acks[i] then
								-- We found one that hasn't been acknowledged yet.
								pendingChunk.method(pendingChunk.target, "chunk`" .. pendingChunk.uid .. "`" .. i .. "`" .. chunkCount .. "`" .. chunks[i]);
								app:GetWindow("Account Management"):Rebuild();
								finished = false;
								break;
							end
						end
						if finished then
							user[uid] = nil;
							app:GetWindow("Account Management"):Rebuild();
						else
							-- Reset the cooldown
							pendingChunk.cooldown = time() + 10;
						end
					end
					any = true;
					break;
				end
				if any then
					break;
				else
					pendingSendChunksForUser[key] = nil;
				end
			end
			coroutine.yield();
		until(not any);
		for key,user in pairs(pendingSendResponsesForUser) do
			for uid,pendingResponse in pairs(user) do
				local responses = pendingResponse.responses;
				local responseCount = #responses;
				local index = pendingResponse.index;
				local response = responses[index];
				pendingResponse.method(pendingResponse.target, response.detail, response.msg);
				if index == responseCount then
					user[uid] = nil;
				else
					index = index + 1;
					pendingResponse.index = index;
				end
				any = true;
			end
			if any then
				break;
			else
				pendingSendResponsesForUser[key] = nil;
			end
		end
		coroutine.yield();
	until(not any);
end
local function QueueSendChunks(method, target, detail, chunks)
	local pending = pendingSendChunksForUser[target];
	if not pending then
		pending = {};
		pendingSendChunksForUser[target] = pending;
	end
	local pendingChunk = {
		method = method,
		target = target,
		chunks = chunks,
		detail = detail or UNKNOWN,
		cooldown = 0,
		acks = {},
		uid = uid,
	};
	pending[uid] = pendingChunk;
	uid = uid + 1;
	app:StartATTCoroutine("Sync_ProcessSendChunks", ProcessSendChunks);
end
local function SortByResponseLength(a, b)
	local amsg = a.msg;
	local bmsg = b.msg;
	return amsg and bmsg and #amsg < #bmsg;
end
local function QueueSendResponses(method, target, responses)
	local pending = pendingSendResponsesForUser[target];
	if not pending then
		pending = {};
		pendingSendResponsesForUser[target] = pending;
	end
	local pendingResponse = {
		method = method,
		target = target,
		responses = responses,
		index = 1,
	};
	tsort(responses, SortByResponseLength);
	pending[uid] = pendingResponse;
	uid = uid + 1;
	app:StartATTCoroutine("Sync_ProcessSendChunks", ProcessSendChunks);
end
local function ReceiveChunk(method, sender, uid, chunkIndex, chunkCount, chunk)
	local pending = pendingReceiveChunksForUser[sender];
	if not pending then
		pending = {};
		pendingReceiveChunksForUser[sender] = pending;
	end
	local data = pending[uid];
	if not data then
		data = {};
		data.chunks = {};
		data.count = chunkCount;
		pending[uid] = data;
	end
	local chunks = data.chunks;
	chunks[chunkIndex] = chunk;
	method(sender, "Ack " .. uid, "ack," .. uid .. "," .. chunkIndex);
	if chunkCount > 1 then
		app.print("Syncing Data Chunk [" .. uid .. "] " .. chunkIndex .. " of " .. chunkCount .. "...");
		app:GetWindow("Account Management"):Rebuild();
	end
	
	-- Check if we're finished
	local count = 0;
	for key,ignored in pairs(chunks) do
		count = count + 1;
	end
	if count >= chunkCount then
		-- Oh hey we have all of the chunks! Build the message!
		local message = chunks[1];
		for i=2,chunkCount,1 do
			message = message .. chunks[i];
		end
		if chunkCount > 1 then
			app.print("Finished Syncing Data Chunk [" .. uid .. "]!");
			app:GetWindow("Account Management"):Rebuild();
		end
		pending[uid] = nil;
		
		-- Check to see if there are any pending receives remaining
		local any = false;
		for uid,chunks in pairs(pending) do
			if chunks then
				any = true;
				break;
			end
		end
		if not any then pendingReceiveChunksForUser[sender] = nil; end
		return message;
	end
end
local function SendMessageChunks(method, target, detail, msg, chunksize)
	-- Convert the message table to a string if necessary
	if type(msg) == "table" then
		if #msg < 1 then return false; end
		local str = msg[1];
		for i,cmd in ipairs(msg) do
			str = str .. "," .. cmd;
		end
		msg = str;
	end
	local encodedLength = msg:len();
	if encodedLength > chunksize then
		-- When the message exceeds the length, we have to cut it into sections and deliver it as a set of chunks.
		--print("Encoded Message exceeded maximum (" .. chunksize .. "): ", encodedLength);
		local chunks = {};
		chunksize = chunksize - 32;
		for i=1,encodedLength,chunksize do
			local chunk;
			local j = i + chunksize - 1;
			if j >= encodedLength then
				chunk = msg:sub(i, encodedLength);
			else
				chunk = msg:sub(i, j);
			end
			tinsert(chunks, chunk);
		end
		QueueSendChunks(method, target, detail, chunks);
		--print("Generated " .. #chunks .. " chunks for encoded string!");
	else
		method(target, msg);
	end
end
local function _SendAddonMessage(target, msg)
	C_ChatInfo.SendAddonMessage(AddonMessagePrefix, msg, "WHISPER", target);
end
local function SendAddonMessage(target, detail, msg)
	SendMessageChunks(_SendAddonMessage, target, detail, msg, 255);
end
local function _SendBattleNetMessage(target, msg)
	BNSendGameData(target, AddonMessagePrefix, msg);
end
local function SendBattleNetMessage(target, detail, msg)
	SendMessageChunks(_SendBattleNetMessage, target, detail, msg, 4086);
end
local function SplitString(separator, text)
    local sep, res = separator or '%s', {}
    text:gsub('[^'..sep..']+', function(x) res[#res+1] = x end);
    return res;
end
local function UpdateBattleTags()
	-- Attempt to cache each character's battleTag if it is missing.
	if C_BattleNet then
		for guid,character in pairs(CharacterData) do
			if not character.battleTag then
				-- We haven't updated this character since the patch, look it up!
				local accountInfo = C_BattleNet.GetAccountInfoByGUID(guid);
				if accountInfo then character.battleTag = accountInfo.battleTag; end
			end
		end
	end
end
local function UpdateOnlineAccounts()
	wipe(OnlineAccounts);
	if C_BattleNet then
		for guid,character in pairs(CharacterData) do
			local gameAccountInfo = C_BattleNet.GetGameAccountInfoByGUID(guid);
			if gameAccountInfo then
				local gameAccountID = gameAccountInfo.gameAccountID;
				if gameAccountID then
					--print(character.text, gameAccountID);
					character.gameAccountID = gameAccountID;
					SilentlyLinkedCharacters[gameAccountID] = true;
					if character ~= CurrentCharacter then
						OnlineAccounts[gameAccountID] = character;
					end
				end
			end
		end
	end
end

local function SendCharacterMessage(character, detail, msg)
	if character then
		local gameAccountID = character.gameAccountID;
		if BNSendGameData and gameAccountID and EnableBattleNet then
			SendBattleNetMessage(gameAccountID, detail, msg);
		elseif character.realm == CurrentCharacter.realm and character.factionID == CurrentCharacter.factionID then
			SendAddonMessage(character.name, detail, msg);
		end
	end
end
local function BroadcastMessage(detail, msg)
	-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
	CurrentCharacter.lastPlayed = time();
	
	-- Cache some things related to BattleNet.
	UpdateBattleTags();
	UpdateOnlineAccounts();
	
	-- Check for online accounts and send them the check message.
	local sent = {};
	for key,character in pairs(OnlineAccounts) do
		local guid = character.guid;
		if guid and not sent[guid] then
			SendCharacterMessage(character, detail, msg);
			if character.name and character.realm == CurrentCharacter.realm then sent[character.name] = true; end
			sent[guid] = true;
		end
	end
	
	-- Check to see if we have any linked accounts
	local any = false;
	for playerName,allowed in pairs(LinkedCharacters) do
		if allowed then
			any = true;
			break;
		end
	end
	if any then
		-- Cache characters by their names.
		local characterByInfo = {};
		for guid,character in pairs(CharacterData) do
			local name = character.name;
			if name and character.realm == CurrentCharacter.realm then characterByInfo[name] = character; end
			SilentlyLinkedCharacters[guid] = true;
			characterByInfo[guid] = character;
		end
		
		-- Now send to any explicitly linked accounts.
		for identifier,allowed in pairs(LinkedCharacters) do
			if allowed then
				local character = characterByInfo[identifier];
				if character then
					local guid = character.guid;
					if not sent[guid] then
						SendCharacterMessage(character, detail, msg);
						sent[guid] = true;
					end
				elseif not sent[identifier] then
					sent[identifier] = true;
					SendAddonMessage(identifier, detail, msg);
				end
			end
		end
	end
end
local function ProcessAddonMessageText(self, sender, text, responses)
	for i,message in ipairs(SplitString("~", text)) do
		local content = SplitString(",", message);
		local handler = MESSAGE_HANDLERS[content[1]];
		if handler then
			--print("HANDLER[" .. content[1]  .. "]:", message);
			handler(self, sender, content, responses);
		else
			print("Undefined handler", message);
		end
	end
end
local function ProcessAddonMessageMethod(self, method, sender, text)
	-- Check for chunks, which are gigantic sets of data.
	if text:sub(1, 6) == "chunk`" then
		local content = SplitString("`", text);
		local uid, chunkIndex, chunkCount, chunk = 
			tonumber(content[2]), tonumber(content[3]), tonumber(content[4]), content[5];
		
		-- If we have finished receiving chunks for this UID, then return a text!
		text = ReceiveChunk(method, sender, uid, chunkIndex, chunkCount, chunk);
		if not text then return; end
	end
	
	-- Process the addon message and send back a response. (or several)
	local responses = {};
	ProcessAddonMessageText(self, sender, text, responses);
	if #responses > 0 then QueueSendResponses(method, sender, responses); end
end

-- Account Wide Data handlers
local function DefaultAccountWideDataHandler(data, key)
	if type(data) == "table" then
		wipe(data);
		for guid,character in pairs(CharacterData) do
			local characterData = character[key];
			if characterData then
				for index,_ in pairs(characterData) do
					data[index] = 1;
				end
			end
		end
	end
end
local AccountWideDataHandlers = setmetatable({
	Deaths = function(data)
		local deaths = 0;
		for guid,character in pairs(CharacterData) do
			if character.Deaths then
				deaths = deaths + character.Deaths;
			end
		end
		AccountWideData.Deaths = deaths;
	end,
	IGNORE_QUEST_PRINT = app.EmptyFunction,
}, {
	__index = function(t, key)
		return DefaultAccountWideDataHandler;
	end,
});
local function RecalculateAccountWideData()
	app.print("Recalculating Account Data...");
	for key,data in pairs(AccountWideData) do
		AccountWideDataHandlers[key](data, key);
	end
	app.print("Account Data Recalculated successfully.");
end
local function DeserializeSequentialKeys(str)
	local values = SplitString(":", str);
	local keys = {};
	for i=1,#values,1 do
		local a,b = (">"):split(values[i]);
		if b then
			a = tonumber(a);
			b = tonumber(b);
			if (b - a) > 100000 then
				app:ShowPopupDialogWithMultiLineEditBox("Rather than explode your RAM, Crieve decided instead to have you report this string of data to him for a fix.\n\nApologies for the inconvenience.\n\n" .. str, nil, "A parsing error occured during the sync process.");
				break;
			end
			for j=a,b,1 do
				keys[#keys + 1] = j;
			end
		else
			keys[#keys + 1] = tonumber(a);
		end
	end
	return keys;
end
local function SerializeSequentialKeys(keys)
	table.sort(keys);
	local rangeStart = keys[1];
	local nextValue = rangeStart;
	local str = "" .. rangeStart;
	for i,value in ipairs(keys) do
		if value ~= nextValue then
			nextValue = nextValue - 1;
			if value ~= nextValue then
				if rangeStart ~= nextValue then
					str = str .. ">" .. nextValue;
				end
				str = str .. ":" .. value;
				rangeStart = value;
			end
		end
		nextValue = value + 1;
	end
	if nextValue > rangeStart then
		nextValue = nextValue - 1;
		if rangeStart ~= nextValue then
			str = str .. ">" .. nextValue;
		end
	end
	--[[
	print(str);
	-- /dump ATTC.SerializeSequentialKeys({1,2,3,4,5,6,7,8,0,10,11,12,13,14,-9999,123,-12313,-1235,-56,-99,-1,98935,2342,111,123})
	local newkeys = DeserializeSequentialKeys(str);
	local dict = {};
	for i,o in ipairs(newkeys) do
		dict[o] = true;
	end
	local fails;
	for i,o in ipairs(keys) do
		if not dict[o] then
			fails = (fails and (fails .. ", ") or "FAILED: ") .. o;
		end
	end
	if fails then
		print("SERIALIZATION CHECK", fails);
	end
	]]--
	return str;
end
function ShowSerializationDebugger()
	app:ShowPopupDialogWithMultiLineEditBox("Serialization Debugger", function(text)
		text = text:gsub("    ", "\t");	-- The WoW UI converts tab characters into 4 spaces in the English Client.
		DevTools_Dump(DeserializeSequentialKeys(text));
	end);
end
app.RecalculateAccountWideData = RecalculateAccountWideData;
app.DeserializeSequentialKeys = DeserializeSequentialKeys;
app.SerializeSequentialKeys = SerializeSequentialKeys;
app.ShowSerializationDebugger = ShowSerializationDebugger;

-- Data Handling
local maxTimeStamp = 9999999999999;
local ignoreField = app.EmptyFunction;
local typeList = { "number", "table", "string", "boolean" };
local typeListIDForType = {};
for i,t in ipairs(typeList) do
	typeListIDForType[t] = i;
end
local defaultDeserializer = function(field, currentValue, data)
	if #data > 1 then
		print("DEFAULT DESERIALIZER ENCOUNTERED MORE THAN ONE DATA FOR FIELD");
		print("  ", field, #data);
		for i=1,#data,1 do
			print("   ", data[i]);
		end
		return;
	end
	--print("PARSE: ", field .. " (DEFAULT)", data[1]);
	local values = SplitString(":", data[1]);
	local t = typeList[tonumber(values[1])];
	if not t then
		print("DEFAULT DESERIALIZER ENCOUNTERED UNHANDLED DATA TYPE");
		print("  ", field, values[1], t);
		return;
	end
	--print("PARSE: ", field .. " (DEFAULT) [" .. t .. "]", select(2, unpack(values)));
	if t == "number" then
		return tonumber(values[2]);
	elseif t == "boolean" then
		return values[2] == "1";
	elseif t == "string" then
		return values[2];
	elseif t == "table" then
		local totalValues = #values;
		if currentValue then
			wipe(currentValue);
		else
			currentValue = {};
		end
		for i=2,totalValues,1 do
			local a,b = (">"):split(values[i]);
			if b then
				a = tonumber(a);
				b = tonumber(b);
				if (b - a) > 100000 then
					app:ShowPopupDialogWithMultiLineEditBox("Rather than explode your RAM, Crieve decided instead to have you report this string of data to him for a fix.\n\nApologies for the inconvenience.\n\n" .. data[1], nil, "A parsing error occured during the sync process.");
					break;
				end
				for j=a,b,1 do
					currentValue[j] = 1;
				end
			else
				currentValue[tonumber(a)] = 1;
			end
		end
		return currentValue;
	else
		print("DEFAULT DESERIALIZER ENCOUNTERED UNHANDLED DATA TYPE");
		print("  ", field, values[1], t);
	end
end
local defaultSerializer = function(field, value, timeStamp, lastUpdated)
	local t = type(value);
	if not field or type(field) == "function" then
		print("defaultSerializer NIL FIELD?!", field, value, timeStamp, lastUpdated);
		return;
	end
	if type(field) == "function" then
		print("defaultSerializer FIELD IS A FUNCTION?!", field, value, timeStamp, lastUpdated);
		return;
	end
	local typeListID = typeListIDForType[t];
	if typeListID then
		if t == "table" then
			-- If the data isn't new, don't bother resending it.
			if timeStamp and lastUpdated >= timeStamp then
				return;
			end
			
			local keys = {};
			for index,v in pairs(value) do
				if v and index then tinsert(keys, tonumber(index)); end
			end
			if #keys > 0 then
				return field .. ";" .. typeListID .. ":" .. SerializeSequentialKeys(keys);
			end
		elseif t == "boolean" then
			if value then
				return field .. ";" .. typeListID .. ":1";
			else
				-- We don't write falses
				return;
			end
		elseif value == nil then
			print(field, "was nil?!");
		else
			return field .. ";" .. typeListID .. ":" .. value;
		end
	end
end
local deserializers = {
	ActiveSkills = function(field, currentValue, data)
		if currentValue then
			wipe(currentValue);
		else
			currentValue = {};
		end
		local count = #data;
		for i=1,count,1 do
			local skillString = data[i];
			local spellID,value,total = (":"):split(skillString);
			currentValue[tonumber(spellID)] = { tonumber(value), tonumber(total) };
		end
		return currentValue;
	end,
	gameAccountID = ignoreField,	-- This is a per-account setting, based on session context.
	guid = ignoreField,				-- This is a no-brainer, already have it.
	ignored = ignoreField,			-- This is a per-account setting
	Lockouts = function(field, currentValue, data)
		if currentValue then
			wipe(currentValue);
		else
			currentValue = {};
		end
		local count = #data;
		for i=1,count,1 do
			-- Build the instance container.
			local instance, instanceData = {}, SplitString("@", data[i]);
			local savedInstanceID = instanceData[1]:gsub("%%3A", ":"):gsub("%%2C", ",");
			local id = tonumber(savedInstanceID);
			if tostring(id) == savedInstanceID then
				savedInstanceID = id;
			end
			currentValue[savedInstanceID] = instance;
			
			-- Now iterate over the different difficulties
			local dataCount = #instanceData;
			for j=2,dataCount,1 do
				-- Parse the difficulty.
				local difficulty, difficultyData = {}, SplitString(":", instanceData[j]);
				local difficultyID = difficultyData[1];
				if difficultyID ~= "shared" then difficultyID = tonumber(difficultyID); end
				instance[difficultyID] = difficulty;
				
				-- Assign the simple data.
				difficulty.id = tonumber(difficultyData[2]);
				difficulty.reset = tonumber(difficultyData[3]);
				
				-- Iterate over the encounters (name/number pairs)
				local encounters = {};
				difficulty.encounters = encounters;
				local encounterCount = #difficultyData;
				for k=4,encounterCount,2 do
					local encounterName = difficultyData[k]:gsub("%%3A", ":"):gsub("%%2C", ",");
					tinsert(encounters, {
						name = encounterName,
						isKilled = difficultyData[k + 1] == "1" and true or false
					});
				end
			end
		end
		return currentValue;
	end,
	PrimeData = function(field, currentValue, data)
		if currentValue then
			wipe(currentValue);
		else
			currentValue = {};
		end
		local progress,total,modeString = (":"):split(data[1]);
		currentValue.progress = tonumber(progress);
		currentValue.total = tonumber(total);
		currentValue.modeString = modeString;
		return currentValue;
	end,
	Summary = function(field, currentValue, data, character)
		character.battleTag = data[1];
		character.text = data[2];
		character.name = data[3];
		character.realm = data[4];
		character.factionID = tonumber(data[5]);
		character.lvl = tonumber(data[6]);
		character.classID = tonumber(data[7]);
		character.class = data[8];
		character.raceID = tonumber(data[9]);
		character.lastPlayed = tonumber(data[10]);
		character.Deaths = tonumber(data[11]);
	end,
	TimeStamps = function(field, currentValue, data)
		if not currentValue then
			currentValue = {};
		end
		for i=1,#data,1 do
			local tableName,lastUpdated = (":"):split(data[i]);
			currentValue[tableName] = tonumber(lastUpdated);
		end
		return currentValue;
	end
};
local serializers = {
	ActiveSkills = function(field, value, timeStamp, lastUpdated)
		local any, str = false, field;
		for skillID,skill in pairs(value) do
			str = str .. ";" .. skillID .. ":" .. skill[1] .. ":" .. skill[2];
			any = true;
		end
		if any then return str; end
	end,
	gameAccountID = ignoreField,
	guid = ignoreField,
	Lockouts = function(field, value, timeStamp, lastUpdated)
		local any, str = false, field;
		for savedInstanceID,difficulties in pairs(value) do
			-- Escape commas and colons from isntance names.
			str = str .. ";" .. tostring(savedInstanceID):gsub(":", "%%3A"):gsub(",", "%%2C");
			any = true;
			for difficultyID,difficulty in pairs(difficulties) do
				str = str .. 
					"@" .. difficultyID ..
					":" .. (difficulty.id or 0) ..
					":" .. (difficulty.reset or 0);
				local encounters = difficulty.encounters;
				if encounters then
					for i,encounter in ipairs(encounters) do
						-- Escape commas and colons from encounter names.
						str = str .. 
							":" .. encounter.name:gsub(":", "%%3A"):gsub(",", "%%2C") .. 
							":" .. (encounter.isKilled and 1 or 0);
					end
				end
			end
		end
		
		-- Encounter names might have commas or colons in them, use URL escaping to prevent it.
		if any then return str; end
	end,
	PrimeData = function(field, value)
		return field .. ";" .. value.progress .. ":" .. value.total .. ":" .. value.modeString;
	end,
	TimeStamps = function(field, value, timeStamp, lastUpdated)
		local any, str = false, field;
		if not lastUpdated or lastUpdated == 0 then
			for tableName,ts in pairs(value) do
				str = str .. ";" .. tableName .. ":" .. ts;
				any = true;
			end
		else
			for tableName,ts in pairs(value) do
				if timeStamp >= ts then
					str = str .. ";" .. tableName .. ":" .. ts;
					any = true;
				end
			end
		end
		if any then return str; end
	end,
	
	-- The main data package containing the simple stuff.
	Summary = function(character, value)
		if value ~= nil then return; end	-- We don't want this to try to encode an invalid set of data.
		return "Summary;" .. (character.battleTag or "TAG") .. ";" .. (character.text or character.name or character.guid)
			.. ";" .. (character.name or character.guid) .. ";" .. (character.realm or "REALM")
			.. ";" .. (character.factionID or "1").. ";" .. (character.lvl or "1")
			.. ";" .. (character.classID or "1") .. ";" .. (character.class or "CLASS")
			.. ";" .. (character.raceID or "1") .. ";" .. (character.lastPlayed or "0") .. ";" .. (character.Deaths or "0");
	end,
	
	-- These are now included inside of "Summary" to compress the data package more.
	battleTag = ignoreField,
	text = ignoreField,
	name = ignoreField,
	realm = ignoreField,
	factionID = ignoreField,
	lvl = ignoreField,
	classID = ignoreField,
	raceID = ignoreField,
	class = ignoreField,
	race = ignoreField,
	lastPlayed = ignoreField,
	Deaths = ignoreField,
};
local function ReceiveCharacterSummary(self, sender, responses, guid, lastPlayed, shouldPrint)
	--print("ReceiveCharacterSummary", guid, lastPlayed, shouldPrint);
	if guid == app.GUID then return false; end
	local character = CharacterData[guid];
	if character then
		-- Check against the last played timestamp on the character
		local lastPlayedForCharacter = character.lastPlayed;
		if not lastPlayedForCharacter then
			-- No timestamp? This character might be corrupted.
			tinsert(responses, { detail = "Request " .. guid, msg = "request," .. guid });	-- Request Full Character Copy
		elseif lastPlayedForCharacter < lastPlayed then
			-- The timestamp is newer than the copy we have. Send anything that is new.
			tinsert(responses, { detail = "Update " .. character.text, msg = "request," .. guid .. "," .. lastPlayedForCharacter });	-- Request Diff
		elseif shouldPrint then
			-- Inform them that we have a newer version of the character than they do.
			tinsert(responses, { detail = "Up to Date " .. guid, msg = "uptodate," .. guid });
		end
	else
		-- We don't have the character in our character data table.
		tinsert(responses, { detail = "Request " .. guid, msg = "request," .. guid });	-- Request Full Character Copy
	end
end

-- Versioning
if C_MountJournal then
	local C_MountJournal_GetMountInfoByID = C_MountJournal.GetMountInfoByID;
	local C_MountJournal_GetMountIDs = C_MountJournal.GetMountIDs;
	AccountWideDataHandlers.Spells = function(data)
		DefaultAccountWideDataHandler(data, "Spells");
		local allMountIDs = C_MountJournal_GetMountIDs();
		if allMountIDs and #allMountIDs > 0 then
			for i,mountID in ipairs(allMountIDs) do
				local _, spellID, _, _, _, _, _, _, _, _, isCollected = C_MountJournal_GetMountInfoByID(mountID);
				if spellID and isCollected then data[spellID] = 1; end
			end
		end
	end
end
if C_PetJournal then
	local C_PetJournal_GetNumCollectedInfo = C_PetJournal.GetNumCollectedInfo;
	AccountWideDataHandlers.BattlePets = function(data)
		for speciesID,_ in pairs(app.SearchForFieldContainer("speciesID")) do
			if not data[speciesID] then
				local count = C_PetJournal_GetNumCollectedInfo(speciesID);
				if count and count > 0 then
					data[speciesID] = 1;
				end
			end
		end
	end
end
if C_ToyBox and app.GameBuildVersion >= 30000 then
	-- After the C_ToyBox API was added, nearly every toy became account wide learned.
	local PlayerHasToy = _G["PlayerHasToy"];
	AccountWideDataHandlers.Toys = function(data)
		for toyID,_ in pairs(app.SearchForFieldContainer("toyID")) do
			if not data[toyID] and PlayerHasToy(toyID) then
				data[toyID] = 1;
			end
		end
		for guid,character in pairs(CharacterData) do
			local characterData = character.Toys;
			if characterData then
				for index,_ in pairs(characterData) do
					data[index] = 1;
				end
			end
		end
	end
end
if C_TransmogCollection and app.GameBuildVersion >= 40000 then
	-- We no longer need to sync Transmog via Sources.
	AccountWideDataHandlers.Sources = ignoreField;
	deserializers.Sources = ignoreField;
	serializers.Sources = ignoreField;
end

-- Message Handlers
MESSAGE_HANDLERS.ack = function(self, sender, content, responses)
	local pending = pendingSendChunksForUser[sender];
	if not pending then return false; end
	local uid, chunkIndex = tonumber(content[2]), tonumber(content[3]);
	local pendingChunk = pending[uid];
	if not pendingChunk then return false; end
	pendingChunk.acks[chunkIndex] = true;
	pendingChunk.cooldown = 0;
end
MESSAGE_HANDLERS.check = function(self, sender, content, responses)
	-- Validate inputs. Battle Tag MUST be supplied and the account must be linked!
	local battleTag, isResponding = content[2], content[3];
	if not battleTag then return false; end
	if not LinkedCharacters[battleTag] then
		return false;
	else
		-- White list any future communications with this sender for the rest of the session.
		getmetatable(LinkedCharacters).__index[sender] = true;
	end
	
	-- Clear out any pending chunks for the sender. (so it doesn't get malformed)
	pendingReceiveChunksForUser[sender] = nil;
	pendingSendChunksForUser[sender] = nil;
	
	-- If this wasn't sent as a response to a check request, send our own check request!
	if not isResponding then
		tinsert(responses, { detail = "Checking", msg = "check," .. CurrentCharacter.battleTag .. ",1" });
	end
	
	-- Generate the sync string
	local response, chars = "chars," .. CurrentCharacter.guid .. ":" .. CurrentCharacter.lastPlayed, { [CurrentCharacter.guid] = true };
	for guid,character in pairs(CharacterData) do
		if character.lastPlayed and not character.ignored and not chars[guid] then
			response = response .. "," .. guid .. ":" .. character.lastPlayed;
			chars[guid] = true;
		end
	end
	tinsert(responses, { detail = "Character List", msg = response });
	return true;
end
MESSAGE_HANDLERS.char = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	local guid, lastPlayed = (":"):split(content[2]);
	ReceiveCharacterSummary(self, sender, responses, guid, tonumber(lastPlayed) or 0, true);
end
MESSAGE_HANDLERS.chars = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	for i=2,#content,1 do
		local guid, lastPlayed = (":"):split(content[i]);
		ReceiveCharacterSummary(self, sender, responses, guid, tonumber(lastPlayed) or 0, false);
	end
end
MESSAGE_HANDLERS.link = function(self, sender, content, responses)
	-- Validate inputs. Battle Tag MUST be supplied and the account must be linked!
	local battleTag = content[2];
	if not battleTag then return false; end
	if not LinkedCharacters[battleTag] then
		return false;
	else
		-- White list any future communications with this sender for the rest of the session.
		getmetatable(LinkedCharacters).__index[sender] = true;
	end
	
	-- Generate the linked string, which gets the character ready on the other end and connects the bnet account
	tinsert(responses, { detail = CurrentCharacter.text, msg = "linked," .. CurrentCharacter.guid .. "," .. CurrentCharacter.text .. "," .. CurrentCharacter.lastPlayed });
	return true;
end
MESSAGE_HANDLERS.linked = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	
	-- Parse the linked string.
	local guid = content[2];
	local text = content[3];
	local lastPlayed = tonumber(content[4]);
	
	-- Check for a Character
	local character = CharacterData[guid];
	if not character then
		character = { text = text, guid = guid, lastPlayed = 0 };
		CharacterData[guid] = character;
		
		-- Update Battle.net stuff.
		UpdateBattleTags();
		UpdateOnlineAccounts();
		SendCharacterMessage(character, text, "check," .. CurrentCharacter.battleTag);
	else
		app.print("Already linked with " .. (character.text or guid) .. ".");
	end
	return true;
end
MESSAGE_HANDLERS.rawchar = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	local guid = content[2];
	if not guid then return false; end
	tremove(content, 1);
	tremove(content, 1);
	
	-- Parse the content
	local fieldCount = #content;
	if fieldCount < 1 then
		return false;
	end
	
	-- Now cache the character and update!
	local character = CharacterData[guid];
	if not character then
		character = {};
		character.guid = guid;
	end
	
	-- Parse each of the fields.
	for i=1,fieldCount,1 do
		local fieldDataString = content[i];
		local fieldData = SplitString(";", fieldDataString);
		local fieldName = fieldData[1];
		tremove(fieldData, 1);
		local data = (deserializers[fieldName] or defaultDeserializer)(fieldName, character[fieldName], fieldData, character);
		if data then character[fieldName] = data; end
	end
	
	-- Notify the player.
	CharacterData[guid] = character;
	
	-- Cache some things related to BattleNet.
	UpdateBattleTags();
	UpdateOnlineAccounts();
	local accountCharacter = sender and OnlineAccounts[sender];
	app.print("Updated " .. (character.text or "??") .. " from " .. (accountCharacter and accountCharacter.text or sender) .. "!");
	
	-- Update the Sync Window!
	RecalculateAccountWideData();
	self:Update(true);
end
MESSAGE_HANDLERS.request = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	local guid, lastUpdated = content[2], content[3];
	if lastUpdated then
		lastUpdated = tonumber(lastUpdated);
	else
		lastUpdated = 0;
	end
	if not guid then return false; end
	--print("request", guid, lastUpdated);
	
	-- Cache the character
	local character = CharacterData[guid];
	if not character then return false; end
	
	-- Ensure the TimeStamps field exists.
	local timeStamps = character.TimeStamps;
	if not timeStamps then
		timeStamps = {};
		character.TimeStamps = timeStamps;
	end
	
	-- Iterate through the fields for the character.
	local skip, rawData = true, "rawchar," .. guid;
	local str = serializers.Summary(character);
	if str then rawData = rawData .. "," .. str; end
	for field,value in pairs(character) do
		local str = (serializers[field] or defaultSerializer)(field, value, timeStamps[field] or maxTimeStamp, lastUpdated);
		if str then rawData = rawData .. "," .. str; end
	end
	tinsert(responses, { detail = character.text, msg = rawData });
end
MESSAGE_HANDLERS.uptodate = function(self, sender, content, responses)
	if not LinkedCharacters[sender] then return false; end
	local guid = content[2];
	if guid then
		local character = CharacterData[guid];
		if character then print(character.text .. " is already up-to-date."); end
	end
end

-- Helper Functions
local function OnClickForCharacter(row, button)
	local guid = row.ref.guid;
	if not guid then return true; end
	local character = CharacterData[guid];
	if not character then return true; end
	if button == "RightButton" then
		if IsAltKeyDown() then
			character.ignored = not character.ignored;
			row:GetParent():GetParent():Rebuild();
		else
			app:ShowPopupDialog("CHARACTER DATA: " .. (character.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
			function()
				CharacterData[guid] = nil;
				RecalculateAccountWideData();
				row:GetParent():GetParent():Rebuild();
			end);
		end
	elseif button == "LeftButton" then
		BroadcastMessage(character.text, "char," .. character.guid .. "," .. character.lastPlayed);
	end
	return true;
end
local function OnClickForLinkedAccount(row, button)
	local identifier = row.ref.datalink;
	if not identifier then return true; end
	
	if button == "RightButton" then
		app:ShowPopupDialog("LINKED ACCOUNT: " .. (row.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
		function()
			LinkedCharacters[identifier] = nil;
			row:GetParent():GetParent():Rebuild();
		end);
	else
		--print("SynchronizeWithLinkedCharacter", identifier);
		
		-- Cache characters by their names.
		local characterByInfo = {};
		for guid,character in pairs(CharacterData) do
			local name = character.name;
			if name then characterByInfo[name] = character; end
			characterByInfo[guid] = character;
		end
		
		-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
		CurrentCharacter.lastPlayed = time();
		
		-- Now send to any explicitly linked accounts.
		local character = characterByInfo[identifier];
		if character then
			SendCharacterMessage(character, character.text, "check," .. CurrentCharacter.battleTag);
		else
			SendAddonMessage(identifier, "Check " .. identifier, "check," .. CurrentCharacter.battleTag);
		end
	end
	return true;
end
local function OnClickForSyncQueue(row, button)
	local identifier = row.ref.text;
	if not identifier then return true; end
	
	if button == "RightButton" then
		app:ShowPopupDialog("SYNC QUEUE: " .. (row.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
		function()
			pendingReceiveChunksForUser[identifier] = nil;
			pendingSendChunksForUser[identifier] = nil;
			row:GetParent():GetParent():Rebuild();
		end);
	end
	return true;
end
local function OnTooltipForCharacter(t, tooltipInfo)
	local character = CharacterData[t.unit];
	if character then
		local primeData = character.PrimeData;
		if primeData then
			tinsert(tooltipInfo, {
				left = primeData.modeString,
				r = 1, g = 1, b = 1
			});
			tinsert(tooltipInfo, {
				progress = GetProgressColorText(primeData.progress, primeData.total),
			});
		end
		
		local total = 0;
		local timestamps = character.TimeStamps;
		for i,field in ipairs({ "Achievements", "BattlePets", "Exploration", "Factions", "FlightPaths", "Spells", "Titles", "Toys", "Transmog", "Quests" }) do
			local values = character[field];
			if values then
				local subtotal = 0;
				for key,value in pairs(values) do
					if value then
						subtotal = subtotal + 1;
					end
				end
				total = total + subtotal;
				local t = timestamps[field];
				tinsert(tooltipInfo, {
					left = field .. " |cffaaaaaa(" .. (t and date("%Y-%m-%d", t) or "??" ) .. ")|r",
					right = tostring(subtotal),
					r = 1, g = 1, b = 1
				});
			end
		end
		tinsert(tooltipInfo, { left = " " });
		tinsert(tooltipInfo, {
			left = "Total",
			right = tostring(total),
			r = 1, g = 0.8, b = 0.8
		});
		tinsert(tooltipInfo, {
			left = "Left Click to Sync this Character",
			r = 0.8, g = 1, b = 0.8
		});
		tinsert(tooltipInfo, {
			left = "Right Click to Delete this Character",
			r = 1, g = 0.8, b = 0.8
		});
		if character.ignored then
			tinsert(tooltipInfo, {
				left = "Alt-Right Click to Unignore this Character",
				r = 1, g = 0.8, b = 0.8
			});
			tinsert(tooltipInfo, { left = " " });
			tinsert(tooltipInfo, {
				left = "Ignored Characters will not appear in the tooltip when using 'Show Other Characters' nor will they be sync'd with your other accounts. Characters from other accounts that are ignored on your current account will still receive updates from your other accounts.",
				r = 1, g = 1, b = 1, wrap = true
			});
		else
			tinsert(tooltipInfo, {
				left = "Alt-Right Click to Ignore this Character",
				r = 1, g = 0.8, b = 0.8
			});
		end
	end
end
local function OnTooltipForLinkedAccount(t, tooltipInfo)
	if t.unit then
		tinsert(tooltipInfo, {
			left = "This character's account will be synchronized with automatically when they log in. For optimal play, you should whitelist a bank character and probably not your main as to not affect your ability to play your character when syncing account data.",
			r = 0.8, g = 0.8, b = 1, wrap = true
		});
		tinsert(tooltipInfo, {
			left = "Right Click to Delete this Linked Character",
			r = 1, g = 0.8, b = 0.8
		});
	else
		tinsert(tooltipInfo, {
			left = "Right Click to Delete this Linked Account",
			r = 1, g = 0.8, b = 0.8
		});
	end
end
local function OnTooltipForSyncQueue(t, tooltipInfo)
	local identifier = t.text;
	if not identifier then return; end
	
	-- Show the Receive Queue
	local receiving = pendingReceiveChunksForUser[identifier];
	if receiving then
		tinsert(tooltipInfo, { left = " " });
		tinsert(tooltipInfo, {
			left = "Receiving: ",
			r = 0.8, g = 0.8, b = 1
		});
		for uid,data in pairs(receiving) do
			local count = 0;
			for key,ignored in pairs(data.chunks) do
				count = count + 1;
			end
			tinsert(tooltipInfo, {
				left = "  " .. uid,
				right = count .. " / " .. data.count .. " Chunks",
				r = 0.8, g = 0.8, b = 0.8
			});
		end
	end
	
	-- Show the Send Queue
	local sending = pendingSendChunksForUser[identifier];
	if sending then
		tinsert(tooltipInfo, { left = " " });
		tinsert(tooltipInfo, {
			left = "Sending: ",
			r = 0.8, g = 0.8, b = 1
		});
		for uid,data in pairs(sending) do
			local count = 0;
			for key,ignored in pairs(data.acks) do
				count = count + 1;
			end
			tinsert(tooltipInfo, {
				left = "  " .. uid .. ": " .. data.detail,
				right = count .. " / " .. tostring(#data.chunks) .. " Chunks",
				r = 0.8, g = 0.8, b = 0.8
			});
		end
	end
	
	tinsert(tooltipInfo, {
		left = "Right Click to Delete this Sync Target",
		r = 1, g = 0.8, b = 0.8
	});
end
local function OnUpdateForSyncQueue(t)
	local identifier = t.text;
	if not identifier then return; end
	
	local progress, total = 0, 0;
	local receiving = pendingReceiveChunksForUser[identifier];
	if receiving then
		for uid,data in pairs(receiving) do
			total = total + data.count;
			for key,ignored in pairs(data.chunks) do
				progress = progress + 1;
			end
		end
	end
	
	local sending = pendingSendChunksForUser[identifier];
	if sending then
		for uid,data in pairs(sending) do
			total = total + #data.chunks;
			for key,ignored in pairs(data.acks) do
				progress = progress + 1;
			end
		end
	end
	t.progress = progress;
	t.total = total;
	t.visible = true;
	return true;
end

-- Implementation
app:CreateWindow("Account Management", {
	IgnoreQuestUpdates = true,
	Defaults = {
		AutoSync = true,
		EnableBattleNet = not not BNGetInfo,
		LinkedCharacters = LinkedCharacters,
	},
	Commands = { "attsync", "attaccount" },
	OnInit = function(self, handlers)
		-- Register for Battle.net addon messaging
		handlers.BN_CHAT_MSG_ADDON = function(self, prefix, datastring, channel, sender)
			if prefix ~= AddonMessagePrefix or not datastring or channel ~= "WHISPER" then return; end
			ProcessAddonMessageMethod(self, SendBattleNetMessage, sender, datastring);
		end
		handlers.CHAT_MSG_ADDON = function(self, prefix, datastring, channel, sender)
			if prefix ~= AddonMessagePrefix or not datastring or channel ~= "WHISPER" then return; end
			ProcessAddonMessageMethod(self, SendAddonMessage, sender, datastring);
		end
	end,
	OnLoad = function(self, settings)
		-- Cache some globals SavedVariables!
		AccountWideData = ATTAccountWideData;
		CharacterData = ATTCharacterData;
		CurrentCharacter = app.CurrentCharacter;
		
		-- Delete some things I thought were going to be useful but ARENT THANKS BLIZZARD.
		-- We do actually use gameAccountID, but its value changes between game sessions and is unreliable.
		for guid,character in pairs(CharacterData) do
			character.bnetAccountID = nil;
			character.gameAccountID = nil;
		end
		
		-- Setup the saved variable for Linked Characters
		local linked = settings.LinkedCharacters;
		if not linked then
			linked = LinkedCharacters;
		else
			LinkedCharacters = linked;
		end
		settings.LinkedCharacters = linked;
		setmetatable(linked, { __index = SilentlyLinkedCharacters });
		
		-- Cache the current character's BattleTag. 
		EnableBattleNet = settings.EnableBattleNet;
		if BNGetInfo then
			local battleTag = select(2, BNGetInfo());
			if battleTag then
				SilentlyLinkedCharacters[battleTag] = true;
				CurrentCharacter.battleTag = battleTag;
			end
		end
		
		-- Register for Addon Messaging
		C_ChatInfo.RegisterAddonMessagePrefix(AddonMessagePrefix);
		pcall(self.RegisterEvent, self, "BN_CHAT_MSG_ADDON");
		self:RegisterEvent("CHAT_MSG_ADDON");
		if settings.AutoSync then
			BroadcastMessage("AutoSync", "check," .. CurrentCharacter.battleTag);
		else
			-- Cache some things related to BattleNet. (this happens in the BroadcastMessage function already)
			UpdateBattleTags();
			UpdateOnlineAccounts();
		end
		
		local options = {
			{	-- Add Linked Character
				text = "Add Linked Character",
				icon = app.asset("Button_Add"),
				description = "Click here to link a character to your account.\n\nOnce Linked, click on the Linked Character in the list below to initiate a sync with that character.\n\nNOTE: Your character must be on the same faction and server as your current character to sync.",
				OnUpdate = app.AlwaysShowUpdate,
				OnClick = function(row, button)
					app:ShowPopupDialogWithEditBox("Please type the name of the character to link to.", "", function(cmd)
						if cmd and cmd ~= "" then
							-- Prevent server names.
							cmd = ("-"):split(cmd);
							LinkedCharacters[cmd] = true;
							SendAddonMessage(cmd, "Link " .. cmd, "link," .. CurrentCharacter.battleTag);
							self:Rebuild();
						end
					end);
					return true;
				end,
			},
			{	-- Recalculate Account Wide Data
				text = "Recalculate Account Wide Data",
				icon = 132996,
				description = "Click here to force ATT to recalculate its account wide statistical data. This happens automatically after a sync, but if there's ever a situation where ATT sees that a different character has done a thing, but your current character hasn't and isn't giving you partial credit, you can click this to manually initiate that recalculation.",
				OnUpdate = app.AlwaysShowUpdate,
				OnClick = function(row, button)
					RecalculateAccountWideData();
					return true;
				end,
			},
			setmetatable({	-- Sync All Characters
				text = "Sync All Characters",
				icon = app.asset("Button_Sync"),
				description = "Click here to sync all of your characters.\n\nAlt+Click to toggle automatically syncing characters with your other accounts.\n\nYou must initially have the character stored on this account by Linking a Character and manually initiating a sync with that character. The character on your other account must also assign this character as a Linked Character.\n\nNOTE: Your character must be on the same faction and server as your current character to sync.",
				OnUpdate = app.AlwaysShowUpdate,
				OnClick = function(row, button)
					if IsAltKeyDown() then
						self.Settings.AutoSync = not self.Settings.AutoSync;
						self:Redraw();
					else
						BroadcastMessage(row.ref.text, "check," .. CurrentCharacter.battleTag);
					end
					return true;
				end,
			}, { __index = function(t, key)
				if key == "saved" then
					return self.Settings.AutoSync;
				end
				return table[key];
			end}),
			setmetatable({	-- Enable Battle.net
				text = "Enable Battle.net",
				icon = 526421,
				description = "Click here to toggle allowing Battle.net. Sometimes BNET breaks. If it does, you can enable sending messages the old fashioned way by turning this off!",
				OnClick = function(row, button)
					EnableBattleNet = not EnableBattleNet;
					self.Settings.EnableBattleNet = EnableBattleNet;
					self:Redraw();
					return true;
				end,
				OnUpdate = BNGetInfo and app.AlwaysShowUpdate or nil,
			}, { __index = function(t, key)
				if key == "saved" then
					return EnableBattleNet;
				end
				return table[key];
			end}),
			{	-- Characters
				text = "Characters",
				icon = 526421,
				description = "This shows all of the characters on your account.",
				expanded = true,
				characters = {},
				g = {},
				OnUpdate = function(data)
					local g, characters = data.g, data.characters;
					wipe(g);
					for guid,characterData in pairs(CharacterData) do
						if characterData then
							local character = characters[guid];
							if not character then
								character = app.CreateUnit(guid, {
									OnClick = OnClickForCharacter,
									OnTooltip = OnTooltipForCharacter,
									OnUpdate = app.AlwaysShowUpdate,
									name = characterData.name,
									lvl = characterData.lvl,
									trackable = true,
									visible = true,
									parent = data,
								});
								characters[guid] = character;
							end
							character.saved = not characterData.ignored and 1;
							tinsert(g, character);
						end
					end
					
					if #g < 1 then
						tinsert(g, {
							text = "No characters found.",
							icon = 526421,
							visible = true,
							parent = data,
						});
					else
						data.SortType = "textAndLvl";
					end
					return app.AlwaysShowUpdate(data);
				end,
			},
			{	-- Linked Characters
				text = "Linked Characters",
				icon = 526421,
				description = "This shows all of the linked characters you have defined so far.\n\nClick on a Linked Character in the list below to initiate a sync with that character. The character on your other account must also assign this character as a Linked Character.\n\nNOTE: Your character must be on the same faction and server as your current character to sync.",
				expanded = true,
				g = {},
				OnUpdate = function(data)
					local g = data.g;
					wipe(g);
					for playerName,allowed in pairs(LinkedCharacters) do
						tinsert(g, app.CreateUnit(playerName, {
							datalink = playerName,
							OnClick = OnClickForLinkedAccount,
							OnTooltip = OnTooltipForLinkedAccount,
							OnUpdate = app.AlwaysShowUpdate,
							visible = true,
							parent = data,
						}));
					end
					
					if #g < 1 then
						tinsert(g, {
							text = "No linked accounts found.",
							icon = 526421,
							visible = true,
							parent = data,
						});
					end
					return app.AlwaysShowUpdate(data);
				end,
			},
			{	-- Pending Sync Queue
				text = "Pending Sync Queue",
				icon = 236681,
				description = "This shows the contents of the sync queue.",
				expanded = true,
				g = {},
				OnUpdate = function(data)
					local g = data.g;
					wipe(g);
					local senders = {};
					for sender,_ in pairs(pendingReceiveChunksForUser) do
						senders[sender] = 1;
					end
					for sender,_ in pairs(pendingSendChunksForUser) do
						senders[sender] = 1;
					end
					for sender,_ in pairs(senders) do
						tinsert(g, {
							OnClick = OnClickForSyncQueue,
							OnTooltip = OnTooltipForSyncQueue,
							OnUpdate = OnUpdateForSyncQueue,
							text = sender,
							icon = 526421,
							visible = true,
							parent = data,
						});
					end
					
					data.visible = #g > 1;
					return false;
				end,
			},
		};
		self.data = {
			text = "Account Management",
			icon = app.asset("WindowIcon_AccountManagement"), 
			description = "This list shows you all of the functionality related to managing your account data.",
			visible = true, 
			expanded = true,
			indent = 0,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					for i,option in ipairs(options) do
						option.parent = data;
						tinsert(g, option);
					end
				end
			end,
		};
	end,
});