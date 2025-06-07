TREASURES = createHeader({
	readable = "Treasures",
	constant = "TREASURES",
	export = true,
	icon = [[~_.asset("Interface_Tchest")]],
	text = {
		-- #if ANYCLASSIC
		en = "Treasures",
		-- #else
		en = WOWAPI_GetSpellName(225652) .. [[.." "..]] .. WOWAPI_GetSpellName(168498),	-- Treasure Chest, there wasn't a close translation.
		-- #endif
		ru = "Сундук с сокровищами",
		cn = "宝箱",
		tw = "寶箱",
	},
});