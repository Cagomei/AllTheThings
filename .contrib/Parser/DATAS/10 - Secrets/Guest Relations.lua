--------------------------------------------
--     S E C R E T S  M O D U L E       --
--------------------------------------------
GUEST_RELATIONS = createHeader({
	readable = "Guest Relations",
	constant = "GUEST_RELATIONS",
	icon = [[~_.asset("Holiday_SecretsAz")]],
--	eventID = EVENTS.TODO,
	text = {
		en = "Guest Relations",
	},
});

root(ROOTS.Secrets, n(GUEST_RELATIONS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	["description"] = "***Using Debug Mode is recommended.***\n",
	["groups"] = {
		n(QUESTS, {
			-- Week 1: Tutorial Questline --
			q(84143, {	-- Lost and Busy
				["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84144, {	-- Tat Big Meanie
				["description"] = "Requires Idol of Ohn'ahra. If you don't have it, you need to complete Secrets of Azeroth quest chain in Valdrakken, Dragon Isles.",
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84143 },	-- Lost and Busy
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					o(456767, {	-- Red Hair
						["coord"] = { 62.1, 51.7, TANARIS },
						["groups"] = { i(227364), },	-- Red Hair (QI!)
					}),
					o(455310, {	-- Hear Historic Tales at the Storyteller Stage!
						["coord"] = { 62.0, 51.5, TANARIS },
						["groups"] = { i(227363), },	-- Hear Historic Tales at the Storyteller Stage! (QI!)
					}),
					n(226775, {	-- Ratts <Former Event Coordinator>
						["coord"] = { 64.0, 51.7, TANARIS },
					}),
					o(456820, {	-- Strange Torch
						["coord"] = { 63.7, 47.8, TANARIS },
						["groups"] = { i(227443), },	-- Strange Torch (QI!)
					}),
				},
			}),
			q(84419, {	-- To da Ruins!
				["provider"] = { "n", 226684 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84144 },	-- Tat Big Meanie
				["coord"] = { 63.2, 52.4, TANARIS },
			}),
			q(84393, {	-- Da Stick of Revealing
				["description"] = "Requires Torch of Pyrreth. If you don't have it, you need to complete Secrets of Azeroth quest chain in Valdrakken, Dragon Isles.",
				["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84419 },	-- To da Ruins!
				["coord"] = { 35.1, 78.2, TANARIS },
			}),
			q(84363, {	-- Tweasure Hunt
				["description"] = "Activate Torch of Pyrreth at each of the Dig Site.",
				["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84393 },	-- Da Stick of Revealing
				["coord"] = { 37.2, 78.9, TANARIS },
				["g"] = {
					o(459333, {	-- Jeweled Eye
						["coord"] = { 40.8, 70.5, TANARIS },
						["groups"] = { i(227785), },	-- Jeweled Eye (QI!)
					}),
					n(228810, {	-- Tanaris Sandworm
						["coord"] = { 42.2, 72.0, TANARIS },
						["groups"] = { i(227790), },	-- Cool Guts (QI!)
					}),
					o(459368, {	-- Half-Burried Chest
						["coord"] = { 45.0, 64.6, TANARIS },
						["groups"] = { i(227775), },	-- Golden Chalice (QI!)
					}),
					n(228791, {	-- Ancient Statue
						["coord"] = { 52.3, 45.3, TANARIS },
						["groups"] = { i(227777), },	-- Fragment of an Ancient Statue (QI!)
					}),
				},
			}),
			q(84521, {	-- Thoughtful Pursuits
				["description"] = "Requires Tricked-Out Thinking Cap. If you don't have it, you need to complete Secrets of Azeroth quest chain in Valdrakken, Dragon Isles.",
				["provider"] = { "n", 226766 },	-- Benatauk <Unco Benny>
				["sourceQuests"] = { 84363 },	-- Tweasure Hunt
				["coord"] = { 63.3, 52.4, TANARIS },
				["g"] = {
					i(228617),	-- Benatauk's Clue Book (QI)
					i(228618, {	-- Benatauk's Crystal Ocular Lenses (QI!)
						["coord"] = { 64.2, 50.0, TANARIS },
						["description"] = "Go to Isaandrae <Skyway Balloonist>. Maru will find and give you [Benatauk's Crystal Ocular Lenses].",
					}),
					i(228619, {	-- Benatauk's Thought Calculating Apparatus (QI!)
						["coord"] = { 63.6, 48.5, TANARIS },
						["description"] = "Go behind the Fashion Show platform. Maru will find and give you [Benatauk's Thought Calculating Apparatus].",
					}),
					i(228620, {	-- Benatauk's Downy Helmet Liner (QI!)
						["coord"] = { 61.4, 49.9, TANARIS },
						["description"] = "Go near Taivan. Maru will find and give you [Benatauk's Downy Helmet Liner].",
					}),
				},
			}),
			q(84868, {	-- A Whiff of Help
				["provider"] = { "n", 226766 },	-- Benatauk <Unco Benny>
				["sourceQuests"] = { 84521 },	-- Thoughtful Pursuits
				["coord"] = { 63.3, 52.4, TANARIS },
				["crs"] = 230711,	-- Maru (Spirit)
			}),
		}),
		-- Week 2: November 4th --
		n(VENDORS, {
			n(226766, {	-- Benatauk <Unco Benny>
				["description"] = "You need to get up to the quest 'A Whiff of Help' in the chain and accept it in order to buy the items.",
				["sourceQuests"] = { 84868 },	-- A Whiff of Help (Quest Accepted)
				["coord"] = { 63.3, 52.4, TANARIS },
				["g"] = {
					i(229351),	-- Spiritual Incense
					i(229375),	-- Neural Enlarger
				},
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	n(GUEST_RELATIONS, {

	}),
})));