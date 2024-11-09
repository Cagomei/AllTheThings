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
				["questID"] = 84872,	-- TODO: see notes in hqts
			}),
			n(229982, {	-- Nerathor
				["description"] = "Available during The Drowned Lair objective",
				["coord"] = { 27.3, 65.5, SIREN_ISLE },
				["questID"] = 84841,	-- TODO: see notes in hqts
			}),
			n(231090, {	-- Snacker
				["coord"] = { 67.8, 20.7, SIREN_ISLE },
				["questID"] = 84794,
			}),
			n(229853, {	-- Siris the Sea Scorpion
				["coord"] = { 56.0, 83.6, SIREN_ISLE },
				["questID"] = 84803,	-- TODO: see notes in hqts
			}),
			-- STORM PHASE RARES
			n(228547, {	-- Slaughtershell
				["coord"] = { 73.5, 54.0, SIREN_ISLE },	-- I killed him where he seems to be stuck and he spawned in another place (or have more than one spawn point?)
				["questID"] = 84798,
			}),
			-- The Forgotten Tomb (during storm if it separate it)
			n(231368, {	-- Ksvir the Forgotten
				["coord"] = { 73.5, 54.0, SIREN_ISLE },
				["questID"] = 85406,	-- TODO: didn't fire questID on kill but on loot (or was some kind of delay)
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
				-- after kill Gravesludge (228201) - 84872, 85669 (speculated - gem looted and unlocked on vendor), 85937 (speculated - 229178 (Earthen Scallywag's Gavel) drop?)
				-- after kill Nerathor (229982) - 84841, 85672 (citrine?), 85938 (i(229023), -- Earthen Deckhand's Breeches drop?)
				-- after kill Siris the Sea Scorpion (229853) - 84803, 84846 (i(229026), -- Earthen Deckhand's Bindings drop?)
			}),
		}),
	}),
})));