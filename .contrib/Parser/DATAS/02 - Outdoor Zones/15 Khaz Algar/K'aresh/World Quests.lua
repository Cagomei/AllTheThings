---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(WORLD_QUESTS, {
			q(85460, {	-- Ecological Succession
				["coord"] = { 74.1, 32.6, ISLE_OF_DORN },
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
				q(91075),	-- Triggered after completing 'Ecological Succession'
				q(91179),	-- Triggered after completing 'Ecological Succession'
			}),
		}),
	}),
})));