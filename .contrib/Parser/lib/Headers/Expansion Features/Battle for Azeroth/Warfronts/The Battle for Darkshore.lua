WARFRONT_BATTLE_FOR_DARKSHORE = createHeader({
	readable = "Warfront: The Battle for Darkshore",
	icon = "Interface\\Icons\\achievement_zone_darkshore_01",
	text = {
		-- #if AFTER TWW
		en = [[~C_Spell.GetSpellName(290253)]],
		-- #else
		en = [[~GetSpellInfo(290253)]],
		-- #endif
	},
});