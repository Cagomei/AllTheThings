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
		cn = "宾客关系",
	},
});

root(ROOTS.Secrets, n(GUEST_RELATIONS, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	["description"] = "***Using Debug Mode is recommended.***\n",
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(40870, {	-- Azeroth's Greatest Detective
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40871,	-- Assistant to the Assistant Guest Relations Manager
					40873,	-- Crate Insurance Agent
					40872,	-- I Saved the Party and All I Got Was This Lousy Hat
					40979,	-- No Crate Left Behind
				}},
				["g"] = {
					title(571),	-- Detective <Name> (TITLE!)
				},
			}),

		}),
		n(QUESTS, {
			-- Tutorial Questline
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
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["coord"] = { 62.1, 51.7, TANARIS },
						["groups"] = { i(227364), },	-- Red Hair (QI!)
					}),
					o(455310, {	-- Hear Historic Tales at the Storyteller Stage!
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
						["coord"] = { 62.0, 51.5, TANARIS },
						["groups"] = { i(227363), },	-- Hear Historic Tales at the Storyteller Stage! (QI!)
					}),
					n(226775, {	-- Ratts <Former Event Coordinator>
						["coord"] = { 64.0, 51.7, TANARIS },
					}),
					o(456820, {	-- Strange Torch
						["provider"] = { "i", 207730 },	-- Idol of Ohn'ahra
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
				["description"] = "Activate Torch of Pyrreth at each of the Dig Sites.",
				["provider"] = { "n", 229062 },	-- Maru <Junior Secret Sleuf>
				["sourceQuests"] = { 84393 },	-- Da Stick of Revealing
				["coord"] = { 37.2, 78.9, TANARIS },
				["g"] = {
					o(459333, {	-- Jeweled Eye
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 40.8, 70.5, TANARIS },
						["groups"] = { i(227785), },	-- Jeweled Eye (QI!)
					}),
					n(228810, {	-- Tanaris Sandworm
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 42.2, 72.0, TANARIS },
						["groups"] = { i(227790), },	-- Cool Guts (QI!)
					}),
					o(459368, {	-- Half-Burried Chest
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 45.0, 64.6, TANARIS },
						["groups"] = { i(227775), },	-- Golden Chalice (QI!)
					}),
					n(228791, {	-- Ancient Statue
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
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
		header(HEADERS.Achievement, 40872, {	-- I Saved the Party and All I Got Was This Lousy Hat
			ach(40872, {	-- I Saved the Party and All I Got Was This Lousy Hat (automated)
				i(234448),	-- Bright Ideas Thinking Cap
				i(231906),	-- High-Alert Thinking Cap
			}),
			-- Chapter 1
			q(84236, {	-- The Great Detective
				["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84237, {	-- The "Great" Detective
				["description"] = "1. Talk to the members of Team Solid in following order until the quest shows 48% progress.\n- Ellanoir\n- Duryllin\n- Juddson Rakes\n- Ellanoir\n2. Interact with the Abandoned Beach Chair at the Southbreak Shore.\n.3 Use your Torch of Pyrreth at Wavestrider Beach to reveal Herrkrop's body.\n4. Talk to all nearby NPCs.\n5. Talk to Athelton Jones to complete the quest requirements.",
				["provider"] = { "n", 226796 },	-- Athektin Jones
				["sourceQuests"] = { 84236 },	-- The Great Detective
				["coord"] = { 63.9, 51.7, TANARIS },
				["g"] = {
					n(226805, {	-- Ellanoir
						["coord"] = { 63.8, 51.0, TANARIS },
					}),
					n(226804, {	-- Duryllin
						["coord"] = { 63.8, 51.1, TANARIS },
					}),
					n(226803, {	-- Juddson Rakes
						["coord"] = { 63.8, 51.1, TANARIS },
					}),
					o(459263, {	-- Abandoned Beach Chair
						["coord"] = { 66.0, 59.5, TANARIS },
						["description"] = "Investigate the Abandoned Beach Chair.",
					}),
					n(226810, {	-- Herrkrop
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 66.2, 40.6, TANARIS },
					}),
					n(226812, {	-- Scrapes
						["coord"] = { 66.2, 40.7, TANARIS },
					}),
					n(228477, {	-- Nat Pagle
						["coord"] = { 66.2, 40.7, TANARIS },
					}),
					n(226814, {	-- Julia Henning
						["coord"] = { 65.7, 41.3, TANARIS },
					}),
					n(226796, {	-- Athelton Jones
						["coord"] = { 66.3, 40.6, TANARIS },
					}),
				},
			}),
			q(84278, {	-- Tracking Quest
				["description"] = "Use the Goblin Transport at 68.0, 40.8 to travel to Borean Tundra, then find Rexxar.",
				["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["sourceQuests"] = { 84237 },	-- The 'Great' Detective
				["coord"] = { 63.0, 50.2, TANARIS },
				["g"] = {
					i(227551),	-- Note from Rexxar (QI!)
					o(457025, {	-- Pre-Calibrated Goblin Transport Vessel
						["coord"] = { 68.0, 40.8, TANARIS },
					}),
					n(226952, {	-- Rexxar
						["coord"] = { 77.3, 46.2, BOREAN_TUNDRA },
					}),
				},
			}),
			q(84296, {	-- The Trail's Gone Cold
				["description"] = "1. Locate 3 diary pages around the marked shed and then go to Sholazar Basin.\n2. Interact with the Mounted Spyglass atop the Glimmering Pillar and then head to Icecrown.\n3. Use your Torch of Pyreth at Scrapes.\n4. Summon Rexxar with your Spirit's Whistle and tell him about a shapeshifter.",
				["sourceQuests"] = { 84278 },	-- Tracking Quest
				["provider"] = { "n", 226952 },	-- Rexxar
				["coord"] = { 77.3, 46.2, BOREAN_TUNDRA },
				["crs"] = { 228550 },	-- Rexxar
				["g"] = {
					i(227664),	-- Spirit's Whistle (QI!)
					o(457156, {	-- Torn Note
						["coord"] = { 85.9, 34.0, BOREAN_TUNDRA },
						["g"] = {
							i(227665),	-- Torn Diary, Page 4 (QI!)
						},
					}),
					o(457161, {	-- Torn Note
						["description"] = "Use Torch of Pyrreth to reveal the page.",
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 85.9, 33.9, BOREAN_TUNDRA },
						["g"] = {
							i(227672),	-- Torn Diary, Page 7 (QI!)
						},
					}),
					o(457160, {	-- Torn Note
						["coord"] = { 88.1, 34.6, BOREAN_TUNDRA },
						["g"] = {
							i(227671),	-- Torn Diary, Page 6 (QI!)
						},
					}),
					o(457197, {	-- Mounted Spyglass
						["coord"] = { 49.7, 36.0, SHOLAZAR_BASIN },
					}),
					n(228634, {	-- Scrapes
						["coord"] = { 16.0, 58.8, ICECROWN },
					}),
				},
			}),
			q(84334, {	-- Warn the Detective
				["provider"] = { "n", 226683 },	-- Alyx <Volunteer Assistant Guest Relations Manager>
				["sourceQuests"] = { 84296 },	-- The Trail's Gone Cold
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84336, {	-- Spot The Difference
				["description"] = "Speak to Hemet, Leeroy, and Addie to suss out the detectives' stories, then accuse one. Chase the intruder east of Bootlegger Outpost and kill him.",
				["qgs"] = {
					226796,	-- Athelton Jones
					228661,	-- Athelton Jones (!)
				},
				["sourceQuests"] = { 84334 },	-- Warn the Detective
				["coord"] = { 61.0, 50.6, TANARIS },
				["g"] = {
					n(227731, {	-- Addie Fizzlebog
						["coord"] = { 63.5, 51.7, TANARIS },
					}),
					n(228250, {	-- Hemet Nesingwary Sr.
						["coord"] = { 62.5, 51.9, TANARIS },
					}),
					n(158192, {	-- Leeroy Jenkins
						["coord"] = { 63.3, 52.3, TANARIS },
					}),
					n(228661, {	-- Athelton Jones (!)
						["coord"] = { 63.3, 52.3, TANARIS },
					}),
					n(228663, {	-- Y'illiya Xennin
						["coord"] = { 60.0, 62.5, TANARIS },
					}),
				},
			}),
			-- Chapter 2
			-- Quests in this chapter are faction locked, but both cross complete.
			q(84563, {	-- Toy Trouble [A]
				["provider"] = { "n", 232404 },	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
				["sourceQuests"] = { 84336 },	-- Spot The Difference
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(85024, {	-- Toy Trouble [H]
				["provider"] = { "n", 232404 },	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
				["sourceQuests"] = { 84336 },	-- Spot The Difference
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84588, {	-- Operation Toy Rescue [A]
				["description"] = "Talk to Yennu in Iskaara, find a note in Dragonscale Basecamp, and find their ball near Maruukai then return. Pet Kenshi in Boralus, find the Ball of Yarn in the park, and talk to Kenshi again.",
				["provider"] = { "n", 226684 },	-- Maru
				["sourceQuests"] = { 84563 },	-- Toy Trouble [A]
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					i(229990),	-- My Journal: Operation Toy Rescue (QI!)
					n(228634, {	-- Yennu
						["coord"] = { 13.4, 48.9, THE_AZURE_SPAN },
					}),
					o(465234, {	-- Missing Page from Yennu's Snackbook
						["description"] = "Inside a cart in Dragonscale Basecamp.",
						["coord"] = { 47.0, 83.5, THE_WAKING_SHORES },
						["g"] = {
							i(228791 ),	-- Missing Page from Yennu's Snackbook (QI!)
						},
					}),
					o(465277, {	-- Mound of Dirt
						["description"] = "By a river by the eastern side of Maruukai.",
						["coord"] = { 62.0, 37.5, OHNAHRAN_PLAINS },
						["g"] = {
							i(228975),	-- Yennu's Toy Ball (QI!)
						},
					}),
					n(142044, {	-- Kenshi
						["coord"] = { 54.0, 72.8, BORALUS },
						["g"] = {
							i(232363, {	-- Half-Eaten Mouse
								["provider"] = { "i", 232362 },	-- Deluxe Tuna
							}),
						},
					}),
					o(467060, {	-- Ball of Yarn
						["description"] = "Near a fence and tree in Boralus Park.",
						["coord"] = { 42.1, 75.1, BORALUS },
						["g"] = {
							i(229164 ),	-- Ball of Yarn (QI!)
						},
					}),
				},
			}),
			q(85025, {	-- Operation Toy Rescue [H]
				["description"] = "Talk to Yennu in Iskaara, find a note in Dragonscale Basecamp, and find their ball near Maruukai then return. Pet Nuts in Dazar'Alor, follow the fur sheddings to a Plush Toy, and give it to him.",
				["provider"] = { "n", 226684 },	-- Maru
				["sourceQuests"] = { 85024 },	-- Toy Trouble [H]
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					i(229991),	-- My Journal: Operation Toy Rescue (QI!)
					n(228634, {	-- Yennu
						["coord"] = { 13.4, 48.9, THE_AZURE_SPAN },
					}),
					o(465277, {	-- Missing Page from Yennu's Snackbook
						["description"] = "Inside a cart in Dragonscale Basecamp.",
						["coord"] = { 47.0, 83.5, THE_WAKING_SHORES },
						["g"] = {
							i(228791 ),	-- Missing Page from Yennu's Snackbook (QI!)
						},
					}),
					o(465277, {	-- Mound of Dirt
						["description"] = "By a river by the eastern side of Maruukai.",
						["coord"] = { 62.0, 37.5, OHNAHRAN_PLAINS },
						["g"] = {
							i(228975),	-- Yennu's Toy Ball (QI!)
						},
					}),
					n(54227, {	-- Nuts
						["coord"] = { 56.3, 31.7, DAZARALOR },
					}),
					o(470229, {	-- Plush Toy
						["coord"] = { 56.4, 21.3, DAZARALOR },
						["g"] = {
							i(229908),	-- Plush Toy (QI!)
						},
					}),
				},
			}),
			q(84755, {	-- The Final Toy [A]
				["provider"] = { "n", 232405 },	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Associate Event Coordinator>
				["sourceQuests"] = { 84588 },	-- Operation Toy Rescue [A]
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(85042, {	-- The Final Toy [H]
				["provider"] = { "n", 232405 },	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Associate Event Coordinator>
				["sourceQuests"] = { 85025 },	-- Operation Toy Rescue [H]
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84756, {	-- The Toy Thief [A]
				["description"] = "Talk to Maru, suspect a dog, then visit Urban Planner Volrath in Boralus. Collect a chew toy from the mountaintop behind Maruukai in the Ohn'ahran plains, then collect Maru's toy from a cave near Teerakai.",
				["provider"] = { "n", 226684 },	-- Maru
				["sourceQuests"] = { 84588 },	-- The Final Toy [A]
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					i(229992),	-- My Journal: Operation Toy Rescue (QI!)
					n(142178, {	-- Urban Planner Volrath
						["coord"] = { 43.2, 73.7, BORALUS },
						["g"] = {
							i(232564),	-- Bakar Sketch (QI!)
						},
					}),
					o(467293, {	-- Chew Toy
						["description"] = "Atop the high mountain peak behind Maruukai.",
						["coord"] = { 57.9, 31.7, OHNAHRAN_PLAINS },
						["g"] = {
							i(229350),	-- Chew Toy (QI!)
						}
					}),
					o(467329, {	-- Maru's Toy
						["description"] = "Inside a cave near Teerakai",
						["coord"] = { 38.8, 56.0, OHNAHRAN_PLAINS },
						["g"] = {
							i(229358 ),	-- Miniature Tuskarr Boat (QI!)
						}
					}),
				},
			}),
			q(85043, {	-- The Toy Thief [H]
				--["description"] = "",
				["provider"] = { "n", 226684 },	-- Maru
				["sourceQuests"] = { 85042 },	-- The Final Toy [H]
				["coord"] = { 63.2, 52.4, TANARIS },
				["g"] = {
					-- TODO: write horde side description and source Bakar Sketch
					i(229196),	-- Bakar Sketch (QI!)
					o(467293, {	-- Chew Toy
						["description"] = "Atop the high mountain peak behind Maruukai.",
						["coord"] = { 57.9, 31.7, OHNAHRAN_PLAINS },
						["g"] = {
							i(229350),	-- Chew Toy (QI!)
						}
					}),
					o(467329, {	-- Maru's Toy
						["description"] = "Inside a cave near Teerakai",
						["coord"] = { 38.8, 56.0, OHNAHRAN_PLAINS },
						["g"] = {
							i(229358 ),	-- Miniature Tuskarr Boat (QI!)
						}
					}),
				},
			}),
			-- Chapter 3
			q(85195),	-- Chapter 3
			-- Chapter 4
			q(85503),	-- Chapter 4
		}),
		header(HEADERS.Achievement, 40871, {	-- Assistant to the Assistant Guest Relations Manager
			ach(40871, {	-- Assistant to the Assistant Guest Relations Manager (automated)
				i(231907),	-- Tricked-Out Thinking Cap
			}),
			-- The Case of Misfortune
			o(467403, {	-- Darkmoon Fortune Card
				["description"] = "Behind the crate next to Alyx. After looting this, talk with her, she will tell you to Speak to Alphonse.\n\nYou need to obtain 1 card, it does not matter which one, in order to see gossip options and start the quest.\nThis one is just an example as it is located near Alyx, the main quest giver of the event.",
				["coord"] = { 63.0, 50.2, TANARIS },
				["crs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					230838,	-- Alphonse Constant <Apprentice Cartomancer>
				},
				["g"] = {
					i(229219),	-- Six of Frost
				},
			}),
			q(84882, {	-- Deck Dismay
				["description"] = "Speak to Alphonse after having looted the Six of Frost to unlock this quest. Use the Idol of Ohn'ahra to find more cards scattered around the grounds.",
				["provider"] = { "n", 230838 },	-- Alphonse Constant <Apprentice Cartomancer>
				["coord"] = { 63.9, 52.3, TANARIS },
				["g"] = {
					o(467083, {	-- Darkmoon Fortune Card
						["description"] = "Under a bench near the Story Time stage.",
						["coord"] = { 63.97, 51.51, TANARIS },
						["g"] = {
							i(229207),	-- Two of Fire (QI!)
						},
					}),
					o(467336, {	-- Darkmoon Fortune Card
						["description"] = "By two barrels near the Story Time seating.",
						["coord"] = { 63.77, 51.91, TANARIS },
						["g"] = {
							i(229210),	-- Five of Fire (QI!)
						},
					}),
					o(467337, {	-- Darkmoon Fortune Card
						["description"] = "To the right of Leeroy's food stall.",
						["coord"] = { 63.27, 52.26, TANARIS },
						["g"] = {
							i(229211),	-- Six of Fire (QI!)
						},
					}),
					o(467339, {	-- Darkmoon Fortune Card
						["description"] = "Behind Brivelthwerp near the ice rink.",
						["coord"] = { 61.91, 51.61, TANARIS },
						["g"] = {
							i(229213),	-- Eight of Fire (QI!)
						},
					}),
					o(467351, {	-- Darkmoon Fortune Card
						["description"] = "Between two caravan carts by the front of the grounds.",
						["coord"] = { 61.19, 50.88, TANARIS },
						["g"] = {
							i(229225),	-- Four of Earth (QI!)
						},
					}),
					o(467334, {	-- Darkmoon Fortune Card
						["description"] = "By the outhose near the photo-op portals.",
						["coord"] = { 62.14, 49.34, TANARIS },
						["g"] = {
							i(229208),	-- Three of Fire (QI!)
						},
					}),
					o(467338, {	-- Darkmoon Fortune Card
						["description"] = "Near the black market walls under the Fashion Frenzy stage.",
						["coord"] = { 63.41, 48.98, TANARIS },
						["g"] = {
							i(229212),	-- Seven of Fire (QI!)
						},
					}),
					o(467342, {	-- Darkmoon Fortune Card
						["description"] = "On one of the steps leading down to the Story Time area.",
						["coord"] = { 63.58, 51.00, TANARIS },
						["g"] = {
							i(229216),	-- Three of Frost (QI!)
						},
					}),
					o(467075, {	-- Darkmoon Fortune Card
						["description"] = "On the Fashion Frenzy stage to the left.",
						["coord"] = { 63.18, 49.35, TANARIS },
						["g"] = {
							i(229199),	-- Two of Air (QI!)
						},
					}),
				},
			}),
			-- The Case of a Good Book
			q(83832, {	-- Torn Dreams
				["qgs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					232404,	-- Alyx <Volunteer Assistant Guest Relations Manager and Associate Event Coordinator>
				},
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(83825, {	-- Restoring A Grand Tale
				["provider"] = { "n", 231433 },	-- Raenie Fizzlebog
				["sourceQuests"] = { 83832 },	-- Torn Dreams
				["coord"] = { 63.1, 52.0, TANARIS },
				["crs"] = {
					227257,	-- Archavon the Stone Watcher
					121820,	-- Azuregos
					167749,	-- Doomwalker
					121913,	-- Emeriss
					121821,	-- Lethon
					121818,	-- Lord Kazzak
					226646,	-- Sha of Anger
					121911,	-- Taerar
					121912,	-- Ysondre
				},
				["g"] = {
					i(226241),	-- Shredded Green Hills of Stranglethorn (QI!)
					o(456041, {	-- Folded Paper
						["description"] = "Next to the latrine behind the Fashion Show platform.",
						["coord"] = { 63.6, 47.8, TANARIS },
						["g"] = {
							i(226236),	-- Green Hills of Stranglethorn - Page 21 (QI!)
						},
					}),
					i(226232, {	-- Green Hills of Stranglethorn - Page 6 (QI!)
						["description"] = "Drops from any of the Anniversary World Bosses.",
					}),
					i(226233, {	-- Green Hills of Stranglethorn - Page 11 (QI!)
						["description"] = "Drops from any of the Anniversary World Bosses.",
					}),
					o(456036, {	-- Loose Paper
						["description"] = "In a Dog Bowl, in front of the Doghouse.",
						["coord"] = { 61.9, 49.8, TANARIS },
						["g"] = {
							i(226234),	-- Green Hills of Stranglethorn - Page 16 (QI!)
						},
					}),
					n(227795, {	-- Sand Devil
					["description"] = "In the Timeless Tunnel.",
						["maps"] = { 74 },
						["g"] = {
							i(226237),	-- Green Hills of Stranglethorn - Page 25 (QI!)
							i(226238),	-- Green Hills of Stranglethorn - Page 27 (QI!)
						},
					}),
					o(456038, {	-- Wet Paper
						["description"] = "Behind the Story Time Stage, next to the Hearthstone Table.",
						["coord"] = { 64.5, 51.8, TANARIS },
						["g"] = {
							i(226235),	-- Green Hills of Stranglethorn - Page 18 (QI!)
						},
					}),
					n(227816, {	-- Cravitz Lorent <Shady Book Dealer>
						["description"] = "Below the Fashion Frenzy platform.",
						["coord"] = { 63.6, 48.8, TANARIS },
						["g"] = {
							i(226242, {	-- Green Hills of Stranglethorn (QI!)
								["description"] = "Ultimately, if you could not be bothered to search for the scattered pages,\nyou can buy this item from a vendor... |CFFFF0000Cheater...|r",
							}),
						},
					}),
				},
			}),
			-- The Loud and Smelly Case
			q(84583, {	-- A Hozen On My Back
				["provider"] = { "n", 232406 },	-- Alyx <Volunteer Assistant Lead Guest Relations Manager and Executive Associate Event Coordinator>
				["coord"] = { 63.0, 50.2, TANARIS },
			}),
			q(84595, {	-- The Case of the Fur-Getting Wikket
				["description"] = "Talk to Riko, then Sully. Visit Gizmo's grave in the Jade Forest, then chase him down to return to Riko. Wait 5 minutes for Riko to send you mail.",
				["provider"] = { "n", 229749 },	-- Riko
				["coord"] = { 61.9, 50.5, TANARIS },
				["g"] = {
					i(228750),	-- My Journal: The Case of the Fur-Getting Wikket
					n(229775, {	-- Sully "The Pickle" McLeary
						["coord"] = { 63.1, 49.4, TANARIS },
					}),
					n(229776, {
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 43.4, 68.8, THE_JADE_FOREST },
						["g"] = {
							i(228755),	-- Gizmo (QI!)
						},
					}),
					i(228740),	-- Gizmo the Pure (PET!)
				},
			}),
			q(84924),	-- The Case of a Feathered Friend
			q(84435),	-- The Case of an Old Soul
			q(84933),	-- The Case of Great Aspirations
			q(85477),	-- The Case of Missing Mementos
			q(84469),	-- The Case of Pet Games
			q(84912),	-- The Case of Staged Disaster
		}),
		header(HEADERS.Achievement, 40979, {	-- No Crate Left Behind
			ach(40873),		-- Crate Insurance Agent
			ach(40979),		-- No Crate Left Behind
			header(HEADERS.Quest, 83794, {
				i(228694),	-- Damp Ransom Note
				n(143029, {	-- Nikto <Master Talekeep>
					["coord"] = { 54.3, 54.5, ZULDAZAR },
					["groups"] = { i(225996), },	-- Clam Digger
				}),
				o(455761, {	-- Gerald
					["description"] = "Go to Zuldazar in Zandalar. At 54.3, 54.5 you will find Nikto. Buy Clam Digger and head upwards to 54.2, 54.2. Interract with Gerald and give him the drink.",
					["provider"] = { "i", 225996 },	-- Clam Digger
					["coord"] = { 54.2, 54.2, ZULDAZAR },
					["g"] = {
						o(455768, {	-- Soggy Celebration Crate
							["coord"] = { 54.2, 54.2, ZULDAZAR },
							["questID"] = 83790,
							["g"] = {
								i(226200),	-- Soggy Celebration Crate (QS!)
							},
						}),
					},
				}),
				q(83794, {	-- Soggy Celebration Crate
					["provider"] = { "i", 226200 },	-- Soggy Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 85574, {
				n(233090, {	-- Hazy Celebration Crate
					["description"] = "Only visible while dead.",
					["coord"] = { 54.0, 58.1, DESOLACE },
					["g"] = {
						i(232263),	-- Hazy Celebration Crate (QS!)
					},
				}),
				q(85574, {	-- Hazy Celebration Crate
					["provider"] = { "i", 232263 },	-- Hazy Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84624, {
				i(228766),	-- Sandy Ransom Note
				o(465161, {	-- Water-Resistant Receipt of Sale
					["description"] = "Enter the underwater tunnel at 66.3, 86.2 in the Thousand Needles, find the receipt behind some pipes inside.",
					["coord"] = { 64.9, 84.4, THOUSAND_NEEDLES },
					["g"] = {
						i(228768),	-- Water-Resistant Receipt
					},
				}),
				n(91079, {	-- Vashti the Wandering Merchant <General Goods>
					["description"] = "Can be found pathing up and down the road between Felblaze Ingress and The Ruined Sanctum in Azsuna.",
					["coord"] = { 65.2, 36.4, AZSUNA },
					["g"] = {
						i(228986, {	-- Aesthetician's Coupon Book
							["cost"] = 5000000,	-- 500g
						}),
						i(229413), 	-- Bottle of Steam
						i(229413, {	-- "Dogg-Saron" Costume
							["cost"] = 250000000,	-- 25,000g
						}),
						i(228989, {	-- Exotic Critter Taming License
							["cost"] = 5000000,	-- 500g
						}),
						i(228767, {	-- Sandy Celebration Crate (QS!)
							["cost"] = 5000000,	-- 500g
						}),
						i(228987, {	-- Scroll of Fel Binding
							["cost"] = 5000000,	-- 500g
						}),
						i(228991, {	-- Stone of Prophecy
							["cost"] = 50000000,	-- 5,000g
						}),
					},
				}),
				q(84624, {	-- Sandy Celebration Crate
					["provider"] = { "i", 228767 },	-- Sandy Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84470, {
				i(228321),	-- Dirt-Caked Ransom Note
				o(463653, {	-- Dirt-Caked Celebration Crate
					["description"] = "Enter the Karazhan Crypt at 39.83, 73.11 in Deadwind Pass. Follow the spiraling corridor down until you find the pool of Upside Down Sinners. Cross the pool and the crate will be in the back left of the next room.",
					["coord"] = { 22.4, 83.7, DEADWIND_PASS },
					["g"] = {
						i(228322),	-- Dirt-Caked Celebration Crate (QS!)
					},
				}),
				q(84470, {	-- Dirt-Caked Celebration Crate
					["provider"] = { "i", 228322 },	-- Dirt-Caked Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 83931, {
				i(226362),	-- Torn Note (Black Market)
				i(226364),	-- Torn Note (Fiona Caravan)
				o(456039, {	-- Crumpled Letter
					["description"] = "Next to the boxes behind Leeroy's tent.",
					["sourceQuests"] = { 83825 },	-- Restoring A Great Tale
					["coord"] = { 63.4, 52.4, TANARIS },
					["g"] = {
						i(226365),	-- Crumpled Letter
					},
					["questID"] = 83837,
				}),
				o(456032, {	-- Ruffled Paper
					["description"] = "Right by Farmer Yoon, near the Mount Mania.",
					["sourceQuests"] = { 83825 },	-- Restoring A Great Tale
					["coord"] = { 63.2, 52.0, TANARIS },
					["g"] = {
						i(226361),	-- Next Week's Mount Competition Listing
					},
					["questID"] = 83833,
				}),
				o(456061, {	-- Battered Celebration Crate
					["coord"] = { 29.4, 6.4, HOWLING_FJORD },
					["g"] = {
						i(226375),	-- Battered Celebration Crate (QS!)
					},
				}),
				q(83931, {	-- Battered Celebration Crate
					["provider"] = { "i", 226375 },	-- Battered Celebration Crate
				}),
			}),
			header(HEADERS.Quest, 84426, {
				i(228300),	-- Sun-Baked Ransom Note
				o(462417, {	-- Waterlogged Celebration Crate
					["description"] = "Behind a bed on the second floor of an underwater gnomish building off the south-eastern coast of Tanaris.",
					["coord"] = { 69.2, 68.6, TANARIS },
					["g"] = {
						i(228212),	-- Waterlogged Celebration Crate (QS!)
					},
				}),
				q(84426, {	-- Waterlogged Celebration Crate
					["provider"] = { "i", 228212 },	-- Waterlogged Celebration Crate
				}),
			}),
		}),
		header(HEADERS.Achievement, 40967, {	-- Ratts' Revenge
			ach(40967),		-- Ratts' Revenge
			o(182030, {	-- Inert Peculiar Key
				["description"] = "Inside a rotten tree trunk in the far north of Un'Goro Crater. Use your Torch of Pyrreth to reveal it.",
				["provider"] = { "i", 208092 },	-- Torch of Pyrreth
				["coord"] = { 44.5, 8.0, UNGORO_CRATER },
				["g"] = {
					i(228941),	-- Inert Peculiar Key
				},
			}),
			i(228938),	-- Peculiar Gem
			i(44124, {	-- Peculiar Key
				["cost"] = {
					{ "i", 228941, 1 }, -- Inert Peculiar Key
					{ "i", 228938, 1 },	-- Peculiar Gem
				},
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	n(GUEST_RELATIONS, {
		q(84617, name(HEADERS.Achievement, 40873)),	-- Accepting Harder Puzzles from Alyx. This unlocks notes on the bulletin board next to Alyx.
		q(83824, name(HEADERS.Item, 226242)),	-- Triggered when restoring the 'Green Hills of Stranglethorn' by gathering all the missing pages.
	}),
})));