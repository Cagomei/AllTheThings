local _, app = ...
local L = app.L

-- Globals
local rawget, select, tostring, ipairs, pairs, tinsert, tonumber
	= rawget, select, tostring, ipairs, pairs, tinsert, tonumber;
local math_min = math.min;

-- App & Module locals
local SearchForField, SearchForFieldContainer
	= app.SearchForField, app.SearchForFieldContainer;
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving;
local IsQuestFlaggedCompleted;
local ResolveSymbolicLink;
local IsSpellKnown;

-- WoW API Cache
local GetAchievementInfo, GetCategoryInfo
	= GetAchievementInfo, GetCategoryInfo;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;

-- Locals from future-loaded Modules
app.AddEventHandler("OnLoad", function()
	ResolveSymbolicLink = app.ResolveSymbolicLink
	IsQuestFlaggedCompleted = app.IsQuestFlaggedCompleted
	IsSpellKnown = app.IsSpellKnown;
end)

-- Cache Achievement Data if it exists.
local AchievementData = rawget(L, "ACHIEVEMENT_DATA") or {};
local AchievementCategoryData = rawget(L, "ACHIEVEMENT_CATEGORY_DATA") or {};
local AchievementCriteriaData = rawget(L, "ACHIEVEMENT_CRITERIA_DATA") or {};
local WorldMapOverlayData = rawget(L, "WORLD_MAP_OVERLAY_DATA") or {};
app.CreateAchievementCategory = app.CreateClass("AchievementCategory", "achievementCategoryID", {
	["defaultIcon"] = function(t)
		return app.asset("Category_Achievements");
	end,
	["defaultName"] = function(t)
		local data = GetCategoryInfo(t.achievementCategoryID);
		if data then return data; end
		return "Category " .. t.achievementCategoryID;
	end,
	["defaultParentCategoryID"] = function(t)
		local data = select(2, GetCategoryInfo(t.achievementCategoryID));
		if data then return data; end
		return -1;
	end,
	["name"] = function(t)
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.defaultIcon;
	end,
	["parentCategoryID"] = function(t)
		return t.defaultParentCategoryID;
	end,
	["ignoreSourceLookup"] = function(t)
		return true;
	end,
},
"WithData", {	-- When there is data related to the category available in the database module.
	["name"] = function(t)
		local name = t.data.name;
		if not IsRetrieving(name) then return name; end
		return t.defaultName;
	end,
	["parentCategoryID"] = function(t)
		return t.data.parent or t.defaultParentCategoryID;
	end,
	["icon"] = function(t)
		return t.data.icon or t.defaultIcon;
	end,
}, function(t)
	local data = AchievementCategoryData[t.achievementCategoryID];
	if data then
		t.data = data;
		return data;
	end
end);

-- Achievement Criteria Data have independent detection methods based on their internal type.
local GetItemID = app.WOWAPI.GetItemID;
local GetItemCount = app.WOWAPI.GetItemCount;
local GetPVPLifetimeStats = GetPVPLifetimeStats;
local GetNumBankSlots = GetNumBankSlots;
local GetFactionCurrentReputation = app.WOWAPI.GetFactionCurrentReputation;
local IgnoredReputationsForAchievements = {
	[169] = 1,	-- Steamweedle Cartel doesn't count toward reputation achievements
};
local function GetQuestCompleted(questID)
	if IsQuestFlaggedCompleted(questID) then
		return 1;
	else
		local quests = SearchForField("questID", questID);
		if quests then
			for i,quest in ipairs(quests) do
				if quest.providers then
					for i,provider in ipairs(quest.providers) do
						if provider[1] == "i" and GetItemCount(provider[2], true) > 0 then
							return 1;
						end
					end
				end
				if quest.g then
					for i,o in ipairs(quest.g) do
						if o.itemID and GetItemCount(o.itemID, true) > 0 then
							return 1;
						end
					end
				end
			end
		end
	end
	return 0;
end
local function GetSpellCompleted(spellID)
	if IsSpellKnown(spellID) then
		return 1;
	else
		local spells = SearchForField("spellID", spellID);
		if spells then
			for i,o in ipairs(spells) do
				if o.collected then return 1; end
				break;
			end
		end
	end
	return 0;
end
local function GetRelatedThingsForExaltedReputations(t, objects)
	for factionID,g in pairs(SearchForFieldContainer("factionID")) do
		if not IgnoredReputationsForAchievements[factionID] then
			for j,o in ipairs(g) do
				if o.key == "factionID" then
					tinsert(objects, o);
					break;
				end
			end
		end
	end
