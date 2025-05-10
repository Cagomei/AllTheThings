-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(HALLOWFALL_ARATHI, {
		n(QUESTS, sharedData({
			["provider"] = { "n", 213145 },	-- Auralia Steelstrike <Arathi Quartermaster>
			["coords"] = {
				{ 42.4, 55.0, HALLOWFALL },
				{ 41.3, 53.1, HALLOWFALL },
			},
		}, bubbleDownRep(FACTION_HALLOWFALL_ARATHI, {
			{		-- RENOWN 1 --
			}, {	-- RENOWN 2 --
			}, {	-- RENOWN 3 --
			}, {	-- RENOWN 4 --
				q(82335),	-- Crystals
			}, {	-- RENOWN 5 --
				q(82391, {	-- Precious Stones
					["g"] = { i(223951) },	-- Earth-Encrusted Gem
				}),
				--
				q(81990, {	-- The Light's Call
					["isBreadcrumb"] = true,
				}),
				q(76588, {	-- Defender of the Flame
					["sourceQuests"] = { 81990 },	-- The Light's Call
					["provider"] = { "n", 215527 },	-- Keyrra Flamestonge
					["coord"] = { 65.5, 32.2, HALLOWFALL },
					["isWeekly"] = true,
				}),
				q(79232, {	-- Those that Fell
					["sourceQuests"] = { 81990 },	-- The Light's Call
					["provider"] = { "n", 215527 },	-- Keyrra Flamestonge
					["coord"] = { 65.5, 32.2, HALLOWFALL },
					["g"] = {
						i(219453),	-- Idona Seerstone's Tinderbox (QI!)
						i(219451),	-- Oskaer Daleclash's Tinderbox (QI!)
						o(439789, {	-- Dalian Ironlink's Tinderbox
							["coord"] = { 67.0, 20.9, HALLOWFALL },
							["g"] = {
								i(219499),	-- Dalian Ironlink's Tinderbox (QI!)
							},
						}),
					},
				}),
				q(81673, {	-- Honor Your Efforts
					["sourceQuests"] = {
						76588,	-- Defender of the Flame
						79232,	-- Those that Fell
					},
					["provider"] = { "n", 215527 },	-- Keyrra Flamestonge
					["coord"] = { 65.5, 32.2, HALLOWFALL },
					["g"] = {
						i(219503),	-- Honorary Tinderbox
					},
				}),
			}, {	-- RENOWN 6 --
				q(82390),	-- Weathered Crests
			}, {	-- RENOWN 7 --
				q(84409),	-- For the Valorous
			}, {	-- RENOWN 8 --
				q(82393),	-- Resonating Crystals
			}, {	-- RENOWN 9 --
				q(82394),	-- A Cache of Crests
			}, {	-- RENOWN 10 --
				q(82395, {	-- Flame-touched Tabard
					["g"] = { i(218352) },	-- Expeditionary Tabard (COSMETIC!)
				}),
			}, {	-- RENOWN 11 --
				q(81692, {	-- The Flame Within
					["provider"] = { "n", 214380 },	-- Raen Dawncavalyr
					["coord"] = { 43.3, 56.4, HALLOWFALL },
				}),
				q(81869, {	-- Can Catch More Fires with Honey
					["sourceQuests"] = { 81692 },	-- The Flame Within
					["provider"] = { "n", 217128 },	-- Speaker Kuldas
					["coord"] = { 47.5, 32.0, THE_RINGING_DEEPS },
					["g"] = {
						i(219960),	-- Honey Drone Vac (QI!)
						i(220130),	-- Pure Fire Honey (QI!)
					},
				}),
				q(81751, {	-- Fire and Gemstone
					["sourceQuests"] = { 81692 },	-- The Flame Within
					["provider"] = { "n", 217128 },	-- Speaker Kuldas
					["coord"] = { 47.5, 32.0, THE_RINGING_DEEPS },
					["g"] = {
						i(219806),	-- Awakened Cog (QI!)
						i(219807),	-- Ringing Gemstone (QI!)
					},
				}),
				q(81896, {	-- New and Improved
					["sourceQuests"] = {
						81869,	-- Can Catch More Fires with Honey
						81751,	-- Fire and Gemstone
					},
					["provider"] = { "n", 217128 },	-- Speaker Kuldas
					["coord"] = { 47.5, 32.0, THE_RINGING_DEEPS },
					["g"] = {
						i(220157),	-- Empowered Tinderbox
					},
				}),
			}, {	-- RENOWN 12 --
				q(82396),	-- A Gift from Mereldar
			}, {	-- RENOWN 13 --
				q(84559),	-- Carved Crests
			}, {	-- RENOWN 14 --
				q(82398),	-- Another Rare Key
			}, {	-- RENOWN 15 --
			}, {	-- RENOWN 16 --
				q(82400),	-- A Hallowfall Windfall
				q(85536),	-- Resonance Crystals
			}, {	-- RENOWN 17 --
			}, {	-- RENOWN 18 --
			}, {	-- RENOWN 19 --
				q(85537),	-- Crystals
				q(82403),	-- Stones
			}, {	-- RENOWN 20 --
				q(82404),	-- Something to Set You Apart
			}, {	-- RENOWN 21 --
			}, {	-- RENOWN 22 --
				q(82406),	-- The Quartermaster's Cache
				q(81906, {	-- Whispers from the Web
					["provider"] = { "n", 221867 },	-- Mereldar Child
				}),
				q(81908, {	-- A Flame in the Dark
					["sourceQuests"] = { 81906 },	-- Whispers from the Web
					["provider"] = { "n", 221902 },	-- Ct'nak
					["coord"] = { 46.9, 50.1, NERUBAR_LOWER },
					["g"] = {
						i(220212),	-- Aelric's Corrupted Tinderbox (QI!)
						i(220215),	-- Unidentified Tinderbox (QI!)
					},
				}),
				q(81909, {	-- Absolute Power
					["sourceQuests"] = { 81908 },	-- A Flame in the Dark
					["provider"] = { "n", 221902 },	-- Ct'nak
					["coord"] = { 46.9, 50.1, NERUBAR_LOWER },
					["g"] = {
						i(220359),	-- Aelric's Corrupted Tinderbox (QI!)
					},
				}),
				q(81910, {	-- A Great Responsibility
					["sourceQuests"] = { 81909 },	-- Absolute Power
					["provider"] = { "n", 214380 },	-- Raen Dawncavalyr
					["coord"] = { 43.2, 56.4, HALLOWFALL },
					["g"] = {
						i(220158),	-- Darkened Tinderbox
					},
				}),
			}, {	-- RENOWN 23 --
				q(83334),	-- The Wealth of an Empire
			}, {	-- RENOWN 24 --
				q(82407, {	-- For What Glimmers in the Deep
					["g"] = { i(224072) },	-- Enchanted Runed Harbinger Crest
				}),
			}, {	-- RENOWN 25 --
					------ Paragon ------
				q(79218, {	-- Renowned with the Hallowfall Arathi
					["isRepeatable"] = true,
					["g"] = { i(225246) },	-- Overflowing Hallowfall Trove
				}),
			},
		}))),
	}),
})));