---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				TWW_ACCOUNT_CAMPAIGN_QUEST,
				84725,	-- The Circlet Calls
			},
			["g"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
				q(84850, {	-- Serpent's Wrath
					--["coord"] = { 71.0, 44.1, SIREN_ISLE },	-- inaccurate, pop after unlock
				}),
				q(85755, {	-- The Drain
					-- TODO: available one every time after 85753 version is completed
					["coord"] = { 56.5, 66.3, SIREN_ISLE },
				}),
				q(85753, {	-- The Drain
					-- TODO: seems like this is first per week version
					["coord"] = { 56.5, 66.3, SIREN_ISLE },
				}),
				q(85760, {	-- The Drowned Lair
					-- TODO: seems like this is first per week version
					["coord"] = { 27.3, 65.5, SIREN_ISLE },
				}),
				q(85762, {	-- The Drowned Lair
					-- TODO: available one every time after 85760 version is completed
					["coord"] = { 27.3, 65.5, SIREN_ISLE },
				}),
				q(84851, {	-- Tides of Greed
					-- TODO: Pirates
					--["coord"] = { x, y, SIREN_ISLE },	-- Entire zone
					--["g"] = {
					--	i(228646),	-- Legendary Skipper's Citrine
					--},
				}),
				n(SPECIAL, {
					q(86174),	-- Special Assignment: Storm's a Brewin (TODO: seems to be unlock tracker)
					q(85113, {	-- Special Assignment: Storm's a Brewin
						["provider"] = { "n", 227815 },	-- Suzie Boltwrench
						["coord"] = { 69.0, 49.2, SIREN_ISLE },
						["g"] = {
							i(232466),	-- Leave the Storm (QI!)
						},
					}),
				}),
			}),
		}),
	}),
})));