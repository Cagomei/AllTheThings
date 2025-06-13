-- #if SEASON_OF_DISCOVERY
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	applyclassicphase(SOD_PHASE_EIGHT, inst(2856, bubbleDownSelf({["timeline"] = { ADDED_1_15_7 }}, {	-- Scarlet Enclave
		["zone-text-areaID"] = 16236,	-- Scarlet Enclave
		-- ["description"] = "[TBC] \nThis is a new raid added in SoD Phase 8.\nThe current loot table is not accurate. If you get items not in the boss drop, please report it in Discord #classic-errors.",
		["lvl"] = 60,
		-- ["coord"] = { 39.8, 73.6, DEADWIND_PASS },
        ["isRaid"] = true,
		-- ["sourceQuest"] = 86970,
		["groups"] = {
			n(QUESTS),
			d(DIFFICULTY.RAID.NORMAL, {
				["sharedDescription"] = "[TBC]\nIf the boss loot that is not in the boss's loot table, @NORPG on Discord.",
				["groups"] = {
					n(COMMON_BOSS_DROPS),
					e(3185, {	-- Balnazzar 
						["creatureID"] = 240811,
						["groups"] = {
							i(239719), -- Consecrated Bindings
							i(239722), -- Consecrated Wristguards
							i(239759), -- Consecrated Bracers
							i(241152), -- Dawnwrought Shoulders
							i(240922), -- Deception
							i(241017), -- Demon's Folly
							i(241176), -- Diesalven's Demise
							i(241171), -- Gloves of Departed Souls
							i(241179), -- Leggings of Catastrophe
							i(239216), -- Lightforged Iron
							i(241018), -- Nathrezim Heart
							i(241028), -- Nathrezim Loop
							i(241184), -- Savior's Sandals
							i(241157), -- Scarlet Chestplate
							i(241178), -- Stalwart Pain Plate
							i(240839), -- Thalkituun, the Unseen Guest
							i(242365), -- Wing of Balnazzar
						},
					}),
					e(3187, {	-- High Commander Beatrix
						["creatureID"] = 240812,
						["groups"] = {
							i(241026), -- Cardinal's Shawl
							i(241077), -- Cardinal's Chapeau
							i(239718), -- Consecrated Belt
							i(239756), -- Consecrated Girdle
							i(239760), -- Consecrated Waistguard
							i(239694), -- Covenant of Light
							i(241076), -- Cowl of the Covenant
							i(241170), -- Enclave Protectors
							i(240997), -- Fratley's Spur
							i(241074), -- Helm of the Red Crusade
							i(241173), -- High Wizard Wrap
							i(242465), -- Jostled Chalice Fragment
							i(241177), -- Kilt of the Scarlet Arcanist
							i(239216), -- Lightforged Iron
							i(241159), -- Monastery Garb
							i(238300), -- Pattern: Scarlet Augur's Vestaments
							i(238308), -- Pattern: Scarlet Infiltrator's Vest
							i(238316), -- Pattern: Scarlet Huntsman's Chain
							i(238324), -- Plans: Scarlet Soldier's Chestplate
							i(239196), -- Ruined Lightforged Blade
							i(241027), -- Shield Warden's Guard
							i(241068), -- Stiltz's Standard
							-- 2x crafting pattern
						},
					}),
					e(3186, {	-- Solidstraza
						["creatureID"] = 238954,
						["groups"] = {
							i(239707), -- Consecrated Helmet
							i(239714), -- Consecrated Circlet
							i(239729), -- Consecrated Headpiece
							i(241022), -- Dawnbringer's Cloak
							i(241166), -- Dawnstripped Bands
							i(241034), -- Heart of Light
							i(240850), -- Lightfist Hammer
							i(239216), -- Lightforged Iron
							i(241180), -- Lightscale Leggings
							i(242364), -- Mature Light Dragon Sinew
							i(241186), -- Polished Scarlet Mail Boots
							i(241002), -- Remnants of the Red
							i(240174), -- Solistra, Fang of the First Light
							i(241163), -- Sunblaze Bracers
							i(241168), -- Sunblaze Grips
							i(241073), -- Touch of Light
							i(236317), -- Visera, the Gutrender
						},
					}),
					e(3196, {	-- Alexei the Beastlord
						["creatureID"] = 240794,
						["groups"] = {
							i(241185), -- Bear Training Boots
							i(241154), -- Bearskin Mantle
							i(241158), -- Chains of the Abandoned
							i(241069), -- Choke Chain
							i(239706), -- Consecrated Sabatons
							i(239710), -- Consecrated Sandals
							i(239726), -- Consecrated Boots
							i(239216), -- Lightforged Iron
							i(238299), -- Pattern: Scarlet Augur's Mantle
							i(238307), -- Pattern: Scarlet Infiltrator's Shoulderpads
							i(238315), -- Pattern: Scarlet Huntsman's Pauldrons
							i(241165), -- Penitent Wraps
							i(238323), -- Plans: Scarlet Soldier's Spaulders
							i(240924), -- Poleaxe of the Beast
							i(241167), -- Prisoner Shackles
							i(241164), -- Scrapped Argent Leathers
							i(241038), -- Sir Dornel's Didgeridoo
							i(240849), -- Staff of the Glade
							i(241162), -- Sunblessed Leathers
							i(241079), -- Weight of the World
						},
					}),
					e(3197, {	-- Mason the Echo <Grand Admiral>
						["creatureID"] = 241021,
						["groups"] = {
							i(241183), -- Ashwalkers
							i(239716), -- Consecrated Gloves
							i(239730), -- Consecrated Handguards
							i(239762), -- Consecrated Gauntlets
							i(241187), -- Crimson Wartreads
							i(241181), -- Dawnworn Chain Leggings
							i(241023), -- Drape of the Dastardly
							i(240925), -- Experiment 800M
							i(241025), -- Flag of the Broken Admiral
							i(241011), -- Greatstaff of Fealty
							i(239216), -- Lightforged Iron
							i(241030), -- Mason's Fraternity Ring
							i(242793), -- Portable Cannon
							i(240843), -- Starter's Pistol
							i(241071), -- Talisman of the Scarlet Scoundrel
							i(241182), -- Templar Plate Legguards
							i(239060), -- Will of the Mountain
						},
					}),
					e(3188, {	-- Reborn Council
						["crs"] = { 
							240810,	-- Doan
							240795,	-- Herod <The Scarlet Champion>
							240809,	-- Vishas
						},	
						["groups"] = {
							i(241015), -- Aegis of the Scarlet Bastion
							i(241008), -- Condemnation
							i(239708), -- Consecrated Pauldrons
							i(239712), -- Consecrated Shoulderpads
							i(239758), -- Consecrated Spaulders
							i(239117), -- Crusader's Chalice
							i(241153), -- Doan's Mantle
							i(241174), -- Girdle of the Reborn Champion
							i(241080), -- Herod's Pauldron
							i(241070), -- Hope of Herod
							i(239216), -- Lightforged Iron
							i(240854), -- Mercy
							i(241003), -- Mirage Rod of Illusion
							i(240853), -- Queensfall
							i(241075), -- Raging Destroyer's Helm
							i(240919), -- Ravagane
							i(240998), -- Soporific Blade
							i(237302), -- Tabard of the Scarlet Enclave
							i(241175), -- Torturer's Toolbelt
						},
					}),
					e(3190, {	-- Lilian Voss
						["creatureID"] = 243021,
						["groups"] = {
							i(241037), -- Abandoned Experiment
							i(241031), -- Barthalomew's Promise
							i(241156), -- Blighted Robes
							i(239709), -- Consecrated Legplates
							i(239721), -- Consecrated Leggings
							i(239757), -- Consecrated Legguards
							i(241004), -- Conundrum
							i(239117), -- Crusader’s Chalice
							i(241160), -- Dawnworn Chainmail
							i(240923), -- Duplicity
							i(240844), -- Putress' Poker
							i(241020), -- Putress' Completed Diary
							i(240842), -- Scarlet Rotbringer
							i(241078), -- Shroud of the Embalmed
							i(241161), -- Templar Breastplate
							i(241072), -- Vial of Pus
							i(241012), -- Wand of Reanimation
						},
					}),
					e(3189, {	-- Grand Crusader Caldoran
						["creatureID"] = 241006,
						["groups"] = {
							i(241029), -- Baelin's Band
							i(241172), -- Caldoran's Locked Gauntlets
							i(239215), -- Charred Emblem
							i(239715), -- Consecrated Robe
							i(239731), -- Consecrated Tunic
							i(239761), -- Consecrated Breastplate
							i(240852), -- Crimson Cleaver
							i(239117), -- Crusader's Chalice
							i(240841), -- High Commander's Guard
							i(239696), -- Hilt of the Ashbringer
							i(242366), -- Inescapable Fate
							i(241039), -- Infusion of Souls
							i(240920), -- Leogan
							i(239216), -- Lightforged Iron
							i(238298), -- Pattern: Scarlet Augur's Hood
							i(238299), -- Pattern: Scarlet Augur's Mantle
							i(238300), -- Pattern: Scarlet Augur's Vestaments
							i(238306), -- Pattern: Scarlet Infiltrator's Bandana
							i(238307), -- Pattern: Scarlet Infiltrator's Shoulderpads
							i(238308), -- Pattern: Scarlet Infiltrator's Vest
							i(238314), -- Pattern: Scarlet Huntsman's Coif
							i(238315), -- Pattern: Scarlet Huntsman's Pauldrons
							i(238316), -- Pattern: Scarlet Huntsman's Chain
							i(238322), -- Plans: Scarlet Soldier's Helmet
							i(238323), -- Plans: Scarlet Soldier's Spaulders
							i(238324), -- Plans: Scarlet Soldier's Chestplate
							i(240851), -- Regicide
							i(241032), -- Ring of Resurrection
							i(239695), -- Scarlet Steed
							i(240921), -- Scarlet Smashbringer
							i(241024), -- Scarlet Commander's Cape
							i(241006), -- Spire of Sacrifice
							i(241021), -- The Light
							i(241001), -- Tyr's Fall
						},
					}),
				}),
			}),
		},
	}))),
}));
-- #endif