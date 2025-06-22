-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
--- Need Zone Drop, Tier Sets, Achievements, AOTC Mount //Braghe
------ Encounter Constants ------
local PLEXUS = 2684;
local LOOMITHAR = 2686;
local NAAZINDHRI = 2685;
local ARAZ = 2687;
local HUNTERS = 2688;
local FRACTILLUS = 2747;
local SALHADAAR = 2690;
local DIMENSIUS = 2691;

------ EncounterToCRS ------
local EncounterToCRS = {
	[PLEXUS] = {
		-- Check if more?
		243241,	-- Overloading Attendant
	},
	[LOOMITHAR] = { 233815 },	-- Loom'ithar
	[NAAZINDHRI] = { 233816 },	-- Soulbinder Naazindhri
	[ARAZ] = { 247989 },	-- Forgeweaver Araz
	[HUNTERS] = {
		237661,	-- Adarus Duskblaze
		237662,	-- Ilyssa Darksorrow
		248404,	-- Velaryn Bloodwrath
	},
	[FRACTILLUS] = { 237861 },	-- Fractillus <The Shatterer>
	[SALHADAAR] = { 237763 },	-- Nexus-King Salhadaar
	[DIMENSIUS] = { 233824 },	-- Dimensius <The All-Devouring>
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[PLEXUS] = {
		i(237523),	-- Arcanotech Wrist-Matrix
		i(237533),	-- Atomic Phasebelt
		i(237543),	-- Chambersieve Waistcoat
		i(242394),	-- Eradicating Arcanocore
		i(237813),	-- Factory-Issue Plexhammer
		i(237525),	-- Irradiated Impurity Filter
		i(237567),	-- Logic Gate: Alpha
		i(237528),	-- Manaforged Displacement Chassis
		i(237547),	-- Mounted Manacannons
		i(237739),	-- Obliteration Beamglaive
		i(237736),	-- Overclocked Plexhammer
		i(237534),	-- Singed Sievecuffs
		i(237551),	-- Sterilized Expulsion Boots
	};
	[LOOMITHAR] = {
		i(228803, {	-- Dreadful Bloody Gallybux
			i(229254),	-- Cauldron Champion's Fistguards
			i(229317),	-- Fel-Dealer's Underhandlers
			i(229326),	-- Spliced Fiendtrader's Demonic Grasp
		}),
		i(228804, {	-- Mystic Bloody Gallybux
			i(229344),	-- Aspectral Emissary's Hardened Grasp
			i(229308),	-- Grips of Reclaiming Blight
			i(229272),	-- Tireless Collector's Gauntlets
		}),
		i(228805, {	-- Venerated Bloody Gallybux
			i(229245),	-- Aureate Sentry's Gauntlets
			i(229335),	-- Confessor's Unshakable Mitts
			i(229263),	-- Gale Sovereign's Grasps
		}),
		i(228806, {	-- Zenith Bloody Gallybux
			i(229299),	-- Ageless Serpent's Handguards
			i(229236),	-- Enforcer's Backalley Crushers
			i(229281),	-- Opulent Treasurescale's Gold-Counters
			i(229290),	-- Spectral Gambler's Gloves
		}),
		i(242395),	-- Astral Antenna
		i(237522),	-- Colossal Lifetether
		i(237545),	-- Discarded Nutrient Shackles
		i(237524),	-- Laced Lair-Steppers
		i(242393),	-- Loom'ithar's Living Silk
		i(237732),	-- Piercing Strandbow
		i(237729),	-- Prodigious Gene Splicer
		i(237723),	-- Ward of the Weaving-Beast
	};
	[NAAZINDHRI] = {
		i(228815, {	-- Dreadful Polished Gallybux
			i(229251),	-- Cauldron Champion's Screamplate
			i(229314),	-- Fel-Dealer's Recycled Reavers
			i(229323),	-- Spliced Fiendtrader's Loyal Servants
		}),
		i(228816, {	-- Mystic Polished Gallybux
			i(229341),	-- Aspectral Emissary's Arcane Vents
			i(229305),	-- Jaws of Reclaiming Blight
			i(229269),	-- Tireless Collector's Hunted Heads
		}),
		i(228817, {	-- Venerated Polished Gallybux
			i(229242),	-- Aureate Sentry's Roaring Will
			i(229332),	-- Confessor's Unshakable Radiance
			i(229260),	-- Gale Sovereign's Zephyrs
		}),
		i(228818, {	-- Zenith Polished Gallybux
			i(229296),	-- Ageless Serpent's Shoulderpads
			i(229233),	-- Enforcer's Backalley Shoulderplates
			i(229278),	-- Opulent Treasurescale's Gleaming Mantle
			i(229287),	-- Spectral Gambler's Bladed Mantle
		}),
		i(237546),	-- Bindings of Lost Essence
		i(237568),	-- Chrysalis of Sundered Souls
		i(237539),	-- Deathspindle Talons
		i(237550),	-- Fresh Ethereal Fetters
		i(237527),	-- Frock of Spirit's Reunion
		i(242398),	-- Naazindhri's Mystic Lash
		i(242391),	-- Soulbinder's Embrace
		i(237738),	-- Unbound Training Claws
		i(237730),	-- Voidglass Spire
	};
	[ARAZ] = {
		i(228811, {	-- Dreadful Rusty Gallybux
			i(229252),	-- Cauldron Champion's Tattered Cuisses
			i(229315),	-- Fel-Dealer's Fur Kilt
			i(229324),	-- Spliced Fiendtrader's Skin Tights
		}),
		i(228812, {	-- Mystic Rusty Gallybux
			i(229342),	-- Aspectral Emissary's Trousers
			i(229306),	-- Moccasins of Reclaiming Blight
			i(229270),	-- Tireless Collector's Armored Breeches
		}),
		i(228813, {	-- Venerated Rusty Gallybux
			i(229243),	-- Aureate Sentry's Legguards
			i(229333),	-- Confessor's Unshakable Leggings
			i(229261),	-- Gale Sovereign's Pantaloons
		}),
		i(228814, {	-- Zenith Rusty Gallybux
			i(229297),	-- Ageless Serpent's Leggings
			i(229234),	-- Enforcer's Backalley Chausses
			i(229279),	-- Opulent Treasurescale's Petticoat
			i(229288),	-- Spectral Gambler's Pantaloons
		}),
		i(242402),	-- Araz's Ritual Forge
		i(237526),	-- Breached Containment Guards
		i(237538),	-- Forgeweaver's Journal Holster
		i(237529),	-- Harvested Attendant's Uniform
		i(237724),	-- Iris of the Dark Beyond
		i(237553),	-- Laboratory Test Slippers
		i(237570),	-- Logic Gate: Omega
		i(237726),	-- Marvel of Technomancy
		i(237737),	-- Photon Sabre Prime
	};
	[HUNTERS] = {
		i(228799, {	-- Dreadful Greased Gallybux
			i(229256),	-- Cauldron Champion's Ribcage
			i(229319),	-- Fel-Dealer's Soul Engine
			i(229328),	-- Spliced Fiendtrader's Surgical Gown
		}),
		i(228800, {	-- Mystic Greased Gallybux
			i(229346),	-- Aspectral Emissary's Primal Robes
			i(229310),	-- Robes of Reclaiming Blight
			i(229274),	-- Tireless Collector's Battlegear
		}),
		i(228801, {	-- Venerated Greased Gallybux
			i(229247),	-- Aureate Sentry's Encasement
			i(229337),	-- Confessor's Unshakable Vestment
			i(229265),	-- Gale Sovereign's Clouded Hauberk
		}),
		i(228802, {	-- Zenith Greased Gallybux
			i(229301),	-- Ageless Serpent's Inked Coils
			i(229238),	-- Enforcer's Backalley Vestplate
			i(229283),	-- Opulent Treasurescale's Tunic
			i(229292),	-- Spectral Gambler's Vest
		}),
		i(237549),	-- Bloodwrath's Gnarled Claws
		i(242401),	-- Brand of Ceaseless Ire
		i(237554),	-- Clasp of Furious Freedom
		i(237727),	-- Collapsing Phaseblades
		i(237541),	-- Darksorrow's Corrupted Carapace
		i(237569),	-- Duskblaze's Desperation
		i(237741),	-- Event Horizon
		i(243308),	-- Interloper's Chain Boots
		i(243307),	-- Interloper's Plated Sabatons
		i(243306),	-- Interloper's Reinforced Sandals
		i(243305),	-- Interloper's Silken Striders
		i(242397),	-- Sigil of the Cosmic Hunt
		i(237561),	-- Yoke of Enveloping Hatred
	};
	[FRACTILLUS] = {
		i(228807, {	-- Dreadful Gilded Gallybux
			i(229253),	-- Cauldron Champion's Crown
			i(229316),	-- Fel-Dealer's Visor
			i(229325),	-- Spliced Fiendtrader's Transcendence
		}),
		i(228808, {	-- Mystic Gilded Gallybux
			i(229343),	-- Aspectral Emissary's Crystalline Cowl
			i(229307),	-- Branches of Reclaiming Blight
			i(229271),	-- Tireless Collector's Chained Cowl
		}),
		i(228809, {	-- Venerated Gilded Gallybux
			i(229244),	-- Aureate Sentry's Pledge
			i(229334),	-- Confessor's Unshakable Halo
			i(229262),	-- Gale Sovereign's Charged Hood
		}),
		i(228810, {	-- Zenith Gilded Gallybux
			i(229298),	-- Ageless Serpent's Mane
			i(229235),	-- Enforcer's Backalley Faceshield
			i(229280),	-- Opulent Treasurescale's Crowned Jewel
			i(229289),	-- Spectral Gambler's Damned Visage
		}),
		i(237536),	-- Bite of the Astral Wastes
		i(237558),	-- Conjoined Glass Bracers
		i(242392),	-- Diamantine Voidcore
		i(237742),	-- Fractillus' Last Breath
		i(237565),	-- Kinetic Dunerunners
		i(237733),	-- Lacerated Current Caster
		i(237530),	-- Shrapnel-Fused Legguards
		i(242396),	-- Unyielding Netherprism
		i(237728),	-- Voidglass Kris
	};
	[SALHADAAR] = {
		i(237532),	-- Beacons of False Righteousness
		i(237564),	-- Darkrider Sabatons
		i(237531),	-- Elite Shadowguard Legwraps
		i(243365),	-- Maw of the Void
		i(242400),	-- Nexus-King's Command
		i(237734),	-- Oath-Breaker's Recompense
		i(237555),	-- Pactbound Vambraces
		i(242403),	-- Perfidious Projector
		i(237557),	-- Reaper's Dreadbelt
		i(237544),	-- Royal Voidscale Gauntlets
		i(242406),	-- Salhadaar's Folly
		i(237556),	-- Sandals of Scarred Servitude
		i(237548),	-- Twilight Tyrant's Veil
		i(237740),	-- Vengeful Netherspike
		i(237735),	-- Voidglass Sovereign's Blade
	};
	[DIMENSIUS] = {
		i(242404),	-- All-Devouring Nucleus
		i(237535),	-- Artoshion's Abyssal Stare
		i(242405),	-- Band of the Shattered Soul
		i(237537),	-- Claws of Failed Resistance
		i(237731),	-- Ergospheric Cudgel
		i(237560),	-- Greaves of Shattered Space
		i(242399),	-- Screams of a Forgotten Sky
		i(237559),	-- Singularity Cincture
		i(237542),	-- Stellar Navigation Slacks
		i(237725),	-- Supermassive Starcrusher
		i(237562),	-- Time-Compressed Wristguards
		i(237563),	-- Ultradense Fission Girdle
		i(237540),	-- Winged Gamma Handlers
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(232661),	-- Bootleg Wrynn Shoulderplates
	i(232658),	-- Firebug's Anklegear
	i(232662),	-- Globlin-Fused Greatbelt
	i(232659),	-- Loyalist's Holdout Hood
	i(232657),	-- Mechgineer's Blowtorch Cover
	i(232660),	-- Midnight Lounge Cummerbund
	i(232656),	-- Psychopath's Ravemantle
	i(232663),	-- Undermine Merc's Dog Tags
	i(232655),	-- Vatwork Janitor's Wasteband
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = {
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
};

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART } }, {
	inst(1302, {	-- Manaforge Omega
		["isRaid"] = true,
		--["coord"] = { 42.0, 50.2, KARESH },
		--["maps"] = {
		--},
		["g"] = {
			n(ACHIEVEMENTS, {
				--[[
				ach(41601, {	-- Might of the Shadowguard
					crit(71696, {	-- Vexie and the Geargrinders
						["_encounter"] = { VEXIE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71697, {	-- Cauldron of Carnage
						["_encounter"] = { CARNAGE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71698, {	-- Rik Reverb <Official Gallywix Hype Man>
						["_encounter"] = { RIK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41226, {	-- Maniacle Machinist
					crit(71699, {	-- Stix Bunkjunker
						["_encounter"] = { STIX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71700, {	-- Sprocketmonger Lockenstock
						["_encounter"] = { LOCKENSTOCK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41227, {	-- Beating the Odds
					crit(71701, {	-- One-Armed Bandit
						["_encounter"] = { BANDIT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71702, {	-- Mug'Zee, Heads of Security
						["_encounter"] = { MUGZEE, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41228, {	-- Fall of the Chrome King
					crit(71703, {	-- Chrome King Gallywix
						["_encounter"] = { GALLYWIX, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41222, {	-- Liberation of Undermine
					crit(71696, {	-- Vexie and the Geargrinders
						["_encounter"] = { VEXIE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71697, {	-- Cauldron of Carnage
						["_encounter"] = { CARNAGE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71698, {	-- Rik Reverb <Official Gallywix Hype Man>
						["_encounter"] = { RIK, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71699, {	-- Stix Bunkjunker
						["_encounter"] = { STIX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71700, {	-- Sprocketmonger Lockenstock
						["_encounter"] = { LOCKENSTOCK, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71701, {	-- One-Armed Bandit
						["_encounter"] = { BANDIT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71702, {	-- Mug'Zee, Heads of Security
						["_encounter"] = { MUGZEE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(71703, {	-- Chrome King Gallywix
						["_encounter"] = { GALLYWIX, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(41223, {	-- Heroic: Liberation of Undermine
					crit(71704, {	-- Vexie and the Geargrinders
						["_encounter"] = { VEXIE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71705, {	-- Cauldron of Carnage
						["_encounter"] = { CARNAGE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71706, {	-- Rik Reverb <Official Gallywix Hype Man>
						["_encounter"] = { RIK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71707, {	-- Stix Bunkjunker
						["_encounter"] = { STIX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71708, {	-- Sprocketmonger Lockenstock
						["_encounter"] = { LOCKENSTOCK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71709, {	-- One-Armed Bandit
						["_encounter"] = { BANDIT, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71710, {	-- Mug'Zee, Heads of Security
						["_encounter"] = { MUGZEE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(71711, {	-- Chrome King Gallywix
						["_encounter"] = { GALLYWIX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(41600, {	-- Mythic: Manaforge Omega
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41604,	-- Mythic: Plexus Sentinel
						41605,	-- Mythic: Loom'ithar
						41606,	-- Mythic: Soulbinder Naazindhri
						41607,	-- Mythic: Forgeweaver Araz
						41608,	-- Mythic: The Soul Hunters
						41609,	-- Mythic: Fractillus
						41610,	-- Mythic: Nexus-King Salhadaar
						41611,	-- Mythic: Dimensius, the All-Devouring
					}},
				}),
				ach(41286, {	-- Glory of the Liberation of Undermine Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41208,	-- Hold My Gear!
						41554,	-- The Splash Zone
						41338,	-- Just /Dance
						41596,	-- Garbage In, Garbage Out
						41711,	-- Conveyor Slayer
						41119,	-- One Rank Higher
						41337,	-- Sleep with the Fishes
						41347,	-- Scheming on a Thing
					}},
					["g"] = {
						i(231173),		-- Junkmaestro's Magnetomech (MOUNT!)
					},
				}),
				ach(41525),	-- Can You Please Spell "Gobanna?"
				ach(41289),	-- Liberation of Undermine Guild Run
				ach(41290),	-- Heroic: Liberation of Undermine Guild Run
				--]]
			}),
			header(HEADERS.Faction, FACTION_MANAFORGE_VANDALS, {
				faction(FACTION_MANAFORGE_VANDALS),
				--[[
				n(QUESTS, sharedData({
					-- ["qg"] =
				},bubbleDownRep(FACTION_MANAFORGE_VANDALS, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
					}, {	-- RENOWN 7 --
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
					}, {	-- RENOWN 10 --
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
					}, {	-- RENOWN 14 --
					}, {	-- RENOWN 15 --
					},
				}))),
				--]]
			}),
			o(456208, {	-- The Catalyst
				["description"] = "This allows converting certain pieces of gear into Tier items for your Class.\n\nMake sure to equip your item first before converting it.",
				["coord"] = { 50.0, 54.2, DORNOGAL },
				["modelScale"] = 4,
				["catalystID"] = 10,	-- ItemBonus.Value_0 TWW:S2 -- Ask Runaway if this need change?
				["g"] = {
					Difficulty(DIFFICULTY.RAID.LFR, {["upgradeTrackID"]=UPGRADETRACKS.VETERAN}).AddGroups(
						ALL_CLASS_TIERS_HELPER(MANAFORGE_OMEGA_TIER, DIFFICULTY.RAID.LFR)
					),
					Difficulty(DIFFICULTY.RAID.NORMAL, {["upgradeTrackID"]=UPGRADETRACKS.CHAMPION}).AddGroups(
						ALL_CLASS_TIERS_HELPER(MANAFORGE_OMEGA_TIER, DIFFICULTY.RAID.NORMAL)
					),
					Difficulty(DIFFICULTY.RAID.HEROIC, {["upgradeTrackID"]=UPGRADETRACKS.HERO}).AddGroups(
						ALL_CLASS_TIERS_HELPER(MANAFORGE_OMEGA_TIER, DIFFICULTY.RAID.HEROIC)
					),
					Difficulty(DIFFICULTY.RAID.MYTHIC, {["upgradeTrackID"]=UPGRADETRACKS.MYTH}).AddGroups(
						ALL_CLASS_TIERS_HELPER(MANAFORGE_OMEGA_TIER, DIFFICULTY.RAID.MYTHIC)
					),
				},
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(PLEXUS),
				BossOnly(LOOMITHAR, {
					i(224435),	-- Pattern: Duskthread Lining (RECIPE!)
				}),
				BossOnly(NAAZINDHRI),
				BossOnly(ARAZ, {
					i(223048),	-- Plans: Siphoning Stiletto (RECIPE!)
				}),
				BossOnly(HUNTERS, {
					i(223097),	-- Pattern: Adrenal Surge Clasp (RECIPE!)
				}),
				BossOnly(FRACTILLUS, {
					i(223094),	-- Design: Magnificent Jeweler's Setting (RECIPE!)
				}),
				BossOnly(SALHADAAR),
				BossOnly(DIMENSIUS, {
					i(246565),	-- Cosmic Hearthstone (TOY!)
					i(223144),	-- Formula: Enchant Weapon - Authority of the Depths (RECIPE!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				--[[
				ZoneDrops({
				}),
				CommonBossDrops({
					currency(WEATHERED_ETHEREAL_CREST, {
						["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
					}),
				}),
				header(HEADERS.LFGDungeon, 2780, {	-- Shock and Awesome
					Boss(CARNAGE),
					Boss(RIK),
				}),
				header(HEADERS.LFGDungeon, 2781, {	-- Maniacle Machinist
					Boss(STIX),
					Boss(LOCKENSTOCK, {
						i(228844, {up=IGNORED_VALUE, ["ItemAppearanceModifierID"] = 0}),	-- Test Pilot's Go-Pack [drops pre-upgraded with lower appearance]
					}),
				}),
				header(HEADERS.LFGDungeon, 2782, {	-- Two Heads Are Better
					Boss(VEXIE),
					Boss(BANDIT),
					Boss(MUGZEE),
				}),
				header(HEADERS.LFGDungeon, 2783, {	-- The Chrome King
					Boss(GALLYWIX, {
						i(228819, {	-- Excessively Bejeweled Curio
							--["crs"] = 227003,	-- Kir'xal (Vendor)
							["sym"] = {{"sub","instance_tier",1296,DIFFICULTY.RAID.LFR}},
							["up"] = IGNORED_VALUE,
						}),
					}),
				}),
				--]]
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				--[[
				BossOnly(VEXIE, {
					ach(41208),	-- Hold My Gear!
				}),
				BossOnly(CARNAGE, {
					ach(41694),	-- Flarendo's Biggest Fan
					ach(41554),	-- The Splash Zone
					ach(41695),	-- Torq's Biggest Fan
				}),
				BossOnly(RIK, {
					ach(41338),	-- Just /Dance
				}),
				BossOnly(STIX, {
					ach(41596, {	-- Garbage In, Garbage Out
						title(613),	-- Junkmaestro <Name>
					}),
				}),
				BossOnly(LOCKENSTOCK, {
					ach(41711),	-- Conveyor Slayer
				}),
				BossOnly(BANDIT, {
					ach(41119),	-- One Rank Higher
					ach(41120),	-- Two Ranks Higher
					ach(41121),	-- Three Ranks Higher
					ach(41122, {	-- Best In Class
						title(618),	-- <Name>, the Reel Deal
					}),
				}),
				BossOnly(MUGZEE, {
					ach(41211, {	-- A Good Day to Dye Hard
						i(236769),	-- Gallagio Pipeline Rerouter (TOY!)
					}),
					ach(41337),	-- Sleep with the Fishes
				}),
				BossOnly(GALLYWIX, {
					ach(41347),	-- Scheming on a Thing
				}),
				--]]
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CARVED_ETHEREAL_CREST, {
						["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
					}),
				}),
				n(QUESTS, {
				}),
				ZoneDrops({
				}),
				Boss(PLEXUS),
				Boss(LOOMITHAR),
				Boss(NAAZINDHRI),
				Boss(ARAZ),
				Boss(HUNTERS),
				Boss(FRACTILLUS),
				Boss(SALHADAAR),
				Boss(DIMENSIUS, {
					i(237602, {	-- Hungering Void Curio
						["sym"] = {{"sub","instance_tier",1302,DIFFICULTY.RAID.NORMAL}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				Boss(PLEXUS),
				Boss(LOOMITHAR),
				Boss(NAAZINDHRI),
				Boss(ARAZ),
				Boss(HUNTERS),
				Boss(FRACTILLUS),
				Boss(SALHADAAR),
				BossOnly(DIMENSIUS, {
					ach(41624, {["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 }}),	-- Ahead of the Curve: Dimensius, the All-Devouring
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(RUNED_ETHEREAL_CREST, {
						["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
					}),
				}),
				n(QUESTS, {
				}),
				ZoneDrops({
				}),
				Boss(PLEXUS),
				Boss(LOOMITHAR),
				Boss(NAAZINDHRI),
				Boss(ARAZ),
				Boss(HUNTERS),
				Boss(FRACTILLUS),
				Boss(SALHADAAR),
				Boss(DIMENSIUS, {
					i(237602, {	-- Hungering Void Curio
						["sym"] = {{"sub","instance_tier",1302,DIFFICULTY.RAID.HEROIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(GILDED_ETHEREAL_CREST, {
						["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 },
					}),
				}),
				n(QUESTS, {
				}),
				ZoneDrops({
				}),
				Boss(PLEXUS, {
					ach(41604),	-- Mythic: Plexus Sentinel
				}),
				Boss(LOOMITHAR, {
					ach(41605),	-- Mythic: Loom'ithar
				}),
				Boss(NAAZINDHRI, {
					ach(41606),	-- Mythic: Soulbinder Naazindhri
				}),
				Boss(ARAZ, {
					ach(41607),	-- Mythic: Forgeweaver Araz
				}),
				Boss(HUNTERS, {
					ach(41608),	-- Mythic: The Soul Hunters
				}),
				Boss(FRACTILLUS, {
					ach(41609),	-- Mythic: Fractillus
				}),
				Boss(SALHADAAR, {
					ach(41610),	-- Mythic: Nexus-King Salhadaar
				}),
				Boss(DIMENSIUS, {
					ach(41611, {	-- Mythic: Dimensius, the All-Devouring
						title(615),	-- Void Vanquisher <Name>
					}),
					ach(41625, {["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 }}),	-- Cutting Edge: Dimensius, the All-Devouring
					ach(41623, bubbleDownSelf({["timeline"] = { ADDED_11_2_0, REMOVED_12_0_0 } }, {	-- Hall of Fame: Dimensius, the All-Devouring
						title(614),	-- <Name>, Famed Slayer of Dimensius
					})),
					ach(41622),	-- Mythic: Dimensius, the All-Devouring Guild Run
					i(243061),	-- Unbound Star-Eater (MOUNT!)
					i(237602, {	-- Hungering Void Curio
						["sym"] = {{"sub","instance_tier",1302,DIFFICULTY.RAID.MYTHIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART } }, {
	inst(1296, {	-- Liberation of Undermine
		n(FACTIONS, {
			header(HEADERS.Faction, FACTION_GALLAGIO, {
				n(QUESTS, {
					q(86468),	-- Triggered with Members Only (89016)
					q(89017),	-- Triggered with Members Only (89016)
				}),
			}),
		}),
		inst(1296, bubbleDown({	-- Liberation of Undermine
			["isWeekly"] = true,
		},{
			-- LFR
			q(88835, name(HEADERS.NPC, 229284)),	-- Guk Boomdog Trash
			q(88838, name(HEADERS.NPC, 229287)),	-- Professor Boomspark Trash
			q(88842, name(HEADERS.NPC, 229288)),	-- King Flamespite Trash
			q(88846, name(HEADERS.NPC, 229433)),	-- Skiggy Muckheimer Trash
			q(88867, name(HEADERS.NPC, 238011)),	-- Trashmaster Blazedump Trash
			q(88829, name(HEADERS.NPC, 229283)),	-- Scraps Trash
			q(88859, name(HEADERS.NPC, 234640)),	-- Globikus Trash
			q(88850, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash
			q(88854, name(HEADERS.NPC, 233306)),	-- The Junkmaker Trash
			-- Normal
			q(88833, name(HEADERS.NPC, 229284)),	-- Guk Boomdog Trash
			q(88840),	-- King Flamespite/Professor Boomspark Trash
			q(88844),	-- King Flamespite/Professor Boomspark Trash
			q(88848, name(HEADERS.NPC, 229433)),	-- Skiggy Muckheimer Trash
			q(88869, name(HEADERS.NPC, 238011)),	-- Trashmaster Blazedump Trash
			q(88830, name(HEADERS.NPC, 229283)),	-- Scraps Trash
			q(88861, name(HEADERS.NPC, 234640)),	-- Globikus Trash
			q(88852, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash
			q(88856, name(HEADERS.NPC, 233306)),	-- The Junkmaker Trash
			-- Heroic
			q(88836, name(HEADERS.NPC, 229284)),	-- Guk Boomdog Trash
			q(88837, name(HEADERS.NPC, 229287)),	-- Professor Boomspark Trash
			q(88841, name(HEADERS.NPC, 229288)),	-- King Flamespite Trash
			q(88845, name(HEADERS.NPC, 229433)),	-- Skiggy Muckheimer Trash
			q(88866, name(HEADERS.NPC, 238011)),	-- Trashmaster Blazedump Trash
			q(88831, name(HEADERS.NPC, 229283)),	-- Scraps Trash
			q(88858, name(HEADERS.NPC, 234640)),	-- Globikus Trash
			q(88849, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash
			q(88853, name(HEADERS.NPC, 233306)),	-- The Junkmaker Trash
			-- Mythic
			q(88834, name(HEADERS.NPC, 229284)),	-- Guk Boomdog Trash
			q(88839),	-- King Flamespite/Professor Boomspark Trash
			q(88843),	-- King Flamespite/Professor Boomspark Trash
			q(88847, name(HEADERS.NPC, 229433)),	-- Skiggy Muckheimer Trash
			q(88868, name(HEADERS.NPC, 238011)),	-- Trashmaster Blazedump Trash
			q(88832, name(HEADERS.NPC, 229283)),	-- Scraps Trash
			q(88860, name(HEADERS.NPC, 234640)),	-- Globikus Trash
			q(88851, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash
			q(88855, name(HEADERS.NPC, 233306)),	-- The Junkmaker Trash
			-- All
			q(89478, name(HEADERS.NPC, 229284)),	-- Guk Boomdog Trash first per week any difficulty
			q(89479, name(HEADERS.NPC, 229433)),	-- Skiggy Muckheimer Trash first per week any difficulty
			q(89484, name(HEADERS.NPC, 238011)),	-- Trashmaster Blazedump Trash first per week any difficulty
			q(89477, name(HEADERS.NPC, 229283)),	-- Scraps Trash first per week any difficulty
			q(89482, name(HEADERS.NPC, 234640)),	-- Globikus Trash first per week any difficulty
			q(89480, name(HEADERS.NPC, 229434)),	-- Melbo The Magnificent Trash first per week any difficulty
			q(89481, name(HEADERS.NPC, 233306)),	-- The Junkmaker Trash first per week any difficulty

			q(89452),	-- Vexie Fullthrottle
			q(89453),	-- Cauldron of Carnage
			q(89454),	-- Rik Reverb
			q(89455),	-- Stix Bunkjunker
			q(89456),	-- Sprocketmonger Lockenstock
			q(89457),	-- One-Armed Bandit
			q(89458),	-- Mug'Zee
			q(89459),	-- Chrome King Gallywix
		})),
	}),
})));