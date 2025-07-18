---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(BROKEN_ISLES, {
	m(AZSUNA, {
		n(QUESTS, {
			q(38857, {	-- A Favor for Mr. Shackle
				["coord"] = { 50.2, 61.0, AZSUNA },
				["provider"] = { "n", 88863 },	-- Seska Seafang
				["g"] = {
					i(200665, {	-- Seaweed Trimming Blade
						["classes"] = { EVOKER },
						["timeline"] = ADDED_10_0_2,
					}),
					i(133039),	-- Breath of Al'Akir
					i(133037),	-- Zandalari Voodoo Totem
					i(133036),	-- Ravenous Seed
					i(133035),	-- Myzrael Shard
					i(133034),	-- Were-Yeti Paw
					i(133033),	-- Sorceror's Ember
					i(133032),	-- Fel-Fire Demon Claw
					i(133031),	-- Rare White Tiger Heart
					i(133030),	-- 'Procured' Kirin Tor Wand Tip
					i(133029),	-- Dathrohan's Signet
				},
			}),
			q(37991, {	-- Agapanthus
				["sourceQuests"] = { 37853 },	-- The Death of the Eldest
				["coord"] = { 48.0, 27.1, AZSUNA },
				["provider"] = { "n", 89795 },	-- Emmigosa
			}),
			q(37492, {	-- A Rather Long Walk
				["sourceQuests"] = { 37256 },	-- They Came From the Sea
				["coord"] = { 47.0, 41.4, AZSUNA },
				["provider"] = { "n", 88798 },	-- Lady Irisse
			}),
			q(42367, {	-- Arkethrax
				["sourceQuests"] = { 42375 },	-- Eye See You
				["coord"] = { 63.8, 28.8, AZSUNA },
				["provider"] = { "n", 107245 },	-- Marius Felbane
				["g"] = {
					i(121480),	-- Felblaze Chain
					i(129171),	-- Band of Ingression
				},
			}),
			q(42694, {	-- Back from the Dead
				["sourceQuests"] = {
					42692,	-- Children of Nar'thalas
					42693,	-- You Never Know Until You Scry
				},
				["coord"] = { 53.3, 45.4, AZSUNA },
				["provider"] = { "n", 108328 },	-- Olothil Starlance
				["g"] = {
					i(138820),	-- Starlance Pauldrons
					i(138821),	-- Starlance Mantle
					i(138822),	-- Starlance Shoulderpads
					i(138824),	-- Starlance Amice
					i(138823),	-- Starlance's Protective Ward
					i(138819),	-- Defiance of the Stalwart Survivors
					i(138837),	-- Ghostly Defenses
				},
			}),
			q(37507, {	-- Boss Whalebelly's in Charge
				["sourceQuests"] = { 37496 },	-- Infiltrating Shipwreck Arena
				["coord"] = { 50.0, 48.4, AZSUNA },
				["provider"] = { "n", 88873 },	-- Okuna Longtusk
			}),
			q(38407, {	-- Bottled Up
				["provider"] = { "i", 122699 },	-- Okuna's Message
				["coord"] = { 49.9, 40.5, AZSUNA },
				["crs"] = {
					107439,	-- Salteye Beastfeeder
					113866,	-- Salteye Clam Vanquisher
					88099,	-- Salteye Hookblade
					109174,	-- Salteye Spearguard
					88101,	-- Salteye Tide-Shaman
				},
			}),
			q(38203, {	-- Challiane Vineyards
				["coords"] = {
					{ 40.8, 9.20, AZSUNA },
					{ 48.6, 12.2, AZSUNA },
				},
				["providers"] = {
					{ "n", 91061 },	-- Cellarman Voodani
					{ "n", 91065 },	-- Cellarman Voodani
				},
				["g"] = {
					i(121493),	-- Liastrin's Wine Taster
					i(121489),	-- Valiana's Secret Recipe
					i(121491),	-- Shalrala's Engraved Goblet
					i(132968),	-- Vintner's Wristwraps
					i(132967),	-- Cooper's Bindings
					i(132966),	-- Oenologer's Protection Bands
					i(132965),	-- Wine-Resistant Bracers
				},
			}),
			q(42692, {	-- Children of Nar'thalas
				["coord"] = { 53.3, 45.4, AZSUNA },
				["provider"] = { "n", 89326 },	-- Kallista Starlance
			}),
			q(42567, {	-- Cursed to Wither
				["sourceQuests"] = {
					38014,	-- Feasting on the Dragon
					38015,	-- On the Brink
				},
				["coord"] = { 49.9, 26.6, AZSUNA },
				["provider"] = { "n", 90738 },	-- Stellagosa
			}),
			q(37449, {	-- Dark Revelations
				["sourceQuests"] = {
					37450,	-- Saving Stellagosa
					37656,	-- Fel Machinations
				},
				["coord"] = { 37.6, 57.6, AZSUNA },
				["provider"] = { "n", 90474 },	-- Kor'vas Bloodthorn
				["g"] = {
					i(132984),	-- Abandoned Highborne Mana Crystal
					i(132985),	-- Blood of the Vanquished Highborne
					i(133002),	-- Coalesced Shadows
					i(132996),	-- Cursed Felstalker Flesh
					i(132987),	-- Everburning Ruin Ember
					i(132995),	-- Faronaar Arcane Power-Core
					i(132990),	-- Fel-Resistant Clipping
					i(132989),	-- Legion Iron Nugget
					i(132991),	-- Mortiferous' Corruption
					i(132993),	-- Nethrandamus' Zephyr
					i(132999),	-- Preserved Highborne Warrior's Fist
					i(133001),	-- Soul Fragment of Faronaar Innocent
					i(133000),	-- Stalwart Faronaar Keystone
					i(133004),	-- Swirling Demonic Whispers
					i(132988),	-- The Dreadlord's Chill Eye
					i(132998),	-- The Sufferer's Fury
				},
			}),
			q(37653, {	-- Demon Souls
				["sourceQuests"] = {
					38834,	-- Into the Fray (Non-DH version)
					44137,	-- Into the Fray (DH version)
				},
				["coord"] = { 43.2, 43.1, AZSUNA },
				["provider"] = { "n", 89398 },	-- Allari the Souleater
			}),
			q(37736, {	-- Dressing With Class
				["sourceQuests"] = { 37468 },	-- Into the Academy
				["coord"] = { 53.4, 48.9, 631 },	-- Nar'thalas Academy
				["provider"] = { "n", 89660 },	-- Thyrillion
				["g"] = {
					i(138873),	-- Mystical Frosh Hat (TOY!)
				},
			}),
			q(38286, {	-- Eye of Azshara: Wrath of Azshara
				["sourceQuests"] = { 37470 },	-- The Head of the Snake
				["coord"] = { 61.7, 41.1, AZSUNA },
				["provider"] = { "n", 91403 },	-- Prince Farondis
			}),
			q(42375, {	-- Eye See You
				["sourceQuests"] = { 42372 },	-- Felblaze Ingress
				["coord"] = { 63.8, 29.0, AZSUNA },
				["provider"] = { "n", 107244 },	-- Tehd Shoemaker
			}),
			q(40794, {	-- Fate of the Queen's Reprisal (A)
				["sourceQuests"] = { 37659 },	-- The Captain's Foot Locker
				["provider"] = { "o", 239328 },	-- Captain's Foot Locker
				["coord"] = { 65.6, 56.8, AZSUNA },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					i(121482),	-- Cloak of the Greywatch
					i(138857),	-- SI:7 Standard Issue Vest
					i(138856),	-- Alliance Auxillary Hauberk
					i(138855),	-- Alliance Crusader's Breastplate
					i(138858),	-- Stormwind Clergy Vestments
				},
			}),
			q(42244, {	-- Fate of the Queen's Reprisal (H)
				["sourceQuests"] = { 37659 },	-- The Captain's Foot Locker
				["provider"] = { "o", 239328 },	-- Captain's Foot Locker
				["coord"] = { 65.6, 56.8, AZSUNA },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(138859),	-- Royal Apothecary Robe
					i(121488),	-- Royal Apothecary Drape
					i(138862),	-- Decorated Deathstalker Jerkin
					i(138861),	-- Troll Auxillary Chainmail
					i(138860),	-- Kor'kron Breastplate
				},
			}),
			q(38014, {	-- Feasting on the Dragon
				["sourceQuests"] = { 37862 },	-- Still Alive
				["coord"] = { 49.7, 26.8, AZSUNA },
				["provider"] = { "n", 102988 },	-- Archmage Khadgar
				["g"] = {
					i(121435),	-- Leywalker Robes
					i(121418),	-- Ruin-Stalker Vest
					i(121417),	-- Seaspray Vest
					i(121416),	-- Nar'thalas Chestplate
					i(132914),	-- Leywalker Handwraps
					i(132915),	-- Ruin-Stalker Grips
					i(132916),	-- Seaspray Grips
					i(132917),	-- Nar'thalas Grips
				},
			}),
			q(42372, {	-- Felblaze Ingress
				["isBreadcrumb"] = true,
				["coord"] = { 50.4, 30.6, AZSUNA },
				["provider"] = { "n", 106915 },	-- Marius Felbane
			}),
			q(45127, {	-- Fel-Crossed Lovers
				["sourceQuests"] = { 45126 },	-- Unlikely Seduction
				["provider"] = { "n", 116189 },	-- Levia Laurence
				["classes"] = {
					DRUID,			-- Feral
					DEATHKNIGHT,	-- Unholy
					MAGE,			-- Fire
					ROGUE,			-- Outlaw
					SHAMAN,			-- Elemental
					WARRIOR,		-- Fury
				},
				["coord"] = { 25.6, 57.6, AZSUNA },
				["lvl"] = 110,
			}),
			q(37656, {	-- Fel Machinations
				["sourceQuests"] = {
					36920,	-- From Within (Non-DH Version)
					40815,	-- From Within (DH - Altruis)
					44140,	-- From Within (DH - Kayn)
				},
				["coord"] = { 41.2, 50.5, AZSUNA },
				["provider"] = { "n", 90474 },	-- Kor'vas Bloodthorn
			}),
			q(36920, {	-- From Within (Non-DH version)
				["sourceQuests"] = { 37660 },	-- The Scythe of Souls
				["classes"] = exclude(DEMONHUNTER, ALL_CLASSES),
				["coord"] = { 43.5, 43.4, AZSUNA },
				["provider"] = { "n", 89362 },	-- Kayn Sunfury
			}),
			q(40815, {	-- From Within (DH version, must choose Altruis)
				["sourceQuests"] = { 37660 },	-- The Scythe of Souls
				["description"] = "This quest is available if you chose to follow Altruis the Sufferer during the Demon Hunter introduction quests.",
				["classes"] = { DEMONHUNTER },
				["provider"] = { "n", 101927 },	-- Altruis the Sufferer
			}),
			q(44140, {	-- From Within (DH version, must choose Kayn)
				["sourceQuests"] = { 37660 },	-- The Scythe of Souls
				["description"] = "This quest is available if you chose to follow Kayn Sunfury during the Demon Hunter introduction quests.",
				["classes"] = { DEMONHUNTER },
				["coord"] = { 43.5, 43.4, AZSUNA },
				["provider"] = { "n", 89362 },	-- Kayn Sunfury
			}),
			q(37678, {	-- Hit the Books
				["sourceQuests"] = { 37468 },	-- Into the Academy
				["coord"] = { 53.4, 48.9, 631 },	-- Nar'thalas Academy
				["provider"] = { "n", 89849 },	-- Andellis
				["g"] = {
					i(138843),	-- The Librarian's Handwraps
					i(138842),	-- Bookbinding Wraps
					i(138841),	-- Shark-Link Gloves
					i(138840),	-- Fortified Librarian's Grips
					i(138844),	-- Academy Girdle
					i(138847),	-- Academy Cord
					i(138846),	-- Academy Belt
					i(138845),	-- Academy Chain
				},
			}),
			q(42756, {	-- Hunger's End
				["sourceQuests"] = { 42567 },	-- Cursed to Wither
				["coord"] = { 48.2, 22.7, AZSUNA },
				["provider"] = { "n", 91131 },	-- Runas the Shamed
				["g"] = {
					i(200653, {	-- Azure Staff of Arcana
						["classes"] = { EVOKER },
						["timeline"] = ADDED_10_0_2,
					}),
					i(133016),	-- Azurewing Guile
					i(133014),	-- Senegos' Despair
					i(133013),	-- Reinvigorating Crystal
					i(133012),	-- Senegos' Resolve
					i(133011),	-- Leyhollow Frost
					i(133010),	-- Azure Flame
					i(133009),	-- Corrupted Ley Crystal
					i(133008),	-- Azurewing Blood
					i(133007),	-- Everlasting Construct Core
					i(133006),	-- Blessed Llothien Stone
					i(133050),	-- Gale of the Blues
					i(133048),	-- Wretched Draining Essence
					i(133047),	-- Crystallized Whelp Egg
					i(133046),	-- Fortified Ancient Dragonscale
					i(133045),	-- Senegos' Breath
					i(133044),	-- Stellagosa's Rage
					i(133043),	-- Fel-Touched Mana Gems
					i(133042),	-- Ley-Infused Blood
					i(133041),	-- Radiating Ley Crystal
					i(133040),	-- Teardrop of Elune
				},
			}),
			q(37496, {	-- Infiltrating Shipwreck Arena
				["sourceQuests"] = { 38407 },	-- Bottled Up
				["coord"] = { 47.0, 41.4, AZSUNA },
				["provider"] = { "n", 88798 },	-- Lady Irisse
			}),
			q(37468, {	-- Into the Academy
				["sourceQuests"] = { 37467 },	-- The Walk of Shame
				["coord"] = { 54.2, 42.0, AZSUNA },
				["provider"] = { "n", 88890 },	-- Prince Farondis
			}),
			q(38834, {	-- Into the Fray (Non-DH version)
				["sourceQuests"] = { 41220 },	-- Down to Azsuna
				["classes"] = exclude(DEMONHUNTER, ALL_CLASSES),
				["coord"] = { 45.1, 42.9, AZSUNA },
				["provider"] = { "n", 93337 },	-- Archmage Khadgar
			}),
			q(44137, {	-- Into the Fray (DH version)
				["sourceQuests"] = { 41220 },	-- Down to Azsuna
				["classes"] = { DEMONHUNTER },
				["coord"] = { 45.1, 42.9, AZSUNA },
				["provider"] = { "n", 93337 },	-- Archmage Khadgar
			}),
			q(38443, {	-- Journey to the Repose
				["sourceQuests"] = { 37449 },	-- Dark Revelations
				["coord"] = { 43.5, 43.4, AZSUNA },
				["provider"] = { "n", 93326 },	-- Archmage Khadgar
			}),
			q(37528, {	-- Let Sleeping Giants Lie
				["sourceQuests"] = { 37507 },	-- Boss Whalebelly's in Charge
				["coord"] = { 50.0, 48.4, AZSUNA },
				["provider"] = { "n", 88873 },	-- Okuna Longtusk
			}),
			q(38460, {	-- Let's Make A Deal
				["sourceQuests"] = { 42238 },	-- Missing Demon
				["coord"] = { 62.0, 51.3, AZSUNA },
				["provider"] = { "n", 91166 },	-- Daglop
			}),
			q(37960, {	-- Leyline Abuse
				["sourceQuests"] = { 37857 },	-- Runas Knows the Way
				["coord"] = { 53.4, 16.3, AZSUNA },
				["provider"] = { "n", 89978 },	-- Projection of Senegos
			}),
			q(37657, {	-- Making the World Safe for Profit
				["coord"] = { 56.5, 59.5, AZSUNA },
				["provider"] = { "n", 91419 },	-- Mr. Shackle
				["g"] = {
					i(138852),	-- Gilnean Fleece Pantaloons
					i(138851),	-- Corsair's Britches
					i(138850),	-- Standard Earthen Ring Regalia
					i(138848),	-- Kul'Tiras Marine's Greaves
					i(129170),	-- Trader's Band
					i(133549, {	-- Muck-Covered Shoes
						i(133548),	-- High Parson's Slippers
						i(133547),	-- Freebooter Captain's Boots
						i(133546),	-- Croc-Resistant Waders
						i(133544),	-- Kul'Tiras Dress Sabatons
					}),
				},
			}),
			q(37654, {	-- Maritime Law
				["coord"] = { 56.5, 59.5, AZSUNA },
				["provider"] = { "n", 91419 },	-- Mr. Shackle
			}),
			q(38232, {	-- Minion! Kill Them!
				["sourceQuests"] = { 38460 },	-- Let's Make A Deal
				["coord"] = { 62.8, 51.4, AZSUNA },
				["provider"] = { "n", 91166 },	-- Daglop
			}),
			q(42238, {	-- Missing Demon
				["isBreadcrumb"] = true,
				["coord"] = { 50.4, 30.6, AZSUNA },
				["provider"] = { "n", 106914 },	-- Tehd Shoemaker
			}),
			q(37536, {	-- Morale Booster
				["sourceQuests"] = { 37510 },	-- Sternfathom's Champion
				["coord"] = { 47.9, 48.7, AZSUNA },
				["provider"] = { "n", 88923 },	-- Sternfathom
				["g"] = {
					i(133828),	-- Recipe: Fighter Chow [Rank 1] (RECIPE!)
				},
			}),
			q(37486, {	-- Nar'thalas Still Suffers
				["sourceQuests"] = { 37497 },	-- Trailing the Tidestone
				["coord"] = { 51.7, 44.2, AZSUNA },
				["provider"] = { "n", 88867 },	-- Prince Farondis
				["g"] = {
					i(121487),	-- Nar'thalas Protector's Cape
					i(132911),	-- Seal of House Farondis
				},
			}),
			q(37542, {	-- No Time for Tryouts
				["sourceQuests"] = { 37507 },	-- Boss Whalebelly's in Charge
				["coord"] = { 50.0, 48.4, AZSUNA },
				["provider"] = { "n", 88873 },	-- Okuna Longtusk
				["g"] = {
					i(121492),	-- Shiny Ookin' Bauble
					i(121494),	-- Mundane Ookin' Curio
					i(121490),	-- Precious Ookin' Coin
					i(132954),	-- Polished Dookin Ring
				},
			}),
			q(38015, {	-- On the Brink
				["sourceQuests"] = { 37862 },	-- Still Alive
				["coord"] = { 50.0, 26.5, AZSUNA },
				["provider"] = { "n", 90738 },	-- Stellagosa
				["g"] = {
					i(129178),	-- Emmigosa (PET!)
				},
			}),
			q(37257, {	-- Our Very Bones
				["sourceQuests"] = { 37733 },	-- Prince Farondis
				["coord"] = { 46.9, 41.2, AZSUNA },
				["provider"] = { "n", 88115 },	-- Prince Farondis
				["g"] = {
					i(121432),	-- Leywalker Leggings
					i(121434),	-- Ruin-Stalker Breeches
					i(121433),	-- Seaspray Leggings
					i(121431),	-- Nar'thalas Legguards
					i(132941),	-- Traitorous Robe
					i(132939),	-- Nightglaive's Vest
					i(132938),	-- Apostate's Hauberk
					i(132937),	-- Traitor's Bane Breastplate
				},
			}),
			q(37729, {	-- Pop Quiz: Advanced Rune Drawing
				["sourceQuests"] = { 42371 },	-- Study Hall: Combat Research
				["coord"] = { 29.5, 42.6, 631 },	-- Nar'thalas Academy
				["provider"] = { "n", 89661 },	-- Instructor Nidriel
			}),
			q(37728, {	-- Presentation is Everything
				["sourceQuests"] = { 37256 },	-- They Came From the Sea
				["coord"] = { 47.0, 41.3, AZSUNA },
				["provider"] = { "n", 89341 },	-- Magister Garuhod
			}),
			q(37733, {	-- Prince Farondis
				["sourceQuests"] = { 37256 },	-- They Came From the Sea
				["coord"] = { 48.4, 34.4, AZSUNA },
				["provider"] = { "n", 89023 },	-- Nightwatcher Idri
			}),
			q(42368, {	-- Quantity over Quality
				["sourceQuests"] = { 42375 },	-- Eye See You
				["coord"] = { 63.8, 28.8, AZSUNA },
				["provider"] = { "n", 107245 },	-- Marius Felbane
			}),
			q(37658, {	-- Reignite the Wards
				["sourceQuests"] = {
					38834,	-- Into the Fray (Non-DH version)
					44137,	-- Into the Fray (DH version)
				},
				["coord"] = { 43.1, 43.6, AZSUNA },
				["provider"] = { "n", 90317 },	-- Jace Darkweaver
				["g"] = {
					i(141623),	-- Demon Warding Halo
					i(141622),	-- Guise of the Demon Warder
					i(141621),	-- Helmet of Demon Warding
					i(141620),	-- Demon Warder Helm
					i(141628),	-- Soul-Stealer's Leggings
					i(141627),	-- Leggings of the Soul-Trapper
					i(141626),	-- Soul-Stealer's Chain Pants
					i(141625),	-- Soul-Trapper's Greaves
				},
			}),
			q(37538, {	-- Round 1, Fight!
				["sourceQuests"] = { 37536 },	-- Morale Booster
				["coord"] = { 47.9, 48.7, AZSUNA },
				["provider"] = { "n", 89048 },	-- Sternfathom
				["g"] = {
					i(121438),	-- Leywalker Amice
					i(121436),	-- Ruin-Stalker Spaulders
					i(121439),	-- Seaspray Mantle
					i(121437),	-- Nar'thalas Pauldrons
					i(132901),	-- Combatant's Halo
					i(132899),	-- Pit-Fighter's Headgear
					i(132900),	-- Scrapper's Coif
					i(132902),	-- Pit-Brawler's Helm
				},
			}),
			q(37857, {	-- Runas Knows the Way
				["sourceQuests"] = {
					37957,	-- Runas the Shamed
					37859,	-- The Consumed
				},
				["coord"] = { 49.1, 16.1, AZSUNA },
				["provider"] = { "n", 90383 },	-- Runas the Shamed
			}),
			q(37957, {	-- Runas the Shamed
				["sourceQuests"] = { 37858 },	-- Stellagosa
				["coord"] = { 46.6, 15.7, AZSUNA },
				["provider"] = { "n", 90065 },	-- Stellagosa
				["g"] = {
					i(132971),	-- Nightfallen's Desperation
					i(132970),	-- Runas' Nearly Depleted Ley Crystal
					i(132969),	-- Talisman of the Lost Blue Flight
					i(132975),	-- Nightfallen Mantle
					i(132974),	-- Mana-Stalker Shoulderpads
					i(132973),	-- Whelp Protector's Mantle
					i(132972),	-- Azure Champion's Pauldrons
				},
			}),
			q(37530, {	-- Save Yourself
				["sourceQuests"] = { 37469 },	-- The Tidestone: Shattered
				["coord"] = { 57.8, 43.3, AZSUNA },
				["provider"] = { "n", 89009 },	-- Prince Farondis
				["g"] = {
					i(121420),	-- Leywalker Treads
					i(121422),	-- Ruin-Stalker Boots
					i(121421),	-- Seaspray Sabatons
					i(121419),	-- Nar'thalas Warboots
					i(132946),	-- Leywalker Pants
					i(132945),	-- Ruin-Stalker Pants
					i(132944),	-- Seaspray Pants
					i(132942),	-- Nar'thalas Greaves
				},
			}),
			q(37450, {	-- Saving Stellagosa
				["sourceQuests"] = {
					36920,	-- From Within (Non-DH Version)
					40815,	-- From Within (DH - Altruis)
					44140,	-- From Within (DH - Kayn)
				},
				["coord"] = { 41.2, 50.5, AZSUNA },
				["provider"] = { "n", 90474 },	-- Kor'vas Bloodthorn
				["g"] = {
					i(132961),	-- Cape of Azure Fury
					i(132964),	-- Stellagosa's Breath
					i(132962),	-- The Jailer's Key
					i(132963),	-- Young Drake's Impulse
				},
			}),
			q(42220, {	-- Shipwrecked Sailors (A)
				["coord"] = { 58.9, 57.8, AZSUNA },
				["races"] = ALLIANCE_ONLY,
			}),
			q(42268, {	-- Shipwrecked Sailors (H)
				["coord"] = { 58.9, 57.8, AZSUNA },
				["races"] = HORDE_ONLY,
			}),
			q(37858, {	-- Stellagosa
				["sourceQuests"] = { 37856 },	-- The Withered
				["isBreadcrumb"] = true,
				["coord"] = { 49.1, 16.4, AZSUNA },
				["provider"] = { "n", 89978 },	-- Projection of Senegos
			}),
			q(37510, {	-- Sternfathom's Champion
				["sourceQuests"] = {
					37528,	-- Let Sleeping Giants Lie
					37542,	-- No Time for Tryouts
				},
				["coord"] = { 50.0, 48.4, AZSUNA },
				["provider"] = { "n", 88873 },	-- Okuna Longtusk
			}),
			q(37862, {	-- Still Alive
			--	may also require "You Scratch My Back..."
				["sourceQuests"] = { 37861 },	-- THe Nightborne Prince
				["coord"] = { 57.5, 13.4, AZSUNA },
				["provider"] = { "n", 107995 },	-- Stellagosa
			}),
			q(42371, {	-- Study Hall: Combat Research
				["sourceQuests"] = { 42370 },	-- Wanding 101
				["coord"] = { 30.9, 44.6, 631 },	-- Nar'thalas Academy
				["provider"] = { "n", 107334 },	-- Sythorne
			}),
			q(37659, {	-- The Captain's Foot Locker
				["sourceQuests"] = { 37654 },	-- Maritime Law
				["coord"] = { 64.2, 56.0, AZSUNA },
				["provider"] = { "n", 106881 },	-- Looper Allen
			}),
			q(37859, {	-- The Consumed
				["sourceQuests"] = { 37855 },	-- The Last of the Last
				["coord"] = { 49.3, 15.6, AZSUNA },
				["provider"] = { "n", 90423 },	-- Mana-Drained Whelpling
			}),
			q(37853, {	-- The Death of the Eldest
				["sourceQuests"] = { 38443 },	-- Journey to the Repose
				["coord"] = { 47.9, 27.2, AZSUNA },
				["provider"] = { "n", 93354 },	-- Archmage Khadgar
			}),
			q(37518, {	-- The Haunted Halls
				["sourceQuests"] = {
					37736,	-- Dressing With Class
					37678,	-- Hit the Books
				},
				["coord"] = { 53.4, 48.9, 631 },	-- Nar'thalas Academy
				["provider"] = { "n", 89660 },	-- Thyrillion
			}),
			q(37730, {	-- The Headmistress' Keys
				["sourceQuests"] = { 37729 },	-- Pop Quiz: Advanced Rune Drawing
				["coord"] = { 29.5, 42.6, 631 },	-- Nar'thalas Academy
				["provider"] = { "n", 89661 },	-- Instructor Nidriel
				["g"] = {
					i(121484),	-- Psychotic Scholar's Chain
					i(132910),	-- Leywalker Bracers
					i(132909),	-- Ruin-Stalker Bindings
					i(132908),	-- Seaspray Bracers
					i(132907),	-- Nar'thalas Bracers
				},
			}),
			q(37470, {	-- The Head of the Snake
				["sourceQuests"] = { 37530 },	-- Save Yourself
				["coord"] = { 57.8, 43.4, AZSUNA },
				["provider"] = { "n", 89009 },	-- Prince Farondis
				["g"] = {
					i(133028),	--	Gale of Azshara
					i(133026),	--	Cursed Dissection Blade
					i(133025),	--	Enchanted El'dranil Frond
					i(133024),	--	Oracle's Sharpening Stone
					i(133023),	--	Depths Shard Ice Crystal
					i(133022),	--	Eternal Mage Flame
					i(133020),	--	Blood of the Snake
					i(133019),	--	Jewel of Nar'thalas
					i(133061),	--	Heron's Grace
					i(133059),	--	Corrupted Farondis House Insignia
					i(133058),	--	Life-Giving Pearl
					i(133057),	--	Etched Talisman of Nar'thalas
					i(133056),	--	Azshara's Tempest
					i(133055),	--	Azshara's Ire
					i(133053),	--	Resilient Skrog Blood
					i(133052),	--	Instructor's Crystal Head
				},
			}),
			q(37959, {	-- The Hunger Returns
				["sourceQuests"] = { 37857 },	-- Runas Knows the Way
				["coord"] = { 53.7, 16.7, AZSUNA },
				["provider"] = { "n", 90383 },	-- Runas the Shamed
				["g"] = {
					i(138876),	-- Runas' Crystal Grinder (TOY!)
				},
			}),
			q(42271, {	-- Their Dying Breaths
				["sourceQuests"] = { 37991 },	-- Agapanthus
				["coord"] = { 48.8, 26.4, AZSUNA },
				["provider"] = { "n", 90543 },	-- Agapanthus
				["g"] = {
					i(121481),	-- Tranquil Azurewing Band
					i(121425),	-- Leywalker Gloves
					i(121423),	-- Ruin-Stalker Gloves
					i(121426),	-- Seaspray Gauntlets
					i(121424),	-- Nar'thalas Gauntlets
				},
			}),
			q(37855, {	-- The Last of the Last
				["sourceQuests"] = { 42271 },	-- Their Dying Breaths
				["coord"] = { 48.0, 26.9, AZSUNA },
				["provider"] = { "n", 89975 },	-- Senegos
			}),
			q(37727, {	-- The Magister of Mixology
				["sourceQuests"] = { 37256 },	-- They Came From the Sea
				["coord"] = { 47.0, 41.3, AZSUNA },
				["provider"] = { "n", 89341 },	-- Magister Garuhod
				["g"] = {
					i(133814),	-- Recipe: Faronaar Fizz [Rank 1] (RECIPE!)
				},
			}),
			q(37861, {	-- The Nightborne Prince
				["sourceQuests"] = {
					37960,	-- Leyline Abuse
					37959,	-- The Hunger Returns
				},
				["coord"] = { 53.5, 16.3, AZSUNA },
				["provider"] = { "n", 89978 },	-- Projection of Senegos
				["g"] = {
					i(121444),	-- Leywalker Wristwraps
					i(121447),	-- Ruin-Stalker Wristwraps
					i(121446),	-- Seaspray Wristwraps
					i(121445),	-- Nar'thalas Vambraces
					i(132929),	-- Leywalker Halo
					i(132928),	-- Ruin-Stalker Headgear
					i(132927),	-- Seaspray Coif
					i(132926),	-- Nar'thalas Helmet
				},
			}),
			q(37566, {	-- The Prince is Going Down
				["sourceQuests"] = { 37565 },	-- The Right Weapons for the Job
				["coord"] = { 53.4, 63.0, AZSUNA },
				["provider"] = { "n", 89051 },	-- Okuna Longtusk
				["g"] = {
					i(121441),	-- Leywalker Waistwrap
					i(121443),	-- Ruin-Stalker Belt
					i(121442),	-- Seaspray Belt
					i(121440),	-- Nar'thalas Girdle
					i(132936),	-- Buccaneer's Lucky Chain
				},
			}),
			q(37565, {	-- The Right Weapon for the Job
				["sourceQuests"] = { 37538 },	-- Round 1, Fight!
				["provider"] = { "o", 239120 },	-- Okuna Longtusk's Pack
				["coord"] = { 43.8, 24.6, 632 },	-- Oceanus Cove
			}),
			q(37660, {	-- The Scythe of Souls
				["sourceQuests"] = {
					37658,	-- Reignite the Wards
					37653,	-- Demon Souls
				},
				["coord"] = { 43.2, 43.1, AZSUNA },
				["provider"] = { "n", 89398 },	-- Allari the Souleateer
				["g"] = {
					i(129172),	-- Band of Demonic Guile
					i(132951),	-- Leywalker Shoes
					i(132949),	-- Ruin-Stalker Footpads
					i(132948),	-- Seaspray Chain Boots
					i(132947),	-- Nar'thalas Sabatons
				},
			}),
			q(37469, {	-- The Tidestone: Shattered
				["sourceQuests"] = { 37730 },	-- The Headmistress' Keys
				["coord"] = { 53.4, 48.6, 631 },	-- Nar'thalas Academy
				["provider"] = { "n", 89660 },	-- Thyrillion
			}),
			q(37467, {	-- The Walk of Shame
				["sourceQuests"] = { 37486 },	-- Nar'thalas Still Suffers
				["coord"] = { 51.7, 44.2, AZSUNA },
				["provider"] = { "n", 88867 },	-- Prince Farondis
			}),
			q(37856, {	-- The Withered
				["sourceQuests"] = { 37855 },	-- The Last of the Last
				["coord"] = { 48.6, 16.4, AZSUNA },
				["provider"] = { "n", 90916 },	-- Agapanthus
			}),
			q(37256, {	-- They Came From the Sea
				["sourceQuests"] = { 37690 },	-- Those Who Remember
				["coord"] = { 48.4, 34.4, AZSUNA },
				["provider"] = { "n", 89023 },	-- Nightwatcher Idri
				["g"] = {
					i(121428),	-- Leywalker Aurora
					i(121430),	-- Ruin-Stalker Helm
					i(121429),	-- Seaspray Helm
					i(121427),	-- Nar'thalas Helm
					i(132906),	-- Leywalker Cord
					i(132905),	-- Ruin-Stalker Cord
					i(132904),	-- Seaspray Cinch
					i(132903),	-- Nar'thalas Belt
				},
			}),
			q(42369, {	-- They're Doing it Wrong
				["sourceQuests"] = { 42375 },	-- Eye See You
				["coord"] = { 63.8, 28.8, AZSUNA },
				["provider"] = { "n", 107244 },	-- Tehd Shoemaker
			}),
			q(38237, {	-- This IS In My Contract.
				["sourceQuests"] = { 38232 },	-- Minion!  Kill Them!
				["provider"] = { "n", 91165 },	-- Daglop
				["coord"] = { 62.8, 51.4, AZSUNA },
				["g"] = {
					i(138878),	-- Copy of Daglop's Contract (TOY!)
				},
			}),
			q(37690, {	-- Those Who Remember
				["sourceQuests"] = { 42271 },	-- Their Dying Breaths
				["coord"] = { 48.0, 26.9, AZSUNA },
				["provider"] = { "n", 89975 },	-- Senegos
			}),
			q(43942, {	-- Timeworn Artifact
				["lvl"] = 98,
				["provider"] = { "i", 140249 }	-- Timeworn Artifact
			}),
			q(37497, {	-- Trailing the Tidestone
				["sourceQuests"] = { 37257 },	-- Our Very Bones
				["coord"] = { 47.0, 41.2, AZSUNA },
				["provider"] = { "n", 88115 },	-- Prince Farondis
			}),
			q(45126, {	-- Unlikely Seduction
				["sourceQuests"] = { 45917 },	-- Following the Scent
				["classes"] = {
					DRUID,			-- Feral
					DEATHKNIGHT,	-- Unholy
					MAGE,			-- Fire
					ROGUE,			-- Outlaw
					SHAMAN,			-- Elemental
					WARRIOR,		-- Fury
				},
				["provider"] = { "n", 116189 },	-- Levia Laurence
				["coord"] = { 25.7, 57.7, AZSUNA },
				["lvl"] = 110,
			}),
			q(42370, {	-- Wanding 101
				["sourceQuests"] = { 37518 },	-- The Haunted Halls
				["coord"] = { 29.7, 42.5, 631 },	-- Nar'thalas Academy
				["provider"] = { "n", 89661 },	-- Instructor Nidriel
			}),
			q(42693, {	-- You Never Know Until You Scry
				["coord"] = { 53.3, 45.4, AZSUNA },
				["provider"] = { "n", 108328 },	-- Olothil Starlance
			}),
			q(37860, {	-- You Scratch My Back...
				["sourceQuests"] = {
					37960,	-- Leyline Abuse
					37959,	-- The Hunger Returns
				},
				["coord"] = { 53.7, 16.7, AZSUNA },
				["provider"] = { "n", 90383 },	-- Runas the Shamed
			}),
			n(BONUS_OBJECTIVES, sharedData({
				-- #if BEFORE DF
				["lockCriteria"] = { 1, "lvl", 45 },
				-- #else
				["lockCriteria"] = { 1, "lvl", 60 },
				-- #endif
				["sharedDescription"] = "This can be completed in party-sync with a character who is in Chromie Time for Legion.",
			},{
				-- TODO: Check SQ, also probably can't do after a certain level
				q(37965),	-- A Tainted Vintage
				q(42020),	-- Bonus Objective: Hatecoil Warcamp
				q(37495, {	-- Plunder the Cove
					["coord"] = { 49.2, 58.8, AZSUNA },
				}),
				q(36811, {	-- Retake Faronaar
					["coord"] = { 39.4, 50.2, AZSUNA },
				}),
				q(37466, {	-- The Broken Academy
					["coord"] = { 55.6, 43.2, AZSUNA },
				}),
				q(37963, {	-- Those Beyond Redemption
					["timeline"] = { REMOVED_8_0_1 },	-- Wowhead / Github -- Replaced with WorldQuest?
					["coord"] = { 57.6, 15.6, AZSUNA },
				}),
				q(37779, {	-- Tip the Scales
					["coord"] = { 62.6, 42.6, AZSUNA },
				}),
			})),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			n(FACTIONS, {
				n(EMISSARY_QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
					q(46794),	-- Paragon of the Court
					q(46800),	-- Paragon of the Wardens
				})),
			}),
			n(QUESTS, {
				q(37526),	-- Farondis Murder Flag - triggers between turning in "The Tidestone: Shattered" (questID 37469) and starting "Save Yourself" (questID 37530)
				q(40584),	-- FLAG - Witnessed Drake Lift Crystal - triggers shortly after arriving in Azurewing Repose when turning in "Journey to the Repose" (questID 38443)
				q(43815),	-- Karthax
				q(45496),	-- The Whisperer
				q(42718),	-- Frost DK - Azsuna Event
				q(42569),	-- Shaman Shrine - Azsuna Earth 01
				q(42570),	-- Shaman Shrine - Azsuna Earth 02
				q(42595),	-- Shaman Shrine - Azsuna Water 01 - DGK
				q(42577),	-- Shaman Shrine - Azsuna Wind 01
				q(45515),	-- Valakar the Thirsty
			}),
		}),
	}),
})));