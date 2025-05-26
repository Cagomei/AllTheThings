-- Catalyst Module
local _, app = ...;

-- Globals
local setmetatable,tonumber,ipairs,tremove
	= setmetatable,tonumber,ipairs,tremove

-- WOWAPI
local C_Item_GetItemInfoInstant,C_Item_GetItemUpgradeInfo
	= C_Item.GetItemInfoInstant,C_Item.GetItemUpgradeInfo

-- App
local containsAnyKey
	= app.containsAnyKey

-- Catalyst API Implementation
-- Access via AllTheThings.Modules.Catalyst
local api = {}
app.Modules.Catalyst = api

-- TODO: should actually return a symlink for each bonusID to select the proper 'catalyst' armor listing from ATT
-- then narrow down the matching armor slot, apply the bonusIDs to the new item, and render into tooltip

-- Helpful Reference: https://www.raidbots.com/static/data/live/item-conversions.json
-- Wago: https://wago.tools/db2/ItemBonus?build=11.1.5.60568&filter%5BType%5D=37&page=2
-- References the ObjectID of the corresponding Catalyst object which contains the available Catalyst results in ATT
local PossibleCatalystBonusIDLookups = app.ItemConversionDB
-- {
-- 	-- SL
-- 	-- S4
-- 	[8118] = { objectID=375368,instanceID=1195 },
-- 	[8131] = { objectID=375368,instanceID=1195 },
-- 	[8132] = { objectID=375368,instanceID=1195 },
-- 	[8133] = { objectID=375368,instanceID=1195 },
-- 	[8136] = { objectID=375368,instanceID=1195 },

-- 	-- DF
-- 	-- S1
-- 	[8821] = { objectID=382621,instanceID=1200 },
-- 	[8822] = { objectID=382621,instanceID=1200 },
-- 	[8823] = { objectID=382621,instanceID=1200 },
-- 	[8824] = { objectID=382621,instanceID=1200 },
-- 	[8825] = { objectID=382621,instanceID=1200 },
-- 	-- S2
-- 	[9222] = { objectID=382621,instanceID=1208 },
-- 	[9223] = { objectID=382621,instanceID=1208 },
-- 	[9224] = { objectID=382621,instanceID=1208 },
-- 	[9225] = { objectID=382621,instanceID=1208 },
-- 	[9226] = { objectID=382621,instanceID=1208 },
-- 	-- S3
-- 	[9505] = { objectID=382621,instanceID=1207 },
-- 	[9506] = { objectID=382621,instanceID=1207 },
-- 	[9507] = { objectID=382621,instanceID=1207 },
-- 	[9508] = { objectID=382621,instanceID=1207 },
-- 	[9509] = { objectID=382621,instanceID=1207 },
-- 	-- S4
-- 	[10870] = { objectID=382621,instanceID=1207 },
-- 	[10871] = { objectID=382621,instanceID=1207 },
-- 	[10872] = { objectID=382621,instanceID=1207 },
-- 	[10873] = { objectID=382621,instanceID=1207 },
-- 	[10874] = { objectID=382621,instanceID=1207 },

-- 	-- TWW
-- 	-- S1
-- 	[10376] = { objectID=456208,instanceID=1273 },
-- 	[10377] = { objectID=456208,instanceID=1273 },
-- 	[10378] = { objectID=456208,instanceID=1273 },
-- 	[10379] = { objectID=456208,instanceID=1273 },
-- 	[10380] = { objectID=456208,instanceID=1273 },
-- }

local CatalystArmorSlots = {
	["INVTYPE_HEAD"] = true,
	["INVTYPE_SHOULDER"] = true,
	["INVTYPE_BODY"] = true,
	["INVTYPE_CHEST"] = true,
	["INVTYPE_WAIST"] = true,
	["INVTYPE_LEGS"] = true,
	["INVTYPE_FEET"] = true,
	["INVTYPE_WRIST"] = true,
	["INVTYPE_HAND"] = true,
	["INVTYPE_CLOAK"] = true,
	["INVTYPE_ROBE"] = true,
}

