---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(ZONE_DROPS, {
			-- seems like can be looted only in storm phase
			i(232605),	-- Thunderous Fragment (TODO: from Pilfered Earthen Chest but seems to be can rng drop from any mobs?)
			i(232572),	-- Torrential Runekey
			--i(232570),	-- Turbulent Runekey
		}),
	}),
})));