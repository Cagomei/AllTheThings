-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
AWAKENING_THE_MACHINE = createHeader({
	readable = "Awakening The Machine",
	icon = "Interface\\Icons\\inv_dwarvenmechboss_bronze",
	text = {
		en = "Awakening The Machine",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(THE_ASSEMBLY_OF_THE_DEEPS, {
		n(AWAKENING_THE_MACHINE, {
			["crs"] = { 217128 },	-- Speaker Kuldas <Awakening the Machine>
			["coord"] = { 47.5, 31.9, THE_RINGING_DEEPS },
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(40662),		-- It's Not Much, But It's Honest Work
				}),
				n(QUESTS, {
					q(83333, {	-- Gearing Up for Trouble
						["provider"] = { "n", 216164 },	-- Gnawbles
						["coord"] = { 47.7, 35.3, THE_RINGING_DEEPS },
						["isWeekly"] = true,
						["g"] = {
							i(226273),	-- Awakened Mechanical Cache
							--i(223128),	-- Formula: Enchant Chest - Oathsworn's Strength (RECIPE!) from cache
						},
					}),
				}),
				n(REWARDS, {
					i(223128),	-- Formula: Enchant Chest - Oathsworn's Strength (RECIPE!)
					i(224426),	-- Pattern: Ignition Satchel (RECIPE!)
					i(223040),	-- Plans: Charged Crusher (RECIPE!)
				}),
				n(TREASURES, {
					o_repeated({
						i(223269),	-- Machine Defense Unit 1-11 (MOUNT!)
						-- weekly?
						o(465243, {	-- Awakened Cache
							["coord"] = { 47.4, 31.9, THE_RINGING_DEEPS },
							["questID"] = 84642,
							--["isWeekly"] = true,
						}),
						o(465242, {	-- Awakened Cache
							["coord"] = { 47.5, 32.0, THE_RINGING_DEEPS },
							["questID"] = 84644,
							--["isWeekly"] = true,
						}),
						o(465241, {	-- Awakened Cache
							["coord"] = { 47.5, 31.9, THE_RINGING_DEEPS },
							["questID"] = 84646,
							--["isWeekly"] = true,
						}),
						o(464938, {	-- Awakened Cache
							["coord"] = { 47.5, 31.9, THE_RINGING_DEEPS },
							["questID"] = 84647,
							--["isWeekly"] = true,
						}),
					}),
				}),
				n(VENDORS, {
					n(225189, {	-- R-K-MEDES <Awakening The Machine>
						["coord"] = { 47.5, 32.0, THE_RINGING_DEEPS },
						["g"] = bubbleDownRep(FACTION_THE_ASSEMBLY_OF_THE_DEEPS, {
							{		-- RENOWN 1 --
							}, {	-- RENOWN 2 --
							}, {	-- RENOWN 3 --
							}, {	-- RENOWN 4 --
							}, {	-- RENOWN 5 --
							}, {	-- RENOWN 6 --
							}, {	-- RENOWN 7 --
								i(225778, {	-- Awakening Power: Edict of Alacrity
									["cost"] = {{"c", RESONANCE_CRYSTALS, 325}},
								}),
								i(225779, {	-- Awakening Power: Edict of Haste
									["cost"] = {{"c", RESONANCE_CRYSTALS, 325}},
								}),
								i(225782, {	-- Awakening Power: Edict of Rage
									["cost"] = {{"c", RESONANCE_CRYSTALS, 325}},
								}),
								i(225780, {	-- Awakening Power: Edict of Regeneration
									["cost"] = {{"c", RESONANCE_CRYSTALS, 325}},
								}),
								i(225781, {	-- Awakening Power: Edict of Stamina
									["cost"] = {{"c", RESONANCE_CRYSTALS, 325}},
								}),
							}, {	-- RENOWN 8 --
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
							}, {	-- RENOWN 11 --
							}, {	-- RENOWN 12 --
							}, {	-- RENOWN 13 --
							}, {	-- RENOWN 14 --
							}, {	-- RENOWN 15 --
								i(225773, {	-- Awakening Power: Grace of the Machine
									["cost"] = {{"c", RESONANCE_CRYSTALS, 650}},
								}),
								i(225774, {	-- Awakening Power: Inner Forge
									["cost"] = {{"c", RESONANCE_CRYSTALS, 650}},
								}),
								i(225775, {	-- Awakening Power: Steam Vent
									["cost"] = {{"c", RESONANCE_CRYSTALS, 650}},
								}),
								i(225769, {	-- Awakening Power: Urgent Repairs
									["cost"] = {{"c", RESONANCE_CRYSTALS, 650}},
								}),
							}, {	-- RENOWN 16 --
							}, {	-- RENOWN 17 --
							}, {	-- RENOWN 18 --
							}, {	-- RENOWN 19 --
							}, {	-- RENOWN 20 --
							}, {	-- RENOWN 21 --
							}, {	-- RENOWN 22 --
								i(225777, {	-- Awakening Power: Cogwalker Support
									["cost"] = {{"c", RESONANCE_CRYSTALS, 975}},
								}),
								i(225776, {	-- Awakening Power: Ironstrider Support
									["cost"] = {{"c", RESONANCE_CRYSTALS, 975}},
								}),
							}, {	-- RENOWN 23 --
							}, {	-- RENOWN 24 --
							}, {	-- RENOWN 25 --
							},
						}),
					}),
				}),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	q(84631),	-- Wave 5
	q(84632),	-- Wave 10
	q(84633),	-- Wave 15
	q(84634),	-- Wave 20
}));