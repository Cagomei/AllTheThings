DRAGONSCALE_EXPEDITION = createHeader({
	readable = "Dragonscale Expedition",
	icon = "Interface\\Icons\\ui_majorfaction_expedition",
	text = {
		-- #if AFTER TWW
		en = [[~C_Spell.GetSpellName(370340)]],
		-- #else
		en = [[~GetSpellInfo(370340)]],
		-- #endif
	},
});