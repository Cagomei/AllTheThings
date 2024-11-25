---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
--[[
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_7 } }, {
	m(SIREN_ISLE, {
		petbattle(filter(BATTLE_PETS, {
			n(234734),	-- Battleboar Piglet (vrykul?)
			n(234101),	-- Cave Kroling
			n(234710),	-- Cliffreach Cub
			n(),	-- Crackleroar (in-game journal: drop Stormtouched Pridetalon)
			n(234367),	-- Pillaged Parrot (pirates/vrykul)
			n(),	-- Proper Parrot (in-game journal: drop Pirates)
			n(),	-- Rock Hound Mica (in-game journal: unique - probably some secret/special?)
			n(234097),	-- Rusty Kroling
			n(236041),	-- Scavenging Snapdragon (storm phase)
			n(234369),	-- Snapdragon Pup
			n(236040),	-- Storminfused Snapdragon (storm phase)
			n(230394),	-- Tidal Kroling (pirates/vrykul)
		}),
	}),
})));
--]]