end
local function GetRelatedThingsForOwnItem(t, objects)
	local searchResults = SearchForField("itemID", t.asset);
	if searchResults then tinsert(objects, searchResults[1]); end
end
local function GetRelatedThingsForMounts(t, objects)
	for spellID,spells in pairs(SearchForFieldContainer("spellID")) do
		for i,spell in ipairs(spells) do
			if ((spell.f and spell.f == app.FilterConstants.MOUNTS)
			or (spell.filterID and spell.filterID == app.FilterConstants.MOUNTS)) then
				tinsert(objects, spell);
				break;
			end
		end
	end
end
local function GetRelatedThingsForPets(t, objects)
	for i,pets in pairs(SearchForFieldContainer("speciesID")) do
		tinsert(objects, pets[1]);
	end
end
local function GetRelatedThingsForQuest(t, objects)
	local searchResults = SearchForField("questID", t.asset);
	if searchResults then tinsert(objects, searchResults[1]); end
end
local function GetRelatedThingsForReputation(t, objects)
	local faction = app.CreateFaction(t.asset);
	if t.amount ~= 42000 then faction.minReputation = { t.asset, t.amount }; end
	tinsert(objects, faction);
end
local function GetRelatedThingsForSkillRanks(t, objects)
	local spellID = t.spellID;
	if spellID then
		local searchResults = SearchForField("spellID", spellID);
		if searchResults then tinsert(objects, searchResults[1]); end
	end
end
local function GetRelatedThingsForSpells(t, objects)
	local searchResults = SearchForField("spellID", t.asset);
	if searchResults then tinsert(objects, searchResults[1]); end
