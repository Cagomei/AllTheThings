local _, app = ...
local L = app.L

-- Globals
local rawget, select, tostring, ipairs, pairs, tinsert, tonumber
	= rawget, select, tostring, ipairs, pairs, tinsert, tonumber

-- App & Module locals
local SearchForField, SearchForFieldContainer
	= app.SearchForField, app.SearchForFieldContainer;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local IsQuestFlaggedCompleted;
local ResolveSymbolicLink;

-- WoW API Cache
local GetAchievementInfo, GetAchievementCriteriaInfoByID, GetCategoryInfo
	= GetAchievementInfo, GetAchievementCriteriaInfoByID, GetCategoryInfo;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;

-- Locals from future-loaded Modules
app.AddEventHandler("OnLoad", function()
	ResolveSymbolicLink = app.ResolveSymbolicLink
	IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted
end)

local SetAchievementCollected = function(t, achievementID, collected)
	return app.SetCollected(t, "Achievements", achievementID, collected);
end

-- These achievement handlers are good to use at any point.
local LOREMASTER_CreateQuests = function(t, extraQuestIDs)
	local parent = t.sourceParent or t.parent;
	if parent then
		-- Get the quests list from the zone itself.
		local g, quests, count = parent.parent and parent.parent.g, {}, 0;
		if g and #g > 0 then
			for i,o in ipairs(g) do
				if o.headerID == app.HeaderConstants.QUESTS then
					-- Clone the list to prevent dirtying the quest list in the zone.
					for j,quest in ipairs(o.g) do
						if quest.key == "questID" and not quest.repeatable then
							count = count + 1;
							quests[count] = quest;
						end
					end
					break;
				end
			end
		end

		-- If additional questIDs were manually included, let's do some extra work.
		if extraQuestIDs and #extraQuestIDs > 0 then
			for i,questID in ipairs(extraQuestIDs) do
				local results = SearchForField("questID", questID);
				if #results > 0 then
					local quest = results[1];
					if quest.key == "questID" and not quest.repeatable then
						count = count + 1;
						quests[count] = quest;
					end
				end
			end
		end
		if count > 0 then
			return quests;
		end
	end
end;
local LOREMASTER_CreateQuestsAndStructures = function(t, mapID, extraQuestIDs)
	-- Grab all of the quests on the continent.
	local response;
	local results = SearchForField("mapID", mapID);
	local count = #results;
	if count < 1 then
		return;
	elseif count > 1 then
		-- Uh wasn't expecting this.
		local bestResult;
		for i=1,#results,1 do
			local g = results[i].g;
			if g and not bestResult or #g > #bestResult.g then
				bestResult = results[i];
			end
		end
		response = app:BuildSearchResponseForField(bestResult.g, "questID");
	else
		response = app:BuildSearchResponseForField(results[1].g, "questID");
	end


	local quests, structures = {}, {};
	if response then
		-- Get the quests list from the zone itself.
		local zones_header = {text=BUG_CATEGORY2,icon = app.asset("Category_Zones"),description = "These are outdoor quests that involve the associated maps for the continent.",g = response};
		app:BuildFlatSearchResponseForField(response, "questID", quests);
		if #zones_header.g > 0 then
			tinsert(structures, zones_header);
		end

		-- Get a list of all of the mapIDs in this structure.
		response = {};
		app:BuildFlatSearchResponseForField(zones_header.g, "mapID", response);
		if #response > 0 then
			local mapIDs = {};
			for i,o in ipairs(response) do
				if o.mapID and not mapIDs[o.mapID] then
					mapIDs[o.mapID] = true;
				end
				if o.maps then
					for j,id in ipairs(o.maps) do
						if not mapIDs[id] then
							mapIDs[id] = true;
						end
					end
				end
			end
			response = app:BuildSearchFilteredResponse(app.Categories.Instances, function(group)
				if group.questID and not group.repeatable then
					if group.coords then
						for i,coord in ipairs(group.coords) do
							if coord[3] and mapIDs[coord[3]] then
								return true;
							end
						end
					end
					if group.maps then
						for i,id in ipairs(group.maps) do
							if mapIDs[id] then
								return true;
							end
						end
					end
					return false;
				end
			end);
			if response then
				local dungeon_header = {text=GROUP_FINDER,icon = app.asset("Category_D&R"),description = "These are dungeon quests that involve the associated maps for the continent. They may or may not count towards the loremaster achievement. Just get it done and don't be lazy or complain to me.\n\n - Crieve",g = response};
				app:BuildFlatSearchResponseForField(response, "questID", quests);
				if #dungeon_header.g > 0 then
					tinsert(structures, 1, dungeon_header);
				end
			end
		end
	end

	-- If additional questIDs were manually included, let's do some extra work.
	if extraQuestIDs and #extraQuestIDs > 0 then
		for i,questID in ipairs(extraQuestIDs) do
			local results = SearchForField("questID", questID);
			if #results > 0 then
				tinsert(quests, 1, results[1]);
			end
		end
	end

	-- Return the Outdoor Zones and Dungeon structures.
	return quests, structures;
