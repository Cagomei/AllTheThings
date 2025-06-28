---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(WORLD_QUESTS, {
			q(85460, {	-- Ecological Succession
				["coord"] = { 74.1, 32.6, ISLE_OF_DORN },
				["isWeekly"] = true,	-- TODO: remove after Blizzard fix it flag
				["g"] = {
					o(483713, {	-- Watering Jug
						i(232323),	-- Watering Jug (QI!)
					}),
					--
					i(245611, {	-- Wriggling Box
						-- TODO: move out if zone chest
						i(245252),	-- Graceful Cosmic Ray Pup (PET!)
						i(242734),	-- Curious Slateback (MOUNT!)
					}),
				},
			}),
			pvp(q(89241, {	-- Up and Up
				["coord"] = { 72.6, 12.4, KARESH },
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(WORLD_QUESTS, {
				q(91075),	-- Triggered after completing 'Ecological Succession' (first time)
				q(91179),	-- Triggered after completing 'Ecological Succession' (first time/Curious Slateback hqt?)
				q(91175),	-- Triggered after completing 'Ecological Succession' (weekly lockout?/Graceful Cosmic Ray Pup hqt?)
			}),
		}),
	}),
})));