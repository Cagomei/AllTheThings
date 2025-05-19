-- Catalyst Module
local _, app = ...;
local L = app.L

-- Globals
local setmetatable,tonumber,wipe,ipairs
	= setmetatable,tonumber,wipe,ipairs

-- WOWAPI
local C_Item_GetItemInfoInstant
	= C_Item.GetItemInfoInstant

-- App
local containsAnyKey, GetRelativeField
	= app.containsAnyKey, app.GetRelativeField

-- TODO: should actually return a symlink for each bonusID to select the proper 'catalyst' armor listing from ATT
-- then narrow down the matching armor slot, apply the bonusIDs to the new item, and render into tooltip

-- Helpful Reference: https://www.raidbots.com/static/data/live/item-conversions.json
-- Wago: https://wago.tools/db2/ItemBonus?build=11.1.5.60568&filter%5BType%5D=37&page=2
-- References the ObjectID of the corresponding Catalyst object which contains the available Catalyst results in ATT
local PossibleCatalystBonusIDLookups = {
	-- SL
	-- S4
	[8118] = { objectID=375368,instanceID=1195 },
	[8131] = { objectID=375368,instanceID=1195 },
	[8132] = { objectID=375368,instanceID=1195 },
	[8133] = { objectID=375368,instanceID=1195 },
	[8136] = { objectID=375368,instanceID=1195 },

	-- DF
	-- S1
	[8821] = { objectID=382621,instanceID=1200 },
	[8822] = { objectID=382621,instanceID=1200 },
	[8823] = { objectID=382621,instanceID=1200 },
	[8824] = { objectID=382621,instanceID=1200 },
	[8825] = { objectID=382621,instanceID=1200 },
	-- S2
	[9222] = { objectID=382621,instanceID=1208 },
	[9223] = { objectID=382621,instanceID=1208 },
	[9224] = { objectID=382621,instanceID=1208 },
	[9225] = { objectID=382621,instanceID=1208 },
	[9226] = { objectID=382621,instanceID=1208 },
	-- S3
	[9505] = { objectID=382621,instanceID=1207 },
	[9506] = { objectID=382621,instanceID=1207 },
	[9507] = { objectID=382621,instanceID=1207 },
	[9508] = { objectID=382621,instanceID=1207 },
	[9509] = { objectID=382621,instanceID=1207 },
	-- S4
	[10870] = { objectID=382621,instanceID=1207 },
	[10871] = { objectID=382621,instanceID=1207 },
	[10872] = { objectID=382621,instanceID=1207 },
	[10873] = { objectID=382621,instanceID=1207 },
	[10874] = { objectID=382621,instanceID=1207 },

	-- TWW
	-- S1
	[10376] = { objectID=456208,instanceID=1273 },
	[10377] = { objectID=456208,instanceID=1273 },
	[10378] = { objectID=456208,instanceID=1273 },
	[10379] = { objectID=456208,instanceID=1273 },
	[10380] = { objectID=456208,instanceID=1273 },
}

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
	local itemID, _, _, itemEquipLoc, _, classID, _ = C_Item_GetItemInfoInstant(link)
	if not itemID then return end
	-- Armor only
	if classID ~= 4 then return end
	-- Slot
	if not CatalystArmorSlots[itemEquipLoc] then return end
	return itemEquipLoc
end

local function AddCatalystInformation(data, tooltipInfo, bonusID, slot)
	-- app.PrintDebug("Can Catalyst!",app:SearchLink(data))
	local catalystObjectInfo = PossibleCatalystBonusIDLookups[bonusID]
	local object = app.SearchForObject("objectID", catalystObjectInfo.objectID, "field")

	-- Create a Catalyst group to contain the resulting Catalyst Item
	local catalystResult = app.CreateRawText("Catalyst Result", {
		sym = {{"sub","catalyst_select_proper_tier_item",
			catalystObjectInfo.objectID,
			catalystObjectInfo.instanceID,
			app.ClassIndex,
			slot,
			data}}
	})
	-- incorporate the filled catalyst results into the raw data since it will always be a clone of any Sourced content
	app.FillGroups(catalystResult)
	-- local symresults = app.ResolveSymbolicLink(catalystResult)

	tooltipInfo[#tooltipInfo + 1] = {
		left = "WE CAN CATALYST THIS ITEM AS "..slot.." FROM BONUSID "..bonusID.." USING THE "..object.text
	}
	-- if symresults and #symresults > 0 then
	app.NestObject(data, catalystResult)
	app.PrintTable(data)
	app.PrintTable(data.g)
	app.PrintDebug("Nested Catalyst result to data!")
	-- end
end

app.AddEventHandler("OnLoad", function()
	-- add a tooltip hook to add information as to whether this Item can be catalyst-ed for needed appearances
	app.Settings.CreateInformationType("CatalystConversion", {
		text = "CatalystConversion",
		HideCheckBox = true,
		ForceActive = true,	-- TEMP
		priority = 2.87,
		Process = function(t, data, tooltipInfo)
			local bonuses = data.bonuses
			if not bonuses or #bonuses < 1 then return end
			local bonusID = containsAnyKey(PossibleCatalystBonusIDLookups, bonuses)
			if not bonusID then return end
			local slot = GetCatalystSlot(data)
			if not slot then return end

			AddCatalystInformation(data, tooltipInfo, bonusID, slot)
		end
	})
end)

local function catalyst_select_proper_tier_item(ResolveFunctions)
	local select, pop, contains, is, invtype, modID, sub =
		ResolveFunctions.select,
		ResolveFunctions.pop,
		ResolveFunctions.contains,
		ResolveFunctions.is,
		ResolveFunctions.invtype,
		ResolveFunctions.modID,
		ResolveFunctions.sub;
	return function(finalized, searchResults, o, cmd, objectID, instanceID, classID, armorSlot, baseItem)

		-- BonusID does not map 1:1 with specific Catalyst result to determine specific Item result...
		-- Can try finding the appropriate ItemID and then copy the ModID/BonusIDs to the catalyst Item version...

		-- Select the Catalyst Object
		-- TODO: need to standardize Catalyst data listings...
		select(finalized, searchResults, o, "select", "objectID", objectID)
		app.PrintDebug("Found",#searchResults,"objects for",objectID)

		-- Find the first Catalyst Object listed within the proper InstanceID
		local instancedObject
		for _,object in ipairs(searchResults) do
			if GetRelativeField(object, "instanceID", instanceID) then
				instancedObject = object
				app.PrintDebug("Found",instancedObject.hash,"object within instance",instanceID)
				break
			end
		end

		if not instancedObject then
			app.PrintDebug("Failed to match parent Instance for",instanceID)
			return
		end

		wipe(searchResults)
		searchResults[1] = instancedObject
		pop(finalized, searchResults)
		app.PrintDebug("Contains",#searchResults,"groups")

		-- Find the Class
		contains(finalized, searchResults, o, "contains", "c", classID);
		app.PrintDebug("Matching",#searchResults,"groups by c =",classID)
		pop(finalized, searchResults)
		app.PrintDebug("Class group contains",#searchResults,"items")

		-- Match the slot
		invtype(finalized, searchResults, o, "invtype", armorSlot);
		app.PrintDebug("Filtered to",#searchResults,"via slot",armorSlot)
	end
end

-- Event Handling
app.AddEventHandler("OnLoad", function()
	app.RegisterSymlinkSubroutine("catalyst_select_proper_tier_item", catalyst_select_proper_tier_item)
end)