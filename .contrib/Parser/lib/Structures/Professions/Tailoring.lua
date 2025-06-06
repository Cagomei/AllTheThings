---------------
-- TAILORING --
---------------
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
SL_TAILORING = applyclassicphase(SHADOWLANDS_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
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