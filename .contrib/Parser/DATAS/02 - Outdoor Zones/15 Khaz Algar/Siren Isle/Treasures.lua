---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(TREASURES, {
			--repeatable local treasure
			--o(474822),	-- Runed Storm Cache
			--o(500683),	-- Seafarer's Cache
			--o(500686),	-- Seafarer's Cache
			--
			o(505503, {	--  Ashvane Issued Workboots
				-- TODO: unsure if something needed in addition or it just exist here now
				["coord"] = { 41.6, 45.8, SIREN_ISLE },
				["questID"] = 86765,
				["g"] = {
					i(233916), -- Ashvane Issued Workboots (COSMETIC!)
					i(191058), -- Dilapidated Parchment: Bottom Half (NYI)
					i(191059), -- Dilapidated Parchment: Top Half (NYI)
				},
			}),
			o(464233, {	--  Bilge Rat Supply Chest
				["coord"] = { 62.4, 90.8, SIREN_ISLE },
				["questID"] = 84529,
				["cost"] = {{ "i", 228621, 1 }},	-- Bilge Rat Supply Key
			}),
			o(465272, {	--  Empty Kaja'Cola Can
				["coord"] = { 60.8, 62.9, SIREN_ISLE },
				["g"] = {
					i(228665),	-- Empty Kaja'Cola (QS!)
				},
			}),
			o(463539, {	-- Pilfered Earthen Chest
				["coord"] = { 68.4, 94.4, SIREN_ISLE },
				["questID"] = 84527,
			}),
			o(499127, {	-- Runemarked Coffer
				-- TODO: The Forgotten Tomb + storm phase
				-- TODO: I don't make screenshot for this one, so I'm unsure if it something in loot or it is related to treasure chest)
				["coord"] = { 26.6, 23.9, 2375 },
				["questID"] = 85859,
			}),
			o(500407, {	-- Runed Storm Cache
				-- TODO: The Forgotten Tomb + storm phase
				-- TODO: I don't make screenshot for this one, so I'm unsure if it something in loot or it is related to treasure chest)
				["coord"] = { 28.5, 73.5, 2375 },
				["questID"] = 84843,
			}),
			o(493375, {	-- Rune-Sealed Coffer
				-- TODO: move to hqt? 85714 solving puzzle before unlock it
				["coord"] = { 67.8, 73.5, SIREN_ISLE },
				["questID"] = 86171,
			}),
			o(505476, {	-- Stone Carver's Scramseax
				["coord"] = { 26.5, 23.4, 2375 },
				["questID"] = 86732,
				["g"] = {
					i(233834),	-- Stone Carver's Scramseax (COSMETIC!)
				},
			}),
		}),
	}),
})));