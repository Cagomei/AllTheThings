-----------------------------------
--     NOT SORTED YET MODULE     --
-----------------------------------
-- Everything in this file hasn't been sorted yet.
root(ROOTS.Unsorted, {
	expansion(EXPANSION.TWW, {
		expansion(EXPANSION.TWW, patch(1,7), bubbleDownSelf({ ["timeline"] = { ADDED_11_1_7 } }, {
			filter(QUEST_ITEMS, {
				i(228964),	-- Scarlet Signet Ring
				i(231766),	-- Hammerfall Horn
				i(231878),	-- Articles of Proof
				i(231879),	-- Defias Bandana
				i(231880),	-- Orange Bandana
				i(231881),	-- Syndicate Emblem
				i(231883),	-- Scarlet Crusade Tabard
				i(231884),	-- Stromgarde Tabard
			}),
			n(TIMEWALKING_HEADER, {
				i(238740),	-- Distilled Knowledge of Timeways
				i(238790),	-- Remnant of Azeroth
				i(238791),	-- Remnant of Azeroth
				-- New BFA Gear (Might be in dungeons? No azerite versions)
				i(239023),	-- Amice of the Returned
				i(239024),	-- Soulfuel Headdress
				i(239025),	-- Raiment of the Blighted Tribe
				i(239026),	-- Gorak Tul's Mantle
				i(239027),	-- Deathslaver's Hauberk
				i(239028),	-- Soulscarred Headgear
				i(239029),	-- Breastplate of the Vengeful
				i(239030),	-- Pauldrons of the Horned Horror
				i(239031),	-- Brood Cleanser's Amice
				i(239032),	-- Robes of the Reborn Serpent
				i(239033),	-- Hood of the Slithering Loa
				i(239034),	-- Corrupted Hexxer's Vestments
				i(239035),	-- Sethraliss' Fanged Helm
				i(239036),	-- Desert Guardian's Breastplate
				i(239037),	-- C'thraxxi Binders Pauldrons
				i(239038),	-- Mantle of Void-Touched Waters
				i(239039),	-- Stormlurker's Cowl
				i(239040),	-- Cowl of Fluid Machinations
				i(239041),	-- Tentacle-Laced Spaulders
				i(239042),	-- Hauberk of Sunken Despair
				i(239043),	-- Chestguard of the Deep Denizen
				i(239044),	-- Helm of Abyssal Malevolence
				i(239045),	-- Mantle of Ceremonial Ascension
				i(239046),	-- Loa-Blessed Chestguard
				i(239047),	-- Headdress of the First Empire
				i(239048),	-- Vest of Reverent Adoration
				i(239049),	-- Spaulders of Prime Emperor
				i(239050),	-- Helm of the Raptor King
				i(239051),	-- Pauldrons of the Great Unifier
				i(239052),	-- Sea-Brawler's Greathelm
				i(239053),	-- Smartly Plumed Cap
				i(239054),	-- Sweete's Jeweled Headgear
				i(239055),	-- Irontide Captain's Hat
				i(239056),	-- Ruffled Poet Blouse
				i(239057),	-- Gold-Tasseled Epaulets
				i(239058),	-- Gaping Maw Shoulderguard
				i(239059),	-- Lockjaw Shoulderplate
				i(239068),	-- Spymaster's Wrap
				i(239069),	-- Soulspun Casque
				i(239070),	-- Mantle of Fastidious Machinations
				i(239071),	-- Secret Spinner's Miter
				i(239072),	-- Loa Betrayer's Vestments
				i(239073),	-- Coif of the Court Spider
			}),
			n(QUESTS, {
				-- Arathor Questline
				i(239136),	-- Stromgarde Tabard
			}),
			n(PROFESSIONS, {
				-- Ins
				i(243051),	-- Glyph of the Strix
				i(243052),	-- Technique: Glyph of the Strix
			}),
			filter(MISC, {
				-- Delves
				i(242743),	-- Durable Information Securing Container [Trinket]
				i(244899),	-- Miniature Titan Disc: Critical Chain
				i(244901),	-- Miniature Titan Disc: Statically Charged
				i(244902),	-- Miniature Titan Disc: Electric Current
				i(244903),	-- Miniature Titan Disc: Overcharged Touch
				i(244905),	-- Miniature Titan Disc: Charged Crystal
				-- Lorewalking
				i(242386),	-- Lorewalker's Crate of Memorabilia
				-- Misc
				i(244848),	-- Severed Threads Commendation
				i(245942),	-- Sea-Blessed Shrine
			}),
			filter(COSMETIC, {
				i(242324),	-- Squall Braced Galoshes
				i(242325),	-- Girded Mist Galoshes
				i(242326),	-- Rainy Day Galoshes
				i(242327),	-- Waterproof Galoshes
				i(242328),	-- Squall Braced Belt
				i(242329),	-- Girded Mist Belt
				i(242330),	-- Rainy Day Belt
				i(242331),	-- Waterproof Belt
				i(242332),	-- Squall Braced Pants
				i(242333),	-- Girded Mist Pants
				i(242334),	-- Rainy Day Pants
				i(242335),	-- Waterproof Pants
				i(242336),	-- Squall Braced Coat
				i(242337),	-- Girded Mist Coat
				i(242338),	-- Rainy Day Coat
				i(242339),	-- Waterproof Coat
				i(242340),	-- Squall Braced Hood
				i(242341),	-- Girded Mist Hood
				i(242342),	-- Rainy Day Hood
				i(242343),	-- Waterproof Hood
				i(242344),	-- Ensemble: Squall Braced Attire
				i(242345),	-- Ensemble: Girded Mist Attire
				i(242346),	-- Ensemble: Rainy Day Attire
				i(242347),	-- Ensemble: Waterproof Attire
				i(242348),	-- Chilling Forsaken Mace
				i(242349),	-- Grotesque Forsaken Mace
				i(242350),	-- Putrid Forsaken Mace
				i(242351),	-- Sickly Forsaken Mace
				i(242352),	-- Chilling Forsaken Warglaives
				i(242353),	-- Grotesque Forsaken Warglaives
				i(242354),	-- Putrid Forsaken Warglaives
				i(242355),	-- Sickly Forsaken Warglaives
				i(242357),	-- Grandmaster's Fire Grip Stave
				i(242358),	-- Grandmaster's Blue Stave
				i(242359),	-- Grandmaster's Royal Stave
				i(242360),	-- Grandmaster's White Stave
				i(242372),	-- Grandmaster's Fire Marked Bulwark
				i(242373),	-- Grandmaster's Blue Bulwark
				i(242374),	-- Grandmaster's Royal Bulwark
				i(242375),	-- Grandmaster's White Bulwark
				i(242376),	-- Chilling Forsaken Longbow
				i(242377),	-- Grotesque Forsaken Longbow
				i(242378),	-- Putrid Forsaken Longbow
				i(242379),	-- Sickly Forsaken Longbow
				i(242381),	-- Chilling Forsaken Quiver
				i(242382),	-- Grotesque Forsaken Quiver
				i(242383),	-- Putrid Forsaken Quiver
				i(242384),	-- Sickly Forsaken Quiver
				i(242385),	-- Chilling Forsaken Wand
				i(242387),	-- Grotesque Forsaken Wand
				i(242388),	-- Putrid Forsaken Wand
				i(242389),	-- Sickly Forsaken Wand
				i(242407),	-- Midnight Sweatpants
				i(242408),	-- Azure Sweatshirt
				i(242409),	-- Sepia Sweatshirt
				i(242410),	-- Grassy Sweatshirt
				i(242411),	-- Cloudy Sweatshirt
				i(242412),	-- Deep Sweatshirt
				i(242413),	-- Camo Sweatshirt
				i(242414),	-- Brick Sweatshirt
				i(242415),	-- Lively Sweatshirt
				i(242416),	-- Faded Sweatshirt
				i(242417),	-- Carrot Sweatshirt
				i(242418),	-- Rosy Sweatshirt
				i(242419),	-- Plum Sweatshirt
				i(242420),	-- Crimson Sweatshirt
				i(242421),	-- Violet Sweatshirt
				i(242422),	-- Aquatic Sweatshirt
				i(242423),	-- Snowy Sweatshirt
				i(242424),	-- Sunny Sweatshirt
				i(242437),	-- Azure Sweatpants
				i(242438),	-- Sepia Sweatpants
				i(242439),	-- Grassy Sweatpants
				i(242440),	-- Cloudy Sweatpants
				i(242441),	-- Deep Sweatpants
				i(242442),	-- Camo Sweatpants
				i(242443),	-- Brick Sweatpants
				i(242444),	-- Lively Sweatpants
				i(242445),	-- Faded Sweatpants
				i(242446),	-- Carrot Sweatpants
				i(242447),	-- Rosy Sweatpants
				i(242448),	-- Plum Sweatpants
				i(242449),	-- Crimson Sweatpants
				i(242450),	-- Violet Sweatpants
				i(242451),	-- Aquatic Sweatpants
				i(242452),	-- Snowy Sweatpants
				i(242453),	-- Sunny Sweatpants
				i(242454),	-- Midnight Sweatshirt
				i(242455),	-- Ensemble: Midnight Sweatsuit
				i(242456),	-- Ensemble: Azure Sweatsuit
				i(242457),	-- Ensemble: Sepia Sweatsuit
				i(242458),	-- Ensemble: Grassy Sweatsuit
				i(242459),	-- Ensemble: Cloudy Sweatsuit
				i(242460),	-- Ensemble: Deep Sweatsuit
				i(242461),	-- Ensemble: Camo Sweatsuit
				i(242462),	-- Ensemble: Brick Sweatsuit
				i(242466),	-- Ensemble: Lively Sweatsuit
				i(242467),	-- Ensemble: Faded Sweatsuit
				i(242469),	-- Ensemble: Carrot Sweatsuit
				i(242471),	-- Ensemble: Rosy Sweatsuit
				i(242474),	-- Ensemble: Plum Sweatsuit
				i(242478),	-- Ensemble: Crimson Sweatsuit
				i(242480),	-- Ensemble: Violet Sweatsuit
				i(242485),	-- Ensemble: Aquatic Sweatsuit
				i(242489),	-- Ensemble: Snowy Sweatsuit
				i(242492),	-- Ensemble: Sunny Sweatsuit
				i(242521),	-- Chiling Forsaken Cauldron
				i(242522),	-- Grotesque Forsaken Cauldron
				i(242523),	-- Putrid Forsaken Cauldron
				i(242524),	-- Sickening Forsaken Cauldron
				i(242525),	-- Grandmaster's Fire Grip Axe
				i(242526),	-- Grandmaster's Blue Axe
				i(242527),	-- Grandmaster's Royal Axe
				i(242528),	-- Grandmaster's White Axe
				i(242539),	-- Grandmaster's Fire Grip Mace
				i(242540),	-- Grandmaster's Blue Mace
				i(242541),	-- Grandmaster's Royal Mace
				i(242542),	-- Grandmaster's White Mace
				i(242627),	-- Chilling Forsaken Blade
				i(242628),	-- Grotesque Forsaken Blade
				i(242629),	-- Putrid Forsaken Blade
				i(242630),	-- Sickly Forsaken Blade
				i(242631),	-- Chilling Forsaken Great Blade
				i(242632),	-- Grotesque Forsaken Great Blade
				i(242633),	-- Putrid Forsaken Great Blade
				i(242634),	-- Sickly Forsaken Great Blade
				i(242740),	-- Grand Helm of the Fire Festival
				i(242741),	-- Grand Mantle of the Fire Festival
				i(242742),	-- Grand Belt of the Fire Festival

				-- Feels like Dastarly Dou??? Cosmetics or Trading Post
				i(243250),	-- Grandmaster's Fire Tunic
				i(243251),	-- Grandmaster's Fire Boots
				i(243252),	-- Grandmaster's Fire Gloves
				i(243253),	-- Grandmaster's Fire Helm
				i(243254),	-- Grandmaster's Fire Pants
				i(243255),	-- Grandmaster's Fire Mantle
				i(243256),	-- Grandmaster's Fire Belt
				i(243257),	-- Grandmaster's Fire Cloak
				i(243258),	-- Ensemble: Grandmaster's Fire Attire
				i(243259),	-- Grandmaster's Deep Cloak
				i(243260),	-- Grandmaster's Deep Belt
				i(243261),	-- Grandmaster's Deep Mantle
				i(243262),	-- Grandmaster's Deep Pants
				i(243263),	-- Grandmaster's Deep Helm
				i(243264),	-- Grandmaster's Deep Gloves
				i(243265),	-- Grandmaster's Deep Boots
				i(243267),	-- Grandmaster's Deep Tunic
				i(243268),	-- Ensemble: Grandmaster's Deep Attire
				i(243269),	-- Grandmaster's Royal Tunic
				i(243270),	-- Grandmaster's Royal Boots
				i(243271),	-- Grandmaster's Royal Gloves
				i(243272),	-- Grandmaster's Royal Helm
				i(243273),	-- Grandmaster's Royal Pants
				i(243274),	-- Grandmaster's Royal Mantle
				i(243275),	-- Grandmaster's Royal Belt
				i(243276),	-- Grandmaster's Royal Cloak
				i(243277),	-- Ensemble: Grandmaster's Royal Attire
				i(243278),	-- Grandmaster's Smoke Cloak
				i(243279),	-- Grandmaster's Smoke Belt
				i(243280),	-- Grandmaster's Smoke Mantle
				i(243281),	-- Grandmaster's Smoke Pants
				i(243282),	-- Grandmaster's Smoke Helm
				i(243283),	-- Grandmaster's Smoke Gloves
				i(243284),	-- Grandmaster's Smoke Boots
				i(243285),	-- Grandmaster's Smoke Tunic
				i(243286),	-- Ensemble: Grandmaster's Smoke Attire

				-- Cosmetic Trading Post?? or Greedy Emissary?
				i(244180),	-- Banshee's Chilling Veil
				i(244181),	-- Banshee's Grotesque Veil
				i(244182),	-- Banshee's Putrid Veil
				i(244183),	-- Banshee's Sickly Veil
				i(244184),	-- Chilling Epaulets of the Banshee
				i(244185),	-- Grotesque Epaulets of the Banshee
				i(244186),	-- Putrid Epaulets of the Banshee
				i(244187),	-- Sickly Epaulets of the Banshee
				i(244188),	-- Chilling Leggings of the Banshee
				i(244189),	-- Grotesque Leggings of the Banshee
				i(244190),	-- Putrid Leggings of the Banshee
				i(244191),	-- Sickly Leggings of the Banshee
				i(244198),	-- Banshee's Chilling Grip
				i(244199),	-- Banshee's Grotesque Grip
				i(244200),	-- Banshee's Putrid Grip
				i(244201),	-- Banshee's Sickly Grip
				i(244202),	-- Banshee's Chilling Vestment
				i(244203),	-- Banshee's Grotesque Vestment
				i(244204),	-- Banshee's Putrid Vestment
				i(244205),	-- Banshee's Sickly Vestment
				i(244206),	-- Banshee's Chilling Chestplate
				i(244207),	-- Banshee's Grotesque Chestplate
				i(244208),	-- Banshee's Putrid Chestplate
				i(244209),	-- Banshee's Sickly Chestplate
				i(244210),	-- Chilling Shroud of the Banshee
				i(244211),	-- Grotesque Shroud of the Banshee
				i(244212),	-- Putrid Shroud of the Banshee
				i(244213),	-- Sickly Shroud of the Banshee
				i(244215),	-- Chilling Banshee Boots
				i(244216),	-- Grotesque Banshee Boots
				i(244217),	-- Putrid Banshee Boots
				i(244218),	-- Sickly Banshee Boots
				i(244219),	-- Chilling Banshee Cinch
				i(244220),	-- Grotesque Banshee Cinch
				i(244221),	-- Putrid Banshee Cinch
				i(244222),	-- Sickly Banshee Cinch
				i(244223),	-- Ensemble: Banshee's Chilling Collection
				i(244225),	-- Ensemble: Banshee's Grotesque Collection
				i(244226),	-- Ensemble: Banshee's Putrid Collection
				i(244227),	-- Ensemble: Banshee's Sickly Collection
				i(244356),	-- Crown of the Frost Lord
				i(244422),	-- Glazfuris, Scythe of the Deep Chill
				i(244423),	-- Rethfuras, Scorched Scythe of Cinders
				i(244540),	-- Charred Flamewake Sprout
				i(244541),	-- Zin-Azshari Court Scepter
				i(244542),	-- Chronosmith's Temporal Safeguard
				i(244543),	-- Scimitar of the Crocolisk God
				i(244544),	-- Forest Watcher's Rune-Axe
				i(244546),	-- Forgotten Bow of the Banshee
				i(244548),	-- Shattered Highvale Staff
				i(244549),	-- Light's Dawn Cryptblade
				i(244550),	-- Sunwalker's Ashen Warmaul
				i(244551),	-- Time-Lost Worldbreaker
				i(244552),	-- Prized Gladiator's Torchblade [Pvp?!?]
				i(244646),	-- Seared Root of Regrowth
				i(244647),	-- Crook of the White Flame
				i(244648),	-- Scipture of the Scarlet High Priest
				i(244649),	-- Shadowforge Senator's Ledger
				i(244650),	-- Fort Triumph Longbow
				i(244651),	-- Forest Ranger's Buckler
				i(244652),	-- Prayer Beacon of the Goddess
				i(244680),	-- Morchie's Desynchronized Chime
				i(244681),	-- Pyrewood Silver Blade
				i(244721),	-- Crystalsmith's Energy Focus
				i(244722),	-- Bloodied Ashran Battletome
				i(244723),	-- Blade of the Pale Flame
				i(244724),	-- Vindicator's Taladite Warmaul
				i(244725),	-- Frostwall Defender's Axe
				i(244726),	-- Time-Lost Sight of the Shadowmoon
				i(244727),	-- Warsong Raider's Longbow
				i(244728),	-- Lunarfall Rifle
				i(244729),	-- Wor'gol Howling Shield
				i(244730),	-- Razorwall of the Foundry
				i(244731),	-- Rangari Climbing Hooks
				i(244732),	-- Lunarfall Scout's Shortsword
				i(244733),	-- Aruuna Miner's Pick
				i(244734),	-- Anchorite's Crystal Torch
				i(244776),	-- Truesteel Gavel
				i(244784),	-- Beastmaster's Lost Hatchet
				i(244785),	-- Time-Lost Wolfbite
				i(244786),	-- Grom'gar Hunting Spear
				i(244787),	-- Elodor Attuning Beacon
				i(244823),	-- Blackrook Dragonblade
				i(244824),	-- Time-Lost Dreadbow of the Banshee
				i(244827),	-- Valarjar Sparring Buckler
				i(244828),	-- Nightforged Spellblade
				i(244830),	-- Krokuun Tunneler's Axe
				i(244833),	-- Stonedark Chieftain's Bartered Tool
				i(244834),	-- Hippogryph Lancer's Magespear
				i(244836),	-- Cane of the Runic Wanderer
				i(244837),	-- Rookforged Dragonblade
				i(245745),	-- Classic Plum Tabard
			}),
			n(CLASSES, {
				-- T2 Greedy Emissary Alternative Chest/Offset Pieces?
				i(244443),	-- Emberwind Blouse
				i(244444),	-- Staghelm Robe
				i(244446),	-- Blouse of Searing Radiance
				i(244448),	-- Hellfire Blouse
			}),
			filter(MOUNTS, {
				i(243590),	-- Grandmaster's Deep Board
				i(243572),	-- Grandmaster's Prophetic Board
				i(243591),	-- Grandmaster's Royal Board
				i(243592),	-- Grandmaster's Smokey Board
				i(243593),	-- Banshee's Chilling Charger
				i(243597),	-- Banshee's Sickening Charger
				i(243594),	-- Forsaken' Grotesque Charger
				i(245936),	-- Unarmored Deathtusk Felboar
				i(243596),	-- Wailing Banshee's Charger
			}),
		})),
		expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
			n(SPECIAL, {	-- Horrific Revisited
				i(232352, { ["ItemAppearanceModifierID"] = 150 }),	-- Ashjra'kamas, Shroud of Resolve
				i(235274),	-- Echo of N'zoth
				i(235284),	-- Echo of N'zoth
				i(235285),	-- Echo of N'zoth
				-- Trinkets?
				i(236914),	-- Unbound Vision Journal
				i(236915),	-- Book of Dark Visions
				i(236916),	-- Void-Whittled Spike
				i(236917),	-- Dark Dreamer's Talisman
				i(236918),	-- Pulsating Void Disk
				i(236919),	-- Void Spike
			}),
			n(SPECIAL, {	-- Duos
				-- Hellfire Ramprats (didnt make it)
				i(238934),	-- Boots of the Darkwalker
				i(238936),	-- Scale Leggings of the Skirmisher
				i(238937),	-- Light-Touched Breastplate

				-- Shadowfang Keeep
				-- Unsure
				i(238980),	-- Pendant of the Keep
				-- Didnt make it
				i(238981),	-- Gloves of the Uplifted Cup
				i(238982),	-- Baron Silverlaine's Greaves
				i(238983),	-- Boots of Lingering Sorrow

				-- The Blood Furnace
				i(239009),	-- Signet of Repose
			}),
			n(SPECIAL, {	-- Mysterious???
				-- Nothing load atm
				i(235631),	-- [NOT USED] Mysterious Large Satchel of Goodies
				i(235798),	-- Diluted Potion of Celerity
				i(235804),	-- Concentrated Potion of Celerity
				i(235815),	-- Diluted Potion of Swiftstrike
				i(235817),	-- Concentrated Potion of Swiftstrike
				i(235837),	-- Concentrated Potion of Tenacity
				i(235839),	-- Diluted Potion of Tenacity
				i(235842),	-- Diluted Potion of Revivification
				i(235844),	-- Concentrated Potion of Revivification
				i(236939),	-- [DNT] TEST
				i(236940),	-- [NOT USED] Mysterious Outfitters Satchel
				i(236941),	-- [NOT USED] Mysterious Accessories Satchel
				i(236942),	-- [NOT USED] Mysterious Outfitters Satchel
				i(236943),	-- [NOT USED] Mysterious Accessories Satchel
				i(236945),	-- [NOT USED] Mysterious Outfitters Satchel
				i(236946),	-- [NOT USED] Mysterious Accessories Satchel
				i(236958),	-- [NOT USED] Empty Mysterious Potion
			}),
			filter(COSMETIC, {
				i(235986),	-- Evil King's Half Shell
				i(235987),	-- Adorned Half Shell
				i(236403),	-- Deathwarder's Grove Stave
				i(236404),	-- Deathwarder's Twilight Stave
				i(236628),	-- Deathwarder's Grove Blade
				i(236629),	-- Deathwarder's Twilight Blade
				i(237177),	-- Deathwarder's Grove Fist
				i(237178),	-- Deathwarder's Twilight Fist
				i(237181),	-- Deathwarder's Grove Fetish
				i(237182),	-- Deathwarder's Twilight Fetish
				i(237191),	-- Woodland Vestments of the Grey Wolf
				i(237193),	-- Woodland Vestments of the Gilneas Fox
				i(237195),	-- Woodland Boots of the Grey Wolf
				i(237198),	-- Woodland Boots of the Gilneas Fox
				i(237201),	-- Woodland Gloves of the Grey Wolf
				i(237203),	-- Woodland Gloves of the Gilneas Fox
				i(237206),	-- Woodland Cowl of the Grey Wolf
				i(237208),	-- Woodland Cowl of the Gilneas Fox
				i(237210),	-- Woodland Pants of the Grey Wolf
				i(237212),	-- Woodland Pants of the Gilneas Fox
				i(237214),	-- Woodland Mantle of the Grey Wolf
				i(237216),	-- Woodland Mantle of the Gilneas Fox
				i(237218),	-- Woodland Belt of the Grey Wolf
				i(237220),	-- Woodland Belt of the Gilneas Fox
				i(237223),	-- Ensemble: Woodland Attire of the Grey Wolf
				i(237225),	-- Ensemble: Woodland Attire of the Gilneas Fox
				i(237227),	-- Woodland Cloak of the Grey Wolf
				i(237229),	-- Woodland Cloak of the Gilneas Fox
				i(237374),	-- Stormstout's Tunic
				i(237375),	-- Stormstout's Hat
				i(237376),	-- Stormstout's Belt
				i(237377),	-- Stormstout's Pants
				i(237378),	-- Stormstout's Boots
				i(237379),	-- Ensemble: Stormstout's Collection
				i(237854),	-- Voidstorm Bardiche \\ Netherstorm Flame's Bardiche
				i(237855),	-- Shadowmoon Flame's Bardiche
				i(237856),	-- Sunwell Bardiche \\ Hellfire Flame's Bardiche
				i(237857),	-- Sunwell Flame's Bardiche
				i(238397),	-- Coldflame Chopper \\ Lavaborn Azure Choper
				i(238398),	-- Lavaborn Emerald Chopper \\ Lavaborn Emerald Choper
				i(238399),	-- Lavaborn Ruby's Edge \\ Lavaborn Ruby Choper
				i(238400),	-- Lavaborn Citrine Chopper \\ Lavaborn Citrine Choper
				i(238408),	-- Coldflame Cinch \\ Lavaborn Azure Cinch
				i(238409),	-- Coldflame Mantle \\ Lavaborn Azure Mantle
				i(238410),	-- Coldflame Pants \\ Lavaborn Azure Pants
				i(238411),	-- Coldflame Helm \\ Lavaborn Azure Helm
				i(238412),	-- Coldflame Glove \\ Lavaborn Azure Glove
				i(238413),	-- Coldflame Treads \\ Lavaborn Azure Treads
				i(238414),	-- Coldflame Chestguard \\ Lavaborn Azure Chestguard
				i(238415),	-- Coldflame Bracer \\ Lavaborn Azure Bracer
				i(238416),	-- Coldflame Cloak \\ Lavaborn Azure Cloak
				i(238418),	-- Ensemble: Coldflame Battlegear \\ Ensemble: Lavaborn Azure Attire

				i(238429),	-- Lavaborn Cinch \\ Lavaborn Ruby Cinch
				i(238430),	-- Lavaborn Mantle \\ Lavaborn Ruby Mantle
				i(238431),	-- Lavaborn Pants \\ Lavaborn Ruby Pants
				i(238432),	-- Lavaborn Helm \\ Lavaborn Ruby Helm
				i(238433),	-- Lavaborn Glove \\ Lavaborn Ruby Glove
				i(238434),	-- Lavaborn Treads \\ Lavaborn Ruby Treads
				i(238435),	-- Lavaborn Chestguard \\ Lavaborn Ruby Chestguard
				i(238436),	-- Lavaborn Bracer \\ Lavaborn Ruby Bracer
				i(238437),	-- Lavaborn Cloak \\ Lavaborn Ruby Cloak
				i(238438),	-- Ensemble: Lavaborn Battleplate \\ Ensemble: Lavaborn Ruby Attire
				i(238439),	-- Lavaborn Citrine Cinch
				i(238440),	-- Lavaborn Citrine Mantle
				i(238441),	-- Lavaborn Citrine Pants
				i(238442),	-- Lavaborn Citrine Helm
				i(238443),	-- Lavaborn Citrine Glove
				i(238444),	-- Lavaborn Citrine Chestguard
				i(238445),	-- Lavaborn Citrine Bracer
				i(238446),	-- Lavaborn Citrine Cloak
				i(238447),	-- Ensemble: Lavaborn Citrine Attire
				i(238448),	-- Lavaborn Citrine Treads
				i(238620),	-- Darkfuse Pinchzapper
				i(238621),	-- Blackwater Pinchzapper
				i(238622),	-- Steamweedle Pinchzapper
				i(238623),	-- Undermine City Pinchzapper
				i(238892),	-- Coldflame's Bite \\ Lavaborn Azure Blade
				i(238893),	-- Lavaborn Emerald Blade
				i(238894),	-- Lavaborn Barb \\ Lavaborn Ruby Blade
				i(238895),	-- Lavaborn Citrine Blade
				i(238947),	-- Arcano-Stone Greathelm \\ Blue Inferno Helm
				i(238949),	-- Inferno Helm \\ Yellow Inferno Helm
				i(238950),	-- Molten Inferno Helm \\ Red Inferno Helm
				i(238951),	-- Coldflame Burner \\ Blue Flame Burner
				i(238952),	-- Green Flame Burner
				i(238953),	-- Red Flame Burner
				i(238955),	-- Yellow Flame Burner
				i(238957),	-- Deathwarder's Great Grove Blade
				i(238958),	-- Deathwarder's Great Twilight Blade
			}),
			filter(MISC, {
				i(238896),	-- Macho's Magnificent "Fish" Tacos
				i(241616),	-- The Underpin
			}),
			filter(MOUNTS, {
				i(236415),	-- Reins of the Spotted Black Riding Goat
				i(238900),	-- Summer Harvesthog
				i(238901),	-- Winter Harvesthog
				i(238902),	-- Autumn Harvesthog
				i(238941),	-- Coldflame Cormaera \\ Lavaborn Azure Chimaera
				i(238967),	-- Molten Cormaera \\ Lavaborn Ruby Chimaera
				i(238968),	-- Lavaborn Cormaera \\ Lavaborn Citrine Chimaera

				-- Mount Parts!
				i(240187),	-- Refulgent Crystal Shards
			}),
			n(WEEKLY_HOLIDAYS, {	-- Childrens Week
				i(242318),	-- Wooden Orgrimmar Shield
			}),
			i(237508),	-- Can of Amps
			i(237509),	-- Bottle of Invisibility
			i(237510),	-- Goblet
			i(237511),	-- Vial of Healing
			i(240199),	-- Podium Upgrade: Scrappiest
			i(240200),	-- Podium Upgrade: Longest Survival Run
			i(240201),	-- Podium Upgrade: Longest Time in Spotlights
			i(240202),	-- Podium Upgrade: Most Yards Traveled
			i(243245),	-- Gears Grabbed
			i(243249),	-- Khaz Algar Adventurer Pack \\ Khaz Algar Gift Pack
		})),
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
			n(ARMOR, {
				-- Darkal Check Later
				i(238243),	-- Hidden Boots
			}),
			filter(MISC, {	-- More known
				i(238207),	-- Nanny's Surge Dividend
				i(229810),	-- Vintage Kaja'Cola Can
			}),
			n(PVP, {	-- See Later...
				i(232886),	-- Ensemble: Algari Warmonger's Cloth Armor
				i(232887),	-- Ensemble: Algari Warmonger's Leather Armor
				i(232888),	-- Ensemble: Algari Warmonger's Mail Armor
				i(232889),	-- Ensemble: Algari Warmonger's Plate Armor
				i(232890),	-- Arsenal: Algari Warmonger's Weapons
				i(232664),	-- Ensemble: Forged Aspirant's Cloth Armor
				i(232665),	-- Ensemble: Forged Aspirant's Leather Armor
				i(232666),	-- Ensemble: Forged Aspirant's Mail Armor
				i(232667),	-- Ensemble: Forged Aspirant's Plate Armor
				i(232668),	-- Ensemble: Forged Gladiator's Death Knight Armor
				i(232669),	-- Ensemble: Forged Gladiator's Demon Hunter Armor
				i(232670),	-- Ensemble: Forged Gladiator's Druid Armor
				i(232671),	-- Ensemble: Forged Gladiator's Evoker Armor
				i(232672),	-- Ensemble: Forged Gladiator's Hunter Armor
				i(232673),	-- Ensemble: Forged Gladiator's Mage Armor
				i(232674),	-- Ensemble: Forged Gladiator's Monk Armor
				i(232675),	-- Ensemble: Forged Gladiator's Paladin Armor
				i(232676),	-- Ensemble: Forged Gladiator's Priest Armor
				i(232677),	-- Ensemble: Forged Gladiator's Rogue Armor
				i(232678),	-- Ensemble: Forged Gladiator's Shaman Armor
				i(232679),	-- Ensemble: Forged Gladiator's Warlock Armor
				i(232680),	-- Ensemble: Forged Gladiator's Warrior Armor
				i(232681),	-- Ensemble: Elite Forged Gladiator's Death Knight Armor
				i(232682),	-- Ensemble: Elite Forged Gladiator's Demon Hunter Armor
				i(232683),	-- Ensemble: Elite Forged Gladiator's Druid Armor
				i(232684),	-- Ensemble: Elite Forged Gladiator's Evoker Armor
				i(232685),	-- Ensemble: Elite Forged Gladiator's Hunter Armor
				i(232686),	-- Ensemble: Elite Forged Gladiator's Mage Armor
				i(232687),	-- Ensemble: Elite Forged Gladiator's Monk Armor
				i(232688),	-- Ensemble: Elite Forged Gladiator's Paladin Armor
				i(232689),	-- Ensemble: Elite Forged Gladiator's Priest Armor
				i(232690),	-- Ensemble: Elite Forged Gladiator's Rogue Armor
				i(232691),	-- Ensemble: Elite Forged Gladiator's Shaman Armor
				i(232692),	-- Ensemble: Elite Forged Gladiator's Warlock Armor
				i(232693),	-- Ensemble: Elite Forged Gladiator's Warrior Armor
				i(232695),	-- Ensemble: Prized Aspirant's Cloth Armor
				i(232696),	-- Ensemble: Prized Aspirant's Leather Armor
				i(232697),	-- Ensemble: Prized Aspirant's Mail Armor
				i(232698),	-- Ensemble: Prized Aspirant's Plate Armor
				i(232699),	-- Ensemble: Prized Gladiator's Death Knight Armor
				i(232700),	-- Ensemble: Prized Gladiator's Demon Hunter Armor
				i(232701),	-- Ensemble: Prized Gladiator's Druid Armor
				i(232702),	-- Ensemble: Prized Gladiator's Evoker Armor
				i(232703),	-- Ensemble: Prized Gladiator's Hunter Armor
				i(232704),	-- Ensemble: Prized Gladiator's Mage Armor
				i(232705),	-- Ensemble: Prized Gladiator's Monk Armor
				i(232706),	-- Ensemble: Prized Gladiator's Paladin Armor
				i(232707),	-- Ensemble: Prized Gladiator's Priest Armor
				i(232708),	-- Ensemble: Prized Gladiator's Rogue Armor
				i(232709),	-- Ensemble: Prized Gladiator's Shaman Armor
				i(232710),	-- Ensemble: Prized Gladiator's Warlock Armor
				i(232711),	-- Ensemble: Prized Gladiator's Warrior Armor
				i(232712),	-- Ensemble: Elite Prized Gladiator's Death Knight Armor
				i(232713),	-- Ensemble: Elite Prized Gladiator's Demon Hunter Armor
				i(232714),	-- Ensemble: Elite Prized Gladiator's Druid Armor
				i(232715),	-- Ensemble: Elite Prized Gladiator's Evoker Armor
				i(232716),	-- Ensemble: Elite Prized Gladiator's Hunter Armor
				i(232717),	-- Ensemble: Elite Prized Gladiator's Mage Armor
				i(232718),	-- Ensemble: Elite Prized Gladiator's Monk Armor
				i(232719),	-- Ensemble: Elite Prized Gladiator's Paladin Armor
				i(232720),	-- Ensemble: Elite Prized Gladiator's Priest Armor
				i(232721),	-- Ensemble: Elite Prized Gladiator's Rogue Armor
				i(232722),	-- Ensemble: Elite Prized Gladiator's Shaman Armor
				i(232723),	-- Ensemble: Elite Prized Gladiator's Warlock Armor
				i(232724),	-- Ensemble: Elite Prized Gladiator's Warrior Armor
				i(232864),	-- Arsenal: Forged Aspirant's Weapons
				i(232865),	-- Arsenal: Forged Gladiator's Weapons
				i(232866),	-- Arsenal: Elite Forged Gladiator's Weapons
				i(232867),	-- Arsenal: Prized Aspirant's Weapons
				i(232868),	-- Arsenal: Prized Gladiator's Weapons
				i(232869),	-- Arsenal: Elite Prized Gladiator's Weapons
			}),
		})),
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			-- Left Remaining To Darkal --
			race(DRACTHYR_HORDE, {	-- New Dracthyr Starting Gear
				i(232033),	-- Creche-Binder's Cord
				i(232265),	-- Creche-Guard's Chopper
				i(232266),	-- Creche-Guard's Bulwark
				i(232267),	-- Creche-Guard's Axe
				i(232269),	-- Creche-Guard's Girdle
				i(232270),	-- Creche-Guard's Pauldrons
				i(232278),	-- Creche-Scout's Longspear
				i(232282),	-- Creche-Scout's Belt
				i(232283),	-- Creche-Scout's Spaulders
				i(232290),	-- Creche-Talon's Blade
				i(232293),	-- Creche-Talon's Clasp
				i(232331),	-- Creche-Weaver's Sash
				i(232338),	-- Creche-Magus's Cinch
			}),
		})),
		expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
			-- Left Remaining To Darkal --
			explorationHeader({
				exploration(15667),	-- Delves
				exploration(15552),	-- The Undersea
			}),
			-- Have QuestID attached
			i(228947),	-- Weaver's Lair Profession Table
		})),
		expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_0 } }, {
			-- Left Remaining To Darkal --
			explorationHeader({
				exploration(14484),	-- 10.2 Devland
				exploration(14523),	-- 11 Zone3
				exploration(14517),	-- 11Test1
				exploration(14615),	-- 11Test2
				exploration(14658),	-- 11Test3
				exploration(14661),	-- 11Test4
				exploration(14662),	-- 11Test5
				exploration(14723),	-- 11Test6
				exploration(14855),	-- 11Test7
				exploration(14908),	-- 11.0 - Underground Test
				exploration(15180),	-- 11.0 warband camp
				exploration(15027),	-- 2510 Coreway
				exploration(14730),	-- Abandoned Creche
				exploration(15377),	-- Analysis Interface
				exploration(15144),	-- Annihilation Interface
				exploration(15093),	-- Ara-Kara, City of Echoes
				exploration(15133),	-- Awakening The Machine
				exploration(15141),	-- Awakening Machine
				exploration(15380),	-- Awakening Machine
				exploration(14752),	-- Azj-Kahet
				exploration(15547),	-- Beledar's Bounty
				exploration(15372),	-- Brood Pens
				exploration(15378),	-- Bulwark of Authorization
				exploration(15051),	-- Chamber of Heart
				exploration(15103),	-- Cinderbrew Meadery
				exploration(14753),	-- City of Threads
				exploration(14979),	-- City of Threads
				exploration(15172),	-- Councilward's Rise
				exploration(15376),	-- Crown of Shadows
				exploration(15177),	-- Dalaran
				exploration(14818),	-- Darkflame Cleft Exterior
				exploration(14882),	-- Darkflame Cleft
				exploration(15052),	-- Darkflame Cleft
				exploration(14616),	-- Darkglow Hollows
				exploration(15549),	-- Dayspring Fields
				exploration(15171),	-- Deepforge Manufacturing Bay
				exploration(14990),	-- Deephaul Ravine
				exploration(14903),	-- Deepstrike Point
				exploration(15329),	-- Delver's Headquarters
				exploration(15108),	-- Dev Map - Exile's Reach - Tower
				exploration(14999),	-- Earthcrawl Mines
				exploration(15155),	-- Echoing Overlook
				exploration(15047),	-- Fallside Outpost
				exploration(15142),	-- Firewall of Negation
				exploration(14957),	-- Fungal Folly
				exploration(15361),	-- Gemvein Tunnels
				exploration(15140),	-- Gloomcrag Bower
				exploration(15373),	-- Gossamer Gallery
				exploration(15363),	-- Grand Rampart
				exploration(15022),	-- Hall of the Candle King
				exploration(15048),	-- Hall of Awakening
				exploration(15342),	-- Hall of Awakening
				exploration(15374),	-- Hall of Whispers
				exploration(14838),	-- Hallowfall
				exploration(14971),	-- Hallowfall
				exploration(15145),	-- Hallowfall
				exploration(15019),	-- Hewn Passage
				exploration(14717),	-- Isle of Dorn
				exploration(15101),	-- Junction
				exploration(14665),	-- Khaz Algar
				exploration(14748),	-- Khaz Algar
				exploration(15368),	-- Kili-zar Arena
				exploration(15000),	-- Kriegval's Rest
				exploration(15343),	-- KVigue Test
				exploration(15470),	-- Laboratory of the Grand Splicer
				exploration(15023),	-- Lightless Depths
				exploration(15149),	-- Mereldar
				exploration(15545),	-- Mereldar
				exploration(14998),	-- Mycomancer Cavern
				exploration(15362),	-- Nerub-ar Gatehouse
				exploration(15005),	-- Nightfall Sanctum
				exploration(15513),	-- Pocket Dimension
				exploration(14954),	-- Priory of the Sacred Flame
				exploration(15150),	-- Priory of the Sacred Flame
				exploration(15379),	-- Procedural Forum
				exploration(15143),	-- Processing Unit
				exploration(14512),	-- RebornTree
				exploration(15169),	-- Shadowvein Power Station
				exploration(15170),	-- Shadowvein Mine
				exploration(15375),	-- Silken Court
				exploration(15004),	-- Skittering Breach
				exploration(15371),	-- Skittering Cavern
				exploration(15020),	-- Sprawling Trackyard
				exploration(15550),	-- Stagnant Mire
				exploration(15359),	-- Sundered's Crucible
				exploration(15008),	-- Tak-Rethan Abyss
				exploration(15327),	-- Tak-Rethan Abyss
				exploration(15544),	-- Tenir's Ascent
				exploration(15367),	-- Terrace of Majesty
				exploration(14853),	-- Test Dungeon
				exploration(14795),	-- The Ringing Deeps
				exploration(14798),	-- The Waterworks
				exploration(14807),	-- The Glittering Shelf
				exploration(14850),	-- The Whirring Field
				exploration(14883),	-- The Stonevault
				exploration(14920),	-- The Basin
				exploration(14938),	-- The Rookery
				exploration(15002),	-- The Waterworks
				exploration(15003),	-- The Dread Pit
				exploration(15006),	-- The Sinkhole
				exploration(15007),	-- The Spiral Weave
				exploration(15009),	-- The Underkeep
				exploration(15021),	-- The Waxatory
				exploration(15100),	-- The Earthenworks
				exploration(15146),	-- The Undersea
				exploration(15154),	-- The Shredded Strands
				exploration(15156),	-- The Undercache
				exploration(15157),	-- The Meadyard
				exploration(15175),	-- The Sinkhole
				exploration(15328),	-- The Rookery Landing
				exploration(15338),	-- The Flaming Taps
				exploration(15339),	-- The Stills
				exploration(15340),	-- The Buzz Barns
				exploration(15341),	-- The BEE.E.O. Suite
				exploration(15364),	-- The Pulsing Pit
				exploration(15365),	-- The Congealing Pool
				exploration(15366),	-- The Ascending Reach
				exploration(15369),	-- The Swaying Span
				exploration(15370),	-- The Narthex
				exploration(15525),	-- The Great Sea
				exploration(15548),	-- The Hungering Pool
				exploration(15551),	-- The Fangs
				exploration(15148),	-- Velhan's Claim
				exploration(15147),	-- Veneration Grounds
				exploration(15546),	-- Veneration Grounds
				exploration(15387),	-- Warband Camp
				exploration(15001),	-- Zekvir's Lair
				exploration(14747),	-- Zone 4 Dev Land
				exploration(15055),	-- zzoldPriory of the Sacred Flame
				exploration(14823),	-- <Unnamed POI 007>
				exploration(14824),	-- <Unnamed POI 008>
				exploration(14825),	-- <Unnamed POI 009>
				exploration(14826),	-- <Unnamed POI 010>
				exploration(14827),	-- <Unnamed POI 011>
				exploration(14828),	-- <Unnamed POI 012>
				exploration(14829),	-- <Unnamed POI 013>
				exploration(14830),	-- <Unnamed POI 014>
				exploration(14831),	-- <Unnamed POI 015>
				exploration(14832),	-- <Unnamed POI 016>
				exploration(14833),	-- <Unnamed POI 017>
				exploration(14834),	-- <Unnamed POI 018>
				exploration(14835),	-- <Unnamed POI 019>
				exploration(14836),	-- <Unnamed POI 020>
			}),
		})),
	}),
	expansion(EXPANSION.DF, {
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_7 } }, {
			-- Left Remaining To Darkal --
			n(PVP, {
				-- This is all broken as of 10.2.7. Currently added a placeholder data to the SL PvP vendor.
				i(223769),	-- Eternal Aspirant's Cape
			}),
		})),
	}),
});