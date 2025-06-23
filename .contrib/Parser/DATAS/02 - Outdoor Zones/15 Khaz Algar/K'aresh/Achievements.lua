---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(ACHIEVEMENTS, {
			-- TODO: WIP, some of these don't display right yet, or they might be in the wrong place
			ach(42731),	-- Become a Hero. Become a Phasediver!
			ach(41979),	-- Bounty Seeker
			ach(41778),	-- Brokers Don't Care How You Win (automated)
			ach(42737),	-- Capstoned (automated)
			ach(42729),	-- Dangerous Prowlers of K'aresh (automated)
			ach(41811),	-- Ecological Stability (automated)
			ach(41815, {	-- Ecological Succession
				-- Meta achievement
				["sym"] = {{"meta_achievement",
					41778,	-- Brokers Don't Care How You Win
					41811,	-- Ecological Stability
					41809,	-- Ecological Variety
					41812,	-- Expertly Done
					41808,	-- Otherworldly Ecologist
				}},
			}),
			ach(41809),	-- Ecological Variety (automated)
			ach(41812),	-- Expertly Done (automated)
			ach(42740),	-- Explore K'aresh (automated)
			ach(42736),	-- Ixthar's Legacy (automated)
			ach(42730),	-- Jump, Jump, and Away!
			skyriding(ach(42727)),	-- K'aresh Glyph Hunter (automated)
			ach(41978),	-- Moonlighter
			ach(41808),	-- Otherworldly Ecologist (automated)
			ach(42742),	-- Power of the Reshii
			ach(42761),	-- Remnants of a Shattered World (automated)
			ach(60890),	-- Secrets of the K'areshi (automated)
			skyriding(ach(42712)),	-- Skyriding Glyphs: Tazavesh, the Veiled Market
			skyriding(ach(42713)),	-- Skyriding Glyph: Serrated Peaks
			skyriding(ach(42714)),	-- Skyriding Glyphs: The Oasis
			skyriding(ach(42715)),	-- Skyriding Glyphs: Fracture of Laacuna
			skyriding(ach(42716)),	-- Skydiving Glyphs: Shadow Point
			skyriding(ach(42717)),	-- Skyriding Glyphs: Castigaar
			skyriding(ach(42718)),	-- Skyriding Glyphs: Eco-Dome: Primus
			skyriding(ach(42719)),	-- Skydiving Glyphs: North Sufaad
			ach(42739),	-- Sojourner of K'aresh (automated)
			ach(41970),	-- The Knife's Edge (automated)
			pvp(ach(42131)),	-- Tour of Duty: K'aresh
			ach(42741),	-- Treasures of K'aresh (automated)
			ach(60889, {	-- Unraveled and Persevering
				-- Meta achievement
				["sym"] = {{"meta_achievement",
					41979,	-- Bounty Seeker
					42729,	-- Dangerous Prowlers of K'aresh
					42740,	-- Explore K'aresh
					42742,	-- Power of the Reshii
					42761,	-- Remnants of a Shattered World
					60890,	-- Secrets of the K'areshi
					42741,	-- Treasures of K'aresh
				}},
			}),
			ach(41980),	-- Vigilante
			ach(42738),	-- We've All Got Swords! (automated)
		}),
	}),
})));