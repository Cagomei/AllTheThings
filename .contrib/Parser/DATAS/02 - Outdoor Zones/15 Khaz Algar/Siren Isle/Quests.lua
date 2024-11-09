---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(QUESTS, {
			q(84719, {	-- The Expedition Awaits
				--["sourceQuests"] = { ??? },	-- TODO: unknown
				["provider"] = { "n", 232132 },	-- Dawn
				["coord"] = { 41.8, 26.1, DORNOGAL },
			}),
			q(84720, {	-- To the Siren Isle!
				["sourceQuests"] = { 84719 },	-- The Expedition Awaits
				["provider"] = { "n", 230235 },	-- Skaggit
				["coord"] = { 55.4, 33.8, ISLE_OF_DORN },
			}),
			q(84940, {	-- Friendly Competition
				["sourceQuests"] = { 84720 },	-- To the Siren Isle!
				["provider"] = { "n", 230235 },	-- Skaggit
				["coord"] = { 69.2, 48.0, SIREN_ISLE },
			}),
			q(84721, {	-- To Scan a Crystal
				["sourceQuests"] = { 84720 },	-- To the Siren Isle!
				["provider"] = { "n", 230242 },	-- Bargus
				["coord"] = { 67.5, 41.9, SIREN_ISLE },
				["g"] = {
					i(230851),	-- Ornate Arathi Box
					i(230770),	-- Sturdy Toolbox (QI!)
					o(475284, {	-- Earthen Prototype
						i(230771),	-- Earthen Prototype (QI!)
					}),
					o(475286, {	-- Overcharged Battery
						i(230773),	-- Overcharged Battery (QI!)
					}),
				},
			}),
			q(84722, {	-- Facet-nating Signals
				["sourceQuests"] = { 84721 },	-- To Scan a Crystal
				["provider"] = { "n", 230242 },	-- Bargus
				["coord"] = { 67.4, 41.9, SIREN_ISLE },
			}),
			q(84727, {	-- The Second Signal
				["sourceQuests"] = { 84722 },	-- Facet-nating Signals
				["provider"] = { "n", 231140 },	-- Bargus
				["coord"] = { 48.1, 44.0, SIREN_ISLE },
			}),
			q(84941, {	-- Cave Barging
				["sourceQuests"] = { 84727 },	-- The Second Signal
				["provider"] = { "n", 233501 },	-- Bargus
				["coord"] = { 43.5, 28.5, SIREN_ISLE },
			}),
			q(84723, {	-- Buried Secrets
				["sourceQuests"] = { 84941 },	-- Cave Barging
				["provider"] = { "n", 230271 },	-- Bargus
				["coord"] = { 48.8, 18.4, SIREN_ISLE },
				["maps"] = { 2375 },	-- The Forgotten Tomb (TODO: possibly gonna make it into separate map or just sub-map?)
			}),
			q(84724, {	-- The Radiant Vault
				["sourceQuests"] = { 84723 },	-- Buried Secrets
				["provider"] = { "n", 231143 },	-- Bargus
				["coord"] = { 40.1, 70.7, 2375 },	-- The Forgotten Tomb
				["g"] = {
					i(229002),	-- Cracked Citrine (QI!)
					i(229001),	-- Rune Carved Band (QI!)
					--
					i(228411),	-- Cyrce's Circlet
				},
			}),
			q(84728, {	-- Reforged Anew
				["sourceQuests"] = { 84724 },	-- The Radiant Vault
				["provider"] = { "n", 228074 },	-- Angorla
				["coord"] = { 71.0, 44.1, SIREN_ISLE },
				["g"] = {
					i(228640),	-- Windsinger's Runed Citrine
				},
			}),
			q(84725, {	-- The Circlet Calls
				-- TODO: This quest unlock WQs / daily stuff / bonus objectives but it is not account wide in 57361 build
				["sourceQuests"] = { 84728 },	-- Reforged Anew
				["provider"] = { "n", 228074 },	-- Angorla
				["coord"] = { 71.0, 44.1, SIREN_ISLE },
			}),
			q(84726, {	-- Uncovered Mysteries
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 228074 },	-- Angorla
				["coord"] = { 71.0, 44.1, SIREN_ISLE },
				["g"] = {
					o(499620, {	-- Runed Storm Cache
						i(232860), -- Singing Fragments (QI!)
					}),
					o(499862, {	-- Runed Storm Cache
						i(232861), -- Singing Fragments (QI!)
					}),
					o(499863, {	-- Runed Storm Cache
						i(232862), -- Singing Fragments (QI!) 
					}),
					--spell(472051),	-- Runecaster's Eye
					--
					i(229365),	-- Raw Singing Citrine
				},
			}),
			q(85653, {	-- Dipping a Toe
				["sourceQuests"] = { 84726 },	-- Uncovered Mysteries
				["provider"] = { "n", 231536 },	-- Apprentice Tanmar
				["coord"] = { 72.3, 42.9, SIREN_ISLE },
				["g"] = {
					o(500688, {	-- Seafarer's Cache
						i(232860), -- Singing Fragments (QI!)
					}),
					o(500690, {	-- Seafarer's Cache
						i(232861), -- Singing Fragments (QI!)
					}),
					o(500689, {	-- Seafarer's Cache
						i(232862), -- Singing Fragments (QI!) 
					}),
					--spell(470197),	-- Blessing of the Seadweller
					--
					i(229365),	-- Raw Singing Citrine
				},
			}),
			q(85876, {	-- Reading the Runes
				["sourceQuests"] = { 85653 },	-- Dipping a Toe
				["provider"] = { "n", 230242 },	-- Bargus
				["coord"] = { 67.5, 42.0, SIREN_ISLE },
			}),
			q(85654, {	-- Juicing Up And Storming Out
				["sourceQuests"] = { 85653 },	-- Dipping a Toe
				["provider"] = { "n", 231997 },	-- Didi the Wrench
				["coord"] = { 71.3, 45.9, SIREN_ISLE },
				["g"] = {
					--spell(470167),	-- Superjuiced
					--
					i(229365),	-- Raw Singing Citrine
				},
			}),
			q(85655, {	-- Unleashing Her Power
				["sourceQuests"] = { 85654 },	-- Juicing Up And Storming Out
				["provider"] = { "n", 228074 },	-- Angorla
				["coord"] = { 71.2, 44.0, SIREN_ISLE },
				["g"] = {
					-- TODO: build 57361 - unable to progress further
					--spell(470168),	-- Cyrce's Zephyr
					--
					i(229365),	-- Raw Singing Citrine
				},
			}),
			-- isWeekly/isDaily
			q(84430, {	-- Crystal Crusade
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 227796 },	-- Sky-Captain Elaena Lancekat
				["coord"] = { 69.4, 42.8, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					o(465208, {	-- Crystal Chunk
						i(228780),	-- Crystal Chunk (QI!)
					}),
					i(228787),	-- Crystal Fragment (QI!)
				},
			}),
			q(84627, {	-- Three Heads of the Deep
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 227796 },	-- Sky-Captain Elaena Lancekat
				["coord"] = { 69.4, 42.8, SIREN_ISLE },
				["isWeekly"] = true,
			}),
			q(85589, {	-- Ruffled Pages
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 229716 },	-- Stellin Verasa
				["coord"] = { 71.0, 39.6, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(232361),	-- Ruffled Pages (QI!)
				},
			}),
			q(85051, {	-- Beach Comber
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 231783 },	-- Machinist Kromleg
				["coord"] = { 41.9, 68.0, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(229967),	-- Salvageable Scrap (QI!)
				},
			}),
			q(84252, {	-- Peak Precision
				-- TODO: it look like SHOULD BE same as all weekly quests but it is not marked as such in-game
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 232255 },	-- Benny Springjet
				["coord"] = { 41.9, 68.0, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(230795),	-- Experimental Go-Pack (QI!)
				},
			}),
			q(84225, {	-- Eggstinction
				-- TODO: STORM PHASE
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 231937 },	-- Sally Boltwrench
				["coord"] = { 63.4, 66.4, SIREN_ISLE },
				["isWeekly"] = true,
			}),
			q(84241, {	-- Shoreline Stand
				-- TODO: STORM PHASE
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 232297 },	-- Regald Hornfyre
				["coord"] = { 43.7, 23.9, SIREN_ISLE },
				["maps"] = { 2375 },	-- The Forgotten Tomb
				["isWeekly"] = true,
			}),
			-- Teaching to use donation system
			q(85059, {	-- A Piece of the Action
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 227817 },	-- Jack the Hammer
				["coord"] = { 69.3, 43.7, SIREN_ISLE },
			}),
			q(86156, {	-- Getting Involved
				["sourceQuests"] = { 85059 },	-- A Piece of the Action
				["provider"] = { "n", 227817 },	-- Jack the Hammer
				["coord"] = { 69.3, 43.7, SIREN_ISLE },
			}),
			-- Random open world object with quest?
			q(84547, {	-- Redemption Guaranteed
				--["sourceQuests"] = { 85059 },	-- A Piece of the Action (TODO: ???)
				["provider"] = { "i", 228665 },	-- Empty Kaja'Cola
				["coord"] = { 69.3, 43.7, SIREN_ISLE },
			}),
			--- Stay awhile and listen ---
			hqt(85103, {	-- Stay awhile and listen: Apprentice Tanmar
				["name"] = "Stay awhile and listen: Apprentice Tanmar",
				["sourceQuests"] = { 84940 },	-- Friendly Competition (TODO: could be a bit early?)
				["provider"] = { "n", 231536 },	-- Apprentice Tanmar
				["coord"] = { 72.2, 42.9, SIREN_ISLE },
			}),
			hqt(85156, {	-- Stay awhile and listen: Angorla
				["name"] = "Stay awhile and listen: Angorla",
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 228074 },	-- Angorla
				["coord"] = { 71.0, 44.1, SIREN_ISLE },
			}),
			hqt(85157, {	-- Stay awhile and listen: Didi the Wrench
				["name"] = "Stay awhile and listen: Didi the Wrench",
				--["sourceQuests"] = { 84725 },	-- The Circlet Calls (TODO: unsure)
				["provider"] = { "n", 231997 },	-- Didi the Wrench
				["coord"] = { 71.2, 45.9, SIREN_ISLE },
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(KHAZ_ALGAR, {
		m(SIREN_ISLE, {
			n(QUESTS, {
				-- Citrine unlocks on vendors
				q(85672),	-- Mariner's Hallowed Citrine unlock (speculation based on questID range, need more data)
				q(85669),	-- Thunderlord's Crackling Citrine unlock (speculation based on questID range, need more data)
				q(85675),	-- Windsinger's Runed Citrine unlock (according to spellID should also fire 85765 with spellID 470833 but it is not)				
				-- Need more data / re-confirmation
				--q(85956),	-- Cursed Pirate Skull (itemID 231116) drop
				--q(),	-- 84795 OR 84871 -- Earthen Deckhand's Halberd (itemID 229172) drop
				--q(84840),	-- Earthen Deckhand's Shoulderpads (itemID 229024) drop
				--q(85937),	-- Earthen Scallywag's Gavel (itemID 229178) drop
				--q(84873),	-- Earthen Scallywag's Implement (itemID 229188) from Crate of Bygone Riches (or just after opening crate?)
				--q(85957),	-- Runecaster's Stormbound Rune (itemID 231118) drop / small rp after first stone during Buried Secrets (questID 84723)
				--q(84875),	-- Scurvy Sailor's Ring (itemID 229051) drop from treasure chest (same objectID as for other one that didn't fire questIDs)
				--q(84846),	-- Earthen Deckhand's Bindings (itemID 229026) drop

				--q(85070),	-- pop after completion Serpent's Wrath (questID 84850)
				--q(85708),	-- pop after completion Serpent's Wrath (questID 84850)

				-- Some interaction with gems on terrain during storm phase
				q(86437),	-- @ 67.1, 78.5 (spellID 1213217 - Take Fragment)
			}),
		}),
	}),
})));