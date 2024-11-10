---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(ACHIEVEMENTS, {
			--[[ TODO: (!) New achievements not sourced yet
			ach(41133, { 	-- Isle Remember You
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					41050,	-- A Choir of Citrines (!)
					41045,	-- A Song of Secrets (!)
					41046,	-- Clean Up on Isle Siren (!)
					41043,	-- Excavation Projects (!)
					41042,	-- Siren-ity Now! (!)
					41131,	-- Treasures of the Storm (!)
				}},
				["groups"] = {
					i(232991),	-- The Breaker's Song (MOUNT!)
				},
			}),
			]]--
		}),
	}),
})));