end
local GetRelatedThingsForSkillID = setmetatable({
	[777] = GetRelatedThingsForMounts,
	[778] = GetRelatedThingsForPets,
}, {
	__index = function(t, key)
		print("MISSING GetRelatedThingsForSkillID(" .. key .. ") handler.");
		return app.EmptyFunction;
	end,
});
local GetAchievementCriteriaCommandForSkillID = setmetatable({
	[777] = "CriteriaTypeForMounts",
	[778] = "CriteriaTypeForPets",
}, {
	__index = function(t, key)
		print("MISSING GetAchievementCriteriaCommandForSkillID(" .. key .. ") handler.");
		return app.EmptyFunction;
	end,
});
local AchievementCriteriaCommands = {
	CriteriaTypeForExaltedReputations = function()
		local count = 0;
		for factionID,g in pairs(SearchForFieldContainer("factionID")) do
			if not IgnoredReputationsForAchievements[factionID] then
				for j,o in ipairs(g) do
					if o.key == "factionID" and o.standing == 8 then
						count = count + 1;
						break;
					end
				end
			end
		end
		--print("Currently " .. count .. " Reputations at Exalted!");
		return count;
	end,
	CriteriaTypeForHonorableKills = function()
		local count = GetPVPLifetimeStats();
		--print("Currently " .. count .. " Honorable Kills!");
		return count;
	end,
	CriteriaTypeForMounts = function()
		local count = 0;
		for i,g in pairs(SearchForFieldContainer("spellID")) do
			for j,o in ipairs(g) do
				if ((o.f and o.f == app.FilterConstants.MOUNTS)
				or (o.filterID and o.filterID == app.FilterConstants.MOUNTS)) then
					if o.collected then count = count + 1; end
					break;
				end
			end
		end
		--print("Currently " .. count .. " Total Mounts!");
		return count;
	end,
	CriteriaTypeForPets = function()
		local count = 0;
		for i,g in pairs(SearchForFieldContainer("speciesID")) do
			for j,o in ipairs(g) do
				if o.collected then count = count + 1; end
				break;
			end
		end
		--print("Currently " .. count .. " Total Pets!");
		return count;
	end,
	CriteriaTypeForBankSlots = function()
		local count = GetNumBankSlots();
		--print("Currently " .. count .. " Bank Slots!");
		return count;
	end,
};
local AchievementCriteriaDataCache = setmetatable({}, {
	__index = function(t, key)
		local command = AchievementCriteriaCommands[key];
		if command then
			local value = command();
			t[key] = value;
			return value;
		else
			print("Could not find command '" .. key .. "'");
			t[key] = 0;
			return 0;
		end
	end,
});
local AchievementCriteriaQuestDataCache = setmetatable({}, {
	__index = function(t, key)
		local value = GetQuestCompleted(key);
		t[key] = value;
		return value;
	end,
});
local AchievementCriteriaSpellDataCache = setmetatable({}, {
	__index = function(t, key)
		local value = GetSpellCompleted(key);
		t[key] = value;
		return value;
	end,
});
local DefaultCriteriaFields = {	-- Type 45, 113
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["rank"] = function(t) return t.amount; end,
};
local ForBrokenTypesFields = {	-- Type 11 [Loremaster] / 0 [Kill an NPC]
	["collectible"] = app.ReturnFalse,
	["current"] = function(t)
		return 0;
	end,
};
local ForExaltedReputationsFields = {	-- Type 47
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["rank"] = function(t) return t.amount; end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForExaltedReputations;
	end,
};
local ForLevelFields = {	-- Type 5
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return app.Level;
	end,
	["rank"] = function(t) return t.amount; end,
	["lvl"] = function(t) return t.amount; end,
};
local ForOwnItemFields = {	-- Type 36
	["collectible"] = function(t)
		local searchResults = SearchForField("itemID", t.asset);
		local collectible = searchResults and #searchResults > 0;
		t.collectible = collectible;
		return collectible;
	end,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return GetItemCount(t.asset, true);
	end,
	["provider"] = function(t)
		local provider = {"i",t.asset};
		t.provider = provider;
		return provider;
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForOwnItem;
	end,
};
local ForQuestFields = {	-- Type 27
	["collectible"] = app.ReturnTrue,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return AchievementCriteriaQuestDataCache[t.asset];
	end,
	["sourceQuest"] = function(t)
		return t.asset;
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForQuest;
	end
};
local ForSkillCountFields = {	-- Type 75
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return AchievementCriteriaDataCache[GetAchievementCriteriaCommandForSkillID[t.asset]];
	end,
	["rank"] = function(t) return t.amount; end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForSkillID[t.asset];
	end
};
local ForSkillRankFields = {	-- Type 40
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.total;
	end,
	["current"] = function(t)
		local skill = app.CurrentCharacter.ActiveSkills[t.spellID];
		if skill then return skill[1]; end
		return 0;
	end,
	["name"] = function(t)
		local spellID = t.spellID;
		return spellID and GetSpellName(spellID);
	end,
	["total"] = function(t) return t.amount * 75; end,
	["rank"] = function(t) return t.amount; end,
	["spellID"] = function(t)
		return app.SkillDB.SkillToSpell[t.asset];
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForSkillRanks;
	end
};
local ForReputationFields = {	-- Type 46
	["collectible"] = app.ReturnTrue,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return GetFactionCurrentReputation(t.asset) or 0;
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForReputation;
	end,
	["ShouldShowRelatedThingsInTooltip"] = function(t)
		return true;
	end
}
local ForSpellsFields = {	-- Type 34
	["collectible"] = app.ReturnTrue,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return AchievementCriteriaSpellDataCache[t.asset];
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForSpells;
	end,
};
local ForExplorationFields = {	-- Type 43
	["collectible"] = function(t)
		return WorldMapOverlayData[t.asset];
	end,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		local overlay = WorldMapOverlayData[t.asset];
		if overlay then
			for i,explorationID in ipairs(overlay) do
				if app.CurrentCharacter.Exploration[explorationID] then
					return 1;
				end
			end
		end
		return 0;
	end,
};
local ForSubAchievementFields = {	-- Type 8
	["collectible"] = function(t)
		local achievements = SearchForField("achievementID", t.asset);
		if achievements and #achievements > 0 then
			t.collectible = true;
			return true;
		end
	end,
	["amount"] = function(t) return 1; end,
	["collected"] = function(t)
		return t.current >= t.amount;
	end,
	["current"] = function(t)
		return app.CurrentCharacter.Achievements[t.asset] and 1 or 0;
	end,
};
local function OnTooltipForCriteriaData(criteria, tooltipInfo)
	if criteria.collectible then
		tinsert(tooltipInfo, {
			left = " [" .. criteria.__criteriaUID .. "]: " .. tostring(criteria.text),
			right = "(" .. tostring(criteria.asset or "--") .. " @ " .. tostring(criteria.type) .. ") " .. tostring(criteria.progress) .. " / " .. tostring(criteria.total) .. " " .. app.GetCompletionIcon(criteria.collected),
			r = 1, g = 1, b = 1
		});
	end
