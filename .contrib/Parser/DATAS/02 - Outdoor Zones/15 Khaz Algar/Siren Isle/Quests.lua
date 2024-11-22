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
				["coord"] = { 70.3, 52.4, SIREN_ISLE },
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
						i(232860),	-- Singing Fragments (QI!)
					}),
					o(499862, {	-- Runed Storm Cache
						i(232861),	-- Singing Fragments (QI!)
					}),
					o(499863, {	-- Runed Storm Cache
						i(232862),	-- Singing Fragments (QI!)
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
						i(232860),	-- Singing Fragments (QI!)
					}),
					o(500690, {	-- Seafarer's Cache
						i(232861),	-- Singing Fragments (QI!)
					}),
					o(500689, {	-- Seafarer's Cache
						i(232862),	-- Singing Fragments (QI!)
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
					--spell(470168),	-- Cyrce's Zephyr
					--
					i(229365),	-- Raw Singing Citrine
				},
			}),
			q(85656, {	-- The Singing Bandit Catcher
				["sourceQuests"] = { 85655 },	-- Unleashing Her Power
				["provider"] = { "n", 231536 },	-- Apprentice Tanmar
				["coord"] = { 72.1, 42.9, SIREN_ISLE },
				["g"] = {
					i(232860),	-- Singing Fragments (QI!)
					i(232861),	-- Singing Fragments (QI!)
					i(232862),	-- Singing Fragments (QI!)
					--spell(470169),	-- Thieves of the Siren
					--
					i(229365),	-- Raw Singing Citrine
				},
			}),
			q(85657, {	-- Cyrce Would Be So Proud
				["sourceQuests"] = { 85656 },	-- The Singing Bandit Catcher
				["provider"] = { "n", 231997 },	-- Didi the Wrench
				["coord"] = { 71.2, 45.8, SIREN_ISLE },
				["g"] = {
					--spell(470170),	-- Wings of the Siren
				},
			}),
			--
			q(84252, {	-- Peak Precision
				-- TODO: it look like SHOULD BE same as all weekly quests but it is not marked as such in-game
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 232255 },	-- Benny Springjet
				["coord"] = { 42.3, 49.1, SIREN_ISLE },
				["g"] = {
					i(230795),	-- Experimental Go-Pack (QI!)
				},
			}),
			-- isWeekly/isDaily
			q(84248, {	-- A Ritual of Runes
				-- TODO: Vrykul
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 233139 },	-- Machinist Kromleg
				["coord"] = { 51.4, 48.2, SIREN_ISLE },
				["isWeekly"] = true,
			}),
			q(85051, {	-- Beach Comber
				-- TODO: Naga
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 231783 },	-- Machinist Kromleg
				["coord"] = { 41.9, 68.0, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(229967),	-- Salvageable Scrap (QI!)
				},
			}),
			q(83753, {	-- Cannon Karma
				-- TODO: Pirates
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 227818 },	-- Skaggit
				["coord"] = { 69.3, 43.4, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(226133),	-- Blacksteel Cannonball (QI!)
				},
			}),
			q(84001, {	-- Cart Blanche
				-- TODO: Pirates
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 232730 },	-- Machinist Kromleg
				["coord"] = { 48.5, 53.0, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					o(456665, {	-- Ore Sample
						i(226853),	-- Ore Sample (QI!)
					}),
				},
			}),
			q(84430, {	-- Crystal Crusade
				-- TODO: Naga
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
			q(83932, {	-- Historical Documents
				-- TODO: Vrykul
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 229716 },	-- Stellin Verasa
				["coord"] = { 71.0, 39.6, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(227405),	-- Research Journal (QI!)
					i(227406),	-- Interesting Notes (QI!)
				},
			}),
			q(84432, {	-- Longship Landing
				-- TODO: Vrykul
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 228096 },	-- Dawn
				["coord"] = { 69.1, 43.0, SIREN_ISLE },
				["isWeekly"] = true,
			}),
			q(84619, {	-- Ooker Dooker Literature Club
				-- TODO: Pirates
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 229716 },	-- Stellin Verasa
				["coord"] = { 71.0, 39.6, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(231812),	-- Hozen Poetry (QI!)
					n(232825, {	-- First Mate Dat-Dat
						i(231809),	-- First Mate Dat-Dat's Key (QI!)
					}),
					o(477098, {	-- Bilge Rat Trunk
						i(231786),	-- Ookler's Diary (QI!)
					}),
					o(477366, {	-- Dat-Dat's Book Stash
						i(231802),	-- Ashvane Co. Survey Report (QI!)
					}),
					o(477612, {	-- Siren Isle Manifest
						i(231813),	-- Siren Isle Manifest (QI!)
					}),
					o(477248, {	-- Songs of the Siren
						i(231788),	-- Songs of the Siren (QI!)
					}),
				},
			}),
			q(84299, {	-- Pirate Plunder
				-- TODO: Pirates
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 227818 },	-- Skaggit
				["coord"] = { 69.3, 43.4, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					o(456869, {	-- Kaja'Cola Stash
						i(227453),	-- Kaja'Cola Stash (QI!)
					}),
					o(457143, {	-- Kaja'Cola Can
						i(227670),	-- Kaja'Cola Can (QI!)
					}),
				},
			}),
			q(84680, {	-- Rock 'n' Stone Revival
				-- TODO: Vrykul
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 228096 },	-- Dawn
				["coord"] = { 69.1, 43.0, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(228988),	-- Rock Reviver (QI!)
				},
			}),
			q(85589, {	-- Ruffled Pages
				-- TODO: Naga
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 229716 },	-- Stellin Verasa
				["coord"] = { 71.0, 39.6, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					o(487825, {	-- Ruffled Pages
						i(232361),	-- Ruffled Pages (QI!)
					}),
				},
			}),
			q(84222, {	-- Secure the Perimeter
				-- TODO: Vrykul
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 227796 },	-- Sky-Captain Elaena Lancekat
				["coord"] = { 69.4, 42.8, SIREN_ISLE },
				["isWeekly"] = true,
			}),
			q(83827, {	-- Silence the Song
				-- TODO: Pirates
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 232753 },	-- Regald Hornfyre
				["coord"] = { 45.2, 67.7, SIREN_ISLE },
				["isWeekly"] = true,
				["g"] = {
					i(226261),	-- Sonic Scrambler (QI!)
				},
			}),
			q(84627, {	-- Three Heads of the Deep
				-- TODO: Naga
				["sourceQuests"] = { 84725 },	-- The Circlet Calls
				["provider"] = { "n", 227796 },	-- Sky-Captain Elaena Lancekat
				["coord"] = { 69.4, 42.8, SIREN_ISLE },
				["isWeekly"] = true,
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
			q(85570, {	-- The Tattered Journal
				--["sourceQuests"] = { ??? },	-- ???
				["provider"] = { "o", 494923 },	-- Tattered Journal
				["coord"] = { 37.1, 77.2, 2375 },	-- The Forgotten Vault
				["g"] = {
					i(232643),	-- Mysterious Tattered Journal (QI!)
				},
			}),
			q(85571, {	-- Scattered To The Winds
				["sourceQuests"] = { 85570 },	-- The Tattered Journal
				["provider"] = { "n", 229716 },	-- Stellin Verasa
				["coord"] = { 71.0, 39.6, SIREN_ISLE },
				["g"] = {
					i(235543),	-- Faded Journal Page (QI!)
					i(235545),	-- Stained Journal Page (QI!)
					i(235544),	-- Soggy Journal Page (QI!)
					i(235546),	-- Torn Journal Page (QI!)
					i(235547),	-- Weathered Journal Page (QI!)
					--o(499443, {	-- Faded Journal Page
					--	i(232651),	-- Faded Journal Page (QI!)
					--	changed for some reason?
					--}),
				},
			}),
			q(85572, {	-- A Group Effort
				["sourceQuests"] = { 85571 },	-- Scattered To The Winds
				["provider"] = { "n", 229716 },	-- Stellin Verasa
				["coord"] = { 71.0, 39.6, SIREN_ISLE },
			}),
			q(85573, {	-- Laid To Rest At Last
				["sourceQuests"] = { 85572 },	-- A Group Effort
				["provider"] = { "n", 229716 },	-- Stellin Verasa
				["coord"] = { 71.0, 39.6, SIREN_ISLE },
				["g"] = {
					i(232694),	-- Transcribed Kul Tiran Journal [book]
				},
			}),
			-- Snapdragon
			q(85573, {	-- A Lifeline
				--["sourceQuests"] = { 84547 },	-- Redemption Guaranteed (TODO: speculation)
				["provider"] = { "n", 235216 },	-- Starving Snapdragon Runt
				["coord"] = { 70.9, 48.6, SIREN_ISLE },
				["g"] = {
					i(234426),	-- Kaja'Cola-braised Meat (QI!)
				},
			}),
			q(86483, {	-- Snap To It
				["sourceQuests"] = {
					85573,	-- A Lifeline
					--86486,	-- Hungry, Hungry Snapdragon (TODO: It take 2 (same) dailies for this quest to pop)
				},
				["provider"] = { "n", 235237 },	-- Growing Snapdragon Runt
				["coord"] = { 70.9, 48.6, SIREN_ISLE },
				["g"] = {
					i(234443),	-- Meaty Ration (QI!)
				},
			}),
			q(86484, {	-- Temper Like A Tempest
				["sourceQuests"] = {
					86483,	-- Snap To It
					--86486,	-- Hungry, Hungry Snapdragon (TODO: It take 2 (same) dailies for this quest to pop)
				},
				["provider"] = { "n", 235243 },	-- Maturing Prismatic Snapdragon
				["coord"] = { 70.9, 48.6, SIREN_ISLE },
				["g"] = {
					i(234592),	-- Storminfused Mystery Meat (QI!)
					-- TODO: doesn't exist in loot table on ptr (57528), cannot progress further
				},
			}),
			q(86486, {	-- Hungry, Hungry Snapdragon
				-- available after 24hrs (not on next day!) of turn in previous quest
				["sourceQuests"] = { 85573 },	-- A Lifeline
				["providers"] = {
					{ "n", 235237 },	-- Growing Snapdragon Runt
					{ "n", 235243 },	-- Maturing Prismatic Snapdragon
					{ "n", 235250 },	-- Maturing Prismatic Snapdragon
				},
				["coord"] = { 70.9, 48.6, SIREN_ISLE },
				["isDaily"] = true,
				["g"] = {
					-- It require some meat (in quest description but not on ptr)
				},
			}),
			-- Birdy (move to special?)
			q(85811, {	-- Thrayir, Eyes of the Siren
				["sourceQuests"] = {
				--	TODO: hqts as sourceQuest since you cannot take this quest without unlocking them
				--	probably gonna need to add as cost runekeys, dunno
					85800,	-- Cyclonic (spellID 471163)
					85803,	-- Thunderous (spellID 471169)
					85801,	-- Torrential (spellID 471166)
					85799,	-- Turbulent (spellID 471162)
					85802,	-- Whirling (spellID 471167)
				},
				["provider"] = { "n", 233582 },	-- Thrayir, Eyes of the Siren
				["coord"] = { 72.5, 61.3, 2375 },
				["g"] = {
					i(232639),	-- Thrayir, Eyes of the Siren (MOUNT!)
				},
			}),
			-- Marmaduke (move to special?)
			q(86261, {	-- Homeward Bound to Safer Shores
				["description"] = "You need to give Marmaduke the well loved squeky toy before to trigger this quest",
				["sourceQuests"] = { 86240 },	-- HQT: give toy to Marmaduke
				["provider"] = { "n", 234357 },	-- Marmaduke
				["coord"] = { 68.3, 44.9, SIREN_ISLE },
				["g"] = {
					i(233056),	-- Marmaduke (PET!)
				},
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
			--
			hqt(86240, {	-- Give Marmaduke the well loved squeky toy
				["name"] = "Give Marmaduke the Well Loved Squeaky Toy",
				["cost"] = {{ "i", 233027, 1 }},	-- Well Loved Squeaky Toy
				["provider"] = { "n", 234172 },	-- Marmaduke
				["coord"] = { 42.5, 47.4, SIREN_ISLE },
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(KHAZ_ALGAR, {
		m(SIREN_ISLE, {
			n(QUESTS, {
				-- A Choir of Citrines achievement tracking quests
				q(85674),	-- Storm Sewer's Citrine
				q(85673),	-- Old Salt's Bardic Citrine
				q(85672),	-- Mariner's Hallowed Citrine
				q(85707),	-- Legendary Skipper's Citrine
				q(85708),	-- Seabed Leviathan's Citrine
				q(85709),	-- Roaring War-Queen's Citrine
				q(85676),	-- Stormbringer's Runed Citrine
				q(85677),	-- Fathomdweller's Runed Citrine
				q(85675),	-- Windsinger's Runed Citrine
				q(85669),	-- Thunderlord's Crackling Citrine
				q(85670),	-- Undersea Overseer's Citrine
				q(85671),	-- Squall Sailor's Citrine
				--
				q(85070),	-- when Special Assigment npc unlocked for storm phase (pop talking head)
				-- Some interaction with gems on terrain during storm phase, reward you with Turbulent Fragment (itemID 234327)
				q(86437),	-- after interact with Runic Fragment (npcID 234934) @ 67.1, 78.5 (spellID 1213217 - Take Fragment)
				q(86435),	-- after interact with Runic Fragment (npcID 234934) @ 52.6, 38.7 / was able to loot it again but didn't fire questID
				q(86436),	-- after interact with Dirt Pile (npcID 235134) @ 38.2, 51.8
				-- Runestone activation questIDs in The Forgotten Vault (stormed phase) for Thrayir, Eyes of the Siren (npcID 233540)
				q(85800),	-- Cyclonic (spellID 471163)
				q(85803),	-- Thunderous (spellID 471169)
				q(85801),	-- Torrential (spellID 471166)
				q(85799),	-- Turbulent (spellID 471162)
				q(85802),	-- Whirling (spellID 471167)
				-- Snapdragon timer after quest
				q(86566),	-- [DNT] Snapdragon Progress Update (spellID 1214684)
				--
				--Probably won't be on live:
				--plate stuff didn't trigger questIDs on druid:
				--Earthen Landlubber's Breastplate
				--Earthen Landlubber's Gauntlets
				--Earthen Landlubber's Sabatons
				--but it seems like try to give you pieces that you don't have
				--q(84874),	-- Conch Collector's Locket (itemID 229053) drop
				--q(85956),	-- Cursed Pirate Skull (itemID 231116) drop
				--q(84846),	-- Earthen Deckhand's Bindings (itemID 229026) drop
				--q(84841),	-- Earthen Deckhand's Breeches (itemID 229023) drop
				--q(85839),	-- Earthen Deckhand's Cap (itemID 229045) drop
				--q(84847),	-- Earthen Deckhand's Cape (itemID 229019) drop
				--q(84844),	-- Earthen Deckhand's Grips (itemID 229022) drop
				--q(84871),	-- Earthen Deckhand's Halberd (itemID 229172) drop
				--q(84845),	-- Earthen Deckhand's Sash (itemID 229025) drop
				--q(84840),	-- Earthen Deckhand's Shoulderpads (itemID 229024) drop
				--q(84842),	-- Earthen Deckhand's Vest (itemID 229020) from Crate of Bygone Riches (or just after opening crate?)
				--q(84872),	-- Earthen Scallywag's Gavel (itemID 229178) drop
				--q(84873),	-- Earthen Scallywag's Implement (itemID 229188) from Crate of Bygone Riches (or just after opening crate?)
				--q(85957),	-- Runecaster's Stormbound Rune (itemID 231118) drop / small rp after first stone during Buried Secrets (questID 84723)
				--q(84875),	-- Scurvy Sailor's Ring (itemID 229051) drop from treasure chest (same objectID as for other one that didn't fire questIDs)
			}),
		}),
	}),
})));