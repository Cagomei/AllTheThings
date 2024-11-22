-------------------------------------------------------------------
--	  E X P A N S I O N   F E A T U R E S	M O D U L E	   --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		ach(40107, {	-- Harbinger of the Weatherd
            -- INFO: The 4 harbinger achievements (which are feats of strength) were added at the start of 11.0.2 but didn't fire and showed a TODO in the name. They were corrected before 11.0.5. They could be timelined to the exact build if prefered but this is good enough.
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40115, {	-- Harbinger of the Carved
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40118, {	-- Harbinger of the Runed
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40939, {	-- Harbinger of the Gilded
			["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
		}),
		ach(40591, {	-- Khaz Algar Diplomat
            -- Unfun fact: Blizzard isn't currently showing these criteria ingame, and manually adding them doesn't properly fetch their names, I'm just gonna leave them here for reference for when they fix this. It can be either automated, or written out in full.
            -- Unfun fact the second: They never fixed the achievement, they just remade it.
            -- crit(68907),    -- Council of Dornogal
            -- crit(68908),    -- The Assembly of the Deeps
            -- crit(68909),    -- Hallowfall Arathi
            -- crit(68910),    -- The Severed Threads
            ["timeline"] = { REMOVED_11_0_7 },
            ["g"] = {
                iensemble(219110),	-- Vermillion Patron's Elegance
            },
		}),
        ach(41169, {	-- Khaz Algar Diplomat
            ["timeline"] = { ADDED_11_0_7 },
            ["g"] = {
                crit(71181), -- Council of Dornogal
                crit(71180), -- The Assembly of the Deeps
                crit(71179), -- Hallowfall Arathi
                crit(71177), -- The Severed Threads
                iensemble(219110),	-- Vermillion Patron's Elegance
            },
		}),
        -- INFO: Verified 2024-10-04, only shows one criteria without achraw
		achraw(40660, bubbleDownSelf({ ["timeline"] = { REMOVED_11_1_0 }, }, {	-- The War Within Season 1: Spelunker Supreme
			crit(67375), -- Attained 1600+ Rated PVP rating
			crit(66890), -- Attained 2000+ Mythic Plus rating
			crit(67597), -- Defeated Queen Ansurek on Heroic or Mythic difficulty
			i(226206),	-- Mark of the Spelunker Supreme
		})),
		ach(40723, {	-- Web-Wrapped in the Finest Silks (automated)
			["timeline"] = { REMOVED_11_1_0 },
			["g"] = {
				i(226224, {	-- Luminous Nerubian Catalyst Stone
					d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212002),	-- Exhumed Centurion's Galea
						}),
						cl(DEMONHUNTER, {
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							-- Blizzard is trolling and nothing is rewarded here
						}),
						cl(EVOKER, {
							i(212027),	-- Fumaroles of the Destroyer
							i(212029),	-- Horns of the Destroyer
						}),
						cl(HUNTER, {
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212020),	-- Lightless Scavenger's Skull
						}),
						cl(MAGE, {
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
						}),
						cl(MONK, {
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212047),	-- Gatecrasher's Horns
						}),
						cl(PALADIN, {
							i(211991),	-- Entombed Seraph's Plumes
							i(211993),	-- Entombed Seraph's Casque
						}),
						cl(PRIEST, {
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212083),	-- Living Luster's Semblance
						}),
						cl(ROGUE, {
							i(212036),	-- K'areshi Phantom's Shoulderpads
						}),
						cl(SHAMAN, {
							i(212009),	-- Concourse of the Forgotten Reservoir
							i(212011),	-- Noetic of the Forgotten Reservoir
						}),
						cl(WARLOCK, {
							i(212072),	-- Hexflame Coven's Altar
							i(212074),	-- Hexflame Coven's All-Seeing Eye
						}),
						cl(WARRIOR, {
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211984),	-- Warsculptor's Barbute
						}),
					})),
					d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212002),	-- Exhumed Centurion's Galea
						}),
						cl(DEMONHUNTER, {
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
						}),
						cl(EVOKER, {
							i(212027),	-- Fumaroles of the Destroyer
							i(212029),	-- Horns of the Destroyer
						}),
						cl(HUNTER, {
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212020),	-- Lightless Scavenger's Skull
						}),
						cl(MAGE, {
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
						}),
						cl(MONK, {
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212047),	-- Gatecrasher's Horns
						}),
						cl(PALADIN, {
							i(211991),	-- Entombed Seraph's Plumes
							i(211993),	-- Entombed Seraph's Casque
						}),
						cl(PRIEST, {
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212083),	-- Living Luster's Semblance
						}),
						cl(ROGUE, {
							i(212036),	-- K'areshi Phantom's Shoulderpads
						}),
						cl(SHAMAN, {
							i(212009),	-- Concourse of the Forgotten Reservoir
							i(212011),	-- Noetic of the Forgotten Reservoir
						}),
						cl(WARLOCK, {
							i(212072),	-- Hexflame Coven's Altar
							i(212074),	-- Hexflame Coven's All-Seeing Eye
						}),
						cl(WARRIOR, {
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211984),	-- Warsculptor's Barbute
						}),
					})),
					d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212002),	-- Exhumed Centurion's Galea
						}),
						cl(DEMONHUNTER, {
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
						}),
						cl(EVOKER, {
							i(212027),	-- Fumaroles of the Destroyer
							i(212029),	-- Horns of the Destroyer
						}),
						cl(HUNTER, {
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212020),	-- Lightless Scavenger's Skull
						}),
						cl(MAGE, {
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
						}),
						cl(MONK, {
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212047),	-- Gatecrasher's Horns
						}),
						cl(PALADIN, {
							i(211991),	-- Entombed Seraph's Plumes
							i(211993),	-- Entombed Seraph's Casque
						}),
						cl(PRIEST, {
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212083),	-- Living Luster's Semblance
						}),
						cl(ROGUE, {
							i(212036),	-- K'areshi Phantom's Shoulderpads
						}),
						cl(SHAMAN, {
							i(212009),	-- Concourse of the Forgotten Reservoir
							i(212011),	-- Noetic of the Forgotten Reservoir
						}),
						cl(WARLOCK, {
							i(212072),	-- Hexflame Coven's Altar
							i(212074),	-- Hexflame Coven's All-Seeing Eye
						}),
						cl(WARRIOR, {
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211984),	-- Warsculptor's Barbute
						}),
					})),
					d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
						cl(DEATHKNIGHT, {
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212002),	-- Exhumed Centurion's Galea
						}),
						cl(DEMONHUNTER, {
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
						}),
						cl(EVOKER, {
							i(212027),	-- Fumaroles of the Destroyer
							i(212029),	-- Horns of the Destroyer
						}),
						cl(HUNTER, {
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212020),	-- Lightless Scavenger's Skull
						}),
						cl(MAGE, {
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
						}),
						cl(MONK, {
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212047),	-- Gatecrasher's Horns
						}),
						cl(PALADIN, {
							i(211991),	-- Entombed Seraph's Plumes
							i(211993),	-- Entombed Seraph's Casque
						}),
						cl(PRIEST, {
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212083),	-- Living Luster's Semblance
						}),
						cl(ROGUE, {
							i(212036),	-- K'areshi Phantom's Shoulderpads
						}),
						cl(SHAMAN, {
							i(212009),	-- Concourse of the Forgotten Reservoir
							i(212011),	-- Noetic of the Forgotten Reservoir
						}),
						cl(WARLOCK, {
							i(212072),	-- Hexflame Coven's Altar
							i(212074),	-- Hexflame Coven's All-Seeing Eye
						}),
						cl(WARRIOR, {
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211984),	-- Warsculptor's Barbute
						}),
					})),
					n(PVP_GLADIATOR, bubbleDown({ ["bonusID"] = 6898 }, {
						cl(DEATHKNIGHT, {
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212002),	-- Exhumed Centurion's Galea
						}),
						cl(DEMONHUNTER, {
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
						}),
						cl(EVOKER, {
							i(212027),	-- Fumaroles of the Destroyer
							i(212029),	-- Horns of the Destroyer
						}),
						cl(HUNTER, {
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212020),	-- Lightless Scavenger's Skull
						}),
						cl(MAGE, {
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
						}),
						cl(MONK, {
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212047),	-- Gatecrasher's Horns
						}),
						cl(PALADIN, {
							i(211991),	-- Entombed Seraph's Plumes
							i(211993),	-- Entombed Seraph's Casque
						}),
						cl(PRIEST, {
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212083),	-- Living Luster's Semblance
						}),
						cl(ROGUE, {
							i(212036),	-- K'areshi Phantom's Shoulderpads
						}),
						cl(SHAMAN, {
							i(212009),	-- Concourse of the Forgotten Reservoir
							i(212011),	-- Noetic of the Forgotten Reservoir
						}),
						cl(WARLOCK, {
							i(212072),	-- Hexflame Coven's Altar
							i(212074),	-- Hexflame Coven's All-Seeing Eye
						}),
						cl(WARRIOR, {
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211984),	-- Warsculptor's Barbute
						}),
					})),
					n(PVP_ELITE, bubbleDown({ ["bonusID"] = 8107 }, {
						cl(DEATHKNIGHT, {
							i(211999),	-- Exhumed Centurion's Baltea
							i(212000),	-- Exhumed Centurion's Spikes
							i(212002),	-- Exhumed Centurion's Galea
						}),
						cl(DEMONHUNTER, {
							i(212062),	-- Waistguard of the Hypogeal Nemesis
							i(212063),	-- War-Mantle of the Hypogeal Nemesis
							i(212065),	-- Impalers of the Hypogeal Nemesis
						}),
						cl(DRUID, {
							i(212053),	-- Faulds of the Greatlynx
							i(212054),	-- Maw of the Greatlynx
							i(212056),	-- Mask of the Greatlynx
						}),
						cl(EVOKER, {
							i(212027),	-- Fumaroles of the Destroyer
							i(212029),	-- Horns of the Destroyer
						}),
						cl(HUNTER, {
							i(212018),	-- Lightless Scavenger's Taxidermy
							i(212020),	-- Lightless Scavenger's Skull
						}),
						cl(MAGE, {
							i(212089),	-- Sigil of Violet Rebirth
							i(212090),	-- Beacons of Violet Rebirth
							i(212092),	-- Hood of Violet Rebirth
						}),
						cl(MONK, {
							i(212045),	-- Gatecrasher's Enduring Effigy
							i(212047),	-- Gatecrasher's Horns
						}),
						cl(PALADIN, {
							i(211991),	-- Entombed Seraph's Plumes
							i(211993),	-- Entombed Seraph's Casque
						}),
						cl(PRIEST, {
							i(212080),	-- Living Luster's Lightbelt
							i(212081),	-- Living Luster's Dominion
							i(212083),	-- Living Luster's Semblance
						}),
						cl(ROGUE, {
							i(212036),	-- K'areshi Phantom's Shoulderpads
						}),
						cl(SHAMAN, {
							i(212009),	-- Concourse of the Forgotten Reservoir
							i(212011),	-- Noetic of the Forgotten Reservoir
						}),
						cl(WARLOCK, {
							i(212072),	-- Hexflame Coven's Altar
							i(212074),	-- Hexflame Coven's All-Seeing Eye
						}),
						cl(WARRIOR, {
							i(211982),	-- Warsculptor's Horned Spaulders
							i(211984),	-- Warsculptor's Barbute
						}),
					})),
				}),
			},
		}),
		ach(41201, bubbleDownSelf({	-- You Xal Not Pass
			["timeline"] = { ADDED_11_0_7 },
		},{
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				41189,	-- Azj the World Turns
                41188,  -- Crystal Chronicled
                41133,  -- Isle Remember You
                41187,  -- Rage Aside the Machine
                41186,  -- Slate of the Union
			}},
			["groups"] = {
				i(223313),	-- Shadow of Doubt (MOUNT!)
			},
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		q(83826),	-- Triggered when using 'Luminous Nerubian Catalyst Stone' (itemID 226224) (spellID 458517)
	}),
})));