local function GetCatalystSlot(data)
	local link = data.link
	if not link then return end

	local itemID, _, _, itemEquipLoc, _, classID, _ = C_Item_GetItemInfoInstant(link)
	if not itemID then return end

	-- Armor only
	if classID ~= 4 then return end

	-- Slot
	if not CatalystArmorSlots[itemEquipLoc] then return end

	return itemEquipLoc
end

local CatalystUpgradeTrackShift = {
	-- 972 = Veteran = LFR
	[972] = 973,
	-- 973 = Champion = Normal
	[973] = 974,
	-- 974 = Hero = Heroic
	[974] = 978,
	-- 978 = Myth = Mythic
	[978] = 978,
}

-- local function AddCatalystInformation(data, tooltipInfo, bonusID, slot)
-- 	local catalystID = PossibleCatalystBonusIDLookups[bonusID]
-- 	-- app.PrintDebug("Can Catalyst!",catalystID,app:SearchLink(data))
-- 	local upgradeInfo = C_Item_GetItemUpgradeInfo(data.link)
-- 	if not upgradeInfo then return end -- shouldn't happen

-- 	local upgradeTrackID = upgradeInfo.trackStringID or 0
-- 	local upgradeLevel = upgradeInfo.currentLevel or 0
-- 	tooltipInfo[#tooltipInfo + 1] = {
-- 		left = "WE CAN CATALYST THIS ITEM AS "..slot.." FROM BONUSID "..bonusID.." USING CATALYSTID "..catalystID..":"..upgradeTrackID.."@"..upgradeLevel
-- 	}

-- 	if true then return end

-- 	-- If our upgrade level is 4+ then the item is actually on the next matching trackID for catalyst output
-- 	if upgradeLevel > 4 then
-- 		upgradeTrackID = CatalystUpgradeTrackShift[upgradeTrackID]
-- 	end

-- 	-- Create a Catalyst group to contain the resulting Catalyst Item
-- 	local catalystResult = app.CreateRawText("Catalyst Result", {
-- 		sym = {{"sub","catalyst_select_proper_tier_item",
-- 			catalystID,
-- 			upgradeTrackID,
-- 			app.ClassIndex,
-- 			slot,
-- 			data}}
-- 	})
-- 	-- incorporate the filled catalyst results into the raw data since it will always be a clone of any Sourced content
-- 	app.FillGroups(catalystResult)
-- 	-- local symresults = app.ResolveSymbolicLink(catalystResult)

-- 	-- tooltipInfo[#tooltipInfo + 1] = {
-- 	-- 	left = "WE CAN CATALYST THIS ITEM AS "..slot.." FROM BONUSID "..bonusID.." USING THE "..object.text
-- 	-- }
-- 	-- if symresults and #symresults > 0 then
-- 	app.NestObject(data, catalystResult)
-- 	-- app.PrintDebug("CATALYST GROUP")
-- 	-- app.PrintTable(data)
-- 	-- app.PrintTable(data.g)
-- 	-- app.PrintDebug("Nested Catalyst result to data!")
-- 	-- end
-- end

-- app.AddEventHandler("OnLoad", function()
-- 	-- add a tooltip hook to add information as to whether this Item can be catalyst-ed for needed appearances
-- 	app.Settings.CreateInformationType("CatalystConversion", {
-- 		text = "CatalystConversion",
-- 		HideCheckBox = true,
-- 		ForceActive = true,	-- TEMP
-- 		priority = 2.87,
-- 		Process = function(t, data, tooltipInfo)
-- 			local bonuses = data.bonuses
-- 			if not bonuses or #bonuses < 1 then return end
-- 			local bonusID = containsAnyKey(PossibleCatalystBonusIDLookups, bonuses)
-- 			if not bonusID then return end
-- 			local slot = GetCatalystSlot(data)
-- 			if not slot then return end

-- 			AddCatalystInformation(data, tooltipInfo, bonusID, slot)
-- 		end
-- 	})
-- end)

