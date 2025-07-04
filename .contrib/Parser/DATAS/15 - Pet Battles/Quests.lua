----------------------------------------------
--   P E T    B A T T L E    M O D U L E    --
----------------------------------------------
local SHINY_PET_CHARM = i(116415, { ["timeline"] = { REMOVED_10_2_5 } });	-- Shiny Pet Charm
root(ROOTS.PetBattles, petbattle(bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	n(QUESTS, {
		-- Battle Pet Tamers Quests
		q(31902, {	-- Battle Pet Tamers: Eastern Kingdoms (A)
			["qg"] = 63596,	-- Audrey Burnhelp
			["sourceQuest"] = 31917,	-- A Tamer's Homecoming (A)
			-- ["altQuests"] = { 31903 },	-- Battle Pet Tamers: Eastern Kingdoms (Horde version, since only one can be completed per account and Blizz doesn't check it off, apparently)
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies
			},
		}),
		q(31903, {	-- Battle Pet Tamers: Eastern Kingdoms (H)
			["qg"] = 63626,	-- Varzok
			["sourceQuest"] = 31918,	-- A Tamer's Homecoming (H)
			-- ["altQuests"] = { 31902 },	-- Battle Pet Tamers: Eastern Kingdoms (Alliance version, since only one can be completed per account and Blizz doesn't check it off, apparently)
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31889, {	-- Battle Pet Tamers: Kalimdor (A)
			["qg"] = 63596,	-- Audrey Burnhelp
			["sourceQuest"] = 31917,	-- A Tamer's Homecoming (A)
			-- ["altQuests"] = { 31891 },
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31891, {	-- Battle Pet Tamers: Kalimdor (H)
			["qg"] = 63626,	-- Varzok
			["sourceQuest"] = 31918,	-- A Tamer's Homecoming (H)
			-- ["altQuests"] = { 31889 },
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31919, {	-- Battle Pet Tamers: Outland (A)
			-- ["altQuests"] = { 31921 },
			["qg"] = 63596,	-- Audrey Burnhelp
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = {
				31975,	-- The Returning Champion (A)
				31976,	-- The Returning Champion (A)
			},
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31921, {	-- Battle Pet Tamers: Outland (H)
			-- ["altQuests"] = { 31919 },
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				31977,	-- The Returning Champion (H)
				31980,	-- The Returning Champion (H)
			},
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31927, {	-- Battle Pet Tamers: Northrend (A)
			-- ["altQuests"] = { 31929 },
			["qg"] = 63596,	-- Audrey Burnhelp
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31981,	-- Exceeding Expectations (A)
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31929, {	-- Battle Pet Tamers: Northrend (H)
			-- ["altQuests"] = { 31927 },
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31982,	-- Exceeding Expectations (H)
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31966, {	-- Battle Pet Tamers: Cataclysm (A)
			-- ["altQuests"] = { 31967 },
			["qg"] = 63596,	-- Audrey Burnhelp
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31984,	-- A Brief Reprieve (A)
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31967, {	-- Battle Pet Tamers: Cataclysm (H)
			-- ["altQuests"] = { 31966 },
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31983,	-- A Brief Reprieve (H)
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31930, {	-- Battle Pet Tamers: Pandaria (A)
			-- ["altQuests"] = { 31952 },
			["qg"] = 63596,	-- Audrey Burnhelp
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31985,	-- The Triumphant Return (A)
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31952, {	-- Battle Pet Tamers: Pandaria (H)
			-- ["altQuests"] = { 31930 },
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31986,	-- The Triumphant Return (H)
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		-- Pet Battle Starting Quests. Alliance = Audrey, Grady, Lehna, Marcus, Valeena, Will. Horde = Ansel, Jarson, Matty, Naleen, Narzak, Varzok.
		q(31593, {	-- Got one! (Audrey)
			["qg"] = 63596,	-- Audrey Burnhep
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["sourceQuest"] = 31821,	-- Level Up!
			["races"] = ALLIANCE_ONLY,
		}),
		q(31551, {	-- Got one! (Grady)
			["qg"] = 63075,	-- Grady Bannson
			["coord"] = { 53.8, 50.1, DUN_MOROGH },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31822,	-- Level Up!
		}),
		q(31569, {	-- Got one! (Lehna)
			["qg"] = 63077,	-- Lehna
			["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31825,	-- Level Up!
		}),
		q(31550, {	-- Got one! (Marcus)
			["qg"] = 63014,	-- Marcus Jensen
			["coord"] = { 40.3, 66.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31785,	-- Level Up!
		}),
		q(31555, {	-- Got one! (Valeena)
			["qg"] = 63070,	-- Valeena
			["coord"] = { 55.2, 51.2, TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31826,	-- Level Up!
		}),
		q(31584, {	-- Got one! (Will)
			["qg"] = 63083,	-- Will Larsons
			["coord"] = { 50.1, 20.2, DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31832,	-- Level Up!
		}),
		q(31578, {	-- Got one! (Ansel)
			["qg"] = 63073,	-- Ansel Fincap
			["coord"] = { 60.8, 54.2, TIRISFAL_GLADES },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31823,	-- Level Up!
		}),
		q(31581, {	-- Got one! (Jarson)
			["qg"] = 63080,	-- Jarson Everlong
			["coord"] = { 47.2, 47.2, EVERSONG_WOODS },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31830,	-- Level Up!
		}),
		q(31587, {	-- Got one! (Matty)
			["qg"] = 63086,	-- Matty
			["coord"] = { 36.8, 77.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31828,	-- Level Up!
		}),
		q(31575, {	-- Got one! (Naleen)
			["qg"] = 63067,	-- Naleen
			["coord"] = { 49.2, 56.1, MULGORE },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31831,	-- Level Up!
		}),
		q(31570, {	-- Got one! (Narzak)
			["qg"] = 63061,	-- Narzak
			["coord"] = { 52.7, 41.3, DUROTAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31830,	-- Level Up!
		}),
		q(31590, {	-- Got one! (Varzok)
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31827,	-- Level Up!
		}),
		q(31591, {	-- Learning the Ropes (Audrey)
			["qg"] = 63596,	-- Audrey Burnhep
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		q(31548, {	-- Learning the Ropes (Grady)
			["qg"] = 63075,	-- Grady Bannson
			["coord"] = { 53.8, 50.1, DUN_MOROGH },
			["races"] = ALLIANCE_ONLY,
		}),
		q(31556, {	-- Learning the Ropes (Lehna)
			["qg"] = 63077,	-- Lehna
			["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
			["races"] = ALLIANCE_ONLY,
		}),
		q(31308, {	-- Learning the Ropes (Marcus)
			["qg"] = 63014,	-- Marcus Jensen
			["coord"] = { 40.3, 66.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
		}),
		q(31552, {	-- Learning the Ropes (Valeena)
			["qg"] = 63070,	-- Valeena
			["coord"] = { 55.2, 51.2, TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
		}),
		q(31582, {	-- Learning the Ropes (Will)
			["qg"] = 63083,	-- Will Larsons
			["coord"] = { 50.1, 20.2, DARKSHORE },
			["races"] = ALLIANCE_ONLY,
		}),
		q(31576, {	-- Learning the Ropes (Ansel)
			["qg"] = 63073,	-- Ansel Fincap
			["coord"] = { 60.8, 54.2, TIRISFAL_GLADES },
			["races"] = HORDE_ONLY,
		}),
		q(31579, {	-- Learning the Ropes (Jarson)
			["qg"] = 63080,	-- Jarson Everlong
			["coord"] = { 47.2, 47.2, EVERSONG_WOODS },
			["races"] = HORDE_ONLY,
		}),
		q(31585, {	-- Learning the Ropes (Matty)
			["qg"] = 63086,	-- Matty
			["coord"] = { 36.8, 77.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
		}),
		q(31573, {	-- Learning the Ropes (Naleen)
			["qg"] = 63067,	-- Naleen
			["coord"] = { 49.2, 56.1, MULGORE },
			["races"] = HORDE_ONLY,
		}),
		q(31571, {	-- Learning the Ropes (Narzak)
			["qg"] = 63061,	-- Narzak
			["coord"] = { 52.7, 41.3, DUROTAR },
			["races"] = HORDE_ONLY,
		}),
		q(31588, {	-- Learning the Ropes (Varzok)
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
		}),
		q(31821, {	-- Level Up! (Audrey)
			["qg"] = 63596,	-- Audrey Burnhep
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["sourceQuest"] = 31592,	-- On The Mend
			["races"] = ALLIANCE_ONLY,
		}),
		q(31822, {	-- Level Up! (Grady)
			["qg"] = 63075,	-- Grady Bannson
			["coord"] = { 53.8, 50.1, DUN_MOROGH },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31549,	-- On The Mend
		}),
		q(31825, {	-- Level Up! (Lehna)
			["qg"] = 63077,	-- Lehna
			["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31568,	-- On The Mend
		}),
		q(31785, {	-- Level Up! (Marcus)
			["qg"] = 63014,	-- Marcus Jensen
			["coord"] = { 40.3, 66.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31309,	-- On The Mend
		}),
		q(31826, {	-- Level Up! (Valeena)
			["qg"] = 63070,	-- Valeena
			["coord"] = { 55.2, 51.2, TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31553,	-- On The Mend
		}),
		q(31832, {	-- Level Up! (Will)
			["qg"] = 63083,	-- Will Larsons
			["coord"] = { 50.1, 20.2, DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31583,	-- On The Mend
		}),
		q(31823, {	-- Level Up! (Ansel)
			["qg"] = 63073,	-- Ansel Fincap
			["coord"] = { 60.8, 54.2, TIRISFAL_GLADES },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31577,	-- On The Mend
		}),
		q(31824, {	-- Level Up! (Jarson)
			["qg"] = 63080,	-- Jarson Everlong
			["coord"] = { 47.2, 47.2, EVERSONG_WOODS },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31572,	-- On The Mend
		}),
		q(31828, {	-- Level Up! (Matty)
			["qg"] = 63086,	-- Matty
			["coord"] = { 36.8, 77.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31586,	-- On The Mend
		}),
		q(31831, {	-- Level Up! (Naleen)
			["qg"] = 63067,	-- Naleen
			["coord"] = { 49.2, 56.1, MULGORE },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31574,	-- On The Mend
		}),
		q(31830, {	-- Level Up! (Narzak)
			["qg"] = 63061,	-- Narzak
			["coord"] = { 52.7, 41.3, DUROTAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31572,	-- On The Mend
		}),
		q(31827, {	-- Level Up! (Varzok)
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31589,	-- On The Mend
		}),
		q(31592, {	-- On The Mend (Audrey)
			["qg"] = 63596,	-- Audrey Burnhep
			["sourceQuest"] = 31591,	-- Learning the Ropes
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Battle Pets Healed
					["provider"] = { "n", 11069 },	-- Jenova Stoneshield <Stable Master>
					["coord"] = { 67.0, 37.6, STORMWIND_CITY },
				}),
			},
		}),
		q(31549, {	-- On The Mend (Grady)
			["qg"] = 63075,	-- Grady Bannson
			["coord"] = { 53.8, 50.1, DUN_MOROGH },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31548,	-- Learning the Ropes
		}),
		q(31568, {	-- On The Mend (Lehna)
			["qg"] = 63077,	-- Lehna
			["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31556,	-- Learning the Ropes
		}),
		q(31309, {	-- On The Mend (Marcus)
			["qg"] = 63014,	-- Marcus Jensen
			["coord"] = { 40.3, 66.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31308,	-- Learning the Ropes
		}),
		q(31553, {	-- On The Mend (Valeena)
			["qg"] = 63070,	-- Valeena
			["coord"] = { 55.2, 51.2, TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31552,	-- Learning the Ropes
		}),
		q(31583, {	-- On The Mend (Will)
			["qg"] = 63083,	-- Will Larsons
			["coord"] = { 50.1, 20.2, DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 31582,	-- Learning the Ropes
		}),
		q(31577, {	-- On The Mend (Ansel)
			["qg"] = 63073,	-- Ansel Fincap
			["coord"] = { 60.8, 54.2, TIRISFAL_GLADES },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31576,	-- Learning the Ropes
		}),
		q(31580, {	-- On The Mend (Jarson)
			["qg"] = 63080,	-- Jarson Everlong
			["coord"] = { 47.2, 47.2, EVERSONG_WOODS },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31571,	-- Learning the Ropes
		}),
		q(31586, {	-- On The Mend (Matty)
			["qg"] = 63086,	-- Matty
			["coord"] = { 36.8, 77.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31585,	-- Learning the Ropes
		}),
		q(31574, {	-- On The Mend (Naleen)
			["qg"] = 63067,	-- Naleen
			["coord"] = { 49.2, 56.1, MULGORE },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31573,	-- Learning the Ropes
		}),
		q(31572, {	-- On The Mend (Narzak)
			["qg"] = 63061,	-- Narzak
			["coord"] = { 52.7, 41.3, DUROTAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31571,	-- Learning the Ropes
		}),
		q(31589, {	-- On The Mend (Varzok)
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["sourceQuest"] = 31588,	-- Learning the Ropes
		}),
		-- Infamous Breadcrumbs, these are offered at the end of the training quests in each of the starter zones. Can't find any info on which one is appropriate to which map, so this is going to need to be something figured out on an entirely new account that has done none of the pet battle quests
		q(32008, {	-- Audrey Burnhep
			["isBreadcrumb"] = true,
			["qg"] = 63596,	-- Audrey Burnhelp
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["DisablePartySync"] = true,
			["altQuests"] = {
				-- Horde Shared Account-Wide Pet Battle Intro Quests
				32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
			},
			["description"] = "|CFFFF0000Do not under any circumstances abandon this quest, you cannot reobtain it.|r",
		}),
		q(31878, {	-- Audrey Burnhep
			["isBreadcrumb"] = true,
			["races"] = ALLIANCE_ONLY,
			["DisablePartySync"] = true,
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["altQuests"] = {
				-- Horde Shared Account-Wide Pet Battle Intro Quests
				32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
			},
		}),
		q(31879, {	-- Audrey Burnhep
			["isBreadcrumb"] = true,
			["races"] = ALLIANCE_ONLY,
			["DisablePartySync"] = true,
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["altQuests"] = {
				-- Horde Shared Account-Wide Pet Battle Intro Quests
				32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
			},
		}),
		q(31880, {	-- Audrey Burnhep
			["isBreadcrumb"] = true,
			["races"] = ALLIANCE_ONLY,
			["DisablePartySync"] = true,
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["altQuests"] = {
				-- Horde Shared Account-Wide Pet Battle Intro Quests
				32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
			},
		}),
		q(31881, {	-- Audrey Burnhep
			["isBreadcrumb"] = true,
			["races"] = ALLIANCE_ONLY,
			["DisablePartySync"] = true,
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["altQuests"] = {
				-- Horde Shared Account-Wide Pet Battle Intro Quests
				32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
			},
		}),
		q(32009, {	-- Varzok
			["qg"] = 63626,	-- Varzok
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["DisablePartySync"] = true,
			["altQuests"] = {
				-- Alliance Shared Account-Wide Pet Battle Intro Quests
				32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
			},
			["description"] = "|CFFFF0000Do not under any circumstances abandon this quest, you cannot reobtain it.|r",
		}),
		q(31882, {	-- Varzok
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["DisablePartySync"] = true,
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["altQuests"] = {
				-- Alliance Shared Account-Wide Pet Battle Intro Quests
				32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
			},
		}),
		q(31883, {	-- Varzok
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["DisablePartySync"] = true,
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["altQuests"] = {
				-- Alliance Shared Account-Wide Pet Battle Intro Quests
				32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
			},
		}),
		q(31884, {	-- Varzok
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["DisablePartySync"] = true,
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["altQuests"] = {
				-- Alliance Shared Account-Wide Pet Battle Intro Quests
				32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
			},
		}),
		q(31885, {	-- Varzok
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["DisablePartySync"] = true,
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["altQuests"] = {
				-- Alliance Shared Account-Wide Pet Battle Intro Quests
				32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
			},
		}),
		-- Alliance Questline
		q(31316, {	-- Julia, The Pet Tamer
			["qg"] = 63596,	-- Audrey Burnhelp
			["sourceQuests"] = { 32008, 31878, 31879, 31880, 31881 },	-- Audrey Burnhep (all breadcrumbs)
			["coord"] = { 69.2, 25.0, STORMWIND_CITY },
			["maps"] = { ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Julia Stevens
					["provider"] = { "n", 64330 },	-- Julia Stevens
					["coord"] = { 41.6, 83.6, ELWYNN_FOREST },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31724, {	-- Old MacDonald
			["qg"] = 64330,	-- Julia Stevens
			["sourceQuest"] = 31316,	-- Julia, The Pet Tamer
			["coord"] = { 41.6, 83.6, ELWYNN_FOREST },
			["maps"] = { WESTFALL },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Old MacDonald
					["provider"] = { "n", 65648 },	-- Old MacDonald
					["coord"] = { 80.6, 18.4, WESTFALL },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31725, {	-- Lindsay
			["qg"] = 65648,	-- Old MacDonald
			["sourceQuest"] = 31724,	-- Old MacDonald
			["coord"] = { 80.6, 18.4, WESTFALL },
			["maps"] = { REDRIDGE_MOUNTAINS },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Lindsay
					["provider"] = { "n", 65651 },	-- Lindsay
					["coord"] = { 33.2, 52.5, REDRIDGE_MOUNTAINS },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31726, {	-- Eric Davidson
			["qg"] = 65651,	-- Lindsay
			["sourceQuest"] = 31725,	-- Lindsay
			["coord"] = { 33.2, 52.5, REDRIDGE_MOUNTAINS },
			["maps"] = { DUSKWOOD },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Eric Davidson
					["provider"] = { "n", 65655 },	-- Eric Davidson
					["coord"] = { 19.8, 44.8, DUSKWOOD },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31729, {	-- Steven Lisbane
			["qg"] = 65655,	-- Eric Davidson
			["sourceQuest"] = 31726,	-- Eric Davidson
			["coord"] = { 19.8, 44.8, DUSKWOOD },
			["maps"] = { NORTHERN_STRANGLETHORN },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Steven Lisbane
					["provider"] = { "n", 63194 },	-- Steven Lisbane
					["coord"] = { 46.0, 40.4, NORTHERN_STRANGLETHORN },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31728, {	-- Bill Buckler
			["qg"] = 63194,	-- Steven Lisbane
			["sourceQuest"] = 31729,	-- Steven Lisbane
			["coord"] = { 46.0, 40.4, NORTHERN_STRANGLETHORN },
			["maps"] = { THE_CAPE_OF_STRANGLETHORN },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Bill Buckler
					["provider"] = { "n", 65656 },	-- Bill Buckler
					["coord"] = { 51.4, 73.2, THE_CAPE_OF_STRANGLETHORN },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31917, {	-- A Tamer's Homecoming (A)
			["qg"] = 65656,	-- Bill Buckler
			["sourceQuest"] = 31728,	-- Bill Buckler
			["altQuests"] = { 31918 },	-- A Tamer's Homecoming (H) -- CRIEVE NOTE: Check this on MOP Classic
			["coord"] = { 51.4, 73.2, THE_CAPE_OF_STRANGLETHORN },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		-- Horde Questline
		q(31812, {	-- Zunta, The Pet Tramer
			["qg"] = 63626,	-- Varzok
			["sourceQuests"] = { 32009, 31882, 31883, 31884, 31885 },	-- Varzok (all breadcrumbs)
			["coord"] = { 52.6, 59.3, ORGRIMMAR },
			["maps"] = { DUROTAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Zunta
					["provider"] = { "n", 66126 },	-- Zunta
					["coord"] = { 43.9, 28.9, DUROTAR },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31813, {	-- Dagra the Fierce
			["qg"] = 66126,	-- Zunta
			["sourceQuest"] = 31812,	-- Zunta, The Pet Tramer
			["coord"] = { 43.9, 28.9, DUROTAR },
			["maps"] = { NORTHERN_BARRENS },
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Dagra the Fierce
					["provider"] = { "n", 66135 },	-- Dagra the Fierce
					["coord"] = { 58.6, 53.0, NORTHERN_BARRENS },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31814, {	-- Analynn
			["qg"] = 66135,	-- Dagra the Fierce
			["sourceQuest"] = 31813,	-- Dagra the Fierce
			["coord"] = { 58.6, 53.0, NORTHERN_BARRENS },
			["maps"] = { ASHENVALE },
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Analynn
					["provider"] = { "n", 66136 },	-- Analynn
					["coord"] = { 20.2, 29.5, ASHENVALE },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31815, {	-- Zonya the Sadist
			["qg"] = 66136,	-- Analynn
			["sourceQuest"] = 31814,	-- Analynn
			["coord"] = { 20.2, 29.5, ASHENVALE },
			["maps"] = { STONETALON_MOUNTAINS },
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Zonya the Sadist
					["provider"] = { "n", 66137 },	-- Zonya the Sadist
					["coord"] = { 59.6, 71.6, STONETALON_MOUNTAINS },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31817, {	-- Merda Stronghoof
			["qg"] = 66137,	-- Zonya the Sadist
			["sourceQuest"] = 31815,	-- Zonya the Sadist
			["coord"] = { 59.6, 71.6, STONETALON_MOUNTAINS },
			["maps"] = { DESOLACE },
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Merda Stronghoof
					["provider"] = { "n", 66372 },	-- Merda Stronghoof
					["coord"] = { 57.2, 45.8, DESOLACE },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31870, {	-- Cassandra Kaboom
			["qg"] = 66372,	-- Merda Stronghoof
			["sourceQuest"] = 31817,	-- Merda Stronghoof
			["coord"] = { 57.2, 45.8, DESOLACE },
			["maps"] = { SOUTHERN_BARRENS },
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Defeat Cassandra Kaboom
					["provider"] = { "n", 66422 },	-- Cassandra Kaboom
					["coord"] = { 39.5, 79.1, SOUTHERN_BARRENS },
				}),
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31918, {	-- A Tamer's Homecoming (H)
			["qg"] = 66422,	-- Cassandra Kaboom
			["sourceQuest"] = 31870,	-- Cassandra Kaboom
			["altQuests"] = { 31917 },	-- A Tamer's Homecoming (A) -- CRIEVE NOTE: Check this on MOP Classic
			["coord"] = { 39.5, 79.1, SOUTHERN_BARRENS },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
		}),
		-- Grand Master
		q(31915, {	-- Grand Master Lydia Accoste
			["qg"] = 66522,	-- Lydia Accoste
			["sourceQuests"] = {
				31917,	-- A Tamer's Homecoming (A)
				31918,	-- A Tamer's Homecoming (H)
			},
			["coord"] = { 40.0, 76.4, DEADWIND_PASS },
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31976, {	-- The Returning Champion (A)
			["qg"] = 66522,	-- Lydia Accoste
			["sourceQuest"] = 31915,	-- Grand Master Lydia Accoste
			["altQuests"] = { 31975 },	-- The Returning Champion (Winterspring)
			["coord"] = { 40.0, 76.4, DEADWIND_PASS },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(31980, {	-- The Returning Champion (H)
			["qg"] = 66522,	-- Lydia Accoste
			["sourceQuest"] = 31915,	-- Grand Master Lydia Accoste
			["altQuests"] = { 31977 },	-- The Returning Champion (Winterspring)
			["coord"] = { 40.0, 76.4, DEADWIND_PASS },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(31897, {	-- Grand Master Trixxy
			["qg"] = 66466,	-- Grand Master Trixxy
			["sourceQuests"] = {
				31917,	-- A Tamer's Homecoming (A)
				31918,	-- A Tamer's Homecoming (H)
			},
			["coord"] = { 65.6, 64.5, WINTERSPRING },
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31975, {	-- The Returning Champion (A)
			["qg"] = 66466,	-- Stone Cold Trixxy
			["sourceQuest"] = 31897,	-- Grand Master Trixxy
			["altQuests"] = { 31976 },	-- The Returning Champion (Deadwind Pass)
			["coord"] = { 65.6, 64.4, WINTERSPRING },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(31977, {	-- The Returning Champion (H)
			["qg"] = 66466,	-- Stone Cold Trixxy
			["sourceQuest"] = 31897,	-- Grand Master Trixxy
			["altQuests"] = { 31980 },	-- The Returning Champion (Deadwind Pass)
			["coord"] = { 65.6, 64.4, WINTERSPRING },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
		}),
		-- TBC
		q(31920, {	-- Grand Master Antari
			["qg"] = 66557,	-- Bloodknight Antari <Grand Master Pet Tamer>
			["sourceQuests"] = {
				31919,	-- Battle Pet Tamers: Outland (A)
				31921,	-- Battle Pet Tamers: Outland (H)
			},
			["coord"] = { 30.4, 41.8, SHADOWMOON_VALLEY },
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31981, {	-- Exceeding Expectations (A)
			["qg"] = 66557,	-- Bloodknight Antari <Grand Master Pet Tamer>
			["sourceQuest"] = 31920,	-- Grand Master Antari
			["coord"] = { 30.4, 41.8, SHADOWMOON_VALLEY },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(31982, {	-- Exceeding Expectations (H)
			["qg"] = 66557,	-- Bloodknight Antari <Grand Master Pet Tamer>
			["sourceQuest"] = 31920,	-- Grand Master Antari
			["coord"] = { 30.4, 41.8, SHADOWMOON_VALLEY },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
		}),
		-- Wrath
		q(31928, {	-- Grand Master Payne
			["qg"] = 66675,	-- Major Payne
			["sourceQuests"] = {
				31927,	-- Battle Pet Tamers: Northrend (A)
				31929,	-- Battle Pet Tamers: Northrend (H)
			},
			["coord"] = { 77.4, 19.6, ICECROWN },
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31984, {	-- A Brief Reprieve (A)
			["qg"] = 66675,	-- Major Payne
			["sourceQuest"] = 31928,	-- Grand Master Payne
			["coord"] = { 77.4, 19.6, ICECROWN },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(31983, {	-- A Brief Reprieve (H)
			["qg"] = 66675,	-- Major Payne
			["sourceQuest"] = 31928,	-- Grand Master Payne
			["coord"] = { 77.4, 19.6, ICECROWN },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
		}),
		-- Cata
		q(31970, {	-- Grand Master Obalis
			["qg"] = 66824,	-- Obalis
			["sourceQuests"] = {
				31966,	-- Battle Pet Tamers: Cataclysm (A)
				31967,	-- Battle Pet Tamers: Cataclysm (H)
			},
			["coord"] = { 56.6, 41.8, ULDUM },
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(31985, {	-- The Triumphant Return (A)
			["qg"] = 66824,	-- Obalis
			["sourceQuest"] = 31970,	-- Grand Master Obalis
			["coord"] = { 56.6, 41.8, ULDUM },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(31986, {	-- The Triumphant Return (H)
			["qg"] = 66824,	-- Obalis
			["coord"] = { 56.6, 41.8, ULDUM },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
		}),
		-- Pandaria
		q(31951, {	-- Grand Master Aki
			["qg"] = 66741,	-- Aki the Chosen
			["sourceQuests"] = {
				31930,	-- Battle Pet Tamers: Pandaria (A)
				31952,	-- Battle Pet Tamers: Pandaria (H)
			},
			["coord"] = { 31.2, 74.2, VALE_OF_ETERNAL_BLOSSOMS },
			["groups"] = {
				i(89125),	-- Sack of Pet Supplies,
			},
		}),
		q(32603, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Beasts of Fable
			["providers"] = {
				{ "n", 64572 },	-- Sara Finkleswitch
				{ "n", 64582 },	-- Gentle San
			},
			["coords"] = {
				{ 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
				{ 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
			},
			["description"] = "Account-Wide Quest. Need to have completed the achievement, |cffffff00Taming The World.|r",
			["groups"] = {
				i(94025),	-- Red Panda (PET!)
			},
		})),
		q(32428, {	-- Pandaren Spirit Tamer
			["providers"] = {
				{ "n", 64572 },	-- Sara Finkleswitch
				{ "n", 64582 },	-- Gentle San
			},
			["coords"] = {
				{ 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
				{ 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
			},
			["description"] = "Account-Wide Quest. Need to have completed the achievement, |cffffff00Taming The World.|r These pets can be found in the Pandaren Spirit Pet Supplies received from the four Pandaren Spirit Tamers in their individual Daily Quests once you complete this quest.|r",
			["groups"] = {
				i(92799),	-- Pandaren Air Spirit (PET!)
				i(92798),	-- Pandaren Fire Spirit (PET!)
				i(92800),	-- Pandaren Earth Spirit (PET!)
				i(90173),	-- Pandaren Water Spirit (PET!)
			},
		}),
	}),
	-- Dragonflight
	n(QUESTS, {
		q(70647, {	-- Oh Where, Oh Where Can He Be?
			["qg"] = 185563,	-- Jyhanna
			["sourceQuests"] = {
				66244,	-- To Valdrakken
				DF_ACCOUNT_CAMPAIGN_QUEST,
			},
			["coord"] = { 10.4, 58.3, VALDRAKKEN },
			["description"] = "Account-Wide Quest.",
			["timeline"] = { ADDED_10_0_2_LAUNCH },
			["groups"] = {
				i(199175),	-- Lubbins (PET!)
			},
			["_drop"] = { "g" },	-- Drop Battle Pet Bandage
		}),
		q(70697, {	-- An Expert Opinion
			["qg"] = 185563,	-- Jyhanna
			["sourceQuest"] = 70647,	-- Oh Where, Oh Where Can He Be?
			["coord"] = { 10.4, 58.3, VALDRAKKEN },
			["description"] = "Account-Wide Quest.",
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		q(70722, {	-- What Lubbins Needs
			["qg"] = 196069,	-- Patchu
			["sourceQuest"] = 70697,	-- An Expert Opinion
			["coord"] = { 13.9, 49.8, THE_AZURE_SPAN },
			["description"] = "Account-Wide Quest.",
			["timeline"] = { ADDED_10_0_2_LAUNCH },
			["_drop"] = { "g" },	-- Drop Polished Pet Charm
			["sym"] = {{"select","itemID",
				92683,	-- Flawless Dragonkin Battle-Stone
				POLISHED_PET_CHARM,
			}},
		}),
		q(70732, {	-- A Practice Bout
			["qg"] = 196069,	-- Patchu
			["sourceQuest"] = 70722,	-- What Lubbins Needs
			["coord"] = { 13.9, 49.8, THE_AZURE_SPAN },
			["description"] = "Account-Wide Quest.",
			["timeline"] = { ADDED_10_0_2_LAUNCH },
			["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
		}),
		q(70849, {	-- This Calls for a Specialist
			["qg"] = 196069,	-- Patchu
			["sourceQuest"] = 70732,	-- A Practice Bout
			["coord"] = { 13.9, 49.8, THE_AZURE_SPAN },
			["description"] = "Account-Wide Quest.",
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		q(70851, {	-- Born to Be Wilder
			["qg"] = 196264,	-- Haniko
			["sourceQuest"] = 70849,	-- This Calls for a Specialist
			["coord"] = { 38.9, 83.3, THE_WAKING_SHORES },
			["description"] = "Account-Wide Quest.",
			["timeline"] = { ADDED_10_0_2_LAUNCH },
			["_drop"] = { "g" },	-- Drop Polished Pet Charm
			["sym"] = {{"select","itemID",
				POLISHED_PET_CHARM,
			}},
		}),
		q(70853, {	-- A Friend for Lubbins
			["qg"] = 196264,	-- Haniko
			["sourceQuest"] = 70851,	-- Born to Be Wilder
			["coord"] = { 38.9, 83.3, THE_WAKING_SHORES },
			["description"] = "Account-Wide Quest.",
			["timeline"] = { ADDED_10_0_2_LAUNCH },
			["_drop"] = { "g" },	-- Drop Polished Pet Charm
			["sym"] = {{"select","itemID",
				116421,	-- Flying Battle-Training Stone
				POLISHED_PET_CHARM,
			}},
		}),
		q(70854, {	-- So How Did It Go?
			["qg"] = 196264,	-- Haniko
			["sourceQuest"] = 70853,	-- A Friend for Lubbins
			["coord"] = { 38.9, 83.3, THE_WAKING_SHORES },
			["description"] = "Account-Wide Quest.",
			["timeline"] = { ADDED_10_0_2_LAUNCH },
			["groups"] = {
				i(200519),	-- Mister Toots (PET!)
				ach(16399),	-- Lovin' Lubbins
			},
			["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
		}),
	}),
	-- Daily Quests
	n(QUESTS, {
		expansion(EXPANSION.MOP, {
			q(31957, {	-- Grand Master Shu
				["qg"] = 66739,	-- Wastewalker Shu
				["coord"] = { 55.1, 37.6, DREAD_WASTES },
				["isDaily"] = true,
				["groups"] = {
					i(89125),	-- Sack of Pet Supplies
				},
			}),
			q(32439, {	-- Flowing Pandaren Spirit
				["qg"] = 68462,	-- Flowing Pandaren Spirit
				["sourceQuest"] = 32428,	-- Pandaren Spirit Tamer
				["coord"] = { 61.1, 87.5, DREAD_WASTES },
				["isDaily"] = true,
				["groups"] = {
					i(93147, {	-- Pandaren Spirit Pet Supplies
						["sym"] = {{"select","itemID",
							89139,	-- Chain Pet Leash
							44820,	-- Red Ribbon Pet Leash
							37460,	-- Rope Pet Leash
						}},
						["groups"] = {
							i(90173),	-- Pandaren Water Spirit (PET!)
						},
					})
				},
			}),
			q(31954, {	-- Grand Master Mo'ruk
				["qg"] = 66733,
				["coords"] = {
					{ 62.6, 45.8, KRASARANG_WILDS },
					-- Coords for location in Tanaris during revamped WoW's Anniversary:
					-- #if AFTER 11.0.5
					--{ 62.0, 49.5, TANARIS },
					-- #endif
				},
				["isDaily"] = true,
				["groups"] = {
					i(89125),	-- Sack of Pet Supplies
				},
			}),
			q(31956, {	-- Grand Master Yon
				["qg"] = 66738,	-- Courageous Yon
				["coords"] = {
					{ 35.8, 73.6, KUN_LAI_SUMMIT },
					-- Coords for location in Tanaris during revamped WoW's Anniversary:
					-- #if AFTER 11.0.5
					--{ 61.9, 49.6, TANARIS },
					-- #endif
				},
				["isDaily"] = true,
				["groups"] = {
					i(89125),	-- Sack of Pet Supplies
				},
			}),
			q(63435, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Temple Throwdown
				["qg"] = 176655,	-- Anthea <Carefree Pet Tamer>
				["coord"] = { 70.4, 51.4, KUN_LAI_SUMMIT },
				["isDaily"] = true,
				["groups"] = {
					i(184866, {	-- Grummlepouch
						i(89587),	-- Porcupette (PET!)
						i(184867),	-- Squibbles (PET!)
					}),
				},
			})),
			q(32441, {	-- Thundering Pandaren Spirit
				["qg"] = 68465,	-- Thundering Pandaren Spirit
				["sourceQuest"] = 32428,	-- Pandaren Spirit Tamer
				["coord"] = { 64.9, 93.8, KUN_LAI_SUMMIT },
				["isDaily"] = true,
				["groups"] = {
					i(93149, {	-- Pandaren Spirit Pet Supplies
						["sym"] = {{"select","itemID",
							89139,	-- Chain Pet Leash
							44820,	-- Red Ribbon Pet Leash
							37460,	-- Rope Pet Leash
						}},
						["groups"] = {
							i(92800),	-- Pandaren Earth Spirit (PET!)
						},
					}),
				},
			}),
			q(31953, {	-- Grand Master Hyuna
				["qg"] = 66730,	-- Hyuna of the Shrines
				["coords"] = {
					{ 47.9, 54.1, THE_JADE_FOREST },
					-- Coords for location in Tanaris during revamped WoW's Anniversary:
					-- #if AFTER 11.0.5
					--{ 62.0, 49.5, TANARIS },
					-- #endif
				},
				["isDaily"] = true,
				["groups"] = {
					i(89125),	-- Sack of Pet Supplies
				},
			}),
			q(32440, {	-- Whispering Pandaren Spirit
				["qg"] = 68464,	-- Whispering Pandaren Spirit
				["sourceQuest"] = 32428,	-- Pandaren Spirit Tamer
				["coord"] = { 28.9, 36.0, THE_JADE_FOREST },
				["isDaily"] = true,
				["groups"] = {
					i(93148, {	-- Pandaren Spirit Pet Supplies
						["sym"] = {{"select","itemID",
							89139,	-- Chain Pet Leash
							44820,	-- Red Ribbon Pet Leash
							37460,	-- Rope Pet Leash
						}},
						["groups"] = {
							i(92799),	-- Pandaren Air Spirit (PET!)
						},
					})
				},
			}),
			q(31991, {	-- Grand Master Zusshi
				["qg"] = 66918,	-- Seeker Zusshi
				["coord"] = { 36.3, 52.2, TOWNLONG_STEPPES },
				["isDaily"] = true,
				["groups"] = {
					i(89125),	-- Sack of Pet Supplies
				},
			}),
			q(32434, {	-- Burning Pandaren Spirit
				["qg"] = 68463,
				["sourceQuest"] = 32428,	-- Pandaren Spirit Tamer
				["coord"] = { 57.2, 42.1, TOWNLONG_STEPPES },
				["isDaily"] = true,
				["groups"] = {
					i(93146, {	-- Pandaren Spirit Pet Supplies
						["sym"] = {{"select","itemID",
							89139,	-- Chain Pet Leash
							44820,	-- Red Ribbon Pet Leash
							37460,	-- Rope Pet Leash
						}},
						["groups"] = {
							i(92798),	-- Pandaren Fire Spirit (PET!)
						},
					})
				},
			}),
			q(32604, {	-- Beasts of Fable Book I
				["providers"] = {
					{ "n", 64572 },	-- Sara Finkleswitch
					{ "n", 64582 },	-- Gentle San
				},
				["sourceQuest"] = 32603,	-- Beasts of Fable
				["coords"] = {
					{ 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
					{ 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
				},
				["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
				["isDaily"] = true,
				["groups"] = {
					i(94207),	-- Fabled Pandaren Pet Supplies
				},
			}),
			q(32868, {	-- Beasts of Fable Book II
				["providers"] = {
					{ "n", 64572 },	-- Sara Finkleswitch
					{ "n", 64582 },	-- Gentle San
				},
				["sourceQuest"] = 32603,	-- Beasts of Fable
				["coords"] = {
					{ 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
					{ 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
				},
				["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
				["isDaily"] = true,
				["groups"] = {
					i(94207),	-- Fabled Pandaren Pet Supplies
				},
			}),
			q(32869, {	-- Beasts of Fable Book III
				["providers"] = {
					{ "n", 64572 },	-- Sara Finkleswitch
					{ "n", 64582 },	-- Gentle San
				},
				["sourceQuest"] = 32603,	-- Beasts of Fable
				["coords"] = {
					{ 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
					{ 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
				},
				["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
				["isDaily"] = true,
				["groups"] = {
					i(94207),	-- Fabled Pandaren Pet Supplies
				},
			}),
			q(31958, {	-- Grand Master Aki
				["qg"] = 66741,	-- Aki the Chosen
				["sourceQuest"] = 31951,	-- Grand Master Aki
				["coords"] = {
					{ 31.2, 74.2, VALE_OF_ETERNAL_BLOSSOMS },
					-- #if AFTER 8.3.0
					{ 84.1, 28.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
					-- #endif
				},
				["isDaily"] = true,
				["groups"] = {
					i(89125),	-- Sack of Pet Supplies
				},
			}),
			q(31955, {	-- Grand Master Nishi
				["qg"] = 66734,	-- Farmer Nishi
				["coords"] = {
					{ 46.0, 43.6, VALLEY_OF_THE_FOUR_WINDS },
					-- Coords for location in Tanaris during revamped WoW's Anniversary:
					-- #if AFTER 11.0.5
					--{ 61.9, 49.6, TANARIS },
					-- #endif
				},
				["isDaily"] = true,
				["groups"] = {
					i(89125),	-- Sack of Pet Supplies
				},
			}),
		}),
		expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
			-- Maybe rewards header for those 6 npc quests to show polished pet charms
			q(37203, {	-- Ashlei
				["qg"] = 87124,	-- Ashlei
				["coord"] = { 50.0, 31.2, DRAENOR_SHADOWMOON_VALLEY },
				["_drop"] = { "g" },	-- Drops Polished Pet Charm
				["isDaily"] = true,
				["groups"] = {
					-- #if BEFORE 10.2.5
					SHINY_PET_CHARM,
					-- #endif
				},
			}),
			q(37201, {	-- Cymre Brightblade
				["qg"] = 83837,	-- Cymre Brightblade
				["coord"] = { 51.1, 70.6, GORGROND },
				["_drop"] = { "g" },	-- Drops Polished Pet Charm
				["isDaily"] = true,
				["groups"] = {
					-- #if BEFORE 10.2.5
					SHINY_PET_CHARM,
					-- #endif
				},
			}),
			q(37205, {	-- Gargra
				["qg"] = 87122,	-- Gargra
				["coord"] = { 68.5, 64.7, FROSTFIRE_RIDGE },
				["_drop"] = { "g" },	-- Drops Polished Pet Charm
				["isDaily"] = true,
				["groups"] = {
					-- #if BEFORE 10.2.5
					SHINY_PET_CHARM,
					-- #endif
				},
			}),
			q(37208, {	-- Taralune
				["qg"] = 87125,	-- Taralune
				["coord"] = { 49.0, 80.3, TALADOR },
				["_drop"] = { "g" },	-- Drops Polished Pet Charm
				["isDaily"] = true,
				["groups"] = {
					-- #if BEFORE 10.2.5
					SHINY_PET_CHARM,
					-- #endif
				},
			}),
			q(37206, {	-- Tarr the Terrible
				["qg"] = 87110,	-- Tar the Terrible
				["coord"] = { 56.2, 9.8, DRAENOR_NAGRAND },
				["_drop"] = { "g" },	-- Drops Polished Pet Charm
				["isDaily"] = true,
				["groups"] = {
					-- #if BEFORE 10.2.5
					SHINY_PET_CHARM,
					-- #endif
				},
			}),
			q(37207, {	-- Vesharr
				["qg"] = 87123,	-- Vesharr
				["coord"] = { 46.2, 45.3, SPIRES_OF_ARAK },
				["_drop"] = { "g" },	-- Drops Polished Pet Charm
				["isDaily"] = true,
				["groups"] = {
					-- #if BEFORE 10.2.5
					SHINY_PET_CHARM,
					-- #endif
				},
			}),
		})),
	}),
	-- Weeklies
	n(QUESTS, {
		pvp(q(32863, {	-- What We've Been Training For
			["providers"] = {
				{ "n", 63596 },	-- Audrey Burnhelp
				{ "n", 63626 },	-- Varzok
				{ "n", 64572 },	-- Sara Finkleswitch
				{ "n", 64582 },	-- Gentle San
			},
			["coords"] = {
				{ 69.2, 25.0, STORMWIND_CITY },
				{ 52.6, 59.3, ORGRIMMAR },
				{ 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
				{ 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
			},
			["description"] = "Account-Wide Weekly Quest.",
			["isWeekly"] = true,
			["groups"] = {
				i(98095, {	-- Brawler's Pet Supplies
					["sym"] = {{"select","itemID",
						89139,	-- Chain Pet Leash
						44820,	-- Red Ribbon Pet Leash
						37460,	-- Rope Pet Leash
						92679,	-- Flawless Aquatic Battle-Stone
						92675,	-- Flawless Beast Battle-Stone
						92676,	-- Flawless Critter Battle-Stone
						92665,	-- Flawless Elemental Battle-Stone
						92677,	-- Flawless Flying Battle-Stone
						92682,	-- Flawless Humanoid Battle-Stone
						92678,	-- Flawless Magic Battle-Stone
						92680,	-- Flawless Mechanical Battle-Stone
						92681,	-- Flawless Undead Battle-Stone
					}},
				})
			},
		})),
		-- Legion
		q(40310, {	-- Shipwrecked Captive
			["description"] = "Weekly Account-Wide Pet Battle Quest. You need the toy Sternfathom's Pet Journal to summon this npc.",
			["providers"] = {
				{ "n", 98489 },	-- Shipwrecked Captive
				{ "i", 122681 },	-- Sternfathom's Pet Journal
			},
			["coord"] = { 49.3, 45.4, AZSUNA },
			["_drop"] = { "g" },	-- Drop Shiny Pet Charm
			["timeline"] = { ADDED_7_0_3_LAUNCH },
			["isWeekly"] = true,
		}),
	}),
})));