end
local commonAchievementHandlers = {
["COMPANIONS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template = {};
		for i,o in pairs(SearchForFieldContainer("speciesID")) do
			tinsert(template, o[1]);
		end

		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end,
["DEDICATED_10M_OnUpdate"] = function(t)
	rawset(t, "collectible", nil);
	if app.MODE_DEBUG_OR_ACCOUNT then
		return false;
	elseif IsInGroup() and GetNumGroupMembers() >= 9 then
		rawset(t, "collectible", false);
		return true;
	end
end,
["DEDICATED_25M_OnUpdate"] = function(t)
	rawset(t, "collectible", nil);
	if app.MODE_DEBUG_OR_ACCOUNT then
		return false;
	elseif IsInGroup() and GetNumGroupMembers() >= 21 then
		rawset(t, "collectible", false);
		return true;
	end
end,
["EXALTED_REP_OnInit"] = function(t, factionID)
	t.BuildReputation = function()
		local r = t.rep;
		if not r then
			local f = SearchForField("factionID", factionID);
			if #f > 0 then
				r = f[1];
				for i,o in ipairs(f) do
					if o.key == "factionID" then
						if o.maxReputation then
							r = app.CloneObject(o);
							r.maxReputation = nil;
						else
							r = o;
						end
						break;
					end
				end
				t.rep = r;
			end
		end
		return r;
	end
	return t;
end,
["EXALTED_REP_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local r = t.rep or (t.BuildReputation and t:BuildReputation());
		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], { r })).data;
		clone.description = t.description;
		return true;
	end
end,
["EXALTED_REP_OnUpdate"] = function(t)
	if t.collectible then
		local r = t.rep or (t.BuildReputation and t:BuildReputation());
		if not r then return true; end
		t:SetAchievementCollected(t.achievementID, r.standing == 8);
	end
end,
["EXALTED_REP_OnTooltip"] = function(t, tooltipInfo)
	if t.collectible then
		local r = t.rep or (t.BuildReputation and t:BuildReputation());
		if r then
			tinsert(tooltipInfo, { left = " " });
			tinsert(tooltipInfo, {
				left = " |T" .. r.icon .. ":0|t " .. r.text,
				right = app.L[r.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"],
				r = 1, g = 1, b = 1
			});
		end
	end
end,
["EXALTED_REPS_OnInit"] = function(t, ...)
	local factionIDs = { ... };
	t.BuildReputations = function()
		local reps = t.reps;
		if not reps then
			reps = {};
			for i,factionID in ipairs(factionIDs) do
				local f = SearchForField("factionID", factionID);
				if #f > 0 then
					local best = f[1];
					for _,o in ipairs(f) do
						if o.key == "factionID" then
							best = o;
							break;
						end
					end
					if best.maxReputation then
						best = app.CloneObject(best);
						best.maxReputation = nil;
					end
					tinsert(reps, best);
				end
			end
			if #reps > 0 then
				t.reps = reps;
			else
				reps = nil;
			end
		end
		return reps;
	end
	return t;
end,
["EXALTED_REPS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local reps = t.reps or (t.BuildReputations and t:BuildReputations());
		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], reps)).data;
		clone.description = t.description;
		return true;
	end
end,
["EXALTED_REPS_OnTooltip"] = function(t, tooltipInfo)
	if t.collectible then
		local reps = t.reps or (t.BuildReputations and t:BuildReputations());
		if reps then
			tinsert(tooltipInfo, { left = " " });
			for i,faction in ipairs(reps) do
				tinsert(tooltipInfo, {
					left = " |T" .. faction.icon .. ":0|t " .. faction.text,
					right = app.L[faction.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"],
					r = 1, g = 1, b = 1
				});
			end
		end
	end
end,
["LOREMASTER_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local data = t.quests or (t.BuildQuests and t:BuildQuests());
		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], data)).data;
		clone.description = t.description;
		return true;
	end
end,
["LOREMASTER_CONTINENT_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local data = t.structures or (t.BuildStructures and t:BuildStructures()) or t.quests;
		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], data)).data;
		clone.description = t.description;
		return true;
	end
