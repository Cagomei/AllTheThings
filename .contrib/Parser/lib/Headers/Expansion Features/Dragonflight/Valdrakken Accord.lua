VALDRAKKEN_ACCORD = createHeader({
	readable = "Valdrakken Accord",
	icon = "Interface\\Icons\\ui_majorfaction_valdrakken",
	text = {
		-- #if AFTER TWW
		en = [[~C_Spell.GetSpellName(388922)]],
		-- #else
		en = [[~GetSpellInfo(388922)]],
		-- #endif
	},
});