end
local CreateCriteriaType = app.CreateClass("CriteriaType", "__criteriaUID", {
	RefreshCollectionOnly = true,
	["collectible"] = app.ReturnFalse,
	["collected"] = app.ReturnFalse,
	["amount"] = function(t) return 0; end,
	["name"] = function(t) return t.__criteriaUID; end,
	["progress"] = function(t)
		return math_min(t.current, t.total);
	end,
	["total"] = function(t) return t.amount; end,
	["current"] = function(t)
		return AchievementCriteriaDataCache[t.__type];
	end,
	["GetRelatedThings"] = function()
		return app.EmptyFunction;
	end,
	["OnTooltip"] = function(t)
		return OnTooltipForCriteriaData;
	end,
},
"ForBrokenTypes", ForBrokenTypesFields, function(t) return t.type == 11 or t.type == 0; end,
"ForBankSlots", DefaultCriteriaFields, function(t) return t.type == 45; end,
"ForSkillRank", ForSkillRankFields, function(t) return t.type == 40; end,
"ForSkillCount", ForSkillCountFields, function(t) return t.type == 75; end,
"ForSubAchievement", ForSubAchievementFields, function(t) return t.type == 8; end,
"ForExaltedReputations", ForExaltedReputationsFields, function(t) return t.type == 47; end,
"ForHonorableKills", DefaultCriteriaFields, function(t) return t.type == 113; end,
"ForReputation", ForReputationFields, function(t) return t.type == 46; end,
"ForLevel", ForLevelFields, function(t) return t.type == 5; end,
"ForOwnItem", ForOwnItemFields, function(t) return t.type == 36 or t.type == 57; end,
"ForQuest", ForQuestFields, function(t) return t.type == 27; end,
"ForSpells", ForSpellsFields, function(t) return t.type == 34; end,
"ForExploration", ForExplorationFields, function(t) return t.type == 43; end);

-- Add Handlers for updating the completion status
for id,criteria in pairs(AchievementCriteriaData) do
	local crit = CreateCriteriaType(id, criteria);
	AchievementCriteriaData[id] = crit;
	if crit.__type == "CriteriaType" then
		print("Unhandled criteria type", crit.type, crit.text);
	end
end
app.AddEventHandler("OnRecalculate", function()
	wipe(AchievementCriteriaDataCache);
	wipe(AchievementCriteriaQuestDataCache);
	wipe(AchievementCriteriaSpellDataCache);
end);

