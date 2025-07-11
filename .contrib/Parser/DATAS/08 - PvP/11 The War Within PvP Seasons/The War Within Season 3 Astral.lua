-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	n(SEASON_ASTRAL, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_0 } }, {
			ach(41048),	-- Astral Weapons of Conquest
			ach(42042, {	-- Astral Combatant
				["races"] = ALLIANCE_ONLY,
				["collectible"] = false,
			}),
			ach(42043, {	-- Astral Combatant
				["races"] = HORDE_ONLY,
				["collectible"] = false,
			}),
			ach(42036, {	-- Astral Gladiator: The War Within Season 3
				title(633),	-- Astral Gladiator <Name>
			}),
			ach(42039),	-- Astral Gladiator's Fel Bat
			ach(41028),	-- Combatant I: The War Within Season 3
			ach(41029),	-- Combatant II: The War Within Season 3
			ach(41030),	-- Challenger I: The War Within Season 3
			ach(41031),	-- Challenger II: The War Within Season 3
			ach(41026),	-- Duelist: The War Within Season 3
			ach(41027),	-- Elite: The War Within Season 3
			ach(41049, {	-- Gladiator: The War Within Season 3
				i(232617),	-- Astral Gladiator's Fel Bat (MOUNT!)
			}),
			ach(41024),	-- Rival I: The War Within Season 3
			ach(41025),	-- Rival II: The War Within Season 3
			-- RBG
			ach(42035, {	-- Astral Marshal: The War Within Season 3
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					title(635),	-- Astral Marshal <Name>
				},
			}),
			ach(42034, {	-- Astral Warlord: The War Within Season 3
				["races"] = HORDE_ONLY,
				["g"] = {
					title(632),	-- Astral Warlord <Name>
				},
			}),
			ach(42038, {	-- Hero of the Alliance: Astral
				["races"]= ALLIANCE_ONLY,
			}),
			ach(42037, {	-- Hero of the Horde: Astral
				["races"]= HORDE_ONLY,
			}),
			ach(42024),	-- Strategist: The War Within Season 3
			-- Solo
			ach(42023),	-- Legend: The War Within Season 3
			ach(42044),	-- Battle Mender: The War Within Season 3
			ach(42033, {	-- Astral Legend: The War Within Season 3
				title(634),	-- Astral Legend <Name>
			}),
			-- Fashion
			ach(42800),	-- Astral Attire
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_11_2_0 } }, {
			i(243157, {	-- Vicious Void Creeper [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(243159, {	-- Vicious Void Creeper [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		--[[
		n(PVP_WARMODE, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 } }, {
			n(219213, {	-- Gilderann <War Mode Quartermaster>
				["coord"] = { 55.2, 76.8, DORNOGAL },
				["g"] = {
					filter(BACK_F, {
						bloody(525, i(230138)),	-- Prized Warmonger's Cape
						bloody(525, i(230140)),	-- Prized Warmonger's Cloak
						bloody(525, i(230141)),	-- Prized Warmonger's Drape
						bloody(525, i(230139)),	-- Prized Warmonger's Shawl
					}),
					filter(CLOTH, {
						bloody(525, i(230112)),	-- Prized Warmonger's Bindings
						bloody(700, i(230111)),	-- Prized Warmonger's Cord
						bloody(875, i(230109)),	-- Prized Warmonger's Crown
						bloody(875, i(230106)),	-- Prized Warmonger's Garb
						bloody(700, i(230108)),	-- Prized Warmonger's Gloves
						bloody(700, i(230113)),	-- Prized Warmonger's Mantle
						bloody(875, i(230110)),	-- Prized Warmonger's Pants
						bloody(700, i(230107)),	-- Prized Warmonger's Slippers
					}),
					filter(LEATHER, {
						bloody(700, i(230118)),	-- Prized Warmonger's Belt
						bloody(700, i(230114)),	-- Prized Warmonger's Boots
						bloody(875, i(230117)),	-- Prized Warmonger's Breeches
						bloody(700, i(230115)),	-- Prized Warmonger's Handwraps
						bloody(875, i(230116)),	-- Prized Warmonger's Hood
						bloody(875, i(230120)),	-- Prized Warmonger's Jerkin
						bloody(700, i(230121)),	-- Prized Warmonger's Shoulderguard
						bloody(525, i(230119)),	-- Prized Warmonger's Wraps
					}),
					filter(MAIL, {
						bloody(525, i(230137)),	-- Prized Warmonger's Armguards
						bloody(875, i(230130)),	-- Prized Warmonger's Chestguard
						bloody(700, i(230136)),	-- Prized Warmonger's Cinch
						bloody(700, i(230135)),	-- Prized Warmonger's Epaulets
						bloody(700, i(230131)),	-- Prized Warmonger's Greaves
						bloody(700, i(230132)),	-- Prized Warmonger's Grips
						bloody(875, i(230133)),	-- Prized Warmonger's Helm
						bloody(875, i(230134)),	-- Prized Warmonger's Leggings
					}),
					filter(PLATE, {
						bloody(525, i(230129)),	-- Prized Warmonger's Bracers
						bloody(700, i(230128)),	-- Prized Warmonger's Clasp
						bloody(875, i(230123)),	-- Prized Warmonger's Cuirass
						bloody(875, i(230122)),	-- Prized Warmonger's Faceplate
						bloody(700, i(230125)),	-- Prized Warmonger's Gauntlets
						bloody(875, i(230126)),	-- Prized Warmonger's Legguards
						bloody(700, i(230124)),	-- Prized Warmonger's Sabatons
						bloody(700, i(230127)),	-- Prized Warmonger's Spaulders
					}),
					n(WEAPONS, {
						bloody(525, i(230156)),		-- Prized Warmonger's Aegis
						bloody(875, i(230142)),		-- Prized Warmonger's Battleaxe
						bloody(1750, i(230149)),	-- Prized Warmonger's Battlestaff
						bloody(1750, i(230151)),	-- Prized Warmonger's Broadsword
						bloody(875, i(230144)),		-- Prized Warmonger's Carver
						bloody(1225, i(230153)),	-- Prized Warmonger's Club
						bloody(875, i(230161)),		-- Prized Warmonger's Crusher
						bloody(1225, i(230163)),	-- Prized Warmonger's Dagger
						bloody(875, i(230164)),		-- Prized Warmonger's Dirk
						bloody(525, i(230147)),		-- Prized Warmonger's Firebomb
						bloody(1750, i(230145)),	-- Prized Warmonger's Flameshot
						bloody(875, i(230155)),		-- Prized Warmonger's Gavel
						bloody(1750, i(230150)),	-- Prized Warmonger's Greatsword
						bloody(875, i(230154)),		-- Prized Warmonger's Hammer
						bloody(1225, i(230143)),	-- Prized Warmonger's Hatchet
						bloody(1750, i(230157)),	-- Prized Warmonger's Impaler
						bloody(875, i(230160)),		-- Prized Warmonger's Mace
						bloody(1225, i(230162)),	-- Prized Warmonger's Scepter
						bloody(1750, i(230158)),	-- Prized Warmonger's Spear
						bloody(1750, i(230148)),	-- Prized Warmonger's Spire
						bloody(875, i(230146)),		-- Prized Warmonger's Twinblade
						bloody(1225, i(230159)),	-- Prized Warmonger's Wand
					}),
				},
			}),
		})),
		--]]
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_0 } }, {
			n(219217, {	-- Velerd <Honor Quartermaster>
				["coord"] = { 55.0, 76.5, DORNOGAL },
				["g"] = {
					filter(BACK_F, {
						honor(525, i(230365)),	-- Astral Aspirant's Cape
						honor(525, i(230364)),	-- Astral Aspirant's Cloak
						honor(525, i(230363)),	-- Astral Aspirant's Drape
						honor(525, i(230366)),	-- Astral Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						honor(700, i(230345)),	-- Astral Aspirant's Silk Belt
						honor(525, i(230348)),	-- Astral Aspirant's Silk Bindings
						honor(700, i(230313)),	-- Astral Aspirant's Silk Cord
						honor(875, i(230333)),	-- Astral Aspirant's Silk Cover
						honor(700, i(230326)),	-- Astral Aspirant's Silk Footwraps
						honor(700, i(230299)),	-- Astral Aspirant's Silk Gloves
						honor(700, i(230331)),	-- Astral Aspirant's Silk Handwraps
						honor(875, i(230301)),	-- Astral Aspirant's Silk Hood
						honor(875, i(230305)),	-- Astral Aspirant's Silk Leggings
						honor(875, i(230337)),	-- Astral Aspirant's Silk Legwraps
						honor(700, i(230310)),	-- Astral Aspirant's Silk Mantle
						honor(875, i(230289)),	-- Astral Aspirant's Silk Robe
						honor(700, i(230342)),	-- Astral Aspirant's Silk Shawl
						honor(875, i(230321)),	-- Astral Aspirant's Silk Shirt
						honor(700, i(230294)),	-- Astral Aspirant's Silk Treads
						honor(525, i(230316)),	-- Astral Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(230358)),	-- Astral Aspirant's Band
						honor(525, i(230357)),	-- Astral Aspirant's Ring
						honor(525, i(230359)),	-- Astral Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(230351)),	-- Astral Aspirant's Leather Armguards
						honor(700, i(230315)),	-- Astral Aspirant's Leather Belt
						honor(700, i(230296)),	-- Astral Aspirant's Leather Boots
						honor(875, i(230307)),	-- Astral Aspirant's Leather Breeches
						honor(700, i(230347)),	-- Astral Aspirant's Leather Cord
						honor(700, i(230328)),	-- Astral Aspirant's Leather Footpads
						honor(700, i(230297)),	-- Astral Aspirant's Leather Gloves
						honor(700, i(230329)),	-- Astral Aspirant's Leather Grips
						honor(875, i(230303)),	-- Astral Aspirant's Leather Helm
						honor(875, i(230339)),	-- Astral Aspirant's Leather Leggings
						honor(700, i(230340)),	-- Astral Aspirant's Leather Mantle
						honor(875, i(230335)),	-- Astral Aspirant's Leather Mask
						honor(700, i(230308)),	-- Astral Aspirant's Leather Spaulders
						honor(875, i(230324)),	-- Astral Aspirant's Leather Tunic
						honor(875, i(230292)),	-- Astral Aspirant's Leather Vest
						honor(525, i(230319)),	-- Astral Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(875, i(230323)),	-- Astral Aspirant's Armored Tunic
						honor(875, i(230291)),	-- Astral Aspirant's Armored Vest
						honor(700, i(230314)),	-- Astral Aspirant's Chain Belt
						honor(525, i(230350)),	-- Astral Aspirant's Chain Bracer
						honor(700, i(230346)),	-- Astral Aspirant's Chain Clasp
						honor(700, i(230300)),	-- Astral Aspirant's Chain Gauntlets
						honor(700, i(230332)),	-- Astral Aspirant's Chain Handguards
						honor(875, i(230334)),	-- Astral Aspirant's Chain Headguard
						honor(875, i(230302)),	-- Astral Aspirant's Chain Helm
						honor(875, i(230306)),	-- Astral Aspirant's Chain Leggings
						honor(700, i(230295)),	-- Astral Aspirant's Chain Sabatons
						honor(700, i(230343)),	-- Astral Aspirant's Chain Shoulderguards
						honor(700, i(230311)),	-- Astral Aspirant's Chain Spaulders
						honor(700, i(230327)),	-- Astral Aspirant's Chain Stompers
						honor(875, i(230338)),	-- Astral Aspirant's Chain Wargreaves
						honor(525, i(230318)),	-- Astral Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(230361)),	-- Astral Aspirant's Choker
						honor(525, i(230360)),	-- Astral Aspirant's Necklace
						honor(525, i(230362)),	-- Astral Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(875, i(230290)),	-- Astral Aspirant's Chestplate
						honor(525, i(230349)),	-- Astral Aspirant's Plate Armguards
						honor(875, i(230322)),	-- Astral Aspirant's Plate Armor
						honor(525, i(230317)),	-- Astral Aspirant's Plate Cuffs
						honor(700, i(230298)),	-- Astral Aspirant's Plate Gauntlets
						honor(700, i(230312)),	-- Astral Aspirant's Plate Girdle
						honor(700, i(230344)),	-- Astral Aspirant's Plate Greatbelt
						honor(700, i(230330)),	-- Astral Aspirant's Plate Handguards
						honor(875, i(230320)),	-- Astral Aspirant's Plate Headguard
						honor(875, i(230288)),	-- Astral Aspirant's Plate Helm
						honor(875, i(230304)),	-- Astral Aspirant's Plate Legguards
						honor(700, i(230341)),	-- Astral Aspirant's Plate Pauldrons
						honor(700, i(230309)),	-- Astral Aspirant's Plate Shoulders
						honor(700, i(230325)),	-- Astral Aspirant's Plate Stompers
						honor(700, i(230293)),	-- Astral Aspirant's Plate Warboots
						honor(875, i(230336)),	-- Astral Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(230352)),	-- Astral Aspirant's Badge of Ferocity
						honor(700, i(230355)),	-- Astral Aspirant's Emblem
						honor(700, i(230354)),	-- Astral Aspirant's Insignia of Alacrity
						honor(525, i(230353)),	-- Astral Aspirant's Medallion
						honor(525, i(230356)),	-- Astral Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(875, i(230367)),	-- Astral Aspirant's Battleaxe
						honor(525, i(230373)),	-- Astral Aspirant's Censer
						honor(875, i(230381)),	-- Astral Aspirant's Chopper
						honor(875, i(230368)),	-- Astral Aspirant's Dagger
						honor(1750, i(230372)),	-- Astral Aspirant's Greatsword
						honor(1750, i(230378)),	-- Astral Aspirant's Halberd
						honor(875, i(229508)),	-- Astral Aspirant's Hammer
						honor(1225, i(230380)),	-- Astral Aspirant's Knife
						honor(875, i(230369)),	-- Astral Aspirant's Mace
						honor(875, i(230379)),	-- Astral Aspirant's Morningstar
						honor(1750, i(230370)),	-- Astral Aspirant's Polearm
						honor(1750, i(230377)),	-- Astral Aspirant's Rifle
						honor(1225, i(230375)),	-- Astral Aspirant's Scepter
						honor(525, i(230376)),	-- Astral Aspirant's Shield
						honor(1750, i(230371)),	-- Astral Aspirant's Staff
						honor(1225, i(230382)),	-- Astral Aspirant's Wand
						honor(875, i(230374)),	-- Astral Aspirant's Warglaive
					}),
				},
			})
		})),
		--[[
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_0 } }, {
			n(219222, {	-- Lalandi <Conquest Quartermaster>
				["coord"] = { 55.1, 76.2, DORNOGAL },
				["ItemAppearanceModifierID"] = 159,
				["g"] = {
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							conquest(525, i(229731)),	-- Prized Gladiator's Cloak
							conquest(525, i(229732)),	-- Prized Gladiator's Drape
							conquest(525, i(229733)),	-- Prized Gladiator's Shawl
							conquest(875, i(229713)),	-- Prized Gladiator's Chestguard
							conquest(875, i(229715)),	-- Prized Gladiator's Chestplate
							conquest(700, i(229718)),	-- Prized Gladiator's Plate Gauntlets
							conquest(700, i(229727)),	-- Prized Gladiator's Plate Girdle
							conquest(700, i(229728)),	-- Prized Gladiator's Plate Greatbelt
							conquest(700, i(229719)),	-- Prized Gladiator's Plate Handguards
							conquest(875, i(229721)),	-- Prized Gladiator's Plate Helm
							conquest(875, i(229722)),	-- Prized Gladiator's Plate Helmet
							conquest(875, i(229723)),	-- Prized Gladiator's Plate Legguards
							conquest(700, i(229726)),	-- Prized Gladiator's Plate Pauldrons
							conquest(700, i(229725)),	-- Prized Gladiator's Plate Shoulders
							conquest(700, i(229717)),	-- Prized Gladiator's Plate Stompers
							conquest(525, i(229730)),	-- Prized Gladiator's Plate Vambraces
							conquest(700, i(229716)),	-- Prized Gladiator's Plate Warboots
							conquest(875, i(229724)),	-- Prized Gladiator's Plate Wargreaves
							conquest(525, i(229729)),	-- Prized Gladiator's Plate Wristguards
						}),
						cl(DEMONHUNTER, {
							conquest(525, i(229615)),	-- Prized Gladiator's Cloak
							conquest(525, i(229616)),	-- Prized Gladiator's Drape
							conquest(525, i(229617)),	-- Prized Gladiator's Shawl
							conquest(700, i(229611)),	-- Prized Gladiator's Leather Belt
							conquest(700, i(229601)),	-- Prized Gladiator's Leather Boots
							conquest(875, i(229607)),	-- Prized Gladiator's Leather Breeches
							conquest(700, i(229603)),	-- Prized Gladiator's Leather Gloves
							conquest(700, i(229604)),	-- Prized Gladiator's Leather Grips
							conquest(875, i(229605)),	-- Prized Gladiator's Leather Helm
							conquest(875, i(229608)),	-- Prized Gladiator's Leather Legwraps
							conquest(875, i(229606)),	-- Prized Gladiator's Leather Mask
							conquest(700, i(229610)),	-- Prized Gladiator's Leather Shoulderpads
							conquest(700, i(229609)),	-- Prized Gladiator's Leather Spaulders
							conquest(700, i(229612)),	-- Prized Gladiator's Leather Strap
							conquest(700, i(229602)),	-- Prized Gladiator's Leather Treads
							conquest(875, i(229599)),	-- Prized Gladiator's Leather Vest
							conquest(875, i(229600)),	-- Prized Gladiator's Leather Jerkin
							conquest(525, i(229614)),	-- Prized Gladiator's Leather Wristguards
							conquest(525, i(229613)),	-- Prized Gladiator's Leather Wristwraps
						}),
						cl(DRUID, {
							conquest(525, i(229596)),	-- Prized Gladiator's Cloak
							conquest(525, i(229597)),	-- Prized Gladiator's Drape
							conquest(525, i(229598)),	-- Prized Gladiator's Shawl
							conquest(700, i(229591)),	-- Prized Gladiator's Leather Belt
							conquest(700, i(229581)),	-- Prized Gladiator's Leather Boots
							conquest(875, i(229587)),	-- Prized Gladiator's Leather Breeches
							conquest(700, i(229583)),	-- Prized Gladiator's Leather Gloves
							conquest(700, i(229584)),	-- Prized Gladiator's Leather Grips
							conquest(875, i(229585)),	-- Prized Gladiator's Leather Helm
							conquest(875, i(229588)),	-- Prized Gladiator's Leather Legwraps
							conquest(875, i(229586)),	-- Prized Gladiator's Leather Mask
							conquest(700, i(229590)),	-- Prized Gladiator's Leather Shoulderpads
							conquest(700, i(229589)),	-- Prized Gladiator's Leather Spaulders
							conquest(700, i(229592)),	-- Prized Gladiator's Leather Strap
							conquest(700, i(229582)),	-- Prized Gladiator's Leather Treads
							conquest(875, i(229579)),	-- Prized Gladiator's Leather Vest
							conquest(875, i(229580)),	-- Prized Gladiator's Leather Vestments
							conquest(525, i(229595)),	-- Prized Gladiator's Leather Wristguards
							conquest(525, i(229594)),	-- Prized Gladiator's Leather Wristwraps
						}),
						cl(EVOKER, {
							conquest(525, i(229672)),	-- Prized Gladiator's Cloak
							conquest(525, i(229673)),	-- Prized Gladiator's Drape
							conquest(525, i(229674)),	-- Prized Gladiator's Shawl
							conquest(875, i(229656)),	-- Prized Gladiator's Armored Scales
							conquest(700, i(229668)),	-- Prized Gladiator's Chain Belt
							conquest(700, i(229659)),	-- Prized Gladiator's Chain Boots
							conquest(525, i(229671)),	-- Prized Gladiator's Chain Bracers
							conquest(875, i(229665)),	-- Prized Gladiator's Chain Breeches
							conquest(875, i(229663)),	-- Prized Gladiator's Chain Faceguard
							conquest(700, i(229660)),	-- Prized Gladiator's Chain Gauntlets
							conquest(700, i(229669)),	-- Prized Gladiator's Chain Girdle
							conquest(700, i(229661)),	-- Prized Gladiator's Chain Handguards
							conquest(875, i(229662)),	-- Prized Gladiator's Chain Helm
							conquest(875, i(229664)),	-- Prized Gladiator's Chain Leggings
							conquest(700, i(229666)),	-- Prized Gladiator's Chain Monnion
							conquest(700, i(229658)),	-- Prized Gladiator's Chain Sabatons
							conquest(700, i(229667)),	-- Prized Gladiator's Chain Shoulderguard
							conquest(525, i(229670)),	-- Prized Gladiator's Chain Wristguards
							conquest(875, i(229657)),	-- Prized Gladiator's Scaleguard
						}),
						cl(HUNTER, {
							conquest(525, i(229691)),	-- Prized Gladiator's Cloak
							conquest(525, i(229692)),	-- Prized Gladiator's Drape
							conquest(525, i(229693)),	-- Prized Gladiator's Shawl
							conquest(700, i(229687)),	-- Prized Gladiator's Chain Belt
							conquest(700, i(229678)),	-- Prized Gladiator's Chain Boots
							conquest(525, i(229690)),	-- Prized Gladiator's Chain Bracers
							conquest(875, i(229684)),	-- Prized Gladiator's Chain Breeches
							conquest(875, i(229682)),	-- Prized Gladiator's Chain Faceguard
							conquest(700, i(229679)),	-- Prized Gladiator's Chain Gauntlets
							conquest(700, i(229688)),	-- Prized Gladiator's Chain Girdle
							conquest(700, i(229680)),	-- Prized Gladiator's Chain Handguards
							conquest(875, i(229681)),	-- Prized Gladiator's Chain Helm
							conquest(875, i(229683)),	-- Prized Gladiator's Chain Leggings
							conquest(700, i(229685)),	-- Prized Gladiator's Chain Monnion
							conquest(700, i(229677)),	-- Prized Gladiator's Chain Sabatons
							conquest(700, i(229686)),	-- Prized Gladiator's Chain Shoulderguard
							conquest(875, i(229676)),	-- Prized Gladiator's Chain Tunic
							conquest(875, i(229675)),	-- Prized Gladiator's Chain Vest
							conquest(525, i(229689)),	-- Prized Gladiator's Chain Wristguards
						}),
						cl(MAGE, {
							conquest(525, i(229538)),	-- Prized Gladiator's Cloak
							conquest(525, i(229539)),	-- Prized Gladiator's Drape
							conquest(525, i(229540)),	-- Prized Gladiator's Shawl
							conquest(700, i(229533)),	-- Prized Gladiator's Silk Amice
							conquest(525, i(229537)),	-- Prized Gladiator's Silk Armbands
							conquest(700, i(229535)),	-- Prized Gladiator's Silk Belt
							conquest(875, i(229529)),	-- Prized Gladiator's Silk Cap
							conquest(700, i(229534)),	-- Prized Gladiator's Silk Cord
							conquest(700, i(229526)),	-- Prized Gladiator's Silk Gloves
							conquest(875, i(229523)),	-- Prized Gladiator's Silk Gown
							conquest(700, i(229527)),	-- Prized Gladiator's Silk Handwraps
							conquest(875, i(229528)),	-- Prized Gladiator's Silk Hat
							conquest(875, i(229530)),	-- Prized Gladiator's Silk Leggings
							conquest(700, i(229532)),	-- Prized Gladiator's Silk Mantle
							conquest(875, i(229522)),	-- Prized Gladiator's Silk Robe
							conquest(700, i(229524)),	-- Prized Gladiator's Silk Slippers
							conquest(700, i(229525)),	-- Prized Gladiator's Silk Treads
							conquest(875, i(229531)),	-- Prized Gladiator's Silk Trousers
							conquest(525, i(229536)),	-- Prized Gladiator's Silk Wristwraps
						}),
						cl(MONK, {
							conquest(525, i(229634)),	-- Prized Gladiator's Cloak
							conquest(525, i(229635)),	-- Prized Gladiator's Drape
							conquest(525, i(229636)),	-- Prized Gladiator's Shawl
							conquest(700, i(229630)),	-- Prized Gladiator's Leather Belt
							conquest(700, i(229620)),	-- Prized Gladiator's Leather Boots
							conquest(875, i(229626)),	-- Prized Gladiator's Leather Breeches
							conquest(700, i(229622)),	-- Prized Gladiator's Leather Gloves
							conquest(700, i(229623)),	-- Prized Gladiator's Leather Grips
							conquest(875, i(229624)),	-- Prized Gladiator's Leather Helm
							conquest(875, i(229627)),	-- Prized Gladiator's Leather Legwraps
							conquest(875, i(229625)),	-- Prized Gladiator's Leather Mask
							conquest(700, i(229629)),	-- Prized Gladiator's Leather Shoulderpads
							conquest(700, i(229628)),	-- Prized Gladiator's Leather Spaulders
							conquest(700, i(229631)),	-- Prized Gladiator's Leather Strap
							conquest(700, i(229621)),	-- Prized Gladiator's Leather Treads
							conquest(875, i(229618)),	-- Prized Gladiator's Leather Vest
							conquest(875, i(229619)),	-- Prized Gladiator's Leather Jerkin
							conquest(525, i(229633)),	-- Prized Gladiator's Leather Wristguards
							conquest(525, i(229632)),	-- Prized Gladiator's Leather Wristwraps
						}),
						cl(PALADIN, {
							conquest(525, i(229751)),	-- Prized Gladiator's Cloak
							conquest(525, i(229752)),	-- Prized Gladiator's Drape
							conquest(525, i(229753)),	-- Prized Gladiator's Shawl
							conquest(875, i(229734)),	-- Prized Gladiator's Chestguard
							conquest(875, i(229735)),	-- Prized Gladiator's Chestplate
							conquest(700, i(229738)),	-- Prized Gladiator's Plate Gauntlets
							conquest(700, i(229746)),	-- Prized Gladiator's Plate Girdle
							conquest(700, i(229747)),	-- Prized Gladiator's Plate Greatbelt
							conquest(700, i(229739)),	-- Prized Gladiator's Plate Handguards
							conquest(875, i(229740)),	-- Prized Gladiator's Plate Helm
							conquest(875, i(229741)),	-- Prized Gladiator's Plate Helmet
							conquest(875, i(229742)),	-- Prized Gladiator's Plate Legguards
							conquest(700, i(229745)),	-- Prized Gladiator's Plate Pauldrons
							conquest(700, i(229744)),	-- Prized Gladiator's Plate Shoulders
							conquest(700, i(229737)),	-- Prized Gladiator's Plate Stompers
							conquest(875, i(229743)),	-- Prized Gladiator's Plate Tasses
							conquest(525, i(229750)),	-- Prized Gladiator's Plate Vambraces
							conquest(700, i(229736)),	-- Prized Gladiator's Plate Warboots
							conquest(525, i(229748)),	-- Prized Gladiator's Plate Wristguards
						}),
						cl(PRIEST, {
							conquest(525, i(229557)),	-- Prized Gladiator's Cloak
							conquest(525, i(229558)),	-- Prized Gladiator's Drape
							conquest(525, i(229559)),	-- Prized Gladiator's Shawl
							conquest(700, i(229552)),	-- Prized Gladiator's Silk Amice
							conquest(525, i(229556)),	-- Prized Gladiator's Silk Armbands
							conquest(700, i(229554)),	-- Prized Gladiator's Silk Belt
							conquest(875, i(229541)),	-- Prized Gladiator's Silk Chestwrap
							conquest(700, i(229553)),	-- Prized Gladiator's Silk Cord
							conquest(700, i(229545)),	-- Prized Gladiator's Silk Gloves
							conquest(875, i(229548)),	-- Prized Gladiator's Silk Guise
							conquest(700, i(229546)),	-- Prized Gladiator's Silk Handwraps
							conquest(875, i(229547)),	-- Prized Gladiator's Silk Hood
							conquest(875, i(229549)),	-- Prized Gladiator's Silk Leggings
							conquest(700, i(229551)),	-- Prized Gladiator's Silk Mantle
							conquest(700, i(229543)),	-- Prized Gladiator's Silk Slippers
							conquest(700, i(229544)),	-- Prized Gladiator's Silk Treads
							conquest(875, i(229550)),	-- Prized Gladiator's Silk Trousers
							conquest(875, i(229542)),	-- Prized Gladiator's Silk Vest
							conquest(525, i(229555)),	-- Prized Gladiator's Silk Wristwraps
						}),
						cl(ROGUE, {
							conquest(525, i(229653)),	-- Prized Gladiator's Cloak
							conquest(525, i(229654)),	-- Prized Gladiator's Drape
							conquest(525, i(229655)),	-- Prized Gladiator's Shawl
							conquest(700, i(229649)),	-- Prized Gladiator's Leather Belt
							conquest(700, i(229639)),	-- Prized Gladiator's Leather Boots
							conquest(875, i(229645)),	-- Prized Gladiator's Leather Breeches
							conquest(700, i(229641)),	-- Prized Gladiator's Leather Gloves
							conquest(700, i(229642)),	-- Prized Gladiator's Leather Grips
							conquest(875, i(229643)),	-- Prized Gladiator's Leather Helm
							conquest(875, i(229646)),	-- Prized Gladiator's Leather Legwraps
							conquest(875, i(229644)),	-- Prized Gladiator's Leather Mask
							conquest(700, i(229648)),	-- Prized Gladiator's Leather Shoulderpads
							conquest(700, i(229647)),	-- Prized Gladiator's Leather Spaulders
							conquest(700, i(229650)),	-- Prized Gladiator's Leather Strap
							conquest(700, i(229640)),	-- Prized Gladiator's Leather Treads
							conquest(875, i(229637)),	-- Prized Gladiator's Leather Vest
							conquest(875, i(229638)),	-- Prized Gladiator's Leather Jerkin
							conquest(525, i(229652)),	-- Prized Gladiator's Leather Wristguards
							conquest(525, i(229651)),	-- Prized Gladiator's Leather Wristwraps
						}),
						cl(SHAMAN, {
							conquest(525, i(229710)),	-- Prized Gladiator's Cloak
							conquest(525, i(229711)),	-- Prized Gladiator's Drape
							conquest(525, i(229712)),	-- Prized Gladiator's Shawl
							conquest(700, i(229706)),	-- Prized Gladiator's Chain Belt
							conquest(700, i(229697)),	-- Prized Gladiator's Chain Boots
							conquest(525, i(229709)),	-- Prized Gladiator's Chain Bracers
							conquest(875, i(229703)),	-- Prized Gladiator's Chain Breeches
							conquest(875, i(229701)),	-- Prized Gladiator's Chain Faceguard
							conquest(700, i(229698)),	-- Prized Gladiator's Chain Gauntlets
							conquest(700, i(229707)),	-- Prized Gladiator's Chain Girdle
							conquest(700, i(229699)),	-- Prized Gladiator's Chain Handguards
							conquest(875, i(229700)),	-- Prized Gladiator's Chain Helm
							conquest(875, i(229702)),	-- Prized Gladiator's Chain Leggings
							conquest(700, i(229704)),	-- Prized Gladiator's Chain Monnion
							conquest(700, i(229696)),	-- Prized Gladiator's Chain Sabatons
							conquest(700, i(229705)),	-- Prized Gladiator's Chain Shoulderguard
							conquest(875, i(229695)),	-- Prized Gladiator's Chain Tunic
							conquest(875, i(229694)),	-- Prized Gladiator's Chain Vest
							conquest(525, i(229708)),	-- Prized Gladiator's Chain Wristguards
						}),
						cl(WARLOCK, {
							conquest(525, i(229576)),	-- Prized Gladiator's Cloak
							conquest(525, i(229577)),	-- Prized Gladiator's Drape
							conquest(525, i(229578)),	-- Prized Gladiator's Shawl
							conquest(700, i(229571)),	-- Prized Gladiator's Silk Amice
							conquest(525, i(229575)),	-- Prized Gladiator's Silk Armbands
							conquest(700, i(229573)),	-- Prized Gladiator's Silk Belt
							conquest(700, i(229572)),	-- Prized Gladiator's Silk Cord
							conquest(700, i(229564)),	-- Prized Gladiator's Silk Gloves
							conquest(875, i(229567)),	-- Prized Gladiator's Silk Guise
							conquest(700, i(229565)),	-- Prized Gladiator's Silk Handwraps
							conquest(875, i(229566)),	-- Prized Gladiator's Silk Hood
							conquest(875, i(229568)),	-- Prized Gladiator's Silk Leggings
							conquest(700, i(229570)),	-- Prized Gladiator's Silk Mantle
							conquest(875, i(229560)),	-- Prized Gladiator's Silk Raiment
							conquest(700, i(229562)),	-- Prized Gladiator's Silk Slippers
							conquest(700, i(229563)),	-- Prized Gladiator's Silk Treads
							conquest(875, i(229569)),	-- Prized Gladiator's Silk Trousers
							conquest(875, i(229561)),	-- Prized Gladiator's Silk Vestments
							conquest(525, i(229574)),	-- Prized Gladiator's Silk Wristwraps
						}),
						cl(WARRIOR, {
							conquest(525, i(229771)),	-- Prized Gladiator's Cloak
							conquest(525, i(229772)),	-- Prized Gladiator's Drape
							conquest(525, i(229773)),	-- Prized Gladiator's Shawl
							conquest(875, i(229754)),	-- Prized Gladiator's Chestguard
							conquest(875, i(229755)),	-- Prized Gladiator's Chestplate
							conquest(700, i(229758)),	-- Prized Gladiator's Plate Gauntlets
							conquest(700, i(229767)),	-- Prized Gladiator's Plate Girdle
							conquest(700, i(229768)),	-- Prized Gladiator's Plate Greatbelt
							conquest(700, i(229759)),	-- Prized Gladiator's Plate Handguards
							conquest(875, i(229760)),	-- Prized Gladiator's Plate Helm
							conquest(875, i(229761)),	-- Prized Gladiator's Plate Helmet
							conquest(875, i(229762)),	-- Prized Gladiator's Plate Legguards
							conquest(700, i(229766)),	-- Prized Gladiator's Plate Pauldrons
							conquest(700, i(229765)),	-- Prized Gladiator's Plate Shoulders
							conquest(700, i(229757)),	-- Prized Gladiator's Plate Stompers
							conquest(525, i(229770)),	-- Prized Gladiator's Plate Vambraces
							conquest(700, i(229756)),	-- Prized Gladiator's Plate Warboots
							conquest(875, i(229763)),	-- Prized Gladiator's Plate Wargreaves
							conquest(525, i(229769)),	-- Prized Gladiator's Plate Wristguards
						}),
					}),
					filter(FINGER_F, {
						conquest(525, i(229775)),	-- Prized Gladiator's Band
						conquest(525, i(229774)),	-- Prized Gladiator's Ring
						conquest(525, i(229776)),	-- Prized Gladiator's Signet
					}),
					filter(MISC, {
						conquest(700, i(236938)),	-- Conqueror's Prized Lacquer
						conquest(875, i(236936)),	-- Conqueror's Prized Varnish
					}),
					filter(NECK_F, {
						conquest(525, i(229779)),	-- Prized Gladiator's Amulet
						conquest(525, i(229777)),	-- Prized Gladiator's Necklace
						conquest(525, i(229778)),	-- Prized Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						conquest(700, i(229780)),	-- Prized Gladiator's Badge of Ferocity
						conquest(700, i(229782)),	-- Prized Gladiator's Emblem
						conquest(700, i(229781)),	-- Prized Gladiator's Insignia of Alacrity
						conquest(525, i(229783)),	-- Prized Gladiator's Medallion
						conquest(525, i(229784)),	-- Prized Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(525, i(229792)),	-- Prized Gladiator's Army Knife
						conquest(1750, i(229797)),	-- Prized Gladiator's Blaster
						conquest(1225, i(229791)),	-- Prized Gladiator's Bludgeon
						conquest(1750, i(229790)),	-- Prized Gladiator's Bow
						conquest(525, i(229799)),	-- Prized Gladiator's Bulwark
						conquest(525, i(232620)),	-- Prized Gladiator's Conduit
						conquest(875, i(229786)),	-- Prized Gladiator's Dagger
						conquest(875, i(229796)),	-- Prized Gladiator's Detonator
						conquest(1750, i(229788)),	-- Prized Gladiator's Drill
						conquest(875, i(229794)),	-- Prized Gladiator's Flail
						conquest(525, i(229793)),	-- Prized Gladiator's Gasket
						conquest(1750, i(229800)),	-- Prized Gladiator's Greatsaw
						conquest(1750, i(229798)),	-- Prized Gladiator's Greatstaff
						conquest(875, i(229785)),	-- Prized Gladiator's Last Resort
						conquest(1225, i(229795)),	-- Prized Gladiator's Pincer
						conquest(1750, i(229801)),	-- Prized Gladiator's Pulverizer
						conquest(1750, i(229804)),	-- Prized Gladiator's Pylon
						conquest(900, i(229803)),	-- Prized Gladiator's Skewer
						conquest(1750, i(229789)),	-- Prized Gladiator's Staff
						conquest(900, i(229802)),	-- Prized Gladiator's Torchblade
						conquest(875, i(229787)),	-- Prized Gladiator's Warglaive
					}),
					i(230721, {	-- Prized Equipment Chest
						["timeline"] = { ADDED_11_1_5 },
					}),
				},
			}),
		})),
		]]--
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_0 }, ["bonusID"] = 7532 }, {
			--[[
			n(CLASSES, {
				cl(DEATHKNIGHT, {
					i(229731),	-- Prized Gladiator's Cloak
					i(229713),	-- Prized Gladiator's Chestguard
					i(229718),	-- Prized Gladiator's Plate Gauntlets
					i(229727),	-- Prized Gladiator's Plate Girdle
					i(229721),	-- Prized Gladiator's Plate Helm
					i(229723),	-- Prized Gladiator's Plate Legguards
					i(229725),	-- Prized Gladiator's Plate Shoulders
					i(229716),	-- Prized Gladiator's Plate Warboots
					i(229729),	-- Prized Gladiator's Plate Wristguards
				}),
				cl(DEMONHUNTER, {
					i(229615),	-- Prized Gladiator's Cloak
					i(229611),	-- Prized Gladiator's Leather Belt
					i(229601),	-- Prized Gladiator's Leather Boots
					i(229607),	-- Prized Gladiator's Leather Breeches
					i(229603),	-- Prized Gladiator's Leather Gloves
					i(229605),	-- Prized Gladiator's Leather Helm
					i(229609),	-- Prized Gladiator's Leather Spaulders
					i(229599),	-- Prized Gladiator's Leather Vest
					i(229613),	-- Prized Gladiator's Leather Wristwraps
				}),
				cl(DRUID, {
					i(229596),	-- Prized Gladiator's Cloak
					i(229591),	-- Prized Gladiator's Leather Belt
					i(229581),	-- Prized Gladiator's Leather Boots
					i(229587),	-- Prized Gladiator's Leather Breeches
					i(229583),	-- Prized Gladiator's Leather Gloves
					i(229585),	-- Prized Gladiator's Leather Helm
					i(229589),	-- Prized Gladiator's Leather Spaulders
					i(229579),	-- Prized Gladiator's Leather Vest
					i(229594),	-- Prized Gladiator's Leather Wristwraps
				}),
				cl(EVOKER, {
					i(229672),	-- Prized Gladiator's Cloak
					i(229656),	-- Prized Gladiator's Armored Scales
					i(229668),	-- Prized Gladiator's Chain Belt
					i(229660),	-- Prized Gladiator's Chain Gauntlets
					i(229662),	-- Prized Gladiator's Chain Helm
					i(229664),	-- Prized Gladiator's Chain Leggings
					i(229666),	-- Prized Gladiator's Chain Monnion
					i(229658),	-- Prized Gladiator's Chain Sabatons
					i(229670),	-- Prized Gladiator's Chain Wristguards
				}),
				cl(HUNTER, {
					i(229691),	-- Prized Gladiator's Cloak
					i(229687),	-- Prized Gladiator's Chain Belt
					i(229679),	-- Prized Gladiator's Chain Gauntlets
					i(229681),	-- Prized Gladiator's Chain Helm
					i(229683),	-- Prized Gladiator's Chain Leggings
					i(229685),	-- Prized Gladiator's Chain Monnion
					i(229677),	-- Prized Gladiator's Chain Sabatons
					i(229675),	-- Prized Gladiator's Chain Vest
					i(229689),	-- Prized Gladiator's Chain Wristguards
				}),
				cl(MAGE, {
					i(229538),	-- Prized Gladiator's Cloak
					i(229534),	-- Prized Gladiator's Silk Cord
					i(229526),	-- Prized Gladiator's Silk Gloves
					i(229528),	-- Prized Gladiator's Silk Hat
					i(229530),	-- Prized Gladiator's Silk Leggings
					i(229532),	-- Prized Gladiator's Silk Mantle
					i(229522),	-- Prized Gladiator's Silk Robe
					i(229524),	-- Prized Gladiator's Silk Slippers
					i(229536),	-- Prized Gladiator's Silk Wristwraps
				}),
				cl(MONK, {
					i(229634),	-- Prized Gladiator's Cloak
					i(229630),	-- Prized Gladiator's Leather Belt
					i(229620),	-- Prized Gladiator's Leather Boots
					i(229626),	-- Prized Gladiator's Leather Breeches
					i(229622),	-- Prized Gladiator's Leather Gloves
					i(229624),	-- Prized Gladiator's Leather Helm
					i(229628),	-- Prized Gladiator's Leather Spaulders
					i(229618),	-- Prized Gladiator's Leather Vest
					i(229632),	-- Prized Gladiator's Leather Wristwraps
				}),
				cl(PALADIN, {
					i(229751),	-- Prized Gladiator's Cloak
					i(229734),	-- Prized Gladiator's Chestguard
					i(229738),	-- Prized Gladiator's Plate Gauntlets
					i(229746),	-- Prized Gladiator's Plate Girdle
					i(229740),	-- Prized Gladiator's Plate Helm
					i(229742),	-- Prized Gladiator's Plate Legguards
					i(229744),	-- Prized Gladiator's Plate Shoulders
					i(229736),	-- Prized Gladiator's Plate Warboots
					i(229748),	-- Prized Gladiator's Plate Wristguards
				}),
				cl(PRIEST, {
					i(229557),	-- Prized Gladiator's Cloak
					i(229541),	-- Prized Gladiator's Silk Chestwrap
					i(229553),	-- Prized Gladiator's Silk Cord
					i(229545),	-- Prized Gladiator's Silk Gloves
					i(229547),	-- Prized Gladiator's Silk Hood
					i(229549),	-- Prized Gladiator's Silk Leggings
					i(229551),	-- Prized Gladiator's Silk Mantle
					i(229543),	-- Prized Gladiator's Silk Slippers
					i(229555),	-- Prized Gladiator's Silk Wristwraps
				}),
				cl(ROGUE, {
					i(229653),	-- Prized Gladiator's Cloak
					i(229649),	-- Prized Gladiator's Leather Belt
					i(229639),	-- Prized Gladiator's Leather Boots
					i(229645),	-- Prized Gladiator's Leather Breeches
					i(229641),	-- Prized Gladiator's Leather Gloves
					i(229643),	-- Prized Gladiator's Leather Helm
					i(229647),	-- Prized Gladiator's Leather Spaulders
					i(229637),	-- Prized Gladiator's Leather Vest
					i(229651),	-- Prized Gladiator's Leather Wristwraps
				}),
				cl(SHAMAN, {
					i(229710),	-- Prized Gladiator's Cloak
					i(229706),	-- Prized Gladiator's Chain Belt
					i(229698),	-- Prized Gladiator's Chain Gauntlets
					i(229700),	-- Prized Gladiator's Chain Helm
					i(229702),	-- Prized Gladiator's Chain Leggings
					i(229704),	-- Prized Gladiator's Chain Monnion
					i(229696),	-- Prized Gladiator's Chain Sabatons
					i(229694),	-- Prized Gladiator's Chain Vest
					i(229708),	-- Prized Gladiator's Chain Wristguards
				}),
				cl(WARLOCK, {
					i(229576),	-- Prized Gladiator's Cloak
					i(229572),	-- Prized Gladiator's Silk Cord
					i(229564),	-- Prized Gladiator's Silk Gloves
					i(229566),	-- Prized Gladiator's Silk Hood
					i(229568),	-- Prized Gladiator's Silk Leggings
					i(229570),	-- Prized Gladiator's Silk Mantle
					i(229560),	-- Prized Gladiator's Silk Raiment
					i(229562),	-- Prized Gladiator's Silk Slippers
					i(229574),	-- Prized Gladiator's Silk Wristwraps
				}),
				cl(WARRIOR, {
					i(229771),	-- Prized Gladiator's Cloak
					i(229754),	-- Prized Gladiator's Chestguard
					i(229758),	-- Prized Gladiator's Plate Gauntlets
					i(229767),	-- Prized Gladiator's Plate Girdle
					i(229760),	-- Prized Gladiator's Plate Helm
					i(229762),	-- Prized Gladiator's Plate Legguards
					i(229765),	-- Prized Gladiator's Plate Shoulders
					i(229756),	-- Prized Gladiator's Plate Warboots
					i(229769),	-- Prized Gladiator's Plate Wristguards
				}),
			}),
			]]--
			n(219216, {	-- Rogurn <Elite Conquest Quartermaster>
				["coord"] = { 59.8, 69.3, DORNOGAL },
				["g"] = {
					honor(100, i(232908, {	-- Astral Gladiator's Tabard
						["sourceAchievements"] = { 41027 },	-- Elite: The War Within Season 3
					})),
					--moh(5, i(230784)),	-- Prized Gladiator's Army Knife
					--moh(10, i(230776)),	-- Prized Gladiator's Blaster
					--moh(5, i(230774)),	-- Prized Gladiator's Bludgeon
					--moh(10, i(230788)),	-- Prized Gladiator's Bow
					--moh(5, i(230785)),	-- Prized Gladiator's Conduit
					--moh(10, i(230782)),	-- Prized Gladiator's Dagger
					--moh(5, i(230787)),	-- Prized Gladiator's Detonator
					--moh(10, i(230778)),	-- Prized Gladiator's Drill
					--moh(5, i(230783)),	-- Prized Gladiator's Flail
					--moh(5, i(230786)),	-- Prized Gladiator's Gasket
					--moh(10, i(230789)),	-- Prized Gladiator's Greatsaw
					--moh(5, i(230775)),	-- Prized Gladiator's Pincer
					--moh(10, i(230790)),	-- Prized Gladiator's Pulverizer
					--moh(10, i(230781)),	-- Prized Gladiator's Pylon
					--moh(10, i(230779)),	-- Prized Gladiator's Staff
					--moh(10, i(230780)),	-- Prized Gladiator's Torchblade
					--moh(5, i(230777)),	-- Prized Gladiator's Warglaive
				},
			}),
		})),
	}),
}))));