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
			ach(40871, {	-- Assistant to the Assistant Guest Relations Manager (automated)
				i(231907),	-- Tricked-Out Thinking Cap
			}),
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
			ach(40872, {	-- I Saved the Party and All I Got Was This Lousy Hat (automated)
				i(234448),	-- Bright Ideas Thinking Cap
				i(231906),	-- High-Alert Thinking Cap
			}),
			ach(40967),		-- Ratts' Revenge
		}),
		n(QUESTS, {
			-- Chapter 1 --
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
			q(84236, {	-- The Great Detective
				["sourceQuests"] = { 84868 },	-- A Whiff of Help
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
				["provider"] = { "n", 226952  },	-- Rexxar
				["coord"] = { 77.3, 46.2, BOREAN_TUNDRA },
				["crs"] = { 228550 },	-- Rexxar
				["g"] = {
					i(227664),	-- Spirit's Whistle (QI!)
					o(457156, {	-- Torn Note
						["coord"] = { 85.9, 34.0, BOREAN_TUNDRA },
						["g"] = {
							i(227665),	-- Torn Diary, Page 4 (QI!)
						}
					}),
					o(457161, {	-- Torn Note
						["description"] = "Use Torch of Pyrreth to reveal the page.",
						["provider"] = { "i", 208092 },	-- Torch of Pyrreth
						["coord"] = { 85.9, 33.9, BOREAN_TUNDRA },
						["g"] = {
							i(227672),	-- Torn Diary, Page 7 (QI!)
						}
					}),
					o(457160, {	-- Torn Note
						["coord"] = { 88.1, 34.6, BOREAN_TUNDRA },
						["g"] = {
							i(227671),	-- Torn Diary, Page 6 (QI!)
						}
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
			-- End of Chapter 1 --
			o(467403, {	-- Darkmoon Fortune Card
				["description"] = "Behind the crate next to Alyx. After looting this, talk with her, she will tell you to Speak to Alphonse.",
				["coord"] = { 63.0, 50.2, TANARIS },
				["crs"] = {
					226683,	-- Alyx <Volunteer Assistant Guest Relations Manager>
					230838,	-- Alphonse Constant <Apprentice Cartomancer>
				},
				["g"] = {
					i(229919),	-- Six of Frost
				},
			}),
			q(84882, {	-- Deck Dismay
				["description"] = "Speak to Alphonse after having looted the Six of Frost to unlock this quest. Use the Idol of Ohn'ahra to find more cards scattered around the grounds.",
				["provider"] = { "n", 230838 },	-- Alphonse Constant <Apprentice Cartomancer>
				["coord"] = { 63.9, 52.3, TANARIS },
				["cost"] = { { "i",  229919, 1 } }, -- 1x Six of Frost
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
		}),
		-- Chapter 2: November 4th --
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
		header(HEADERS.Achievement, 40979,{
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
					["coord"] = { 22.43, 83.74, DEADWIND_PASS },
					["g"] = {
						i(228322),	-- Dirt-Caked Celebration Crate (QS!)
					},
				}),
				q(84470, {	-- Dirt-Caked Celebration Crate
					["provider"] = { "i", 228322 },	-- Dirt-Caked Celebration Crate
				}),
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
	n(GUEST_RELATIONS, {
		q(84617),	-- Accepting Harder Puzzles from Alyx. This unlocks notes on the bulletin board next to Alyx.
	}),
})));