-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(COUNCIL_OF_DORNOGAL, {
		n(QUESTS, sharedData({
			["provider"] = { "n", 223728 },	-- Auditor Balwurz <Keeper of Renown>
			["coord"] = { 39.1, 24.0, DORNOGAL },
		}, bubbleDownRep(FACTION_COUNCIL_OF_DORNOGAL, {
			{		-- RENOWN 1 --
			}, {	-- RENOWN 2 --
			}, {	-- RENOWN 3 --
				q(82342),	-- A Small Bundle of Goods
			}, {	-- RENOWN 4 --
				q(82345, {	-- A Shining Stone
					["g"] = { i(223951) },	-- Earth-Encrusted Gem
				}),
			}, {	-- RENOWN 5 --
				q(84404),	-- A Small Bundle of Goods
			}, {	-- RENOWN 6 --
				q(82349),	-- Carved Crests
				q(82333),	-- Weathered Quests
			}, {	-- RENOWN 7 --
				q(82346),	-- A Small Bundle of Valorstones
			}, {	-- RENOWN 8 --
				q(84403),	-- A Small Bundle of Goods
				q(85718, {	-- A Shining Stone
					["g"] = { i(223951) },	-- Earth-Encrusted Gem
				}),
			}, {	-- RENOWN 9 --
				q(82344),	-- Weathered Crests
			}, {	-- RENOWN 10 --
				q(82347, {	-- Assistant Councilmember
					["g"] = { i(218346) },	-- Honorary Councilmember's Tabard (COSMETIC!)
				}),
			}, {	-- RENOWN 11 --
			}, {	-- RENOWN 12 --
				q(82348),	-- A Large Bundle of Goods
			}, {	-- RENOWN 13 --
			}, {	-- RENOWN 14 --
			}, {	-- RENOWN 15 --
			}, {	-- RENOWN 16 --
			}, {	-- RENOWN 17 --
				q(82356),	-- A Large Bundle of Goods
				q(85545),	-- Resonance Crystals
			}, {	-- RENOWN 18 --
			}, {	-- RENOWN 19 --
				q(82358),	-- Carved Crests
			}, {	-- RENOWN 20 --
				q(82359),	-- A Shining Bundle of Goods
			}, {	-- RENOWN 21 --
			}, {	-- RENOWN 22 --
				q(82361, {	-- A Small Bundle of Goods
					["g"] = { i(226147) },	-- Bunch of Brave Rocks
				}),
			}, {	-- RENOWN 23 --
			}, {	-- RENOWN 24 --
				q(82365, {	-- A Crafter's Delight
					["g"] = { i(224072) },	-- Enchanted Runed Harbinger Crest
				}),
				q(85546),	-- Resonance Crystals
			}, {	-- RENOWN 25 --
				q(82362),	-- For What Glimmers in Stone
				------ Paragon ------
				q(79219, {	-- Renowned with the Council of Dornogal
					["isRepeatable"] = true,
					["g"] = { i(225239) },	-- Overflowing Council of Dornogal Trove
				}),
			},
		}))),
	}),
})));