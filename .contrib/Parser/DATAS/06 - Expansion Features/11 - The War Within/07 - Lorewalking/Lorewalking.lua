-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
LOREWALKING = createHeader({
	readable = "Lorewalking",
	icon = [[~_.asset("Feature_Lorewalking")]],
	text = {
		en = "Lorewalking",
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_1_7 } }, {
	n(LOREWALKING, {
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(42188),	-- Lorewalking: Blade's Bane
				ach(42187),	-- Lorewalking: Ethereal Wisdom
				ach(42189),	-- Lorewalking: The Lich King
			}),
		},
	}),
})));