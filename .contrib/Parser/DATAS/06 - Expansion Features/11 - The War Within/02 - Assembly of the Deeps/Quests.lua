-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(THE_ASSEMBLY_OF_THE_DEEPS, {
		n(QUESTS, sharedData({
			["qgs"] = {
				221390,	-- Waxmonger Squick <Quatermaster>
				223726,	-- Waxmonger Quiwik <Keeper of Renown>
			},
			["coords"] = {
				{ 47.5, 32.8, THE_RINGING_DEEPS },
				{ 39.2, 24.0, DORNOGAL },
			},
		}, bubbleDownRep(FACTION_THE_ASSEMBLY_OF_THE_DEEPS, {
			{		-- RENOWN 1 --
			}, {	-- RENOWN 2 --
			}, {	-- RENOWN 3 --
			}, {	-- RENOWN 4 --
				q(82367, {	-- Earth-Encrusted Gem
					["g"] = { i(223951) },	-- Earth-Encrusted Gem
				}),
			}, {	-- RENOWN 5 --
			}, {	-- RENOWN 6 --
				q(82369, {	-- A Shining Bundle of Goods
					["g"] = { i(226148) },	-- Wax-sealed Weathered Crests
				}),
				q(85538, {	-- Shinies
					["g"] = {
						currency(RESONANCE_CRYSTALS),
					},
				}),
			}, {	-- RENOWN 7 --
				q(84914),	-- Valorstones
			}, {	-- RENOWN 8 --
				q(82371, {	-- A Flickering Candle
					["g"] = { i(226146) },	-- Handful of Humming Shinies
				}),
			}, {	-- RENOWN 9 --
				q(82370),	-- Crests
				q(85539),	-- Take Candle!
			}, {	-- RENOWN 10 --
				q(82372, {	-- Deeps Unifier
					["g"] = {
						i(218343),	-- Tabard of the Assembly (COSMETIC!)
						i(226146),	-- Handful of Humming Shinies
					},
				}),
			}, {	-- RENOWN 11 --
				q(82373, {	-- Crests and Rocks
					["g"] = { i(226147) },	-- Bunch of Brave Rocks
				}),
			}, {	-- RENOWN 12 --
				q(82374, {	-- A Shining Candle
					["g"] = {
						i(226149),	-- Pile of Humming Shinies
					},
				}),
			}, {	-- RENOWN 13 --
				q(85540, {	-- Take Big Candle!
					["g"] = {
						i(226155),	-- Big Candle
					},
				}),
				q(82375),	-- Take Key!
			}, {	-- RENOWN 14 --
				q(82376),	-- A Large Bundle of Goods
			}, {	-- RENOWN 15 --
				q(82377),	-- Crests
				q(85541, {	-- Here's a Shiny!
					["g"] = { i(226150)	},	-- Gem-Studded Candelabra
				}),
			}, {	-- RENOWN 16 --
				q(82378),	-- Valorstones
			}, {	-- RENOWN 17 --
				q(83043),	-- Carved Crests
			}, {	-- RENOWN 18 --
				q(82379, {	-- An Overflowing Bundle of Shinies
					["g"] = {
						currency(RESONANCE_CRYSTALS),
					},
				}),
			}, {	-- RENOWN 19 --
			}, {	-- RENOWN 20 --
				q(82381, {	-- A Scintillating Candle
					["g"] = { i(226150) },	-- Gem-Studded Candelabra
				}),
			}, {	-- RENOWN 21 --
				q(82382),	-- Crests
				q(85542, {	-- Take Really Big Candle!
					["g"] = { i(226156) },	-- Really Big Candle
				}),
			}, {	-- RENOWN 22 --
				q(82383, {	-- Brave Rocks
					["g"] = { i(226147) },	-- Bunch of Brave Rocks
				}),
				q(85543),	-- More Shinies!
			}, {	-- RENOWN 23 --
				q(83046),	-- Carved Crests
			}, {	-- RENOWN 24 --
				q(82384, {	-- A Big, Big Shiny!
					["g"] = { i(224072) },	-- Enchanted Runed Harbinger Crest
				}),
				q(85544, {	-- Many Little Shinies!
					["g"] = { i(226153) },	-- Big Pile of Humming Shinies
				}),
			}, {	-- RENOWN 25 --
				q(82385, {	-- For What Glimmers in Candlelight
					["g"] = { i(226147) },	-- Bunch of Rocks
				}),
			},
		}))),
		n(QUESTS, { -- Paragon quest only available from Ringing Deeps provider
			------ Paragon ------
			q(79220, {	-- Renowned with the Assembly of the Deeps
				["provider"] = { "n", 221390 },	-- Waxmonger Squick <Quatermaster>
				["coord"] = { 47.5, 32.8, THE_RINGING_DEEPS },
				["isRepeatable"] = true,
				["minReputation"] = { FACTION_THE_ASSEMBLY_OF_THE_DEEPS, 25 },
				["g"] = { i(225245) },	-- Overflowing Trove of the Deeps
			}),
		}),
	}),
})));

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(THE_ASSEMBLY_OF_THE_DEEPS, {
		q(84622),	-- Renown 4
		q(84623),	-- Renown 4
	}),
})));