end,
["MOUNTS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template,r = {},{};
		for i,o in pairs(SearchForFieldContainer("spellID")) do
			if #o > 0 then
				if ((o[1].f and o[1].f == app.FilterConstants.MOUNTS)
				or (o[1].filterID and o[1].filterID == app.FilterConstants.MOUNTS)) and not r[i] then
					tinsert(template, o[1]);
					r[i] = 1;
				end
			end
		end

		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end,
["REPUTATIONS_OnClick"] = function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template = {};
		for i,o in ipairs(app:GetDataCache().g) do
			if o.headerID == app.HeaderConstants.FACTIONS then
				for j,p in ipairs(o.g) do
					if (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
						tinsert(template, p);
					end
				end
			end
		end

		local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end,
};
app.CommonAchievementHandlers = commonAchievementHandlers;

local fields = {
	RefreshCollectionOnly = true,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Achievements;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.Achievements[t.achievementID] then return 1; end
		if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[t.achievementID] then return 2; end
	end,
	["OnUpdate"] = function(t) ResolveSymbolicLink(t); end,
};
local categoryFields = {
	["icon"] = function(t)
		return app.asset("Category_Achievements");
	end,
	["ignoreSourceLookup"] = function(t)
		return true;
	end,
};
if GetCategoryInfo and (GetCategoryInfo(92) ~= "" and GetCategoryInfo(92) ~= nil) then
	-- Achievements are in. We can use the API.
	local GetAchievementCategory = _G["GetAchievementCategory"];
	local GetAchievementNumCriteria = _G["GetAchievementNumCriteria"];
	local GetAchievementCriteriaInfo = _G["GetAchievementCriteriaInfo"];
	local achievementData = rawget(L, "ACHIEVEMENT_DATA") or {};
	local achievementCategoryData = rawget(L, "ACHIEVEMENT_CATEGORY_DATA") or {};
	fields.text = function(t)
		return t.link or ("|cffffff00[" .. (t.name or ("@CRIEVE: INVALID ACHIEVEMENT " .. t.achievementID)) .. "]|r");
	end
	fields.name = function(t)
		local name = select(2, GetAchievementInfo(t.achievementID));
		if name then return name; end
		local data = achievementData[t.achievementID];
		return (data and data.name) or app.GetNameFromProviders(t)
			or (t.spellID and GetSpellName(t.spellID));
	end
	fields.link = function(t)
		return GetAchievementLink(t.achievementID);
	end
	fields.icon = function(t)
		local name = select(10, GetAchievementInfo(t.achievementID));
		if name then return name; end
		local data = achievementData[t.achievementID];
		return (data and data.icon) or app.GetIconFromProviders(t)
			or (t.spellID and GetSpellIcon(t.spellID))
			or (t.parent and t.parent.icon) or 311226;
	end
	fields.parentCategoryID = function(t)
		local data = GetAchievementCategory(t.achievementID);
		if data then return data; end
		data = achievementData[t.achievementID];
		return data and data.category or -1;
	end
	fields.SetAchievementCollected = function(t)
		if t.achievementID == 5788 or t.achievementID == 6059 then
			return SetAchievementCollected;
		else
			print("Attempted to retrieve the function SetAchievementCollected from the Achievement object. (no longer available)");
			return function(t, achievementID, collected)
				print("Attempted to set achievement " .. achievementID .. " as collected: " .. (collected and 1 or 0));
			end
		end
	end
	fields.isStatistic = function(t)
		return select(15, GetAchievementInfo(t.achievementID));
	end
	local onTooltipForAchievement = function(t, tooltipInfo)
		local achievementID = t.achievementID;
		if achievementID and IsShiftKeyDown() then
			local criteriaDatas,criteriaDatasByUID = {}, {};
			for criteriaID=1,99999,1 do
				local criteriaString, criteriaType, completed, _, _, _, _, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfoByID(achievementID, criteriaID);
				if criteriaString and criteriaUID then
					criteriaDatasByUID[criteriaUID] = true;
					tinsert(criteriaDatas, {
						" [" .. criteriaUID .. "]: " .. tostring(criteriaString),
						"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. app.GetCompletionIcon(completed)
					});
				end
			end
			local totalCriteria = GetAchievementNumCriteria(achievementID) or 0;
			if totalCriteria > 0 then
				for criteriaIndex=1,totalCriteria,1 do
					---@diagnostic disable-next-line: redundant-parameter
					local criteriaString, criteriaType, completed, _, _, _, _, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfo(achievementID, criteriaIndex, true);
					if criteriaString and (not criteriaDatasByUID[criteriaUID] or criteriaUID == 0) then
						tinsert(criteriaDatas, {
							" [" .. criteriaUID .. " @ Index: " .. criteriaIndex .. "]: " .. tostring(criteriaString),
							"(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. app.GetCompletionIcon(completed)
						});
					end
				end
			end
			if #criteriaDatas > 0 then
				tinsert(tooltipInfo, { left = " " });
				tinsert(tooltipInfo, {
					left = "Total Criteria",
					right = tostring(#criteriaDatas),
					r = 0.8, g = 0.8, b = 1
				});
				for i,criteriaData in ipairs(criteriaDatas) do
					tinsert(tooltipInfo, {
						left = criteriaData[1],
						right = criteriaData[2],
						r = 1, g = 1, b = 1
					});
				end
			end
		end
	end
	local onTooltipForAchievementCriteria = function(t, tooltipInfo)
		local achievementID = t.achievementID;
		if achievementID then
			tinsert(tooltipInfo, {
				left = L.CRITERIA_FOR,
				right = "|cffffff00[" .. (select(2, GetAchievementInfo(achievementID)) or RETRIEVING_DATA) .. "]|r",
			});
			if IsShiftKeyDown() then
				local criteriaID = t.criteriaID;
				if criteriaID then
					tinsert(tooltipInfo, { left = " " });
					local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaUID = t.GetInfo(achievementID, criteriaID, true)
					if criteriaString then
						tinsert(tooltipInfo, {
							left = " [" .. criteriaUID .. "]: " .. tostring(criteriaString),
							right = "(" .. tostring(assetID) .. " @ " .. tostring(criteriaType) .. ") " .. tostring(quantityString) .. " " .. app.GetCompletionIcon(completed),
							r = 1, g = 1, b = 1
						});
					end
				end
			end
		end
	end
	fields.OnTooltip = function()
		return onTooltipForAchievement;
	end
	categoryFields.text = function(t)
		local data = GetCategoryInfo(t.achievementCategoryID);
		if data then return data; end
		data = achievementCategoryData[t.achievementCategoryID];
		return (data and data.name) or (RETRIEVING_DATA .. " achcat:" .. t.achievementCategoryID);
	end
	categoryFields.parentCategoryID = function(t)
		local data = select(2, GetCategoryInfo(t.achievementCategoryID));
		if data then return data; end
		data = achievementCategoryData[t.achievementCategoryID];
		return (data and data.parent) or -1;
	end
	app.CreateAchievement = app.CreateClass("Achievement", "achievementID", fields);
	app.CreateGuildAchievement = app.ExtendClass("Achievement", "GuildAchievement", "guildAchievementID", {
		collectible = app.ReturnFalse,
		achievementID = function(t) return t.guildAchievementID; end,
		isGuild = app.ReturnTrue,
	});
	app.CreateAchievementCriteria = app.CreateClass("AchievementCriteria", "criteriaID", {
		["achievementID"] = function(t)
			return t.achID or t.criteriaParent.achievementID;
		end,
		["criteriaParent"] = function(t)
			return t.sourceParent or t.parent or app.EmptyTable;
		end,
		["index"] = function(t)
			return 1;
		end,
		RefreshCollectionOnly = true,
		["collectible"] = function(t)
			return app.Settings.Collectibles.Achievements;
		end,
		["trackable"] = app.ReturnTrue,
		["text"] = function(t)
			return "|cffffff00[Criteria: " .. (t.name or RETRIEVING_DATA) .. "]|r";
		end,
		["name"] = function(t)
			local achievementID = t.achievementID;
			if achievementID then
				local criteriaID = t.criteriaID;
				if criteriaID then
					local name = t.GetInfo(achievementID, criteriaID, true);
					if not IsRetrieving(name) then return name; end
					name = app.GetNameFromProviders(t);
					if not IsRetrieving(name) then return name; end
					local sourceQuests = t.sourceQuests;
					if sourceQuests then
						for k,id in ipairs(sourceQuests) do
							return app.GetQuestName(id);
						end
					end
					local parent = t.parent;
					if parent and parent.npcID then
						return parent.text;
					end
					return "achievementID:" .. achievementID .. ":" .. criteriaID;
				end
			end
		end,
		["icon"] = function(t)
			return app.GetIconFromProviders(t)
				or (t.achievementID and select(10, GetAchievementInfo(t.achievementID)));
		end,
		["model"] = function(t)
			if t.providers then
				for k,v in ipairs(t.providers) do
					if v[2] > 0 then
						if v[1] == "o" then
							local model = app.ObjectModels[v[2]];
							if model then return model; end
						end
					end
				end
			end
		end,
		["collected"] = function(t)
			-- Check to see if the criteria was completed.
			local achievementID = t.achievementID;
			if achievementID then
				if app.CurrentCharacter.Achievements[achievementID] then return 1; end
				if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[achievementID] then return 2; end

				local criteriaID = t.criteriaID;
				if criteriaID then
					local collected = false;
					local status, err = pcall(function()
						collected = select(3, t.GetInfo(achievementID, criteriaID, true));
					end);
					if not status then
						print("ERROR", achievementID, criteriaID, err);
					end
					return collected;
				end
			end
		end,
		["saved"] = function(t)
			-- Check to see if the criteria was completed.
			local achievementID = t.achievementID;
			if achievementID then
				if app.CurrentCharacter.Achievements[achievementID] then return true; end
				local criteriaID = t.criteriaID;
				if criteriaID then
					return select(3, t.GetInfo(achievementID, criteriaID, true));
				end
			end
		end,
		["OnTooltip"] = function()
			return onTooltipForAchievementCriteria;
		end,
		GetInfo = function()
			return GetAchievementCriteriaInfoByID;
		end,
	});
	app.CreateGuildAchievementCriteria = app.ExtendClass("AchievementCriteria", "GuildAchievementCriteria", "guildCriteriaID", {
		collectible = app.ReturnFalse,
		criteriaID = function(t) return t.guildCriteriaID; end,
		isGuild = app.ReturnTrue,
	});

	local function CheckAchievementCollectionStatus(achievementID)
		achievementID = tonumber(achievementID) or achievementID;
		SetAchievementCollected(SearchForField("achievementID", achievementID)[1], achievementID, select(13, GetAchievementInfo(achievementID)));
	end
	local function refreshAchievementCollection()
		if ATTAccountWideData then
			for achievementID,container in pairs(SearchForFieldContainer("achievementID")) do
				local id = tonumber(achievementID) or achievementID;
				if id ~= 5788 then
					SetAchievementCollected(container[1], id, select(13, GetAchievementInfo(id)));
				end
			end
		end
	end
	app.AddEventHandler("OnRecalculate", refreshAchievementCollection);
	app:RegisterEvent("ADDON_LOADED");
	app:RegisterEvent("ACHIEVEMENT_EARNED");
	app.events.ACHIEVEMENT_EARNED = CheckAchievementCollectionStatus;
	app.events.ADDON_LOADED = function(addonName)
		if addonName == "Blizzard_AchievementUI" then
			refreshAchievementCollection();
			app:UnregisterEvent("ADDON_LOADED");
		end
	end

	-- Achievements are supported in this version, so we don't need to manually check anything!
	-- Most calculations that were previously in the OnUpdate can now exist in a build script instead.
	commonAchievementHandlers.EXPLORATION_OnClick = function(row, button)
		if button == "RightButton" then
			local t = row.ref;
			local areas = t.areas;
			if not areas then
				local g = (t.sourceParent or t.parent).parent.g;
				if g and #g > 0 then
					for i,o in ipairs(g) do
						if o.headerID == app.HeaderConstants.EXPLORATION then
							areas = o.g;
							break;
						end
					end
					if not areas then return; end
				else
					return;
				end
				t.areas = areas;
			end
			local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], areas)).data;
			clone.description = t.description;
			return true;
		end
	end
	commonAchievementHandlers.LOREMASTER_CONTINENT_OnUpdate = function(t, mapID, ...)
		t.OnUpdate = nil;
		local extraQuestIDs = { ... };
		t.BuildStructures = function()
			if not t.structures then
				local quests, structures = LOREMASTER_CreateQuestsAndStructures(t, mapID, extraQuestIDs);
				if quests then
					t.quests = quests;
					t.structures = structures;
					return structures;
				end
			else
				return t.structures;
			end
		end
	end
	commonAchievementHandlers.LOREMASTER_OnUpdate = function(t, ...)
		t.OnUpdate = nil;
		local extraQuestIDs = { ... };
		t.BuildQuests = function()
			local quests = t.quests;
			if not quests then
				quests = LOREMASTER_CreateQuests(t, extraQuestIDs);
				if quests then
					t.quests = quests;
				end
			end
			return quests;
		end
	end
