---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(VENDORS, {
			n(259864, {	-- Sathren Azuredawn <Decor Specialist>
				["coord"] = { 43.2, 47.5, MAP.MIDNIGHT.EVERSONG_WOODS },
				["groups"] = sharedData({
					["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
				}, {
					i(254773),	-- "Eversong Langern" Painting (DECOR!)
					i(253488),	-- Diamond Honor Stone (DECOR!)
					i(251911),	-- Eversong Dessert Platter (DECOR!)
					i(251909),	-- Eversong Feast Platter (DECOR!)
					i(243106),	-- Gemmed Eversong Lantern (DECOR!)
					i(263211),	-- Gilded Eversong Cup (DECOR!)
					i(251912),	-- Goldenmist Grapes (DECOR!)
					i(246458),	-- Grand Aethercharged Crystal (DECOR!)
					i(244783, {	-- Majestic Lightwood Table (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(245992),	-- Ornate Silvermoon Candelabra (DECOR!)
					i(264660),	-- Ren'dorei Spired Tent (DECOR!)
					i(263231, {	-- Silvermoon Curio Shelves (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(257367),	-- Silvermoon Energy Focus (DECOR!)
					i(245282),	-- Silvermoon Library Bookcase (DECOR!)
					i(244538),	-- Silvermoon Sundial (DECOR!)
					i(253485),	-- Sin'dorei Honor Stone (DECOR!)
					i(264248),	-- Sin'dorei Storage Jar (DECOR!)
					i(251914),	-- Sumptuous Berry Pie (DECOR!)
					i(262610),	-- Swirling Ritual Pedestal (DECOR!)
					-- Two more "locked" items with no ID or name with a cost of 2500 (on Beta)
					--i(XXXXXX, {	-- XX
					--	["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					--}),
					--i(XXXXXX, {	-- XX
					--	["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					--}),
				}),
			}),
		}),
	}),
}));
