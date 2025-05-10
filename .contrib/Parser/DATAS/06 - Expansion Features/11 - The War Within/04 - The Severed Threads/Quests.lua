-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(THE_SEVERED_THREADS, {
		n(QUESTS, sharedData({
			["qgs"] = {
				223750,	-- Lady Vinazian <Severed Threads Quartermaster>
				220867,	-- Y'tekhi <Renown Quartermaster>
			},
			["coord"] = { 55.3, 41.2, AZJ_KAHET },
		}, bubbleDownRep(FACTION_THE_SEVERED_THREADS, {
			{		-- RENOWN 1 --
			}, {	-- RENOWN 2 --
			}, {	-- RENOWN 3 --
				q(82417),	-- A Rare Key
			}, {	-- RENOWN 4 --
			}, {	-- RENOWN 5 --
			}, {	-- RENOWN 6 --
				q(82418),	-- A Cache of Crests and Power
			}, {	-- RENOWN 7 --
			}, {	-- RENOWN 8 --
				q(85535),	-- Kej
			}, {	-- RENOWN 9 --
				q(82431),	-- Unsevered Threads
				q(85531, {	-- Earth-Encrusted Gem
					["g"] = { i(223951) },	-- Earth-Encrusted Gem
				}),
			}, {	-- RENOWN 10 --
				q(82432, {	-- A Gift Handwoven
					["g"] = { i(218349) },	-- Tabard of the Severed Threads (COSMETIC!)
				}),
			}, {	-- RENOWN 11 --
			}, {	-- RENOWN 12 --
				q(82433),	-- Power, Etched in the Deep
			}, {	-- RENOWN 13 --
				q(82434),	-- Unlock a Reward
			}, {	-- RENOWN 14 --
				q(82435),	-- Valorstones
				q(85532),	-- The Wealth of a Kingdom
			}, {	-- RENOWN 15 --
			}, {	-- RENOWN 16 --
			}, {	-- RENOWN 17 --
			}, {	-- RENOWN 18 --
				q(82440),	-- Crests
				q(85533),	-- Kej
			}, {	-- RENOWN 19 --
			}, {	-- RENOWN 20 --
				q(82442),	-- Keep Up Appearances
			}, {	-- RENOWN 21 --
				q(82443),	-- Tokens of Her Favor
			}, {	-- RENOWN 22 --
				q(82444),	-- The Weaver's Cache
				q(85534),	-- The General's Cache
			}, {	-- RENOWN 23 --
			}, {	-- RENOWN 24 --
				q(82446, {	-- For What Glimmers in Shadow
					["g"] = { i(224072) },	-- Enchanted Runed Harbinger Crest
				}),
			}, {	-- RENOWN 25 --
				------ Paragon ------
				q(79196, {	-- Renowned with The Severed Threads
					["isRepeatable"] = true,
					["g"] = { i(225247) },	-- Overflowing Severed Threads Trove
				}),
			},
		}))),
	}),
})));