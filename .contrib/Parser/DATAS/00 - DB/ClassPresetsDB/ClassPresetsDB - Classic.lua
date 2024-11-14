-- #IF NOT ANYCLASSIC
if true then return end
-- #ENDIF
-------------------------------------
--   P R E S E T S   M O D U L E   --
-------------------------------------

local ClassUsesLowerArmorType = false
-- #IF BEFORE 4.0.0
ClassUsesLowerArmorType = true
-- #ENDIF

ExportDB._Compressed.Presets = true
ExportDB._Compressed.PresetTransmogs = true
ExportDB.Presets = {
	["DEATHKNIGHT"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		true, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		false, -- [20]
		true, -- [21]
		true, -- [22]
		true, -- [23]
		true, -- [24]
		true, -- [25]
		true, -- [26]
		false, -- [27]
		false, -- [28]
		true, -- [29]
		false, -- [30]
		false, -- [31]
		false, -- [32]
		false, -- [33]
		false, -- [34]
		false, -- [35]
		false, -- [36]
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = true,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[104] = true,
		[105] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
	["DRUID"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		ClassUsesLowerArmorType, -- [4] CLOTH
		true, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20]
		false, -- [21]
		false, -- [22]
		true, -- [23]
		true, -- [24]
		false, -- [25]
		false, -- [26]
		false, -- [27]
		true, -- [28]
		true, -- [29]
		true, -- [30]
		false, -- [31]
		false, -- [32]
		false, -- [33]
		true, -- [34]
		false, -- [35]
		false, -- [36]
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = true,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[104] = true,
		[105] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
	["HUNTER"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		ClassUsesLowerArmorType, -- [5] LEATHER
		true, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20]
		true, -- [21]
		true, -- [22]
		false, -- [23]
		false, -- [24]
		true, -- [25]
		true, -- [26]
		false, -- [27]
		true, -- [28]
		true, -- [29]
		true, -- [30]
		true, -- [31]
		true, -- [32]
		true, -- [33]
		true, -- [34]
		false, -- [35]
		false, -- [36]
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = false,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[105] = true,
		[104] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
	["MAGE"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		true, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20]
		false, -- [21]
		false, -- [22]
		false, -- [23]
		false, -- [24]
		true, -- [25]
		false, -- [26]
		true, -- [27]
		true, -- [28]
		false, -- [29]
		false, -- [30]
		false, -- [31]
		false, -- [32]
		false, -- [33]
		false, -- [34]
		false, -- [35]
		false, -- [36]
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = false,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[104] = true,
		[105] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
	["PALADIN"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		ClassUsesLowerArmorType, -- [4] CLOTH
		ClassUsesLowerArmorType, -- [5] LEATHER
		ClassUsesLowerArmorType, -- [6] MAIL
		true, -- [7] PLATE
		true, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		false, -- [20]
		true, -- [21]
		true, -- [22]
		true, -- [23]
		true, -- [24]
		true, -- [25]
		true, -- [26]
		false, -- [27]
		false, -- [28]
		true, -- [29]
		false, -- [30]
		false, -- [31]
		false, -- [32]
		false, -- [33]
		false, -- [34]
		false, -- [35]
		false, -- [36]
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = true,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[104] = true,
		[105] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
	["PRIEST"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		true, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		[20] = true,
		[21] = false,
		[22] = false,
		[23] = true,
		[24] = false,
		[25] = false,
		[26] = false,
		[27] = true,
		[28] = true,
		[29] = false,
		[31] = false,
		[32] = false,
		[33] = false,
		[34] = false,
		[35] = false,
		[36] = false,
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = false,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[104] = true,
		[105] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
	["ROGUE"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		true, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20]
		true, -- [21]
		false, -- [22]
		true, -- [23]
		false, -- [24]
		true, -- [25]
		false, -- [26]
		false, -- [27]
		false, -- [28]
		false, -- [29]
		nil, -- [30]
		true, -- [31]
		true, -- [32]
		true, -- [33]
		true, -- [34]
		false, -- [35]
		true,	-- [36]
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = false,
		[55] = true,
		[57] = true,
		[103] = true,
		[100] = true,
		[104] = true,
		[105] = true,
		[102] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
	["SHAMAN"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		ClassUsesLowerArmorType, -- [4] CLOTH
		ClassUsesLowerArmorType, -- [5] LEATHER
		true, -- [6] MAIL
		false, -- [7] PLATE
		true, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		[20] = true,
		[21] = true,
		[22] = true,
		[23] = true,
		[24] = true,
		[25] = false,
		[26] = false,
		[27] = false,
		[28] = true,
		[29] = false,
		[31] = false,
		[32] = false,
		[33] = false,
		[34] = true,
		[35] = false,
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = true,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[104] = true,
		[105] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
	["WARLOCK"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		true, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		[20] = true,
		[21] = false,
		[22] = false,
		[23] = false,
		[24] = false,
		[25] = true,
		[26] = false,
		[27] = true,
		[28] = true,
		[29] = false,
		[30] = false,
		[31] = false,
		[32] = false,
		[33] = false,
		[34] = false,
		[35] = false,
		[36] = false,
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = false,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[104] = true,
		[113] = true,
		[200] = true,
	},
	["WARRIOR"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		ClassUsesLowerArmorType, -- [5] LEATHER
		ClassUsesLowerArmorType, -- [6] MAIL
		true, -- [7] PLATE
		true, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20]
		true, -- [21]
		true, -- [22]
		true, -- [23]
		true, -- [24]
		true, -- [25]
		true, -- [26]
		false, -- [27]
		true, -- [28]
		true, -- [29]
		true, -- [30]
		true, -- [31]
		true, -- [32]
		true, -- [33]
		true, -- [34]
		false, -- [35]
		true, -- [36]
		[50] = true,
		[51] = true,
		[52] = true,
		[53] = true,
		[54] = false,
		[55] = true,
		[57] = true,
		[100] = true,
		[102] = true,
		[103] = true,
		[104] = true,
		[105] = true,
		[106] = true,
		[113] = true,
		[200] = true,
	},
}
ExportDB.PresetTransmogs = {
	["ALL"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		true, -- [4] CLOTH
		true, -- [5] LEATHER
		true, -- [6] MAIL
		true, -- [7] PLATE
		true, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		true, -- [21] ONE_HANDED_AXES
		true, -- [22] TWO_HANDED_AXES
		true, -- [23] ONE_HANDED_MACES
		true, -- [24] TWO_HANDED_MACES
		true, -- [25] ONE_HANDED_SWORDS
		true, -- [26] TWO_HANDED_SWORDS
		true, -- [27] WANDS
		true, -- [28] STAVES
		true, -- [29] POLEARMS
		false, -- [30]
		true, -- [31] GUNS
		true, -- [32] BOWS
		true, -- [33] CROSSBOWS
		true, -- [34] FIST_WEAPONS
		true, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["DEATHKNIGHT"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		true, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		false, -- [20] DAGGERS
		true, -- [21] ONE_HANDED_AXES
		true, -- [22] TWO_HANDED_AXES
		true, -- [23] ONE_HANDED_MACES
		true, -- [24] TWO_HANDED_MACES
		true, -- [25] ONE_HANDED_SWORDS
		true, -- [26] TWO_HANDED_SWORDS
		false, -- [27] WANDS
		false, -- [28] STAVES
		true, -- [29] POLEARMS
		false, -- [30]
		false, -- [31] GUNS
		false, -- [32] BOWS
		false, -- [33] CROSSBOWS
		false, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["DRUID"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		true, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		false, -- [21] ONE_HANDED_AXES
		false, -- [22] TWO_HANDED_AXES
		true, -- [23] ONE_HANDED_MACES
		true, -- [24] TWO_HANDED_MACES
		false, -- [25] ONE_HANDED_SWORDS
		false, -- [26] TWO_HANDED_SWORDS
		false, -- [27] WANDS
		true, -- [28] STAVES
		true, -- [29] POLEARMS
		true, -- [30]
		false, -- [31] GUNS
		false, -- [32] BOWS
		false, -- [33] CROSSBOWS
		true, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["HUNTER"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		false, -- [5] LEATHER
		true, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		true, -- [21] ONE_HANDED_AXES
		true, -- [22] TWO_HANDED_AXES
		false, -- [23] ONE_HANDED_MACES
		false, -- [24] TWO_HANDED_MACES
		true, -- [25] ONE_HANDED_SWORDS
		true, -- [26] TWO_HANDED_SWORDS
		false, -- [27] WANDS
		true, -- [28] STAVES
		true, -- [29] POLEARMS
		true, -- [30]
		true, -- [31] GUNS
		true, -- [32] BOWS
		true, -- [33] CROSSBOWS
		true, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["MAGE"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		true, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		false, -- [21] ONE_HANDED_AXES
		false, -- [22] TWO_HANDED_AXES
		false, -- [23] ONE_HANDED_MACES
		false, -- [24] TWO_HANDED_MACES
		true, -- [25] ONE_HANDED_SWORDS
		false, -- [26] TWO_HANDED_SWORDS
		true, -- [27] WANDS
		true, -- [28] STAVES
		false, -- [29] POLEARMS
		false, -- [30]
		false, -- [31] GUNS
		false, -- [32] BOWS
		false, -- [33] CROSSBOWS
		false, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["PALADIN"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		true, -- [7] PLATE
		true, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		false, -- [20] DAGGERS
		true, -- [21] ONE_HANDED_AXES
		true, -- [22] TWO_HANDED_AXES
		true, -- [23] ONE_HANDED_MACES
		true, -- [24] TWO_HANDED_MACES
		true, -- [25] ONE_HANDED_SWORDS
		true, -- [26] TWO_HANDED_SWORDS
		false, -- [27] WANDS
		false, -- [28] STAVES
		true, -- [29] POLEARMS
		false, -- [30]
		false, -- [31] GUNS
		false, -- [32] BOWS
		false, -- [33] CROSSBOWS
		false, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["PRIEST"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		true, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		false, -- [21] ONE_HANDED_AXES
		false, -- [22] TWO_HANDED_AXES
		true, -- [23] ONE_HANDED_MACES
		false, -- [24] TWO_HANDED_MACES
		false, -- [25] ONE_HANDED_SWORDS
		false, -- [26] TWO_HANDED_SWORDS
		true, -- [27] WANDS
		true, -- [28] STAVES
		false, -- [29] POLEARMS
		false, -- [30]
		false, -- [31] GUNS
		false, -- [32] BOWS
		false, -- [33] CROSSBOWS
		false, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["ROGUE"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		true, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		true, -- [21] ONE_HANDED_AXES
		false, -- [22] TWO_HANDED_AXES
		true, -- [23] ONE_HANDED_MACES
		false, -- [24] TWO_HANDED_MACES
		true, -- [25] ONE_HANDED_SWORDS
		false, -- [26] TWO_HANDED_SWORDS
		false, -- [27] WANDS
		false, -- [28] STAVES
		false, -- [29] POLEARMS
		false, -- [30]
		true, -- [31] GUNS
		true, -- [32] BOWS
		true, -- [33] CROSSBOWS
		true, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["SHAMAN"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		false, -- [5] LEATHER
		true, -- [6] MAIL
		false, -- [7] PLATE
		true, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		true, -- [21] ONE_HANDED_AXES
		true, -- [22] TWO_HANDED_AXES
		true, -- [23] ONE_HANDED_MACES
		true, -- [24] TWO_HANDED_MACES
		false, -- [25] ONE_HANDED_SWORDS
		false, -- [26] TWO_HANDED_SWORDS
		false, -- [27] WANDS
		true, -- [28] STAVES
		false, -- [29] POLEARMS
		false, -- [30]
		false, -- [31] GUNS
		false, -- [32] BOWS
		false, -- [33] CROSSBOWS
		true, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["WARLOCK"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		true, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		false, -- [7] PLATE
		false, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		false, -- [21] ONE_HANDED_AXES
		false, -- [22] TWO_HANDED_AXES
		false, -- [23] ONE_HANDED_MACES
		false, -- [24] TWO_HANDED_MACES
		true, -- [25] ONE_HANDED_SWORDS
		false, -- [26] TWO_HANDED_SWORDS
		true, -- [27] WANDS
		true, -- [28] STAVES
		false, -- [29] POLEARMS
		false, -- [30]
		false, -- [31] GUNS
		false, -- [32] BOWS
		false, -- [33] CROSSBOWS
		false, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
	["WARRIOR"] = {
		true, -- [1] HELD_IN_OFF_HAND
		true, -- [2] COSMETIC
		true, -- [3] CLOAKS
		false, -- [4] CLOTH
		false, -- [5] LEATHER
		false, -- [6] MAIL
		true, -- [7] PLATE
		true, -- [8] SHIELDS
		true, -- [9] TABARDS
		true, -- [10] SHIRTS
		true, -- [11]
		nil, -- [12]
		nil, -- [13]
		nil, -- [14]
		nil, -- [15]
		nil, -- [16]
		nil, -- [17]
		nil, -- [18]
		nil, -- [19]
		true, -- [20] DAGGERS
		true, -- [21] ONE_HANDED_AXES
		true, -- [22] TWO_HANDED_AXES
		true, -- [23] ONE_HANDED_MACES
		true, -- [24] TWO_HANDED_MACES
		true, -- [25] ONE_HANDED_SWORDS
		true, -- [26] TWO_HANDED_SWORDS
		false, -- [27] WANDS
		true, -- [28] STAVES
		true, -- [29] POLEARMS
		true, -- [30]
		true, -- [31] GUNS
		true, -- [32] BOWS
		true, -- [33] CROSSBOWS
		true, -- [34] FIST_WEAPONS
		false, -- [35] WARGLAIVES
		false, -- [36] THROWN
		[57] = true,	-- [57] Profession Equipment
	},
}