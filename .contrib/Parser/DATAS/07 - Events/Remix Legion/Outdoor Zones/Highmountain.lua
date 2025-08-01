-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
--[[root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_0, REMOVED_LEGION_REMIX_END } }, {
	m(HIGHMOUNTAIN, {
		["icon"] = 136014,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(19892, {	-- Campaign: Isle of Thunder
					crit(67270, {	-- Assault the Shipyard
						["_quests"] = { 32655 },
					}),
					crit(67271, {	-- Assault the Shipyard
						["_quests"] = { 32278 },
					}),
					crit(67273, {	-- The Fall of Shan Bu
						["_quests"] = { 32656 },
					}),
					crit(67274, {	-- The Fall of Shan Bu
						["_quests"] = { 32279 },
					}),
					crit(67276, {	-- Build a Base
						["_quests"] = { 32644 },
					}),
					crit(67277, {	-- Build a Base
						["_quests"] = { 32212 },
					}),
					crit(67281, {	-- First Landing
						["_quests"] = { 32681 },
					}),
					crit(67282, {	-- First Landing
						["_quests"] = { 32680 },
					}),
					crit(67283, {	-- Break Down the Wall
						["_quests"] = { 32654 },
					}),
					crit(67284, {	-- Break Down the Wall
						["_quests"] = { 32276 },
					}),
					crit(67286, {	-- Take the Forge
						["_quests"] = { 32652 },
					}),
					crit(67287, {	-- Take the Forge
						["_quests"] = { 32277 },
					}),
				}),
				ach(20000),		-- Elusive Foes: Isle of Thunder
				ach(19880, {	-- Isle of Thunder
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19892,	-- Campaign: Isle of Thunder
						20000,	-- Elusive Foes: Isle of Thunder
						20015,	-- Looking For Group: Isle of Thunder
					}},
					["groups"] = {
						clWithoutLock(DEATHKNIGHT, {
							iensemble(217824),	-- Arsenal: Webbed Soulforged Weaponry
						}),
						clWithoutLock(DEMONHUNTER, {
							iensemble(217828),	-- Arsenal: Aldrachi Blasphemer's Glaives
						}),
						clWithoutLock(DRUID, {
							iensemble(217829),	-- Arsenal: Ela'lothen's Blessings of Rebirth
						}),
						clWithoutLock(EVOKER, {
							iensemble(217821),	-- Arsenal: Treasure of the Gold Hoarder
						}),
						clWithoutLock(HUNTER, {
							iensemble(217820),	-- Arsenal: Dreadsquall Hunter's Preference
						}),
						clWithoutLock(MAGE, {
							iensemble(217823),	-- Arsenal: Sin'dorei Magister's Enchantment
						}),
						clWithoutLock(MONK, {
							iensemble(217827),	-- Arsenal: Shado-Pan Watcher Arsenal
						}),
						clWithoutLock(PALADIN, {
							iensemble(217832),	-- Arsenal: Armaments of the Holy Avenger
						}),
						clWithoutLock(PRIEST, {
							iensemble(217831),	-- Arsenal: Secrets of the Abyssal Cult
						}),
						clWithoutLock(ROGUE, {
							iensemble(217830),	-- Arsenal: Igneous Onyx Blades
						}),
						clWithoutLock(SHAMAN, {
							iensemble(217819),	-- Arsenal: Tools of Krag'wa's Disciple
						}),
						clWithoutLock(WARLOCK, {
							iensemble(217826)	-- Arsenal: Instruments of Temptation's Call
						}),
						clWithoutLock(WARRIOR, {
							iensemble(217825),	-- Arsenal: Fanatical Champion's Aggression
						}),
					},
				}),
				ach(20015, {	-- Looking For Group: Isle of Thunder
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20020,	-- Oondasta
						19955,	-- Raid Finder: Throne of Thunder
						20019,	-- Nalak, the Storm Lord
					}},
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_KIRIN_TOR_OFFENSIVE, {	-- Kirin Tor Offensive
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(19919, {	-- Kirin Tor Offensive
								["races"] = ALLIANCE_ONLY,
							}),
						}),
					},
				}),
				faction(FACTION_SUNREAVER_ONSLAUGHT, {	-- Sunreaver Onslaught
					["races"] = HORDE_ONLY,
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(19920, {	-- Sunreaver Onslaught
								["races"] = HORDE_ONLY,
							}),
						}),
					},
				}),
			}),
			n(QUESTS, {
				q(80443, {	-- Aid the Kirin Tor Offensive [A]
					["provider"] = { "n", 67933 },	-- Vereesa Windrunner
					["coord"] = { 63.2, 72.1, ISLE_OF_THUNDER },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
				}),
				q(81749, {	-- Aid the Kirin Tor Offensive [A]
					["provider"] = { "n", 67933 },	-- Vereesa Windrunner
					["coord"] = { 63.2, 72.1, ISLE_OF_THUNDER },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(80442, {	-- Aid the Sunreavers Onslaught [H]
					["provider"] = { "n", 70520 },	-- Halduron Brightwing
					["coord"] = { 32.5, 35.5, ISLE_OF_THUNDER },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
				}),
				q(81748, {	-- Aid the Sunreavers Onslaught [H]
					["provider"] = { "n", 70520 },	-- Halduron Brightwing
					["coord"] = { 32.5, 35.5, ISLE_OF_THUNDER },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
			}),
			n(ZONE_REWARDS, {
				filter(CLOTH, {
					i(214000),	-- Amaranthine Amice
					i(214001),	-- Amaranthine Belt
					i(213998),	-- Amaranthine Cowl
					i(214002),	-- Amaranthine Cuffs
					i(213997),	-- Amaranthine Handwraps
					i(213999),	-- Amaranthine Pants
					i(213995),	-- Amaranthine Raiment
					i(213996),	-- Amaranthine Treads
					i(214007),	-- Crown of the Dynast
					i(214008),	-- Gloves of the Dynast
					i(214006),	-- Leggings of the Dynast
					i(214005),	-- Mantle of the Dynast
					i(214004),	-- Sash of the Dynast
					i(214009),	-- Slippers of the Dynast
					-- i(220980),	-- Vest of the Dynast (does this drop? Gold 27.05.2024). Remove -- if it can drop
					i(214010),	-- Vestment of the Dynast
					i(214003),	-- Wristwraps of the Dynast
				}),
				filter(LEATHER, {
					i(214387),	-- Snowdrift Bindings
					i(214390),	-- Snowdrift Cover
					i(214389),	-- Snowdrift Footguards
					i(214391),	-- Snowdrift Grips
					i(214394),	-- Snowdrift Legguards
					i(214393),	-- Snowdrift Spaulders
					i(214388),	-- Snowdrift Vest
					i(214392),	-- Snowdrift Waistband
					i(214120),	-- Swampthresher Cap
					i(214118),	-- Swampthresher Cinch
					i(214119),	-- Swampthresher Handguards
					i(214122),	-- Swampthresher Jerkin
					i(214117),	-- Swampthresher Mantle
					i(214116),	-- Swampthresher Pants
					i(214121),	-- Swampthresher Treads
					i(214123),	-- Swampthresher Wraps
					i(214399),	-- Wildblood Cap
					i(214397),	-- Wildblood Cinch
					i(214398),	-- Wildblood Handguards
					i(214401),	-- Wildblood Jerkin
					i(214396),	-- Wildblood Mantle
					i(214395),	-- Wildblood Pants
					i(214400),	-- Wildblood Treads
					i(214402),	-- Wildblood Wraps
				}),
				filter(MAIL, {
					i(214714),	-- Stonefang Breastplate
					i(214715),	-- Stonefang Footguards
					i(214718),	-- Stonefang Girdle
					i(214717),	-- Stonefang Grips
					i(214716),	-- Stonefang Helmet
					i(214720),	-- Stonefang Legwraps
					i(214719),	-- Stonefang Mantle
					i(214713),	-- Stonefang Wristguards
					i(214723),	-- Crimsonscale Belt
					i(214726),	-- Crimsonscale Boots
					i(214728),	-- Crimsonscale Bracers
					i(214724),	-- Crimsonscale Gauntlets
					i(214727),	-- Crimsonscale Hauberk
					i(214725),	-- Crimsonscale Helm
					i(214721),	-- Crimsonscale Leggings
					i(214722),	-- Crimsonscale Spaulders
				}),
				filter(PLATE, {
					i(215055),	-- Everbright Bracers
					i(215052),	-- Everbright Breastplate
					i(215049),	-- Everbright Girdle
					i(215051),	-- Everbright Grasp
					i(215053),	-- Everbright Helm
					i(215054),	-- Everbright Legguards
					i(215050),	-- Everbright Pauldrons
					i(215056),	-- Everbright Sabatons
					i(215060),	-- Gatecrasher Battleplate
					i(215059),	-- Gatecrasher Gauntlets
					i(215057),	-- Gatecrasher Greatbelt
					i(215061),	-- Gatecrasher Greathelm
					i(215062),	-- Gatecrasher Legplates
					i(215058),	-- Gatecrasher Spaulders
					i(215063),	-- Gatecrasher Vambraces
					i(215064),	-- Gatecrasher Warboots
					i(214810),	-- Wallwatcher Bracers
					i(214809),	-- Wallwatcher Breastplate
					i(214813),	-- Wallwatcher Gauntlets
					i(214814),	-- Wallwatcher Girdle
					i(214812),	-- Wallwatcher Helm
					i(214816),	-- Wallwatcher Legguards
					i(214815),	-- Wallwatcher Pauldrons
					i(214811),	-- Wallwatcher Sabatons
				}),
				n(WEAPONS, {
					i(215644),	-- Amber Claw (wowhead)
					i(215873),	-- Amberweaver's Staff (wowhead)
					i(215746),	-- Bearheart's Basher (wowhead)
					i(216004),	-- Blazecaster's Wand (wowhead)
					i(215741),	-- Bloodseeker's Bonebreaker (wowhead)
					i(215793),	-- Bo-Ris, Spear of Night (wowhead)
					i(216595),	-- Bulwark of Twinned Despair (wowhead)
					i(215681),	-- Crane's Beak Effigy (wowhead)
					i(215948),	-- Darkhide Sword (wowhead)
					i(216569),	-- Deflector of Orbiss (wowhead)
					i(215908),	-- Do-tharak, the Foebreaker (wowhead)
					i(215862),	-- Engraved Spire (wowhead)
					i(216600),	-- Eyes of the Doomed (wowhead)
					i(216601),	-- Eyes of the Doomed (wowhead)
					i(215952),	-- Fear's Bite (wowhead)
					i(211151),	-- Fran's Repeater (wowhead)
					i(215970),	-- Greatsword of the Iron Legion (wowhead)
					i(215678),	-- Grummle Lantern (wowhead)
					i(215940),	-- Halcyon Blade (wowhead)
					i(215944),	-- Harmonious Scimitar (wowhead)
					i(215623),	-- Imperial Shortblade (wowhead)
					i(215861),	-- Instructor's Spire (wowhead)
					i(216535),	-- Ironwood Bulwark (wowhead)
					i(215511),	-- Jadestone Greataxe (wowhead)
					i(215772),	-- Jerthud, Hand of the Savior (wowhead)
					i(215897),	-- Jinyu Staff (wowhead)
					i(215486),	-- Jinyu Waraxe (wowhead)
					i(215982),	-- Marista Greatsword (wowhead)
					i(215549),	-- Miracoran, the Dissonant Chord (wowhead)
					i(215550),	-- Miracoran, the Dissonant Chord (wowhead)
					i(216540),	-- Mogu Lord's Shield (wowhead)
					i(215488),	-- Mountainscaler Hatchet (wowhead)
					i(215597),	-- Mushan Slicer (wowhead)
					i(215703),	-- Pandaren Rifle (wowhead)
					i(215619),	-- Pandaren Sai (wowhead)
					i(215893),	-- Pilgrim's Staff (wowhead)
					i(216530),	-- Protection of the Emperor (wowhead)
					i(215761),	-- Saurok Smasher (wowhead)
					i(215805),	-- Serpentguard Spear (wowhead)
					i(215603),	-- Sha-Warped Slicer (wowhead)
					i(210335),	-- Shado-Pan Dagger (wowhead)
					i(215534),	-- Shado-Pan Longbow (wowhead)
					i(215889),	-- Soulwood Spire (wowhead)
					i(215960),	-- Tian Monastery Scimitar (wowhead)
					-- i(215864),	-- Torch of Dawn (not on wowhead)
					i(215515),	-- Wallwatcher's Greataxe (wowhead)
					i(215745),	-- Wasteland Basher (wowhead)
					i(216576),	-- Wasteland Deflector (wowhead)
					i(215869),	-- Waterweaver's Staff (wowhead)
					i(215776),	-- Zeeg's Ancient Kegbreaker (wowhead)
				})
			}),
		},
	}),
}))));--]]
