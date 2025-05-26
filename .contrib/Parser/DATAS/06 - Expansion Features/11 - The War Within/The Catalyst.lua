-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	o(456208, {	-- The Catalyst
		["description"] = "Help us gather information of what is/isn't available via doing reports in ATT Discord. Especially the alternative sets and if the PvP transmog is available somewhere else.",
		["coord"] = { 50.0, 54.2, DORNOGAL },
		["modelScale"] = 4,
		["g"] = {
			pvp(n(SEASON_FORGED, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 } }, {
				n(PVP_GLADIATOR, bubbleDown({ ["modID"] = 14 }, {
					cl(DEATHKNIGHT, {
						i(211997),	-- Exhumed Centurion's Drape
						i(211998),	-- Exhumed Centurion's Manacles
						i(211999),	-- Exhumed Centurion's Baltea
						i(212000),	-- Exhumed Centurion's Spikes
						i(212001),	-- Exhumed Centurion's Chausses
						i(212002),	-- Exhumed Centurion's Galea
						i(212003),	-- Exhumed Centurion's Gauntlets
						i(212004),	-- Exhumed Centurion's Sollerets
						i(212005),	-- Exhumed Centurion's Breastplate
					}),
					cl(DEMONHUNTER, {
						i(212060),	-- Drape of the Hypogeal Nemesis
						i(212061),	-- Armguards of the Hypogeal Nemesis
						i(212062),	-- Waistguard of the Hypogeal Nemesis
						i(212063),	-- War-Mantle of the Hypogeal Nemesis
						i(212064),	-- Pantaloons of the Hypogeal Nemesis
						i(212065),	-- Impalers of the Hypogeal Nemesis
						i(212066),	-- Claws of the Hypogeal Nemesis
						i(212067),	-- Talons of the Hypogeal Nemesis
						i(212068),	-- Chestguard of the Hypogeal Nemesis
					}),
					cl(DRUID, {
						i(212051),	-- Cloak of the Greatlynx
						i(212052),	-- Great Links of the Greatlynx
						i(212053),	-- Faulds of the Greatlynx
						i(212054),	-- Maw of the Greatlynx
						i(212055),	-- Leggings of the Greatlynx
						i(212056),	-- Mask of the Greatlynx
						i(212057),	-- Eviscerators of the Greatlynx
						i(212058),	-- Treads of the Greatlynx
						i(212059),	-- Hide of the Greatlynx
					}),
					cl(EVOKER, {
						i(212024),	-- Cape of the Destroyer
						i(212025),	-- Wristblades of the Destroyer
						i(212026),	-- Core of the Destroyer
						i(212027),	-- Fumaroles of the Destroyer
						i(212028),	-- Legguards of the Destroyer
						i(212029),	-- Horns of the Destroyer
						i(212030),	-- Rippers of the Destroyer
						i(212031),	-- Talons of the Destroyer
						i(212032),	-- Scales of the Destroyer
					}),
					cl(HUNTER, {
						i(212015),	-- Lightless Scavenger's Hide
						i(212016),	-- Lightless Scavenger's Wristguards
						i(212017),	-- Lightless Scavenger's Bonegirdle
						i(212018),	-- Lightless Scavenger's Taxidermy
						i(212019),	-- Lightless Scavenger's Stalkings
						i(212020),	-- Lightless Scavenger's Skull
						i(212021),	-- Lightless Scavenger's Mitts
						i(212022),	-- Lightless Scavenger's Footpads
						i(212023),	-- Lightless Scavenger's Tunic
					}),
					cl(MAGE, {
						i(212087),	-- Ward of Violet Rebirth
						i(212088),	-- Bracelets of Violet Rebirth
						i(212089),	-- Sigil of Violet Rebirth
						i(212090),	-- Beacons of Violet Rebirth
						i(212091),	-- Coattails of Violet Rebirth
						i(212092),	-- Hood of Violet Rebirth
						i(212093),	-- Jeweled Gauntlets of Violet Rebirth
						i(212094),	-- Slippers of Violet Rebirth
						i(212095),	-- Runecoat of Violet Rebirth
					}),
					cl(MONK, {
						i(212042),	-- Gatecrasher's Mantle
						i(212043),	-- Gatecrasher's Armguards
						i(212044),	-- Gatecrasher's Cord
						i(212045),	-- Gatecrasher's Enduring Effigy
						i(212046),	-- Gatecrasher's Kilt
						i(212047),	-- Gatecrasher's Horns
						i(212048),	-- Gatecrasher's Protectors
						i(212049),	-- Gatecrasher's Tabi
						i(212050),	-- Gatecrasher's Gi
					}),
					cl(PALADIN, {
						i(211988),	-- Entombed Seraph's Greatcloak
						i(211989),	-- Entombed Seraph's Shackles
						i(211990),	-- Entombed Seraph's Waistguard
						i(211991),	-- Entombed Seraph's Plumes
						i(211992),	-- Entombed Seraph's Greaves
						i(211993),	-- Entombed Seraph's Casque
						i(211994),	-- Entombed Seraph's Castigation
						i(211995),	-- Entombed Seraph's Sabatons
						i(211996),	-- Entombed Seraph's Breastplate
					}),
					cl(PRIEST, {
						i(212078),	-- Living Luster's Glow
						i(212079),	-- Living Luster's Crystbands
						i(212080),	-- Living Luster's Lightbelt
						i(212081),	-- Living Luster's Dominion
						i(212082),	-- Living Luster's Trousers
						i(212083),	-- Living Luster's Semblance
						i(212084),	-- Living Luster's Touch
						i(212085),	-- Living Luster's Boots
						i(212086),	-- Living Luster's Raiment
					}),
					cl(ROGUE, {
						i(212033),	-- K'areshi Phantom's Breeze
						i(212034),	-- K'areshi Phantom's Cuffs
						i(212035),	-- K'areshi Phantom's Belt
						i(212036),	-- K'areshi Phantom's Shoulderpads
						i(212037),	-- K'areshi Phantom's Leggings
						i(212038),	-- K'areshi Phantom's Emptiness
						i(212039),	-- K'areshi Phantom's Grips
						i(212040),	-- K'areshi Phantom's Netherwalkers
						i(212041),	-- K'areshi Phantom's Nexus Wraps
					}),
					cl(SHAMAN, {
						i(212006),	-- Mist of the Forgotten Reservoir
						i(212007),	-- Embrace of the Forgotten Reservoir
						i(212008),	-- Wrappings of the Forgotten Reservoir
						i(212009),	-- Concourse of the Forgotten Reservoir
						i(212010),	-- Sarong of the Forgotten Reservoir
						i(212011),	-- Noetic of the Forgotten Reservoir
						i(212012),	-- Covenant of the Forgotten Reservoir
						i(212013),	-- Shoes of the Forgotten Reservoir
						i(212014),	-- Vestments of the Forgotten Reservoir
					}),
					cl(WARLOCK, {
						i(212069),	-- Hexflame Coven's Shawl
						i(212070),	-- Hexflame Coven's Wristlace
						i(212071),	-- Hexflame Coven's Dormant Eye
						i(212072),	-- Hexflame Coven's Altar
						i(212073),	-- Hexflame Coven's Leggings
						i(212074),	-- Hexflame Coven's All-Seeing Eye
						i(212075),	-- Hexflame Coven's Sleeves
						i(212076),	-- Hexflame Coven's Treads
						i(212077),	-- Hexflame Coven's Ritual Harness
					}),
					cl(WARRIOR, {
						i(211979),	-- Warsculptor's Cloak
						i(211980),	-- Warsculptor's Armguards
						i(211981),	-- Warsculptor's Buckle
						i(211982),	-- Warsculptor's Horned Spaulders
						i(211983),	-- Warsculptor's Cuisses
						i(211984),	-- Warsculptor's Barbute
						i(211985),	-- Warsculptor's Crushers
						i(211986),	-- Warsculptor's Carved Boots
						i(211987),	-- Warsculptor's Furred Plastron
					}),
				})),
				-- Elite catalyst gear is not obtainable this season
			}))),
			pvp(n(SEASON_PRIZED, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 } }, {
				n(PVP_GLADIATOR, bubbleDown({ ["modID"] = 14 }, {
					cl(DEATHKNIGHT, {
						i(229248),	-- Cauldron Champion's Spined Cloak
						i(229249),	-- Cauldron Champion's Wraps
						i(229250),	-- Cauldron Champion's Title Belt
						i(229251),	-- Cauldron Champion's Screamplate
						i(229252),	-- Cauldron Champion's Tattered Cuisses
						i(229253),	-- Cauldron Champion's Crown
						i(229254),	-- Cauldron Champion's Fistguards
						i(229255),	-- Cauldron Champion's Greatboots
						i(229256),	-- Cauldron Champion's Ribcage
					}),
					cl(DEMONHUNTER, {
						i(229311),	-- Fel-Dealer's Fur Shawl
						i(229312),	-- Fel-Dealer's Cuffs
						i(229313),	-- Fel-Dealer's Waistwrap
						i(229314),	-- Fel-Dealer's Recycled Reavers
						i(229315),	-- Fel-Dealer's Fur Kilt
						i(229316),	-- Fel-Dealer's Visor
						i(229317),	-- Fel-Dealer's Underhandlers
						i(229318),	-- Fel-Dealer's Smugglers
						i(229319),	-- Fel-Dealer's Soul Engine
					}),
					cl(DRUID, {
						i(229302),	-- Leaves of Reclaiming Blight
						i(229303),	-- Knots of Reclaiming Blight
						i(229304),	-- Wickerbelt of Reclaiming Blight
						i(229305),	-- Jaws of Reclaiming Blight
						i(229306),	-- Moccasins of Reclaiming Blight
						i(229307),	-- Branches of Reclaiming Blight
						i(229308),	-- Grips of Reclaiming Blight
						i(229309),	-- Breeches of Reclaiming Blight
						i(229310),	-- Robes of Reclaiming Blight
					}),
					cl(EVOKER, {
						i(229275),	-- Opulent Treasurescale's Scalecloak
						i(229276),	-- Opulent Treasurescale's Vambraces
						i(229277),	-- Opulent Treasurescale's Radiant Chain
						i(229278),	-- Opulent Treasurescale's Gleaming Mantle
						i(229279),	-- Opulent Treasurescale's Petticoat
						i(229280),	-- Opulent Treasurescale's Crowned Jewel
						i(229281),	-- Opulent Treasurescale's Gold-Counters
						i(229282),	-- Opulent Treasurescale's Boots
						i(229283),	-- Opulent Treasurescale's Tunic
					}),
					cl(HUNTER, {
						i(229266),	-- Tireless Collector's Veilmesh
						i(229267),	-- Tireless Collector's Manacles
						i(229268),	-- Tireless Collector's First Kill
						i(229269),	-- Tireless Collector's Hunted Heads
						i(229270),	-- Tireless Collector's Armored Breeches
						i(229271),	-- Tireless Collector's Chained Cowl
						i(229272),	-- Tireless Collector's Gauntlets
						i(229273),	-- Tireless Collector's Spiked Cleats
						i(229274),	-- Tireless Collector's Battlegear
					}),
					cl(MAGE, {
						i(229338),	-- Aspectral Emissary's Chosen Drape
						i(229339),	-- Aspectral Emissary's Gembands
						i(229340),	-- Aspectral Emissary's Cummerbund
						i(229341),	-- Aspectral Emissary's Arcane Vents
						i(229342),	-- Aspectral Emissary's Trousers
						i(229343),	-- Aspectral Emissary's Crystalline Cowl
						i(229344),	-- Aspectral Emissary's Hardened Grasp
						i(229345),	-- Aspectral Emissary's Slippers
						i(229346),	-- Aspectral Emissary's Primal Robes
					}),
					cl(MONK, {
						i(229293),	-- Ageless Serpent's Flowing Grace
						i(229294),	-- Ageless Serpent's Cuffs
						i(229295),	-- Ageless Serpent's Rope Belt
						i(229296),	-- Ageless Serpent's Shoulderpads
						i(229297),	-- Ageless Serpent's Leggings
						i(229298),	-- Ageless Serpent's Mane
						i(229299),	-- Ageless Serpent's Handguards
						i(229300),	-- Ageless Serpent's Ankleweights
						i(229301),	-- Ageless Serpent's Inked Coils
					}),
					cl(PALADIN, {
						i(229239),	-- Aureate Sentry's Gilded Cloak
						i(229240),	-- Aureate Sentry's Clasps
						i(229241),	-- Aureate Sentry's Greatbelt
						i(229242),	-- Aureate Sentry's Roaring Will
						i(229243),	-- Aureate Sentry's Legguards
						i(229244),	-- Aureate Sentry's Pledge
						i(229245),	-- Aureate Sentry's Gauntlets
						i(229246),	-- Aureate Sentry's Greaves
						i(229247),	-- Aureate Sentry's Encasement
					}),
					cl(PRIEST, {
						i(229329),	-- Confessor's Unshakable Lightcover
						i(229330),	-- Confessor's Unshakable Faulds
						i(229331),	-- Confessor's Unshakable Ornament
						i(229332),	-- Confessor's Unshakable Radiance
						i(229333),	-- Confessor's Unshakable Leggings
						i(229334),	-- Confessor's Unshakable Halo
						i(229335),	-- Confessor's Unshakable Mitts
						i(229336),	-- Confessor's Unshakable Boots
						i(229337),	-- Confessor's Unshakable Vestment
					}),
					cl(ROGUE, {
						i(229284),	-- Spectral Gambler's Shawl
						i(229285),	-- Spectral Gambler's Shackles
						i(229286),	-- Spectral Gambler's Pocket Ace
						i(229287),	-- Spectral Gambler's Bladed Mantle
						i(229288),	-- Spectral Gambler's Pantaloons
						i(229289),	-- Spectral Gambler's Damned Visage
						i(229290),	-- Spectral Gambler's Gloves
						i(229291),	-- Spectral Gambler's Cavaliers
						i(229292),	-- Spectral Gambler's Vest
					}),
					cl(SHAMAN, {
						i(229257),	-- Gale Sovereign's Breeze
						i(229258),	-- Gale Sovereign's Bracers
						i(229259),	-- Gale Sovereign's Ritual Belt
						i(229260),	-- Gale Sovereign's Zephyrs
						i(229261),	-- Gale Sovereign's Pantaloons
						i(229262),	-- Gale Sovereign's Charged Hood
						i(229263),	-- Gale Sovereign's Grasps
						i(229264),	-- Gale Sovereign's Stormboots
						i(229265),	-- Gale Sovereign's Clouded Hauberk
					}),
					cl(WARLOCK, {
						i(229320),	-- Spliced Fiendtrader's Shady Cover
						i(229321),	-- Spliced Fiendtrader's Skinbands
						i(229322),	-- Spliced Fiendtrader's Sash
						i(229323),	-- Spliced Fiendtrader's Loyal Servants
						i(229324),	-- Spliced Fiendtrader's Skin Tights
						i(229325),	-- Spliced Fiendtrader's Transcendence
						i(229326),	-- Spliced Fiendtrader's Demonic Grasp
						i(229327),	-- Spliced Fiendtrader's Soles
						i(229328),	-- Spliced Fiendtrader's Surgical Gown
					}),
					cl(WARRIOR, {
						i(229230),	-- Enforcer's Backalley Allegiance
						i(229231),	-- Enforcer's Backalley Bindings
						i(229232),	-- Enforcer's Backalley Girdle
						i(229233),	-- Enforcer's Backalley Shoulderplates
						i(229234),	-- Enforcer's Backalley Chausses
						i(229235),	-- Enforcer's Backalley Faceshield
						i(229236),	-- Enforcer's Backalley Crushers
						i(229237),	-- Enforcer's Backalley Stompers
						i(229238),	-- Enforcer's Backalley Vestplate
					}),
				})),
				-- Elite catalyst gear is not obtainable this season
			}))),
			n(QUESTS, {
				q(82296, {	-- The Power of Creation
					["provider"] = { "n", 223533 },	-- Custodian Khubon
					["coord"] = { 49.8, 54.3, DORNOGAL },
				}),
				q(82651, {	-- Omens Unified
					--["sourceQuests"] = { 82296 },	-- The Power of Creation //not required?
					["provider"] = { "n", 223533 },	-- Custodian Khubon
					["coord"] = { 49.8, 54.1, DORNOGAL },
					["timeline"] = { REMOVED_11_1_0_SEASONSTART },
					["g"] = {
						i(211297),	-- Fractured Spark of Omens
					},
				}),
				q(86369, {	-- A Sparkling Fortune
					["provider"] = { "n", 223533 },	-- Custodian Khubon
					["coord"] = { 49.8, 54.1, DORNOGAL },
					["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
					["g"] = {
						i(230905),	-- Fractured Spark of Fortunes
					},
				}),
				q(90660, {	-- A Golden Circumstance
					["sourceQuest"] = 86369,	-- A Sparkling Fortune
					["provider"] = { "n", 223533 },	-- Custodian Khubon
					["coord"] = { 49.8, 54.1, DORNOGAL },
					["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
					["g"] = {
						i(230905),	-- Fractured Spark of Fortunes
					},
				}),
			}),
		},
	}),
})));