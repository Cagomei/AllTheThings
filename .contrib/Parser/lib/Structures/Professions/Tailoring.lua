---------------
-- TAILORING --
---------------
APPRENTICE_JOURNEYMAN_EXPERT_TAILORING = {
	r(3908, {	-- Tailoring (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(3909, {	-- Tailoring (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(3910, {	-- Tailoring (Expert)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 26 or 20;
		end]],
		-- #else
		["lvl"] = 20,
		-- #endif
		-- #endif
		["rank"] = 3,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264616, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Tailoring
	r(330222, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [CLASSIC]
	r(330223, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [CLASSIC]
	r(330224, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [CLASSIC]
	r(330225, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [CLASSIC]
	r(330226, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [CLASSIC]
	n(ARMOR, {
		r(8766),	-- Azure Silk Belt
		r(8760),	-- Azure Silk Hood
		r(8758),	-- Azure Silk Pants
		r(3859),	-- Azure Silk Vest
		r(2395),	-- Barbaric Linen Vest
		r(12053),	-- Black Mageweave Gloves
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439088, {["timeline"] = {ADDED_1_15_1}})),	-- Black Mageweave Leggings
		r(12049, {["timeline"] = {REMOVED_1_15_1}}),	-- Black Mageweave Leggings
		-- #else
		r(12049),	-- Black Mageweave Leggings
		-- #endif
		r(12050),	-- Black Mageweave Robe
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439086, {["timeline"] = {ADDED_1_15_1}})),	-- Black Mageweave Vest
		r(12048, {["timeline"] = {REMOVED_1_15_1}}),	-- Black Mageweave Vest
		-- #else
		r(12048),	-- Black Mageweave Vest
		-- #endif
		r(2394),	-- Blue Linen Shirt
		r(18420, {["timeline"] = {ADDED_2_1_0}}),	-- Brightcloth Cloak
		r(18415, {["timeline"] = {ADDED_2_1_0}}),	-- Brightcloth Gloves
		r(18414, {["timeline"] = {ADDED_2_1_0}}),	-- Brightcloth Robe
		r(3914),	-- Brown Linen Pants
		r(7623),	-- Brown Linen Robe
		r(3915),	-- Brown Linen Shirt
		r(2385),	-- Brown Linen Vest
		r(12069),	-- Cindercloth Robe
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439098, {["timeline"] = {ADDED_1_15_1}})),	-- Crimson Silk Belt
		r(8772, {["timeline"] = {REMOVED_1_15_1}}),	-- Crimson Silk Belt
		-- #else
		r(8772),	-- Crimson Silk Belt
		-- #endif
		r(8804),	-- Crimson Silk Gloves
		r(8799),	-- Crimson Silk Pantaloons
		r(8791),	-- Crimson Silk Vest
		r(3848),	-- Double-stitched Woolen Shoulders
		r(12067),	-- Dreamweave Gloves
		r(12070),	-- Dreamweave Vest
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439100, {["timeline"] = {ADDED_1_15_1}})),	-- Earthen Vest
		r(8764, {["timeline"] = {REMOVED_1_15_1}}),	-- Earthen Vest
		-- #else
		r(8764),	-- Earthen Vest
		-- #endif
		r(18437, {["timeline"] = {ADDED_2_1_0}}),	-- Felcloth Boots
		r(18442, {["timeline"] = {ADDED_2_1_0}}),	-- Felcloth Hood
		r(18451, {["timeline"] = {ADDED_2_1_0}}),	-- Felcloth Robe
		r(18453, {["timeline"] = {ADDED_2_1_0}}),	-- Felcloth Shoulders
		r(3871),	-- Formal White Shirt
		r(18411, {["timeline"] = {ADDED_2_1_0}}),	-- Frostweave Gloves
		r(18424, {["timeline"] = {ADDED_2_1_0}}),	-- Frostweave Pants
		r(18403, {["timeline"] = {ADDED_2_1_0}}),	-- Frostweave Tunic
		r(18410, {["timeline"] = {ADDED_2_1_0}}),	-- Ghostweave Belt
		r(18413, {["timeline"] = {ADDED_2_1_0}}),	-- Ghostweave Gloves
		r(18441, {["timeline"] = {ADDED_2_1_0}}),	-- Ghostweave Pants
		r(18416, {["timeline"] = {ADDED_2_1_0}}),	-- Ghostweave Vest
		r(3852),	-- Gloves of Meditation
		r(2406),	-- Gray Woolen Shirt
		r(3841),	-- Green Linen Bracers
		r(2396),	-- Green Linen Shirt
		r(8774),	-- Green Silken Shoulders
		r(2399),	-- Green Woolen Vest
		r(3842),	-- Handstitched Linen Britches
		r(3840),	-- Heavy Linen Gloves
		r(3843),	-- Heavy Woolen Gloves
		r(3850),	-- Heavy Woolen Pants
		r(6690),	-- Lesser Wizard's Robe
		r(8776),	-- Linen Belt
		r(2386),	-- Linen Boots
		r(2387),	-- Linen Cloak
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439094, {["timeline"] = {ADDED_1_15_1}})),	-- Long Silken Cloak
		r(3861, {["timeline"] = {REMOVED_1_15_1}}),	-- Long Silken Cloak
		-- #else
		r(3861),	-- Long Silken Cloak
		-- #endif
		r(12061),	-- Orange Mageweave Shirt
		r(6521),	-- Pearl-clasped Cloak
		r(2392),	-- Red Linen Shirt
		r(8489),	-- Red Swashbuckler's Shirt
		r(2397),	-- Reinforced Linen Cape
		r(8770),	-- Robe of Power
		r(18423, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Boots
		r(18409, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Cloak
		r(18417, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Gloves
		r(18444, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Headband
		r(18438, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Pants
		r(18406, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Robe
		r(18449, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Shoulders
		r(18407, {["timeline"] = {ADDED_2_1_0}}),	-- Runecloth Tunic
		r(8762),	-- Silk Headband
		r(8465),	-- Simple Dress
		r(12046),	-- Simple Kilt
		r(12045),	-- Simple Linen Boots
		r(12044),	-- Simple Linen Pants
		r(3845),	-- Soft-soled Linen Boots
		r(3855),	-- Spidersilk Boots
		applyclassicphase(WRATH_PHASE_ONE, r(63742, {["timeline"] = {ADDED_3_1_0}})),	-- Spidersilk Drape
		r(3866),	-- Stylish Red Shirt
		r(7624),	-- White Linen Robe
		r(2393),	-- White Linen Shirt
		r(8483),	-- White Swashbuckler's Shirt
		r(8467),	-- White Woolen Dress
		r(18421, {["timeline"] = {ADDED_2_1_0}}),	-- Wizardweave Leggings
		r(18446, {["timeline"] = {ADDED_2_1_0}}),	-- Wizardweave Robe
		r(18450, {["timeline"] = {ADDED_2_1_0}}),	-- Wizardweave Turban
		r(2401),	-- Woolen Boots
		r(2402),	-- Woolen Cape
	}),
	filter(BAGS, {
		r(3755),	-- Linen Bag
		r(12065),	-- Mageweave Bag
		r(3813),	-- Small Silk Pack
		r(3757),	-- Woolen Bag
	}),
	filter(REAGENTS, {
		r(2963),	-- Bolt of Linen Cloth
		r(3865),	-- Bolt of Mageweave
		r(3839),	-- Bolt of Silk Cloth
		r(2964),	-- Bolt of Woolen Cloth
	}),
};
ARTISAN_TAILORING = {
	r(12180, {	-- Tailoring (Artisan)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 41 or 35;
		end]],
		-- #else
		["lvl"] = 35,
		-- #endif
		-- #endif
		["rank"] = 4,
	}),
	n(ARMOR, {
		r(12073),	-- Black Mageweave Boots
		r(12072),	-- Black Mageweave Headband
		r(12074),	-- Black Mageweave Shoulders
		r(12088),	-- Cindercloth Boots
		r(12092),	-- Dreamweave Circlet
		r(18402),	-- Runecloth Belt
		r(12077),	-- Simple Black Dress
	}),
	filter(BAGS, {
		r(12079),	-- Red Mageweave Bag
	}),
	filter(REAGENTS, {
		r(18401),	-- Bolt of Runecloth
	}),
};
SHADOWEAVE_TAILORING = {
	r(12082),	-- Shadoweave Boots
	r(12071),	-- Shadoweave Gloves
	r(12052),	-- Shadoweave Pants
	r(12055),	-- Shadoweave Robe
	r(12076),	-- Shadoweave Shoulders
}
CLASSIC_TAILORING = appendGroups(APPRENTICE_JOURNEYMAN_EXPERT_TAILORING,
-- #if AFTER 2.1.0
ARTISAN_TAILORING
-- #else
	{}
-- #endif
);
VANILLA_TAILORING_VENDOR_REAGENTS = {
	i(2325),	-- Black Dye
	i(2324),	-- Bleach
	i(6260),	-- Blue Dye
	i(2605),	-- Green Dye
	i(4340),	-- Grey Dye
	i(6261),	-- Orange Dye
	i(10290),	-- Pink Dye
	i(4342),	-- Purple Dye
	i(2604),	-- Red Dye
	i(4341),	-- Yellow Dye
	i(2320),	-- Coarse Thread
	i(2321),	-- Fine Thread
	i(4291),	-- Silken Thread
	i(8343),	-- Heavy Silken Thread
	i(14341),	-- Rune Thread
};
TBC_TAILORING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(26790, {	-- Tailoring (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264618, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Tailoring
	r(330227, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [The Burning Cruse]
	r(330228, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [The Burning Cruse]
	r(330229, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [The Burning Cruse]
	r(330230, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [The Burning Cruse]
	r(330231, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [The Burning Cruse]
	n(ARMOR, {
		r(26765),	-- Netherweave Belt
		r(26772),	-- Netherweave Boots
		r(26764),	-- Netherweave Bracers
		r(26770),	-- Netherweave Gloves
		r(26771),	-- Netherweave Pants
	}),
	filter(BAGS, {
		r(26746),	-- Netherweave Bag
	}),
	filter(MISC, {
		r(31460),	-- Netherweave Net
	}),
	filter(REAGENTS, {
		r(26745),	-- Bolt of Netherweave
	}),
}));
WRATH_TAILORING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51309, {	-- Tailoring (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264620, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Tailoring
	r(330232, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I [Wrath of the Lich King]
	r(330233, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II [Wrath of the Lich King]
	r(330234, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III [Wrath of the Lich King]
	r(330235, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV [Wrath of the Lich King]
	r(330236, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V [Wrath of the Lich King]
	n(ARMOR, {
		r(56023),	-- Aurora Slippers
		r(55925),	-- Black Duskweave Leggings
		r(55941),	-- Black Duskweave Robe
		r(55943),	-- Black Duskweave Wristwraps
		r(64730, {["timeline"] = {ADDED_3_1_0}}),	-- Cloak of Crimson Snow
		r(56015),	-- Cloak of Frozen Spirits
		r(56014),	-- Cloak of the Moon
		r(56020),	-- Deep Frozen Cord
		r(55914),	-- Duskweave Belt
		r(55924),	-- Duskweave Boots
		r(55919),	-- Duskweave Cowl
		r(55922),	-- Duskweave Gloves
		r(55901),	-- Duskweave Leggings
		r(55921),	-- Duskweave Robe
		r(55923),	-- Duskweave Shoulders
		r(55920),	-- Duskweave Wristwraps
		r(56027),	-- Ebonweave Gloves
		r(56026),	-- Ebonweave Robe
		r(64729, {["timeline"] = {ADDED_3_1_0}}),	-- Frostguard Drape
		r(56021),	-- Frostmoon Pants
		r(59582),	-- Frostsavage Belt
		r(59585),	-- Frostsavage Boots
		r(59583),	-- Frostsavage Bracers
		r(59589),	-- Frostsavage Cowl
		r(59586),	-- Frostsavage Gloves
		r(59588),	-- Frostsavage Leggings
		r(59587),	-- Frostsavage Robe
		r(59584),	-- Frostsavage Shoulders
		r(55908),	-- Frostwoven Belt
		r(55906),	-- Frostwoven Boots
		r(55907),	-- Frostwoven Cowl
		r(55904),	-- Frostwoven Gloves
		r(56030),	-- Frostwoven Leggings
		r(55903),	-- Frostwoven Robe
		r(55902),	-- Frostwoven Shoulders
		r(56031),	-- Frostwoven Wristwraps
		r(60993),	-- Glacial Robe
		r(60994),	-- Glacial Slippers
		r(60990),	-- Glacial Waistband
		r(56000),	-- Green Workman's Shirt
		r(56018),	-- Hat of Wintry Doom
		r(56022),	-- Light Blessed Mittens
		r(56025),	-- Moonshroud Gloves
		r(56024),	-- Moonshroud Robe
		r(55911),	-- Mystic Frostwoven Robe
		r(55910),	-- Mystic Frostwoven Shoulders
		r(55913),	-- Mystic Frostwoven Wristwraps
		r(56019),	-- Silky Iceshard Boots
		r(56029),	-- Spellweave Gloves
		r(56028),	-- Spellweave Robe
		r(55995),	-- Yellow Lumberjack Shirt
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(56010),	-- Azure Spellthread
		r(55769),	-- Darkglow Embroidery [Rank 1] [REMOVED: 6.0.2]
		r(55642),	-- Lightweave Embroidery [Rank 1] [REMOVED 6.0.2]
		r(56034),	-- Master's Spellthread [Rank 1] [REMOVED 6.0.2]
		r(56039),	-- Sanctified Spellthread [Rank 1] [REMOVED 6.0.2]
		r(56008),	-- Shining Spellthread
		r(55777),	-- Swordguard Embroidery [Rank 1] [REMOVED 6.0.2]
	}),
	filter(BAGS, {
		r(56007),	-- Frostweave Bag
	}),
	filter(MISC, {
		r(55898),	-- Frostweave Net
	}),
	filter(MOUNTS, {
		r(60969),	-- Flying Carpet
		r(60971),	-- Magnificent Flying Carpet
	}),
	filter(REAGENTS, {
		r(55899),	-- Bolt of Frostweave
		r(55900),	-- Bolt of Imbued Frostweave
		r(56002),	-- Ebonweave
		r(56001),	-- Moonshroud
		r(56003),	-- Spellweave
	}),
}));
COMMON_CATACLYSM_TAILORING_RECIPES = applyclassicphase(CATA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	i(54601, {	-- Pattern: Belt of the Depths
		["cost"] = { { "i", 54440, 1 }, },	-- 1x Dreamcloth
	}),
	i(68199, {	-- Pattern: Black Embersilk Gown
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	-- #if ANYCLASSIC
	i(54593, {	-- Pattern: Bloodthirsty Embersilk Cowl
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54594, {	-- Pattern: Bloodthirsty Embersilk Pants
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54595, {	-- Pattern: Bloodthirsty Embersilk Robe
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54596, {	-- Pattern: Bloodthirsty Fireweave Cowl
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54597, {	-- Pattern: Bloodthirsty Fireweave Pants
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54598, {	-- Pattern: Bloodthirsty Fireweave Robe
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	-- #endif
	i(54603, {	-- Pattern: Breeches of Mended Nightmares
		["cost"] = { { "i", 54440, 1 }, },	-- 1x Dreamcloth
	}),
	i(54602, {	-- Pattern: Dreamless Belt
		["cost"] = { { "i", 54440, 1 }, },	-- 1x Dreamcloth
	}),
	-- #if ANYCLASSIC
	i(238123, {	-- Pattern: Embersilk Cowl
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238124, {	-- Pattern: Embersilk Pants
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238125, {	-- Pattern: Embersilk Robe
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238126, {	-- Pattern: Fireweave Cowl
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238127, {	-- Pattern: Fireweave Pants
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	}),
	i(238128, {	-- Pattern: Fireweave Robe
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	}),
	-- #endif
	i(54604, {	-- Pattern: Flame-Ascended Pantaloons
		["cost"] = { { "i", 54440, 1 }, },	-- 1x Dreamcloth
	}),
	i(54605, {	-- Pattern: Illusionary Bag
		["cost"] = { { "i", 54440, 1 }, },	-- 1x Dreamcloth
	}),
	i(54600, {	-- Pattern: Powerful Ghostly Spellthread
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54599, {	-- Pattern: Powerful Enchanted Spellthread
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	-- #if ANYCLASSIC
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238068, {	-- Pattern: Vicious Embersilk Cowl
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238069, {	-- Pattern: Vicious Embersilk Pants
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238070, {	-- Pattern: Vicious Embersilk Robe
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238071, {	-- Pattern: Vicious Fireweave Cowl
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238072, {	-- Pattern: Vicious Fireweave Pants
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	})),
	applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(238073, {	-- Pattern: Vicious Fireweave Robe
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
		["timeline"] = { ADDED_4_4_2 },
	})),
	-- #else
	i(54593, {	-- Pattern: Vicious Embersilk Cowl
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54594, {	-- Pattern: Vicious Embersilk Pants
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54595, {	-- Pattern: Vicious Embersilk Robe
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54596, {	-- Pattern: Vicious Fireweave Cowl
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54597, {	-- Pattern: Vicious Fireweave Pants
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	i(54598, {	-- Pattern: Vicious Fireweave Robe
		["cost"] = { { "i", 53643, 8 }, },	-- 8x Bolt of Embersilk Cloth
	}),
	-- #endif
}));
SL_TAILORING = applyclassicphase(SL_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(310949),	-- Shadowlands Tailoring
	r(343634, {	-- Shadowlands Cloth Scavenging
		["collectible"] = false,
	}),
	n(ARMOR, {
		r(310885, {	-- Grim-Veiled Belt [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310886, {	-- Grim-Veiled Bracers [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310880, {	-- Grim-Veiled Cape [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310882, {	-- Grim-Veiled Hood [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310881, {	-- Grim-Veiled Mittens [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310883, {	-- Grim-Veiled Pants [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310879, {	-- Grim-Veiled Robe [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310878, {	-- Grim-Veiled Sandals [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310884, {	-- Grim-Veiled Spaulders [Rank 1]
			["sourceQuests"] = { 62799 },	-- The Vessels of the Thread
		}),
		r(310903),	-- Shadowlace Cord
		r(310900),	-- Shadowlace Cowl
		r(310904),	-- Shadowlace Cuffs
		r(310896),	-- Shadowlace Footwraps
		r(310899),	-- Shadowlace Handwraps
		r(310902),	-- Shadowlace Mantle
		r(310901),	-- Shadowlace Trousers
		r(310897),	-- Shadowlace Tunic
		r(310876),	-- Shrouded Cloth Belt
		r(310877),	-- Shrouded Cloth Bracerss
		r(310871),	-- Shrouded Cloth Cape
		r(310873),	-- Shrouded Cloth Hood
		r(310872),	-- Shrouded Cloth Mittens
		r(310874),	-- Shrouded Cloth Pants
		r(310870),	-- Shrouded Cloth Robe
		r(310869),	-- Shrouded Cloth Sandals
		r(310875),	-- Shrouded Cloth Spaulders
	}),
	filter(MISC, {
		r(343204),	-- Crafter's Mark I
		r(310923),	-- Heavy Shrouded Cloth Bandage
		r(345986),	-- Lightless Silk Pouch
		r(343659),	-- Novice Crafter's Mark
		r(345985),	-- Shrouded Cloth Bag
		r(310924),	-- Shrouded Cloth Bandage
	}),
}));
DF_TAILORING = applyclassicphase(DF_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366258),	-- Dragon Isles Tailoring
	r(392396, {	-- Dragon Isles Cloth Scavenging
		["collectible"] = false,
	}),
	r(376562),	-- Dragon Isles Unravelling
	n(ARMOR, {
		r(376509),	-- Surveyor's Cloth Bands
		r(376507),	-- Surveyor's Cloth Robe
		r(376508),	-- Surveyor's Cloth Treads
		r(376506),	-- Surveyor's Tailored Cloak
		r(395809),	-- Surveyor's Seasoned Cord
		r(395813),	-- Surveyor's Seasoned Gloves
		r(395814),	-- Surveyor's Seasoned Pants
		r(395807),	-- Surveyor's Seasoned Hood
		r(395815),	-- Surveyor's Seasoned Shoulders
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(376543),	-- Wildercloth Alchemist's Robe
		r(376547),	-- Wildercloth Chef's Hat
		r(376549),	-- Wildercloth Enchanter's Hat
		r(376551),	-- Wildercloth Fishing Cap
		r(376553),	-- Wildercloth Gardening Hat
		r(376545),	-- Wildercloth Tailor's Coat
	}),
	filter(MISC, {
		r(376533),	-- Abrasive Polishing Cloth
		r(376535),	-- Blazing Embroidery Thread
		r(376699),	-- Illustrious Insight
		r(389196),	-- Recraft Equipment
		r(376560),	-- Simply Stitched Reagent Bag
		r(376538),	-- Vibrant Spellthread
		r(376528),	-- Wildercloth Bag
		r(376530),	-- Wildercloth Bandage
	}),
	filter(REAGENTS, {
		r(376558),	-- Vibrant Wildercloth Bolt
		r(376555),	-- Wildercloth Bolt
	}),
}));
TWW_TAILORING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423343),	-- Khaz Algar Tailoring
	r(446926),	-- Unraveling
	r(425143),	-- Recraft Equipment
	n(ARMOR, {
		r(446958),	-- Pioneer's Cloth Cloak
		r(446957),	-- Pioneer's Cloth Cord
		r(446956),	-- Pioneer's Cloth Cuffs
		r(446959),	-- Pioneer's Cloth Hood
		r(446960),	-- Pioneer's Cloth Robe
		r(446955),	-- Pioneer's Cloth Slippers
		r(446963),	-- Pioneer's Perfected Gloves
		r(446961),	-- Pioneer's Perfected Leggings
		r(446962),	-- Pioneer's Perfected Mantle
	}),
	filter(BAGS, {
		r(446976),	-- Weavercloth Bag
		r(446978),	-- Weavercloth Reagent Bag
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(446975),	-- Artisan Tailor's Coat
		r(446968),	-- Weavercloth Alchemist's Robe
		r(446969),	-- Weavercloth Chef's Hat
		r(446966),	-- Weavercloth Enchanter's Hat
		r(446965),	-- Weavercloth Fishing Cap
		r(446964),	-- Weavercloth Gardening Hat
		r(446967),	-- Weavercloth Tailor's Coat
	}),
	filter(MISC, {
		r(456706),	-- Algari Weaverline
		r(446996),	-- Bright Polishing Cloth
		r(446998),	-- Gritty Polishing Cloth
		r(447002),	-- Weavercloth Bandage
	}),
	filter(REAGENTS, {
		r(454397),	-- Exquisite Weavercloth Bolt
		r(446929),	-- Weavercloth Bolt
	}),
});