FLIGHT_PATHS = createHeader({
	readable = "Flight Paths",
	constant = "FLIGHT_PATHS",
	export = true,
	icon = [[~_.asset("Category_FlightPaths")]],
	text = {
		-- #if ANYCLASSIC
		en = "Flight Paths",
		-- #elseif AFTER TWW
		en = [[~C_Spell.GetSpellName(218950)]],
		-- #else
		en = WOWAPI_GetSpellName(218950),
		-- #endif
		ru = "Точка полета",
		cn = "飞行路线",
		tw = "飛行路線",
	},
});