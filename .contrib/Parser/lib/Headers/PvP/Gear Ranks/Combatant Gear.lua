PVP_COMBATANT = createHeader({
	readable = "Combatant Gear",
	constant = "PVP_COMBATANT",
	-- #if NOT ANYCLASSIC
	export = true,	-- Referenced in AllTheThings.lua, in a symlink. TODO: Move it.
	-- #endif
	icon = 311228,
	text = {
		en = "Combatant Gear",
		es = "Equipo de Combatiente",
		de = "Kämpfer Rüstung",
		fr = "Équipement Combattant",
		mx = "Equipo de Combatiente",
		ru = "Доспехи Бойца",
		cn = "争斗者装备",
		tw = "戰鬥者裝備",
	},
});
