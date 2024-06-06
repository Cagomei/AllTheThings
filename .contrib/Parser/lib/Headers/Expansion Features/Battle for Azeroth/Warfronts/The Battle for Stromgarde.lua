WARFRONT_BATTLE_FOR_STROMGARDE = createHeader({
	readable = "Warfront: The Battle for Stromgarde",
	icon = "Interface\\Icons\\achievement_zone_arathihighlands_01",
	constant = "WARFRONT_BATTLE_FOR_STROMGARDE",
	text = {
		-- #if AFTER TWW
		en = [[~C_Spell.GetSpellName(279443)]],
		-- #else
		en = [[~GetSpellInfo(279443)]],
		-- #endif
	},
});