-- Achievement Criteria class. There are some criteria that show relative to other things
local criteriaFields = {
	RefreshCollectionOnly = true,
	["achievementID"] = function(t)
		return t.achID or t.criteriaParent.achievementID;
	end,
	["achievementData"] = function(t)
		local achievementID = t.achievementID;
		if achievementID then return AchievementData[achievementID] or app.EmptyTable; end
		return app.EmptyTable;
	end,
	["criteriaParent"] = function(t)
		return t.sourceParent or t.parent or app.EmptyTable;
	end,
	["collectible"] = app.ReturnFalse,
	["collected"] = app.ReturnFalse,
	["saved"] = app.ReturnFalse,
	["text"] = function(t)
		return L.CRITERIA_FORMAT:format(t.name or RETRIEVING_DATA);
	end,
	["defaultIcon"] = function(t)
		return app.GetIconFromProviders(t) or t.achievementData.icon or 136227;
	end,
	["defaultName"] = function(t)
		local name = app.GetNameFromProviders(t) or (t.parent and t.parent.name);
		if not IsRetrieving(name) then return name; end
		local achievementID = t.achievementID;
		if achievementID then
			return "@CRIEVE: INVALID ACHIEVEMENT CRITERIA achievementID:" .. achievementID .. ":" .. t.criteriaID;
		else
			return "@CRIEVE: INVALID ACHIEVEMENT CRITERIA " .. t.criteriaID;
		end
	end,
	["name"] = function(t)
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.defaultIcon;
	end,
	["coords"] = function(t)
		return t.criteriaParent.coords;
	end,
	["lvl"] = function(t)
		return t.achievementData.lvl or t.criteriaParent.lvl;
	end,
	["c"] = function(t)
		return t.achievementData.c or t.criteriaParent.c;
	end,
	["r"] = function(t)
		return t.achievementData.r or t.criteriaParent.r;
	end,
};
local validAchievementKeys = {
	achievementID = true,
	guildAchievementID = true
};
local GetAchievementCriteriaInfoByID = GetAchievementCriteriaInfoByID;
if GetAchievementCriteriaInfoByID then
	criteriaFields.collectible = function(t)
		return app.Settings.Collectibles.Achievements;
	end
	criteriaFields.collected = function(t)
		-- Check to see if the criteria was completed.
		local achievementID = t.achievementID;
		if achievementID then
			if app.CurrentCharacter.Achievements[achievementID] then return 1; end
			if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[achievementID] then return 2; end
			
			local criteriaID = t.criteriaID;
			if criteriaID then
				local collected = false;
				local status, err = pcall(function()
					collected = select(3, GetAchievementCriteriaInfoByID(achievementID, criteriaID, true));
				end);
				if not status then
					print("ERROR", achievementID, criteriaID, err);
				end
				return collected;
			end
		end
	end
	criteriaFields.saved = function(t)
		-- Check to see if the criteria was completed.
		local achievementID = t.achievementID;
		if achievementID then
			if app.CurrentCharacter.Achievements[achievementID] then return true; end
			local criteriaID = t.criteriaID;
			if criteriaID then
				return select(3, GetAchievementCriteriaInfoByID(achievementID, criteriaID, true));
			end
		end
	end
	criteriaFields.icon = function(t)
		local achievementID = t.achievementID;
		return achievementID and select(10, GetAchievementInfo(achievementID)) or t.defaultIcon;
	end
	criteriaFields.name = function(t)
		local achievementID = t.achievementID;
		if achievementID then
			local criteriaID = t.criteriaID;
			if criteriaID then
				local name = GetAchievementCriteriaInfoByID(achievementID, criteriaID, true);
				if not IsRetrieving(name) then
					t.name = name;
					return name;
				end
			end
		end
		return t.defaultName;
	end
	local function onTooltipForAchievementCriteria(t, tooltipInfo)
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
					local criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaUID = GetAchievementCriteriaInfoByID(achievementID, criteriaID, true)
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
	criteriaFields.OnTooltip = function()
		return onTooltipForAchievementCriteria;
	end
	
	local achievementCacheByID = setmetatable({}, {
		__index = function(t, id)
			local searchResults = SearchForField("achievementID", id);
			if searchResults then
				for i,achievement in ipairs(searchResults) do
					if validAchievementKeys[achievement.key] then
						t[id] = achievement;
						return achievement;
					end
				end
			end
			print("FAILED TO CACHE ACHIEVEMENT", id);
			local achievement = app.EmptyTable;
			t[id] = achievement;
			return achievement;
		end,
	});
	local ogCriteriaFields = {
		lvl = criteriaFields.lvl,
		c = criteriaFields.c,
		r = criteriaFields.r,
	}
	for key,_ in pairs(ogCriteriaFields) do
		criteriaFields[key] = function(t)
			return achievementCacheByID[t.achievementID][key] or ogCriteriaFields[key](t);
		end
	end
end
local function OnTooltipForAchievementCriteriaData(t, tooltipInfo)
	local achievementID = t.achievementID;
	if achievementID then
		tinsert(tooltipInfo, {
			left = L.CRITERIA_FOR,
			right = t.achievementData.text or achievementID,
		});
	end
	if t.ShouldShowRelatedThingsInTooltip then
		local relatedThings = {};
		t.GetRelatedThings(t.data, relatedThings);
		if #relatedThings > 0 then
			tinsert(tooltipInfo, { left = " " });
			for j,thing in ipairs(relatedThings) do
				tinsert(tooltipInfo, {
					left = "  |T" .. thing.icon .. ":0|t " .. thing.text,
					right = app.GetProgressTextForTooltip(thing)
				});
			end
		end
	end
	if IsShiftKeyDown() then
		local criteriaInfo = {};
		t.data.OnTooltip(t.data, criteriaInfo);
		if #criteriaInfo > 0 then
			tinsert(tooltipInfo, { left = " " });
			for i,info in ipairs(criteriaInfo) do
				tinsert(tooltipInfo, info);
			end
		end
	end