else
	-- Achievements are NOT in. We can't use the API.
	local achievementData = L.ACHIEVEMENT_DATA or {};
	local achievementCategoryData = L.ACHIEVEMENT_CATEGORY_DATA or {};
	fields.text = function(t)
		return "|cffffff00[" .. t.name .. "]|r";
	end
	fields.name = function(t)
		local data = achievementData[t.achievementID];
		return (data and data.name) or app.GetNameFromProviders(t) or (t.spellID or GetSpellName(t.spellID)) or RETRIEVING_DATA;
	end
	fields.description = function(t)
		local data = achievementData[t.achievementID];
		return data and data.description;
	end
	fields.icon = function(t)
		local data = achievementData[t.achievementID];
		return (data and data.icon) or app.GetIconFromProviders(t)
			or (t.spellID and GetSpellIcon(t.spellID))
			or t.parent.icon or 311226;
	end
	fields.parentCategoryID = function(t)
		local data = achievementData[t.achievementID];
		return data and data.category or -1;
	end
	fields.SetAchievementCollected = function(t)
		return SetAchievementCollected;
	end
	categoryFields.text = function(t)
		local data = achievementCategoryData[t.achievementCategoryID];
		return (data and data.name) or (RETRIEVING_DATA .. " achcat:" .. t.achievementCategoryID);
	end
	categoryFields.parentCategoryID = function(t)
		local data = achievementCategoryData[t.achievementCategoryID];
		return data and data.parent or -1;
	end

	local fieldsWithSpellID = {
		OnUpdate = function(t)
			if t.collectible then
				t:SetAchievementCollected(t.achievementID, app.IsSpellKnown(t.spellID, t.rank));
			end
		end
	};
	app.CreateAchievement = app.CreateClass("Achievement", "achievementID", fields,
		"WithSpell", fieldsWithSpellID, function(t) return t.spellID; end);	-- This is a conditional contructor.
	app.CreateAchievementCriteria = function(id, t) return nil; end	-- We don't support showing criteria before Wrath

	-- Add in manual achievement handlers
	-- These are required to manually detect if an "achievement" is collected or not.
	-- They do not use the WOW Achievement API since it doesn't exist in this version.
	-- A lot of times these require additional calculations in the OnUpdate, so do not use these outside of the required environment!
	local LOREMASTER_EXPLICIT_OnUpdate = function(t)
		-- This is detached because we don't want contribs calling to this directly, it's a helper function.
		local quests = t.quests;
		if quests and #quests > 0 then
			local p = 0;
			local groupFilter = app.Modules.Filter.Get.Group();
			if not groupFilter then app.Modules.Filter.Set.Group(true); end
			if app.Modules.Filter.Filters.Race(t) then
				for i,o in ipairs(quests) do
					if app.GroupFilter(o) then
						if o.collected == 1 then
							p = p + 1;
						end
					end
				end
			end
			if not groupFilter then app.Modules.Filter.Set.Group(); end
			t.p = p;
			t:SetAchievementCollected(t.achievementID, p >= t.rank);
		else
			return true;
		end
	end
	commonAchievementHandlers.ALL_ITEM_PROVIDERS = function(t)
		local collected = true;
		for i,provider in ipairs(t.providers) do
			if provider[1] == "i" and GetItemCount(provider[2], true) == 0 then
				collected = false;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
	commonAchievementHandlers.ANY_ITEM_PROVIDER = function(t)
		local collected = false;
		for i,provider in ipairs(t.providers) do
			if provider[1] == "i" and GetItemCount(provider[2], true) > 0 then
				collected = true;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
	commonAchievementHandlers.ALL_SOURCE_QUESTS = function(t)
		local collected = true;
		for i,questID in ipairs(t.sourceQuests) do
			if not IsQuestFlaggedCompleted(questID) then
				collected = false;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
	commonAchievementHandlers.ANY_SOURCE_QUEST = function(t)
		local collected = false;
		for i,questID in ipairs(t.sourceQuests) do
			if IsQuestFlaggedCompleted(questID) then
				collected = true;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
	commonAchievementHandlers.COMPANIONS_OnUpdate = function(t)
		if app.Settings.Collectibles.BattlePets then
			local count = 0;
			for i,g in pairs(SearchForFieldContainer("speciesID")) do
				if g[1].collected then
					count = count + 1;
				end
			end
			if t.rank > 1 then
				t.progress = math.min(count, t.rank);
				t.total = t.rank;
				t.collectible = false;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + t.total;
					parent.progress = (parent.progress or 0) + t.progress;
					t.visible = (t.progress < t.total or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			else
				t.collected = count >= 1;
				t.collectible = true;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + 1;
					if t.collected then parent.progress = (parent.progress or 0) + 1; end
					t.visible = (not t.collected or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			end
		else
			t.collected = nil;
			t.collectible = false;
			t.progress = nil;
			t.total = nil;
			t.visible = false;
		end
		return true;
	end
	commonAchievementHandlers.COMPANIONS_OnTooltip = function(t, tooltipInfo)
		tinsert(tooltipInfo, { left = "Collect " .. t.rank .. " companion pets." });
		if t.total and t.progress < t.total and t.rank >= 25 then
			tinsert(tooltipInfo, { left = " " });
			local c = 0;
			for i,g in pairs(SearchForFieldContainer("speciesID")) do
				local p = g[1];
				if p.visible then
					c = c + 1;
					if c < 16 then
						tinsert(tooltipInfo, {
							left = " |T" .. p.icon .. ":0|t " .. p.text,
							right = app.L[p.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"],
							r = 1, g = 1, b = 1
						});
					end
				end
			end
			if c > 15 then tinsert(tooltipInfo, { " And " .. (c - 15) .. " more!" }); end
		end
	end
	commonAchievementHandlers.EXALTED_REPS_OnUpdate = function(t)
		if t.collectible then
			local reps = t.reps or (t.BuildReputations and t:BuildReputations());
			if not reps then return true; end
			local collected = true;
			for i,r in ipairs(reps) do
				if r.standing < 8 then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.EXALTED_REPS_ANY_OnUpdate = function(t)
		if t.collectible then
			local reps = t.reps or (t.BuildReputations and t:BuildReputations());
			if not reps then return true; end
			local collected = false;
			for i,r in ipairs(reps) do
				if r.standing == 8 then
					collected = true;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.EXPLORATION_OnUpdate = function(t)
		if t.collectible and t.parent then
			if not t.areas then
				local g = (t.sourceParent or t.parent).parent.g;
				if g and #g > 0 then
					for i,o in ipairs(g) do
						if o.headerID == app.HeaderConstants.EXPLORATION then
							t.areas = o.g;
							break;
						end
					end
					if not t.areas then return; end
				else
					return;
				end
			end
			local collected = true;
			for i,o in ipairs(t.areas) do
				if o.collected ~= 1 and app.RecursiveUnobtainableFilter(o) then
					if rawget(o, "collectible") ~= false and o.coords then
						collected = false;
						break;
					end
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.EXPLORATION_OnClick = function(row, button)
		if button == "RightButton" then
			local t = row.ref;
			local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.areas)).data;
			clone.description = t.description;
			return true;
		end
	end
	commonAchievementHandlers.KNOW_SPELLS_OnUpdate = function(t, ...)
		if t.collectible then
			if not t.spells then
				local spells = {};
				for i,spellID in ipairs({ ... }) do
					local f = SearchForField("spellID", spellID);
					if #f > 0 then
						tinsert(spells, f[1]);
					else
						return true;
					end
				end
				if #spells < 1 then return true; end
				t.spells = spells;
			end
			local collected = true;
			for i,spell in ipairs(t.spells) do
				if spell.collected then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.KNOW_SPELLS_ANY_OnUpdate = function(t, ...)
		if t.collectible then
			if not t.spells then
				local spells = {};
				for i,spellID in ipairs({ ... }) do
					local f = SearchForField("spellID", spellID);
					if #f > 0 then
						tinsert(spells, f[1]);
					else
						tinsert(spells, app.CreateSpell(spellID));
					end
				end
				if #spells < 1 then return true; end
				t.spells = spells;
			end
			local collected = false;
			for i,spell in ipairs(t.spells) do
				if spell.collected then
					collected = true;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.KNOW_SPELLS_OnClick = function(row, button)
		if button == "RightButton" then
			local t = row.ref;
			local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.spells)).data;
			clone.description = t.description;
			return true;
		end
	end
	commonAchievementHandlers.KNOW_SPELLS_OnTooltip = function(t, tooltipInfo)
		if t.collectible and t.spells then
			tinsert(tooltipInfo, { left = " " });
			for i,spell in ipairs(t.spells) do
				tinsert(tooltipInfo, {
					left = " |T" .. spell.icon .. ":0|t " .. spell.text,
					right = app.L[spell.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"],
					r = 1, g = 1, b = 1
				});
			end
		end
	end
	commonAchievementHandlers.LEVEL_OnUpdate = function(t)
		t:SetAchievementCollected(t.achievementID, t.lvl and app.Level >= t.lvl or false);
	end
	commonAchievementHandlers.LOREMASTER_CONTINENT_OnUpdate = function(t, mapID, ...)
		if t.collectible and t.parent then
			if not t.quests then
				local quests, structures = LOREMASTER_CreateQuestsAndStructures(t, mapID, { ... });
				if quests then
					t.quests = quests;
					t.structures = structures;
				else
					return;
				end
			end
			return LOREMASTER_EXPLICIT_OnUpdate(t);
		end
	end
	commonAchievementHandlers.LOREMASTER_OnUpdate = function(t, ...)
		if t.collectible and t.parent then
			local quests = t.quests;
			if not quests then
				quests = LOREMASTER_CreateQuests(t, { ... });
				if quests then
					t.quests = quests;
				else
					return;
				end
			end
			return LOREMASTER_EXPLICIT_OnUpdate(t);
		end
	end
	commonAchievementHandlers.LOREMASTER_OnTooltip = function(t, tooltipInfo)
		if t.collectible and t.p and not t.collected then
			tinsert(tooltipInfo, { left = " " });
			tinsert(tooltipInfo, {
				right = app.Modules.Color.GetProgressText(min(t.rank, t.p),t.rank),
				r = 1, g = 1, b = 1
			});
		end
	end
	commonAchievementHandlers.META_ACHCAT_OnUpdate = function(t, achievementCategoryID)
		if t.collectible then
			if not t.achievements then
				local achievements;
				for i,o in ipairs(t.parent.g) do
					if o.achievementCategoryID == achievementCategoryID then
						achievements = o.g;
						break;
					end
				end
				if not achievements then return true; end
				t.achievements = achievements;
			end
			local collected = true;
			for i,faction in ipairs(t.achievements) do
				if not faction.collected and app.RecursiveUnobtainableFilter(faction) then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.META_OnUpdate = function(t, ...)
		if t.collectible then
			if not t.achievements then
				local achievements = {};
				for i,achievementID in ipairs({ ... }) do
					local f = SearchForField("achievementID", achievementID);
					if #f > 0 then
						tinsert(achievements, f[1]);
					else
						return true;
					end
				end
				if #achievements < 1 then return true; end
				t.achievements = achievements;
			end
			local collected = true;
			for i,faction in ipairs(t.achievements) do
				if not faction.collected then
					collected = false;
					break;
				end
			end
			t:SetAchievementCollected(t.achievementID, collected);
		end
	end
	commonAchievementHandlers.META_OnClick = function(row, button)
		if button == "RightButton" then
			local t = row.ref;
			local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], t.achievements)).data;
			clone.description = t.description;
			return true;
		end
	end
	commonAchievementHandlers.META_OnTooltip = function(t, tooltipInfo)
		if t.collectible and t.achievements then
			tinsert(tooltipInfo, { left = " " });
			for i,achievement in ipairs(t.achievements) do
				tinsert(tooltipInfo, {
					left = " |T" .. achievement.icon .. ":0|t " .. achievement.text,
					right = app.L[achievement.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"],
					r = 1, g = 1, b = 1
				});
			end
		end
	end
	commonAchievementHandlers.MOUNTS_OnUpdate = function(t)
		if app.Settings.Collectibles.Mounts then
			local count,r = 0,{};
			for i,g in pairs(SearchForFieldContainer("spellID")) do
				for j,o in ipairs(g) do
					if ((o.f and o.f == app.FilterConstants.MOUNTS)
					or (o.filterID and o.filterID == app.FilterConstants.MOUNTS)) and not r[i] then
						if o.collected then count = count + 1; end
						r[i] = 1;
						break;
					end
				end
			end
			if t.rank > 1 then
				t.progress = math.min(count, t.rank);
				t.total = t.rank;
				t.collectible = false;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + t.total;
					parent.progress = (parent.progress or 0) + t.progress;
					t.visible = (t.progress < t.total or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			else
				t.collected = count >= 1;
				t.collectible = true;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + 1;
					if t.collected then parent.progress = (parent.progress or 0) + 1; end
					t.visible = (not t.collected or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			end
		else
			t.collected = nil;
			t.collectible = false;
			t.progress = nil;
			t.total = nil;
			t.visible = false;
		end
		return true;
	end
	commonAchievementHandlers.MOUNTS_OnTooltip = function(t, tooltipInfo)
		tinsert(tooltipInfo, { left = "Collect " .. t.rank .. " mounts." });
		if t.total and t.progress < t.total and t.rank >= 25 then
			tinsert(tooltipInfo, { left = " " });
			local c = 0;
			local template,r = {},{};
			for i,o in pairs(SearchForFieldContainer("spellID")) do
				local p = o[1];
				if ((p.f and p.f == app.FilterConstants.MOUNTS)
				or (p.filterID and p.filterID == app.FilterConstants.MOUNTS)) and not r[i] then
					r[i] = 1;
					if p.visible then
						c = c + 1;
						if c < 16 then
							tinsert(tooltipInfo, {
								left = " |T" .. p.icon .. ":0|t " .. p.text,
								right = app.L[p.collected and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"],
								r = 1, g = 1, b = 1
							});
						end
					end
				end
			end
			if c > 15 then tinsert(tooltipInfo, { left = " And " .. (c - 15) .. " more!" }); end
		end
	end
	commonAchievementHandlers.REPUTATIONS_OnUpdate = function(t)
		if app.Settings.Collectibles.Achievements then
			local count = 0;
			local ignored = app.IgnoredReputationsForAchievements;
			if not ignored then
				ignored = {[169] = 1};
				app.IgnoredReputationsForAchievements = ignored;
			end
			for factionID,g in pairs(SearchForFieldContainer("factionID")) do
				if not ignored[factionID] then
					for j=1,#g,1 do
						local o = g[j];
						if o.key == "factionID" and o.standing == 8 then
							count = count + 1;
							break;
						end
					end
				end
			end
			if t.rank > 1 then
				t.progress = math.min(count, t.rank);
				t.total = t.rank;
				t.collectible = false;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + t.total;
					parent.progress = (parent.progress or 0) + t.progress;
					t.visible = (t.progress < t.total or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			else
				t.collected = count >= 1;
				t.collectible = true;

				if app.GroupFilter(t) then
					local parent = t.parent;
					parent.total = (parent.total or 0) + 1;
					if t.collected then parent.progress = (parent.progress or 0) + 1; end
					t.visible = (not t.collected or app.CollectedItemVisibilityFilter(t));
				else
					t.visible = false;
				end
			end
		else
			t.collected = nil;
			t.collectible = false;
			t.progress = nil;
			t.total = nil;
			t.visible = false;
		end
		return true;
	end
	commonAchievementHandlers.REPUTATIONS_OnTooltip = function(t, tooltipInfo)
		tinsert(tooltipInfo, { left = "Raise " .. t.rank .. " reputations to Exalted." });
		if t.total and t.progress < t.total and t.rank >= 25 then
			tinsert(tooltipInfo, { left = " " });
			local ignored = app.IgnoredReputationsForAchievements;
			if not ignored then
				ignored = {[169] = 1};
				app.IgnoredReputationsForAchievements = ignored;
			end
			for i,o in ipairs(app:GetDataCache().g) do
				if o.headerID == app.HeaderConstants.FACTIONS then
					for j,p in ipairs(o.g) do
						if (p.visible or p.factionID == 909) and not ignored[p.factionID] and (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
							tinsert(tooltipInfo, {
								left = " |T" .. p.icon .. ":0|t " .. p.text,
								right = app.L[p.standing >= 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"],
								r = 1, g = 1, b = 1
							});
						end
					end
				end
			end
		end
	end
end
app.CreateAchievementCategory = app.CreateClass("AchievementCategory", "achievementCategoryID", categoryFields);