---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(ZONE_REWARDS, {
			-- Citrines
			i(228639),	-- Fathomdweller's Runed Citrine
			i(228646),	-- Legendary Skipper's Citrine
			i(228644),	-- Mariner's Hallowed Citrine
			i(228643),	-- Old Salt's Bardic Citrine
			i(228648),	-- Roaring War-Queen's Citrine
			i(228647),	-- Seabed Leviathan's Citrine
			i(228642),	-- Storm Sewer's Citrine
			i(228638),	-- Stormbringer's Runed Citrine
			i(228635),	-- Squall Sailor's Citrine
			i(228634),	-- Thunderlord's Crackling Citrine
			i(228636),	-- Undersea Overseer's Citrine
			--
			i(232372, {	-- Crate of Bygone Riches
				i(233915),	-- Plated Sea Boots (COSMETIC!)
			}),
			n(228099, {	-- Blinky Greasefingers
				["description"] = "Click on dialog option that pop, after you learn Snapdragom mount",
				--["lockCriteria"] = {1, "questID", 86485 },	-- TODO: probably a spellID will be better?
				["coord"] = { 69.2, 45.8, SIREN_ISLE },
				["g"] = {
					i(233497), -- Kaja'Cola-braised Snapdragon Treat
				},
			}),
			-- Do nothing, placeholder?
			--i(191087, {	-- Treasure Map: Ohn'ahran Plains (NYI, after use fire questID 65912)
			--	["cost"] = {
			--		{ "i", 191058, 1 },	-- Dilapidated Parchment: Bottom Half
			--		{ "i", 191059, 1 },	-- Dilapidated Parchment: Top Half
			--	},
			--}),
			i(234327),	-- Turbulent Fragment (TODO: probably need a better way to code it)
			i(232570, {	-- Turbulent Runekey
				["cost"] = {{"i", 234327, 3 }},
			}),
		}),
	}),
})));