end
app.CreateAchievementCriteria = app.CreateClass("AchievementCriteria", "criteriaID", criteriaFields,
"WithData", {	-- When there is data related to the criteria available in the database module.
	["collectible"] = function(t)
		return app.Settings.Collectibles.Achievements and t.data.collectible;
	end,
	["trackable"] = function(t)
		return t.data.collectible;
	end,
	["name"] = function(t)
		local name = t.data.text;
		if not IsRetrieving(name) then return name; end
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.data.icon or t.defaultIcon;
	end,
	["rank"] = function(t) return t.data.rank; end,
	["collected"] = function(t)
		if t.data.collectible then
			-- Check to see if the criteria was completed.
			local achievementID = t.achievementID;
			if achievementID then
				if app.CurrentCharacter.Achievements[achievementID] then return 1; end
				if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[achievementID] then return 2; end
			end
			return t.data.collected and 1;
		end
	end,
	["saved"] = function(t)
		if t.data.collectible then
			local achievementID = t.achievementID;
			if achievementID and app.CurrentCharacter.Achievements[achievementID] then
				return true;
			end
			return t.data.collected;
		end
	end,
	["GetRelatedThings"] = function(t)
		return t.data.GetRelatedThings;
	end,
	["ShouldShowRelatedThingsInTooltip"] = function(t)
		return t.data.ShouldShowRelatedThingsInTooltip;
	end,
	["OnTooltip"] = function(t)
		return OnTooltipForAchievementCriteriaData;
	end,
}, function(t)
	local data = AchievementCriteriaData[t.criteriaID];
	if data then
		t.data = data;
		return data;
	end
end);


-- Achievement Data has operator assignments that dictate behaviour
local function SetAchievementCollected(t, achievementID, collected)
	return app.SetCollected(t, "Achievements", achievementID, collected);
end
local function GetRelatedThingsForAchievementData(t, objects)
	local criteriaData = t.criteriaData;
	if criteriaData then
		if criteriaData then
			for i,data in ipairs(criteriaData) do
				data.GetRelatedThings(data, objects);
			end
		end
	end
