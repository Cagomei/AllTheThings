---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			-- NON STORM PHASE RARES
			n(228154, {	-- Bloodbrine
				["coord"] = { 36.0, 72.1, SIREN_ISLE },
				["questID"] = 84795,	-- TODO: see notes in hqts
			}),
			n(229852, {	-- Coralweaver Calliso
				["coord"] = { 61.5, 89.4, SIREN_ISLE },
				["questID"] = 84802,
			}),
			n(228201, {	-- Gravesludge
				["description"] = "Available during The Drain objective",
				["coord"] = { 55.6, 27.0, SIREN_ISLE },
				["questID"] = 85937,
			}),
			n(229982, {	-- Nerathor
				["description"] = "Available during The Drowned Lair objective",
				["coord"] = { 27.3, 65.5, SIREN_ISLE },
				["questID"] = 85938,
			}),
			n(228601, {	-- Ghostmaker
				["coord"] = { 52.0, 32.3, SIREN_ISLE },
				["questID"] = 84801,
			}),
			n(228155, {	-- Grimgull
				["coord"] = { 37.2, 21.8, SIREN_ISLE },
				["questID"] = 84796,
			}),
			n(229853, {	-- Siris the Sea Scorpion
				["coord"] = { 56.0, 83.6, SIREN_ISLE },
				["questID"] = 84803,
			}),
			n(231090, {	-- Snacker
				["coord"] = { 67.8, 20.7, SIREN_ISLE },
				["questID"] = 84794,
			}),
			n(229992, {	-- Stalgnarok
				["description"] = "Available during Shuddering Hollow objective",
				["coord"] = { 67.8, 20.7, SIREN_ISLE },
				["questID"] = 85437,
			}),
			n(228151, {	-- Wreckwater
				["coord"] = { 46.7, 78.4, SIREN_ISLE },
				--["questID"] = 84794,	-- bugged? share kill questID with Snacker?
			}),
			-- STORM PHASE RARES
			n(231356, {	-- Brinebough
				["coord"] = { 56.1, 84.5, SIREN_ISLE },
				["questID"] = 85404,
			}),
			n(231353, {	-- Tempest Talon
				["description"] = "Flying around in area, assigned coords easiest spot to pull it",
				["coord"] = { 34.3, 57.5, SIREN_ISLE },
				["questID"] = 85403,
			}),
			n(228547, {	-- Slaughtershell
				["coord"] = { 73.5, 54.0, SIREN_ISLE },	-- I killed him where he seems to be stuck and he spawned in another place (or have more than one spawn point?)
				["questID"] = 84798,
			}),
			n(231357, {	-- Zek'ul the Shipbreaker
				["coord"] = { 32.7, 73.0, SIREN_ISLE },
				["questID"] = 85405,
				["g"] = {
					i(232569), -- Cyclonic Runekey
				},
			}),
			-- The Forgotten Tomb (during storm)
			n(231368, {	-- Ksvir the Forgotten
				["coord"] = { 37.9, 76.1, 2375 },
				["questID"] = 85406,
				["g"] = {
					i(232571),	-- Whirling Runekey
				},
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(KHAZ_ALGAR, {
		m(SIREN_ISLE, {
			n(RARES, {
				-- Need more data / confirmation, current data is mess
				-- after kill Bloodbrine (228154) - 84795, 84871 (one of it is i(229172), -- Earthen Deckhand's Halberd drop?)
				-- after kill Gravesludge (228201) - 84872 (i(229178), -- Earthen Scallywag's Gavel drop?, 85669 (speculated - gem looted and unlocked on vendor), 85937 (on re-kill)
				-- after kill Nerathor (229982) - 84841 (i(229023), -- Earthen Deckhand's Breeches drop?), 85672 (citrine?), 85938 (on re-kill)
			}),
		}),
	}),
})));