---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41970, {	-- The Knife's Edge
				header(HEADERS.AchCriteria, 41970.01, {	-- Chapter 1: A Shadowy Invitation
					q(84956, {	-- A Shadowy Invitation
						--["sourceQuests"] = { xx },	-- TODO: does it exist?
						["provider"] = { "n", 227758 },	-- Alleria Windrunner
						["coord"] = { 42.4, 26.9, DORNOGAL },
					}),
					q(84957, {	-- Return to the Veiled Market
						["sourceQuests"] = { 84956 },	-- A Shadowy Invitation
						["provider"] = { "n", 233603 },	-- Locus-Walker
						["coord"] = { 42.1, 26.9, DORNOGAL },
					}),
					q(85003, {	-- Restoring Operational Efficiency
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230604 },	-- Om'en
						["coord"] = { 59.5, 83.1, TAZAVESH },
					}),
					q(84958, {	-- Beasts Unbound
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230954 },	-- Ta'ka
						["coord"] = { 56.8, 73.0, TAZAVESH },
					}),
					q(85039, {	-- Compromised Containment
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 231564 },	-- Xy'bin
						["coord"] = { 56.6, 72.9, TAZAVESH },
						["g"] = {
							i(237891),	-- Menagerie's Lost Relic
							i(237894),	-- Pendant of Arcane Havoc
						},
					}),
					q(84959, {	-- Lost Lines of Defense
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230955 },	-- Ba'ver
						["coord"] = { 53.1, 64.4, TAZAVESH },
						["g"] = {
							o(469475, {	-- Stolen Barrier Projector
								i(235366),	-- Stolen Barrier Projector (QI!)
							}),
							--
							i(237887),	-- Tazavesh Guardian's Epaulets
							i(237883),	-- Tazavesh Guardian's Mantle
							i(237875),	-- Tazavesh Guardian's Shoulderguards
							i(237888),	-- Tazavesh Guardian's Shoulderpads
						},
					}),
					q(84960, {	-- The Darkness Among Us
						["sourceQuests"] = { 85003 },	-- Restoring Operational Efficiency TODO: There is no point to list all quests, I guess?
						["provider"] = { "n", 233706 },	-- Locus-Walker
						["coord"] = { 59.7, 83.4, TAZAVESH },
						["g"] = {
							i(237890),	-- Band of the Unseen Hand
							i(237893),	-- Ring of Lingering Shadows
						},
					}),
					q(84963, {	-- Sealing the Shadows
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["provider"] = { "n", 234601 },	-- Om'en
						["coord"] = { 54.1, 63.7, TAZAVESH },
						["g"] = {
							i(233199),	-- Saturated Entropic Core (QI!)
							--
							i(238055),	-- Entropic-Shadow Dagger
							i(238059),	-- Entropic-Shadow Gavel
							i(238060),	-- Entropic-Shadow Greatsword
							i(238058),	-- Entropic-Shadow Handaxe
							i(238061),	-- Entropic-Shadow Javelin
							i(238262),	-- Entropic-Shadow Mace
							i(238054),	-- Entropic-Shadow Saber
							i(238062),	-- Entropic-Shadow Sharpshooter
							i(238056),	-- Entropic-Shadow Staff
							i(238066),	-- Entropic-Shadow Sword
							i(238192),	-- Entropic-Shadow Warglaive
						},
					}),
					q(84961, {	-- Barriers to Entry
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["provider"] = { "n", 234596 },	-- Locus-Walker
						["coord"] = { 54.2, 63.1, TAZAVESH },
						["g"] = {
							o(502525, {	-- Barrier Projector
								["coords"] = {
									{ 41.3, 49.1, TAZAVESH },
									{ 46.0, 51.2, TAZAVESH },
									{ 49.8, 57.9, TAZAVESH },
									{ 52.5, 46.8, TAZAVESH },
									{ 51.3, 41.2, TAZAVESH },
									{ 44.4, 36.3, TAZAVESH },
									{ 39.5, 42.0, TAZAVESH },
									{ 58.4, 32.8, TAZAVESH },
								},
							}),
						},
					}),
					q(84964, {	-- Heroes Among Shadow
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["provider"] = { "n", 234602 },	-- Alleria Windrunner
						["coord"] = { 53.7, 63.2, TAZAVESH },
						["g"] = {
							i(238193),	-- Blade of Unyielding Will
							i(238194),	-- Blaster of Unyielding Will
							i(238186),	-- Cudgel of Unyielding Will
							i(238189),	-- Dagger of Unyielding Will
							i(238188),	-- Greatsword of Unyielding Will
							i(238187),	-- Mace of Unyielding Will
							i(238191),	-- Relic of Unyielding Will
							i(238190),	-- Shield of Unyielding Will
							i(238184),	-- Stave of Unyielding Will
							i(238185),	-- Wand of Unyielding Will
						},
					}),
					q(84965, {	-- Core Contributions
						["sourceQuests"] = {
							84961,	-- Barriers to Entry
							84964,	-- Heroes Among Shadow
							84963,	-- Sealing the Shadows
						},
						["provider"] = { "n", 234483 },	-- Alleria Windrunner (mobileNPC)
						-- She is following you around. Coordinates depend on where you turned in previous cluster of quests
					}),
					q(86835, {	-- Regroup!
						["sourceQuests"] = { 84965 },	-- Core Contributions
						["provider"] = { "n", 234483 },	-- Alleria Windrunner (mobileNPC)
						-- She is following you around. Coordinates depend on where you turned in previous quest
					}),
					q(84967, {	-- The Shadowguard Shattered
						["sourceQuests"] = { 86835 },	-- Regroup!
						["provider"] = { "n", 234620 },	-- Locus-Walker
						["coord"] = { 40.5, 67.8, TAZAVESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41970.02, {	-- Chapter 2: Void Alliance
					q(85032, {	-- What Is Left of Home
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 231128 },	-- Locus-Walker
						["coord"] = { 37.7, 74.8, TAZAVESH },
					}),
					q(85961, {	-- Moving the Pawns
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["provider"] = { "n", 230700 },	-- Locus-Walker
						["coord"] = { 34.0, 10.9, TAZAVESH },
					}),
					q(84855, {	-- Dead Silence
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["provider"] = { "n", 230806 },	-- Locus-Walker
						["coord"] = { 48.2, 36.7, KARESH },
						["g"] = {
							i(237861),	-- Cowl of the Lost Trust
							i(237873),	-- Coif of the Lost Trust
							i(237878),	-- Helm of the Lost Trust
							i(237892),	-- Hood of the Lost Trust
						},
					}),
					q(86495, {	-- The Reshii Ribbon
						["sourceQuests"] = { 84855 },	-- Dead Silence
						["provider"] = { "n", 234106 },	-- Locus-Walker
						["coord"] = { 48.2, 36.6, KARESH },
					}),
					q(84856, {	-- Where the Void Gathers
						["sourceQuests"] = { 86495 },	-- The Reshii Ribbon
						["provider"] = { "n", 233946 },	-- Xal'atath
						["coord"] = { 48.1, 36.6, KARESH },
						["g"] = {
							i(248955),	-- Ethereal Seam Ripper
							i(235499),	-- Reshii Wraps
						},
					}),
					q(84857, {	-- Eco-Dome: Primus
						["sourceQuests"] = { 84856 },	-- Where the Void Gathers
						["provider"] = { "n", 234106 },	-- Locus-Walker
						["coord"] = { 48.1, 36.5, KARESH },
					}),
					q(84858, {	-- System Restart
						["sourceQuests"] = { 84857 },	-- Eco-Dome: Primus
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
						["g"] = {
							o(500813, {	-- Rod of analysis
							-- TODO: Add coordinate here
								i(233068),	-- Rod of Analysis
							}),
						},
					}),
					q(84859, {	-- Damage Report 101
						["sourceQuests"] = { 84858 },	-- System Restart
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
						["g"] = {
							i(233187),	-- Botanical Report (QI!)
							i(233189),	-- Shield Technician Report (QI!)
						},
					}),
					q(84860, {	-- Eco-Stabilizing
						["sourceQuests"] = { 84858 },	-- System Restart
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
						["g"] = {
							o(502907, {	-- Rod of Activation
								["coord"] = { 48.8, 59.0, KARESH },
								["g"] = {
									i(233326),	-- Rod of Activation (QI!)
								},
							}),
							--
							i(237876),	-- Eco-Stabilizer's Cinch
							i(237863),	-- Eco-Stabilizer's Cord
							i(237884),	-- Eco-Stabilizer's Girdle
							i(237868),	-- Eco-Stabilizer's Sash
						},
					}),
					q(84861, {	-- This Is Our Dome!
						["sourceQuests"] = {
							84859,	-- Damage Report 101
							84860,	-- Eco-Stabilizing
						},
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
						["g"] = {
							i(237867),	-- Oathsworn Defender's Breeches
							i(237874),	-- Oathsworn Defender's Greaves
							i(237862),	-- Oathsworn Defender's Leggings
							i(237882),	-- Oathsworn Defender's Legguards
						},
					}),
					q(84862, {	-- Void Alliance
						["sourceQuests"] = {
							84859,	-- Damage Report 101
							84860,	-- Eco-Stabilizing
						},
						["provider"] = { "n", 230825 },	-- Xal'atath
						["coord"] = { 47.1, 54.6, KARESH },
					}),
					q(84863, {	-- Counter Measures
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					q(84865, {	-- Divide and Conquer
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["provider"] = { "n", 230825 },	-- Xal'atath
						["coord"] = { 47.0, 54.5, KARESH },
						["g"] = {
							i(233222),	-- Nullbomb (PQI!)
						},
					}),
					q(84864, {	-- Her Dark Side
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["provider"] = { "n", 230825 },	-- Xal'atath
						["coord"] = { 47.0, 54.5, KARESH },
					}),
					q(84866, {	-- To Purchase Safety
						["sourceQuests"] = {
							84863,	-- Counter Measures
							84865,	-- Divide and Conquer
							84864,	-- Her Dark Side
						},
						["provider"] = { "n", 232642 },	-- Alleria Windrunner (mobileNPC)
						-- She is following you around. Coordinates depend on where you turned in previous cluster of quests
						["g"] = {
							i(238386),	-- Void-Touched Fragment
						},
					}),
					q(86946, {	-- Unwrapped and Unraveled
						["sourceQuests"] = { 84866 },	-- To Purchase Safety
						["provider"] = { "n", 237705 },	-- Xal'atath	TODO: unsure
						--["coord"] = { X, Y, KARESH },	TODO: questID missing accepted part of it
					}),
					q(90517, {	-- My Part of the Deal
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
						["provider"] = { "n", 242538 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41970.03, {	-- Chapter 3: Desert Power
					q(84826, {	-- Eco-Dome: Rhovan
						["sourceQuests"] = { 90517 },	-- My Part of the Deal
						["provider"] = { "n", 230811 },	-- Locus-Walker
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					q(84827, {	-- The Shattered Dome
						["sourceQuests"] = { 84826 },	-- Eco-Dome: Rhovan
						["provider"] = { "n", 230288 },	-- Locus-Walker
						["coord"] = { 70.9, 58.1, KARESH },
						["g"] = {
							o(466978, {	-- Om'bera's Clipboard
								["coord"] = { 70.9, 54.4, KARESH },
								["g"] = {
									i(229058),	-- Supply Crates Manifest (QI!)
								},
							}),
							o(466983, {	-- Curved Dagger
								["coord"] = { 70.0, 53.1, KARESH },
								["g"] = {
									i(229060),	-- Curved Dagger (QI!)
								},
							}),
						},
					}),
					q(84831, {	-- The Rhovan Infestation
						["sourceQuests"] = { 84826 },	-- Eco-Dome: Rhovan
						["provider"] = { "n", 230294 },	-- Om'resh
						["coord"] = { 71.0, 58.0, KARESH },
					}),
					q(85730, {	-- Salvaging What's Left
						["sourceQuests"] = {
							84827,	-- The Shattered Dome
							84831,	-- The Rhovan Infestation
						},
						["provider"] = { "n", 230294 },	-- Om'resh
						["coord"] = { 71.0, 58.0, KARESH },
						["g"] = {
							o(499949, {	-- Stolen Research Crate
								i(232876),	-- Stolen Research Crate (QI!)
							}),
							--
							i(237879),	-- Encroaching Void Breastplate
							i(237870),	-- Encroaching Void Chainmail
							i(237886),	-- Encroaching Void Vest
							i(237858),	-- Encroaching Void Vestment
						},
					}),
					q(86327, {	-- The Tempest Fields
						["sourceQuests"] = { 85730 },	-- Salvaging What's Left
						["provider"] = { "n", 230602 },	-- Xal'atath
						["coord"] = { 68.4, 51.9, KARESH },
					}),
					------ Stay awhile and listen ------
					hqt(85774, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["description"] = "Dialogue becomes available after you accept 'The Tempest Fields' (86327).",
						["sourceQuests"] = { 85730 },	-- Salvaging What's Left
						["provider"] = { "n", 230602 },	-- Xal'atath
						["coord"] = { 68.4, 51.9, KARESH },
					}),
					--
					q(84834, {	-- Tempest Clefts
						["sourceQuests"] = { 86327 },	-- The Tempest Fields
						["provider"] = { "n", 233878 },	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
						["g"] = {
							i(233018),	-- Essence Collector (PQI!)
							--
							o(466810, {	-- Void Cleft
								i(229994),	-- Void Cleft Essence (QI!)
							}),
						},
					}),
					q(84869, {	-- Hunting on Glass
						["sourceQuests"] = { 86327 },	-- The Tempest Fields
						["provider"] = { "n", 233878 },	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
					}),
					q(84838, {	-- Enemies of Enemies
						["sourceQuests"] = {
							84834,	-- Tempest Clefts
							84869,	-- Hunting on Glass
						},
						["provider"] = { "n", 233878 },	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
						["g"] = {
							i(230772),	-- Coalesced Void Energy (PQI!)
						},
					}),
					q(84848, {	-- Before the Void
						["sourceQuests"] = { 84838 },	-- Enemies of Enemies
						["provider"] = { "n", 230634 },	-- Xal'atath
						["coord"] = { 64.3, 39.3, KARESH },
						["g"] = {
							i(232599),	-- Tabiqa Dagger (PQI!)
							--
							i(237881),	-- Wastelander's Worn Gauntlets
							i(237866),	-- Wastelander's Worn Gloves
							i(237872),	-- Wastelander's Worn Grips
							i(237860),	-- Wastelander's Worn Handwraps
						},
					}),
					q(84867, {	-- Stalking Stalkers
						["sourceQuests"] = { 84848 },	-- Before the Void
						["provider"] = { "n", 230658 },	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
						["g"] = {
							i(237880),	-- Silent Huntsman's Sabatons
							i(237859),	-- Silent Huntsman's Sandals
							i(237871),	-- Silent Huntsman's Striders
							i(237865),	-- Silent Huntsman's Waders
						},
					}),
					------ Stay awhile and listen ------
					hqt(86815, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["description"] = "Dialogue becomes available after you accept 'Stalking Stalkers' (84867).",
						["sourceQuests"] = { 84848 },	-- Before the Void
						["provider"] = { "n", 230658 },	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
					}),
					--
					q(86332, {	-- Distribution of Power
						["description"] = "Quest becomes available after you talk to Narathe during 'Stalking Stalkers' (84867).",
						["sourceQuests"] = { 84848 },	-- Before the Void
						["provider"] = { "n", 234190 },	-- Narathe
						["coord"] = { 61.0, 39.9, KARESH },
						["g"] = {
							i(235051),	-- Harvested Energy (QI!)
						},
					}),
					q(84876, {	-- The Oasis
						["sourceQuests"] = {
							84867,	-- Stalking Stalkers
							86332,	-- Distribution of Power
						},
						["provider"] = { "n", 230658 },	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
					}),
					q(84879, {	-- Restoring Hope
						["sourceQuests"] = { 84876 },	-- The Oasis
						["provider"] = { "n", 230738 },	-- Xal'atath
						["coord"] = { 75.9, 34.2, KARESH },
						["g"] = {
							i(237885),	-- Armplates of the Riftsealer
							i(237869),	-- Bindings of the Riftsealer
							i(237877),	-- Bracers of the Riftsealer
							i(237864),	-- Cuffs of the Riftsealer
						},
					}),
					q(84883, {	-- K'aresh That Was
						["sourceQuests"] = { 84876 },	-- The Oasis
						["provider"] = { "n", 230739 },	-- Soul-Scribe
						["coord"] = { 75.8, 34.3, KARESH },
						["g"] = {
							o(475872, {	-- Rippling Wellspring
								["coord"] = { 76.8, 30.1, KARESH },
								["g"] = {
									i(230938),	-- Heartspring Water (QI!)
								},
							}),
							o(467435, {	-- Zaranit Bud
								i(229363),	-- Zaranit Bud (QI!)
							}),
						},
					}),
					q(84910, {	-- The Tabiqa
						["sourceQuests"] = {
							84879,	-- Restoring Hope
							84883,	-- K'aresh That Was
						},
						["provider"] = { "n", 230739 },	-- Soul-Scribe
						["coord"] = { 75.8, 34.3, KARESH },
						["g"] = {
							-- TODO: This will most likely be moved to Zone Rewards
							currency(3278),	-- Ethereal Strands
						},
					}),
				}),
				header(HEADERS.AchCriteria, 41970.04, {	-- Chapter 4: Shadows En Garde
					q(84896, {	-- The Next Dimension
						["sourceQuests"] = { 84910 },	-- The Tabiqa
						["provider"] = { "n", 230786 },	-- Soul-Scribe
						["coord"] = { 74.4, 30.4, KARESH },
					}),
					q(84897, {	-- The Calm Before we Storm
						["sourceQuests"] = { 84896 },	-- The Next Dimension
						["provider"] = { "n", 230818 },	-- Soul-Scribe
						["coord"] = { 60.2, 29.2, KARESH },
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Alleria Windrunner - no questID
					--	["name"] = "Stay awhile and listen: Alleria Windrunner",
					--	["description"] = "Dialogue becomes available after you accept 'The Calm Before we Storm' (84897).",
					--	["sourceQuests"] = { 84896 },	-- The Next Dimension
					--	["provider"] = { "n", 230817 },	-- Alleria Windrunner
					--	["coord"] = { 60.7, 27.9, KARESH },
					--}),
					--
					q(84899, {	-- Shadowguard Diffusion
						["sourceQuests"] = { 84897 },	-- The Calm Before we Storm
						["provider"] = { "n", 230817 },	-- Alleria Windrunner
						["coord"] = { 60.7, 27.9, KARESH },
						["g"] = {
							i(238390),	-- Soulbreaker's Sigil
						},
					}),
					q(84898, {	-- The Sands of K'aresh
						["sourceQuests"] = { 84896 },	-- The Next Dimension
						["provider"] = { "n", 231443 },	-- Soul-Scribe
						["coord"] = { 60.7, 28.0, KARESH },
						["g"] = {
							i(237136),	-- Wastes Scanner (PQI!)
							--
							o(502375, {	-- Sand Pile
								["coord"] = { 59.1, 28.5, KARESH },
								["g"] = {
									i(233192),	-- Shadowguard Weapon (QI!)
								},
							}),
							o(502376, {	-- Sand Pile
								["coord"] = { 58.7, 29.5, KARESH },
								["g"] = {
									i(233193),	-- Shadowguard Weapon (QI!)
								},
							}),
							o(502377, {	-- Sand Pile
								["coord"] = { 58.3, 26.3, KARESH },
								["g"] = {
									i(233194),	-- Shadowguard Weapon (QI!)
								},
							}),
						},
					}),
					q(84900, {	-- Like a Knife Through Aether
						["sourceQuests"] = {
							84899,	-- Shadowguard Diffusion
							84898,	-- The Sands of K'aresh
						},
						["provider"] = { "n", 231445 },	-- Xal'atath
						["coord"] = { 55.1, 30.4, KARESH },
						["g"] = {
							i(233333),	-- Forgecaster Wraps (QI!)
						},
					}),
					q(84902, {	-- Adverse Instantiation
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["provider"] = { "n", 231487 },	-- Locus-Walker
						["coord"] = { 48.6, 26.7, KARESH },
					}),
					q(84904, {	-- And We Will Answer
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["provider"] = { "n", 231486 },	-- Soul-Scribe
						["coord"] = { 48.6, 26.8, KARESH },
						["g"] = {
							i(233334),	-- Beacon of the Wastes (PQI!)
						},
					}),
					q(84903, {	-- Until the Sands Bleed Void
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["provider"] = { "n", 231488 },	-- Alleria Windrunner
						["coord"] = { 48.6, 26.6, KARESH },
						["g"] = {
							i(237934),	-- Locket of the Final Purge
							i(237935),	-- Void-Reckoning Necklace
						},
					}),
					q(84905, {	-- To Walk Among Shadow
						["sourceQuests"] = {
							84902,	-- Adverse Instantiation
							84904,	-- And We Will Answer
							84903,	-- Until the Sands Bleed Void
						},
						["provider"] = { "n", 231492 },	-- Locus-Walker
						["coord"] = { 48.2, 19.4, KARESH },
					}),
					q(84906, {	-- Nexus Regicide
						["sourceQuests"] = { 84905 },	-- To Walk Among Shadow
						["provider"] = { "n", 231505 },	-- Alleria Windrunner
						["coord"] = { 48.2, 19.1, KARESH },
						["g"] = {
							i(237936),	-- Fallen Prince's Crown
							i(237938),	-- Fallen Prince's Headplate
							i(237937),	-- Fallen Prince's Helm
							i(237939),	-- Fallen Prince's Mask
						},
					}),
					q(85037, {	-- That's a Wrap
						["sourceQuests"] = { 84906 },	-- Nexus Regicide
						["provider"] = { "n", 231520 },	-- Xal'atath
						["coord"] = { 44.2, 18.5, KARESH },
					}),
					------ Stay awhile and listen ------
					hqt(90614, {	-- Stay awhile and listen: Locus-Walker - no questID
						["name"] = "Stay awhile and listen: Locus-Walker",
						["description"] = "Dialogue becomes available after you accept 'That's a Wrap' (85037).",
						["sourceQuests"] = { 84906 },	-- Nexus Regicide
						["provider"] = { "n", 231524 },	-- Locus-Walker
						["coord"] = { 42.9, 21.6, KARESH },
					}),
					--
				}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Locus-Walker / 61476 - no questID
					--	["name"] = "Stay awhile and listen: Locus-Walker",
					--	["sourceQuests"] = { 84957 },	-- Return to the Veiled Market
					--	["provider"] = { "n", 233706 },	-- Locus-Walker
					--	["coord"] = { 59.7, 83.4, TAZAVESH },
					--}),
					---hqt(???, {	-- Stay awhile and listen: Alleria Windrunner / 61476 - no questID
					---	["name"] = "Stay awhile and listen: Alleria Windrunner",
					---	["sourceQuests"] = { 84960 },	-- The Darkness Among Us
					---	["provider"] = { "n", 230609 },	-- Alleria Windrunner
					---	["coord"] = { 54.7, 66.9, TAZAVESH },
					---}),
					hqt(90600, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 235448 },	-- Xal'atath
						["coord"] = { 37.5, 74.7, TAZAVESH },
					}),
					hqt(90732, {	-- Stay awhile and listen: Alleria Windrunner
						["name"] = "Stay awhile and listen: Alleria Windrunner",
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["provider"] = { "n", 240293 },	-- Alleria Windrunner
						["coord"] = { 34.2, 10.6, TAZAVESH },
					}),
					---hqt(???, {	-- Stay awhile and listen: Alleria Windrunner / 61476 - no questID
					---	["name"] = "Stay awhile and listen: Alleria Windrunner",
					---	["sourceQuests"] = { 84855 },	-- Dead Silence
					---	["provider"] = { "n", 233945 },	-- Alleria Windrunner
					---	["coord"] = { 48.3, 36.6, KARESH },
					---}),
					---hqt(???, {	-- Stay awhile and listen: Xal'atath / 61476 - no questID
					---	["name"] = "Stay awhile and listen: Xal'atath",
					---	["sourceQuests"] = { 84857 },	-- Eco-Dome: Primus
					---	["provider"] = { "n", 230825 },	-- Xal'atath
					---	["coord"] = { 47.1, 54.6, KARESH },
					---}),
					hqt(90572, {	-- Stay awhile and listen: Locus-Walker
						["name"] = "Stay awhile and listen: Locus-Walker",
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
						["provider"] = { "n", 230811 },	-- Locus-Walker
						["coord"] = { 47.0, 54.5, KARESH },
					}),
			}),
			n(BONUS_OBJECTIVES, {
				q(84966, {	-- Break the Assault
					["sourceQuests"] = { 84960 },	-- The Darkness Among Us
					["coord"] = { 54.1, 63.7, TAZAVESH },
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(QUESTS, {
				-- During main story
				q(85111),	-- [DNT] K'aresh Trust Renown Unlock (spellID 466720)
				q(91812),	-- Triggered after unlocking Renown 2 of The K'aresh Trust right after completing 'The Tabiqa' (84910)
				q(84901),	-- [DNT] CH04Q05p - Triggered after completing 'Like a Knife Through Aether' (84900)
				-- ??
				--q(90812),	-- pop randomly at start/intro quest chain (spellID - 1234922 / Warrant)
			}),
		}),
	}),
})));