end
local function OnTooltipForAchievementData(t, tooltipInfo)
	local criteriaData = t.criteriaData;
	if #criteriaData > 0 then
		local relatedThings = {};
		for i,criteria in ipairs(criteriaData) do
			if criteria.ShouldShowRelatedThingsInTooltip then
				criteria.GetRelatedThings(criteria, relatedThings);
			end
		end
		
		if #relatedThings > 0 then
			tinsert(tooltipInfo, { left = " " });
			for j,thing in ipairs(relatedThings) do
				tinsert(tooltipInfo, {
					left = "  |T" .. thing.icon .. ":0|t " .. thing.text,
					right = app.GetProgressTextForTooltip(thing)
				});
			end
		end
		
		if IsShiftKeyDown() then
			local criteriaInfo = {};
			for i,criteria in ipairs(criteriaData) do
				criteria.OnTooltip(criteria, criteriaInfo);
			end
			if #criteriaInfo > 0 then
				tinsert(tooltipInfo, { left = " " });
				tinsert(tooltipInfo, {
					left = "Total Criteria",
					right = tostring(#criteriaInfo),
					r = 0.8, g = 0.8, b = 1
				});
				for i,info in ipairs(criteriaInfo) do
					tinsert(tooltipInfo, info);
				end
			end
		end
	end
end
local CreateAchievementDataType = app.CreateClass("AchievementDataType", "__achUID", {
	RefreshCollectionOnly = true,
	["collectible"] = function(t)
		-- This will cache the data for collectible.
		local criteriaData = t.criteriaData;
		if criteriaData then return t.collectible; end
	end,
	["collected"] = function(t)
		local criteriaData = t.criteriaData;
		if criteriaData then
			local current = 0;
			for i,data in ipairs(criteriaData) do
				if data.collectible then
					if data.collected then
						current = current + 1;
					end
				end
			end
			if current == t.total then
				return 1;
			elseif current > 0 then
				if t.requireAny then
					return 1;
				elseif current >= (t.amount or 1) then
					return 1;
				end
			end
		end
	end,
	["name"] = function(t) return "@CRIEVE: INVALID ACHIEVEMENT " .. t.__achUID; end,
	["link"] = function(t) return "|cffffff00[" .. t.name .."]|r"; end,
	["searchKey"] = function(t) return "achievementID"; end,
	["total"] = function(t)
		return #t.criteriaData;
	end,
	["lvl"] = function(t)
		local criteriaData = t.criteriaData;
		if criteriaData then
			for i,data in ipairs(criteriaData) do
				if data.lvl then return data.lvl; end
			end
		end
	end,
	["rank"] = function(t)
		local criteriaData = t.criteriaData;
		if criteriaData then
			for i,data in ipairs(criteriaData) do
				if data.rank then return data.rank; end
			end
		end
	end,
	["type"] = function(t)
		local criteriaData = t.criteriaData;
		if criteriaData then
			for i,data in ipairs(criteriaData) do
				return data.type;
			end
		end
	end,
	["criteriaData"] = function(t)
		local criteriaData = {};
		local total = 0;
		local collectible = false;
		local criteria = t.criteria;
		if criteria then
			for i,criteriaID in ipairs(criteria) do
				local data = AchievementCriteriaData[criteriaID];
				if data then
					criteriaData[1 + #criteriaData] = data;
					if data.collectible then
						collectible = true;
						total = total + 1;
					end
				end
			end
		end
		t.criteriaData = criteriaData;
		t.collectible = collectible;
		t.total = total;
		t.requireAny = t.operator == 8;
		return criteriaData;
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForAchievementData;
	end,
	["OnTooltip"] = function(t)
		return OnTooltipForAchievementData;
	end,
});
for id,achievement in pairs(AchievementData) do
	AchievementData[id] = CreateAchievementDataType(id, achievement);
end
local function RefreshAchievementData()
	for id,achievement in pairs(AchievementData) do
		if achievement.collectible then
			SetAchievementCollected(achievement, id, achievement.collected);
		end
	end
end
app.AddEventHandler("OnRecalculate", RefreshAchievementData);
if app.GameBuildVersion < 30000 then
	app:RegisterEvent("PLAYERBANKSLOTS_CHANGED");
	app.events.PLAYERBANKSLOTS_CHANGED = RefreshAchievementData;
end

-- Achievement Class Fields
local fields = {
	RefreshCollectionOnly = true,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Achievements;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.Achievements[t.achievementID] then return 1; end
		if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[t.achievementID] then return 2; end
	end,
	["defaultName"] = function(t)
		return app.GetNameFromProviders(t) or ("@CRIEVE: INVALID ACHIEVEMENT " .. t.achievementID);
	end,
	["defaultIcon"] = function(t)
		return app.GetIconFromProviders(t) or t.parent.icon or 311226;
	end,
	["text"] = function(t)
		return "|cffffff00[" .. t.name .. "]|r";
	end,
	["name"] = function(t)
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.defaultIcon;
	end,
	["parentCategoryID"] = function(t)
		return -1;
	end,
	["GetRelatedThings"] = function(t)
		return app.EmptyFunction;
	end,
};

-- TEMPORARY
fields.SetAchievementCollected = function(t)
	return SetAchievementCollected;
end

-- Check if the Achievement API is available.
if GetCategoryInfo and (GetCategoryInfo(92) ~= "" and GetCategoryInfo(92) ~= nil) then
	-- Achievements are in. We can use the API.
	local GetAchievementLink = _G["GetAchievementLink"];
	local GetAchievementCategory = _G["GetAchievementCategory"];
	local oldNameFunc, oldIconFunc = fields.defaultName, fields.defaultIcon;
	fields.defaultName = function(t)
		local name = select(2, GetAchievementInfo(t.achievementID));
		if not IsRetrieving(name) then return name; end
		return oldNameFunc(t);
	end
	fields.defaultIcon = function(t)
		local icon = select(10, GetAchievementInfo(t.achievementID));
		if icon then return icon; end
		return oldIconFunc(t);
	end
	fields.link = function(t)
		return GetAchievementLink(t.achievementID);
	end
	fields.parentCategoryID = function(t)
		return GetAchievementCategory(t.achievementID) or -1;
	end
	fields.isStatistic = function(t)
		return select(15, GetAchievementInfo(t.achievementID));
	end
	local GetAchievementNumCriteria = _G["GetAchievementNumCriteria"];
	local GetAchievementCriteriaInfo = _G["GetAchievementCriteriaInfo"];
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
	fields.OnTooltip = function()
		return onTooltipForAchievement;
	end
	
	-- Setup a handler that will manage completion checks to keep it optimized.
	local function CheckAchievementCollectionStatus(achievementID)
		achievementID = tonumber(achievementID) or achievementID;
		local collected = select(13, GetAchievementInfo(achievementID));
		if collected ~= app.CurrentCharacter.Achievements[achievementID] then
			local reference;
			for i,o in ipairs(SearchForField("achievementID", achievementID)) do
				if o.key == "achievementID" or o.key == "guildAchievementID" then
					reference = o;
					break;
				end
			end
			SetAchievementCollected(reference or app.CreateAchievement(achievementID), achievementID, collected);
		end
	end
	local function refreshAchievementCollection()
		if ATTAccountWideData then
			local charAchievements = app.CurrentCharacter.Achievements;
			for achievementID,container in pairs(SearchForFieldContainer("achievementID")) do
				if not AchievementData[achievementID] then
					local collected = select(13, GetAchievementInfo(achievementID));
					if collected ~= charAchievements[achievementID] then
						local reference;
						for i,o in ipairs(container) do
							if validAchievementKeys[o.key] then
								reference = o;
								break;
							end
						end
						SetAchievementCollected(reference or app.CreateAchievement(achievementID), achievementID, collected);
					end
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
else
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
	app.CommonAchievementHandlers = {
		LOREMASTER_OnClick = function(row, button)
			if button == "RightButton" then
				local t = row.ref;
				local data = t.quests or (t.BuildQuests and t:BuildQuests());
				local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], data)).data;
				clone.description = t.description;
				return true;
			end
		end,
		LOREMASTER_CONTINENT_OnClick = function(row, button)
			if button == "RightButton" then
				local t = row.ref;
				local data = t.structures or (t.BuildStructures and t:BuildStructures()) or t.quests;
				local clone = app:CreateMiniListForGroup(app.CreateAchievement(t[t.key], data)).data;
				clone.description = t.description;
				return true;
			end
		end,
		LOREMASTER_CONTINENT_OnUpdate = function(t, mapID, ...)
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
		end,
		LOREMASTER_OnUpdate = function(t, ...)
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
		end,
		LOREMASTER_OnTooltip = function(t, tooltipInfo)
			if t.collectible and t.p and not t.collected then
				tinsert(tooltipInfo, { left = " " });
				tinsert(tooltipInfo, {
					right = app.Modules.Color.GetProgressText(min(t.rank, t.p),t.rank),
					r = 1, g = 1, b = 1
				});
			end
		end,
		
	};
