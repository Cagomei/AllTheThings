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
				--[[petbattle(q(82297, {	-- xx
					["provider"] = { "n", xx },	-- xx
					["coord"] = { x, y, SIREN_ISLE },
				})),
				pvp(q(xx, {	-- xx
					["coord"] = { x, y, SIREN_ISLE },
				})),]]--
				q(84850, {	-- Serpent's Wrath
					-- TODO: unsure if have more than one stage
					--["coord"] = { 71.0, 44.1, SIREN_ISLE },	-- inaccurate, pop after unlock
				}),
				q(85755, {	-- The Drain
					-- TODO: could be tracker too, there multiple version of it (stages?) for every wqs
					-- TODO: first stage (explosives)
					--["coord"] = { 56.5, 66.3, SIREN_ISLE },
				}),
				q(85753, {	-- The Drain
					-- TODO: could be tracker too, there multiple version of it (stages?) for every wqs
					-- TODO: last stage (rare to kill in cave)
					--["coord"] = { 56.5, 66.3, SIREN_ISLE },
				}),
				q(85760, {	-- The Drowned Lair
					-- TODO: could be tracker too, there multiple version of it (stages?) for every wqs
					-- TODO: first stage (bombardment)?
					--["coord"] = { 27.3, 65.5, SIREN_ISLE },
				}),
				q(85762, {	-- The Drowned Lair
					-- TODO: could be tracker too, there multiple version of it (stages?) for every wqs
					-- TODO: pop right after completion one above
					--["coord"] = { 27.3, 65.5, SIREN_ISLE },
				}),
				n(SPECIAL, {
					q(86174),	-- Special Assignment: Storm's a Brewin (seems to be unlock tracker)
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