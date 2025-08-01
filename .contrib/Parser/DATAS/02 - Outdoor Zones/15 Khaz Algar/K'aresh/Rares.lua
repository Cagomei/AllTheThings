---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(RARES, {
			n(COMMON_BOSS_DROPS, {	-- Using this header as temp. Can These drop from all rares or is each one specific? //Braghe
				i(239448),	-- Reshii Magi's Vestments
				i(239449),	-- Reshii Magi's Slippers
				i(239452),	-- Reshii Magi's Leggings
				i(239454),	-- Reshii Magi's Cord
				i(239456),	-- Reshii Scout's Jerkin
				i(239457),	-- Reshii Scout's Soles
				i(239458),	-- Reshii Scout's Grips
				i(239459),	-- Reshii Scout's Hood
				i(239461),	-- Reshii Scout's Shoulderpads
				i(239462),	-- Reshii Scout's Belt
				i(239465),	-- Reshii Skirmisher's Boots
				i(239466),	-- Reshii Skirmisher's Gauntlets
				i(239468),	-- Reshii Skirmisher's Legguards
				i(239470),	-- Reshii Skirmisher's Sash
				i(239471),	-- Reshii Skirmisher's Armguards
				i(239472),	-- Reshii Brute's Breastplate
				i(239473),	-- Reshii Brute's Sollerets
				i(239474),	-- Reshii Brute's Handguards
				i(239475),	-- Reshii Brute's Helmet
				i(239476),	-- Reshii Brute's Greaves
				i(246064),	-- Reshii Magi's Pendant
				i(246065),	-- Reshii Magi's Band
			}),
			n(232098, {	-- "Chowdar" <Escaped Auction Parcel #8675308>
				["coords"] = {	-- Runs between the coordinates
					{ 81.9, 75.6, KARESH_TAZAVESH },
					{ 76.5, 76.8, KARESH_TAZAVESH },
					{ 72.8, 84.2, KARESH_TAZAVESH },
				},
				["questID"] = 90587,
				["groups"] = {
					i(242323),	-- Chowdar's Favorite Ribbon (TOY!)
					i(239477),	-- Reshii Brute's Epaulettes
					i(239455),	-- Reshii Magi's Bands
					i(239460),	-- Reshii Scout's Breeches
				},
			}),
			n(241956, {	-- Arcana-Monger So'zer
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(238540, {	-- Grubber
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 71.2, 57.2, KARESH_TAZAVESH },
				["questID"] = 90698,
			}),
			n(245998, {	-- Heka'tamos <the Elemental Disjunction>
				["description"] = "You need to interract with Spectral Lantern, Dewminder, Earthy Succulent, and Windcatcher inside The Oasis.\nOnce you have obtained the buffs, you can summon Heka'tamos at the Brazier of Elemental Union near his spawn point.",
				["coord"] = { 75.2, 31.0, KARESH },
				["questID"] = 91276,
				["groups"] = {
					i(245272),	-- Heka'Tarnos, Bringer of Discord (PET!)
				},
			}),
			n(238536, {	-- Hollowbane
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(232128, {	-- Ixthar the Unblinking
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 64.0, 43.6, KARESH },
				["questID"] = 90596,
				["groups"] = {
					i(240171),	-- Observer's Soul Fetters
					i(240213),	-- Veiling Mana Shroud
				},
			}),
			n(232077, {	-- Korgorath the Ravager
				["coord"] = { 64.7, 43.6, KARESH },
				["questID"] = 90586,
			}),
			n(231229, {	-- Korgoth the Hungerer
				["description"] = "Rare can be summoned and killed only during the 'Devourer Attack: The Oasis'.",
				["coord"] = { 71.5, 27.4, KARESH },
				["questID"] = 91309,
				["groups"] = {
					i(232467),	-- Crystallized Anima (QS!)
					i(246240),	-- Devoured Energy-Pod
				},
			}),
			n(245997, {	-- Malek'ta <The Jaws of Oblivion>
				["description"] = "Malek'ta is burrowed under the ground. Jump around to lure it out.",
				["coord"] = { 54.1, 58.8, KARESH },
				["questID"] = 91275,
				["groups"] = {
					i(245214),	-- Palek'ti, the Mouth of Nothingness (PET!)
					i(240169),	-- Reshii Magi's Amulet
					i(240168),	-- Reshii Magi's Seal
				},
			}),
			n(231981, {	-- Maw of the Sands
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 54.5, 54.5, KARESH },
				["questID"] = 90594,
				["groups"] = {
					i(240172),	-- Depleted K'areshi Battery
					i(240214),	-- Miniature Reshii Sandgarden
				},
			}),
			n(234970, {	-- Miasmawrath
				["description"] = "Rare can be summoned and killed only during the 'Devourer Attack: Eco-dome: Primus'.",
				["coord"] = { 50.6, 54.1, KARESH },
				["questID"] = 91310,
				["groups"] = {
					i(238663),	-- Crystallized Anima (QS!)
					i(246240),	-- Devoured Energy-Pod
				},
			}),
			n(232108, {	-- Morgil the Netherspawn
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 56.1, 52.7, KARESH },
				["questID"] = 90588,
				["groups"] = {
					i(244915),	-- Jimmy (PET!)
					i(239450),	-- Reshii Magi's Gloves
				},
			}),
			n(232127, {	-- Orith the Dreadful
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 58.9, 20.8, KARESH },
				["questID"] = 90595,
				["groups"] = {
					i(240172),	-- Depleted K'areshi Battery
				},
			}),
			n(235422, {	-- Phase-Thief Tezra
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(232182, {	-- Prototype Mk-V
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 45.8, 24.2, KARESH },
				["questID"] = 90590,
				["groups"] = {
					i(239478),	-- Reshii Brute's Greatbelt
					i(239464),	-- Reshii Skirmisher's Brigandine
				},
			}),
			n(241920, {	-- Purple Peat
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 42.5, 57.5, KARESH },
				["questID"] = 90692,
			}),
			n(232189, {	-- Revenant of the Wasteland
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 50.5, 64.6, KARESH },
				["questID"] = 90591,
			}),
			n(232006, {	-- Sha'ryth the Cursed
				["coord"] = { 72.3, 55.8, KARESH },
				["questID"] = 90585,
				["groups"] = {
					i(239453),	-- Reshii Magi's Spines
				},
			}),
			n(232129, {	-- Shadowhowl
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 54.1, 49.1, KARESH },
				["questID"] = 90583,
				["groups"] = {
					i(239469),	-- Reshii Skirmisher's Pauldrons
				},
			}),
			n(238135, {	-- Shatterpulse
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				--["coord"] = { x, y, KARESH },
				--["questID"] = ,
			}),
			n(232193, {	-- Stalker of the Wastes
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 76.7, 42.0, KARESH },
				["questID"] = 90592,
				["groups"] = {
					--- Junk item worth 50g. Only source of it for now.
					i(246063),	-- Void-Polished Warpstalker Stone
				},
			}),
			n(234845, {	-- Sthaarbs <the Mindroiler>
				["description"] = "You need to Phasedive in order to be able to attack the Rare Creature.",
				["coord"] = { 74.0, 32.4, KARESH },
				["questID"] = 91293,
			}),
			n(235087, {	-- The Harvester
				["description"] = "Rare can be summoned and killed only during the 'Devourer Attack: The Atrium'.",
				["coord"] = { 49.5, 64.2, KARESH },
				["questID"] = 91311,
				["groups"] = {
					i(238664),	-- Crystallized Anima (QS!)
					i(246240),	-- Devoured Energy-Pod
				},
			}),
			n(232111, {	-- The Nightreaver
				["coord"] = { 52.7, 56.5, KARESH },
				["questID"] = 90589,
				["groups"] = {
					i(245254),	-- Duskthief (PET!)
					i(239467),	-- Reshii Skirmisher's Cowl
				},
			}),
			n(235104, {	-- The Wallbreaker
				["description"] = "Rare can be summoned and killed only during the 'Devourer Attack: Tazavesh'.",
				["coord"] = { 27.5, 72.3, KARESH_TAZAVESH },
				["questID"] = 91312,
				["groups"] = {
					i(238665),	-- Crystallized Anima (QS!)
					i(246240),	-- Devoured Energy-Pod
				},
			}),
			n(232195, {	-- Urmag <The Terror Below>
				["coord"] = { 70.2, 49.7, KARESH },
				["questID"] = 90593,
			}),
			n(232199, {	-- Xarran the Binder
				["description"] = "You need to Phasedive in order to see the Rare Creature.",
				["coord"] = { 65.1, 50.0, KARESH },
				["questID"] = 90584,
				["groups"] = {
					i(239451),	-- Reshii Magi's Crown
					i(239463),	-- Reshii Scout's Bracers
				},
			}),
			n(238384, {	-- Xy'vox the Twisted
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 31.2, 57.8, KARESH },
				["questID"] = 90694,
				["groups"] = {
					i(239479),	-- Reshii Brute's Vambraces
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(RARES, {
				q(90676, {	-- Weekly reputation: "Chowdar"
					["name"] = "Chowdar weekly reputation obtained.",
				}),
				q(90699, {	-- Weekly reputation: Grubber
					["name"] = "Grubber weekly reputation obtained.",
				}),
				q(91422, {	-- Weekly reputation: Heka'tamos
					["name"] = "Heka'tamos weekly reputation obtained.",
				}),
				q(90685, {	-- Weekly reputation: Ixthar the Unblinking
					["name"] = "Ixthar the Unblinking weekly reputation obtained.",
				}),
				q(90675, {	-- Weekly reputation: Korgorath the Ravager
					["name"] = "Korgorath the Ravager weekly reputation obtained.",
				}),
				q(91433, {	-- Weekly reputation: Korgoth the Hungerer
					["name"] = "Korgoth the Hungerer weekly reputation obtained.",
				}),
				q(91421, {	-- Weekly reputation: Malek'ta
					["name"] = "Malek'ta weekly reputation obtained.",
				}),
				q(90683, {	-- Weekly reputation: Maw of the Sands
					["name"] = "Maw of the Sands weekly reputation obtained.",
				}),
				q(91434, {	-- Weekly reputation: Miasmawrath
					["name"] = "Miasmawrath weekly reputation obtained.",
				}),
				q(90677, {	-- Weekly reputation: Morgil the Netherspawn
					["name"] = "Morgil the Netherspawn weekly reputation obtained.",
				}),
				q(90684, {	-- Weekly reputation: Orith the Dreadful
					["name"] = "Orith the Dreadful weekly reputation obtained.",
				}),
				q(90679, {	-- Weekly reputation: Prototype Mk-V
					["name"] = "Prototype Mk-V weekly reputation obtained.",
				}),
				q(90693, {	-- Weekly reputation: Purple Peat (TODO: swipe with rare questID if wrong)
					["name"] = "Purple Peat weekly reputation obtained.",
				}),
				q(90680, {	-- Weekly reputation: Revenant of the Wasteland
					["name"] = "Revenant of the Wasteland weekly reputation obtained.",
				}),
				q(90674, {	-- Weekly reputation: Shadowhowl
					["name"] = "Sha'ryth the Cursed weekly reputation obtained.",
				}),
				q(90673, {	-- Weekly reputation: Sha'ryth the Cursed
					["name"] = "Sha'ryth the Cursed weekly reputation obtained.",
				}),
				q(90681, {	-- Weekly reputation: Stalker of the Wastes
					["name"] = "Stalker of the Wastes weekly reputation obtained.",
				}),
				q(91431, {	-- Weekly reputation: Sthaarbs (TODO: swipe with rare questID if wrong)
					["name"] = "Sthaarbs weekly reputation obtained.",
				}),
				q(91435, {	-- Weekly reputation: The Harvester
					["name"] = "The Harvester weekly reputation obtained.",
				}),
				q(90678, {	-- Weekly reputation: The Nightreaver
					["name"] = "The Nightreaver weekly reputation obtained.",
				}),
				q(91436, {	-- Weekly reputation: The Wallbreaker
					["name"] = "The Wallbreaker weekly reputation obtained.",
				}),
				q(90682, {	-- Weekly reputation: Urmag
					["name"] = "Urmag weekly reputation obtained.",
				}),
				q(90672, {	-- Weekly reputation: Xarran the Binder
					["name"] = "Xarran the Binder weekly reputation obtained.",
				}),
				q(90695, {	-- Weekly reputation: Xy'vox the Twisted (TODO: swipe with rare questID if wrong)
					["name"] = "Xy'vox the Twisted weekly reputation obtained.",
				}),
			}),
		}),
	}),
})));
