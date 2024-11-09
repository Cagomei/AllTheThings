---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(ZONE_REWARDS, {
			-- Citrines
			i(228644),	-- Mariner's Hallowed Citrine
			i(228634),	-- Thunderlord's Crackling Citrine
			--
			i(232372),	-- Crate of Bygone Riches
			i(232605),	-- Thunderous Fragment (TODO: from Pilfered Earthen Chest but seems to be can rng drop from any mobs?)
			o(465272, {	--  Empty Kaja'Cola Can
				["coord"] = { 60.8, 62.9, SIREN_ISLE },
				["g"] = {
					i(228665),	-- Empty Kaja'Cola (QS!)
				},
			}),
		}),
	}),
})));