end
local function GetRelatedThingsForAchievementData(t, objects)
	local func = t.data.GetRelatedThings;
	if func then func(t.data, objects); end
end
local function OnTooltipForAchievementData(t, tooltipInfo)
	t.data.OnTooltip(t.data, tooltipInfo);
end
app.CreateAchievement = app.CreateClass("Achievement", "achievementID", fields,
"WithData", {	-- When there is data related to the criteria available in the database module.
	["collectible"] = function(t)
		return app.Settings.Collectibles.Achievements and t.data.collectible;
	end,
	["trackable"] = function(t)
		return t.data.collectible;
	end,
	["name"] = function(t)
		local name = t.data.name;
		if not IsRetrieving(name) then return name; end
		return t.defaultName;
	end,
	["icon"] = function(t)
		return t.data.icon or t.defaultIcon;
	end,
	["description"] = function(t)
		return t.data.description;
	end,
	["rank"] = function(t) return t.data.rank; end,
	["lvl"] = function(t) return t.data.lvl; end,
	["type"] = function(t) return t.data.type; end,
	["parentCategoryID"] = function(t) return t.data.category or -1; end,
	["collected"] = function(t)
		if t.data.collectible then
			-- Check to see if the criteria was completed.
			local achievementID = t.achievementID;
			if achievementID then
				if app.CurrentCharacter.Achievements[achievementID] then return 1; end
				if app.Settings.AccountWide.Achievements and ATTAccountWideData.Achievements[achievementID] then return 2; end
			end
			return t.data.collected and 1;
		end
	end,
	["saved"] = function(t)
		if t.data.collectible then
			local achievementID = t.achievementID;
			if achievementID and app.CurrentCharacter.Achievements[achievementID] then
				return true;
			end
			return t.data.collected;
		end
	end,
	["GetRelatedThings"] = function(t)
		return GetRelatedThingsForAchievementData;
	end,
	["OnTooltip"] = function(t)
		return OnTooltipForAchievementData;
	end,
}, function(t)
	local data = AchievementData[t.achievementID];
	if data then
		t.data = data;
		return data;
	end
end);

-- Guild Achievements
app.CreateGuildAchievement = app.ExtendClass("Achievement", "GuildAchievement", "guildAchievementID", {
	collectible = app.ReturnFalse,
	achievementID = function(t) return t.guildAchievementID; end,
	isGuild = app.ReturnTrue,
});
app.CreateGuildAchievementCriteria = app.ExtendClass("AchievementCriteria", "GuildAchievementCriteria", "guildCriteriaID", {
	collectible = app.ReturnFalse,
	criteriaID = function(t) return t.guildCriteriaID; end,
	isGuild = app.ReturnTrue,
});