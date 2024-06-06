TITANFORGED = createHeader({
	readable = "Titanforged",
	icon = "Interface\\Icons\\misc_arrowlup",
	text = {
		-- #if AFTER TWW
		en = [[~C_Spell.GetSpellName(257215)]],
		-- #elseif AFTER 7.2.5
		en = [[~GetSpellInfo(257215)]],
		-- #else
		en = "Titanforged",
		-- #endif
	},
});