local function GetCatalyst(data)
	-- app.PrintDebug("GetCatalyst", data.hash)
	local bonuses = data.bonuses
	if not bonuses or #bonuses < 1 then return end
	local bonusID = containsAnyKey(PossibleCatalystBonusIDLookups, bonuses)
	if not bonusID then return end
	local slot = GetCatalystSlot(data)
	if not slot then return end

	local catalystID = PossibleCatalystBonusIDLookups[bonusID]
	-- app.PrintDebug("Can Catalyst!",catalystID,app:SearchLink(data))
	local upgradeInfo = C_Item_GetItemUpgradeInfo(data.link)
	if not upgradeInfo then return end -- shouldn't happen

	local upgradeTrackID = upgradeInfo.trackStringID or 0
	local upgradeLevel = upgradeInfo.currentLevel or 0

	-- If our upgrade level is 5+ then the item is actually on the next matching trackID for catalyst output
	if upgradeLevel > 4 then
		upgradeTrackID = CatalystUpgradeTrackShift[upgradeTrackID]
	end

	-- Create a Catalyst group to contain the resulting Catalyst Item
	local SymlinkGroup = {
		sym = {{"sub","catalyst_select_proper_tier_item",
			catalystID,
			upgradeTrackID,
			app.ClassIndex,
			slot,
			data}}
	}
	local catalystResults = app.ResolveSymbolicLink(SymlinkGroup, true)
	local catalystResult = catalystResults and catalystResults[1]

	if not catalystResult then
		app.PrintDebug("Catalyst Item failed to find matching catalyst output",app:SearchLink(data))
		return
	end

	-- Copy all but the catalyst bonusID to the resulting item
	tremove(bonuses, app.indexOf(bonuses, bonusID))
	catalystResult.bonuses = app.CloneArray(bonuses)

	-- app.PrintDebug("Catalyst Result:",catalystResult.hash,app:SearchLink(catalystResult))
	-- app.PrintTable(catalystResult.bonuses)
	data._cata = catalystResult
	return catalystResult
end

local function catalyst_select_proper_tier_item(ResolveFunctions)
	local select, pop, contains, find, invtype =
		ResolveFunctions.select,
		ResolveFunctions.pop,
		ResolveFunctions.contains,
		ResolveFunctions.find,
		ResolveFunctions.invtype
	return function(finalized, searchResults, o, cmd, catalystID, trackID, classID, armorSlot, baseItem)

		-- BonusID does not map 1:1 with specific Catalyst result to determine specific Item result...
		-- Can try finding the appropriate ItemID and then copy the ModID/BonusIDs to the catalyst Item version...

		-- Select the Catalyst Object
		-- TODO: need to standardize Catalyst data listings...
		-- 1 Catalyst per Tier, list entirely within respective Raid
		select(finalized, searchResults, o, "select", "catalystID", catalystID)
		-- app.PrintDebug("Found",#searchResults,"catalysts for",catalystID)

		-- Find the Upgrade Track
		find(finalized, searchResults, o, "find", "trackID", trackID)
		-- app.PrintDebug("Track group contains",#searchResults,"groups")
		pop(finalized, searchResults)

		-- Find the Class
		contains(finalized, searchResults, o, "contains", "c", classID)
		-- app.PrintDebug("Matching",#searchResults,"groups by c =",classID)
		pop(finalized, searchResults)	-- this includes the sym on the Class
		-- app.PrintDebug("Class group contains",#searchResults,"items")

		-- Match the slot
		invtype(finalized, searchResults, o, "invtype", armorSlot)
		-- app.PrintDebug("Filtered to",#searchResults,"via slot",armorSlot)
	end
end

-- Event Handling
app.AddEventHandler("OnLoad", function()
	app.RegisterSymlinkSubroutine("catalyst_select_proper_tier_item", catalyst_select_proper_tier_item)
end)

-- Returns the different and upgraded version of 't' (via item link/bonuses or 'up' field)
api.ViaCatalyst = function(t)

	-- app.PrintDebug("NU:",t.modItemID)
	local cata = t._cata or GetCatalyst(t);
	if cata then return cata end
end