-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
DUNGEONS = createHeader({
	readable = "Dungeons",
	--icon = "",
	text = {
		en = "Dungeons",
	},
});
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_REMIX } }, {
	n(DUNGEONS, {
		n(ACHIEVEMENTS, {
			ach(20005, {	-- Heroic: Pandaria Dungeons
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					19903,	-- Heroic: Gate of the Setting Sun
					19905,	-- Heroic: Mogu'shan Palace
					19907,	-- Heroic: Scarlet Halls
					19909,	-- Heroic: Scarlet Monastery
					19911,	-- Heroic: Scholomance
					19899,	-- Heroic: Shado-Pan Monastery
					19901,	-- Heroic: Siege of Niuzao Temple
					19897,	-- Heroic: Stormstout Brewery
					19895,	-- Heroic: Temple of the Jade Serpent
				}},
				["g"] = {
					i(208491),	-- Timerunner's Seal
				},
			}),
		}),
		n(ARMOR, {
			d(DIFFICULTY.DUNGEON.NORMAL, {
				filter(CLOTH, {
					i(213644),	-- Breezebinder's Bracers
					i(213643),	-- Breezebinder's Cord
					i(213638),	-- Breezebinder's Gloves
					i(213639),	-- Breezebinder's Hood
					i(213640),	-- Breezebinder's Leggings
					i(213636),	-- Breezebinder's Robe
					i(213637),	-- Breezebinder's Sandals
					i(213642),	-- Breezebinder's Shoulderpads
				}),
				filter(LEATHER, {
					i(214033),	-- Nimbletoe Belt
					i(214028),	-- Nimbletoe Boots
					i(214034),	-- Nimbletoe Bracers
					i(214029),	-- Nimbletoe Gloves
					i(214030),	-- Nimbletoe Helm
					i(214031),	-- Nimbletoe Leggings
					i(214032),	-- Nimbletoe Shoulderpads
					i(214027),	-- Nimbletoe Tunic
				}),
				filter(MAIL, {
					i(214408),	-- Stormbrew Belt
					i(214405),	-- Stormbrew Boots
					i(214403),	-- Stormbrew Bracers
					i(214407),	-- Stormbrew Gauntlets
					i(214404),	-- Stormbrew Hauberk
					i(214406),	-- Stormbrew Helm
					i(214410),	-- Stormbrew Leggings
					i(214409),	-- Stormbrew Spaulders
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				filter(LEATHER, {
					i(214035),	-- Mogubreaker Bindings
					i(214039),	-- Mogubreaker Cover
					i(214041),	-- Mogubreaker Footguards
					i(214040),	-- Mogubreaker Grips
					i(214038),	-- Mogubreaker Legguards
					i(214037),	-- Mogubreaker Spaulders
					i(214042),	-- Mogubreaker Vest
					i(214036),	-- Mogubreaker Waistband
				}),
			}),
		}),
		inst(303, {	-- Gate of the Setting Sun
			["coord"] = { 15.8, 74.8, VALE_OF_ETERNAL_BLOSSOMS },
			["maps"] = {
				437,	-- Gate of the Setting Sun
				438,	-- Gate Watch Tower
			},
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(649, {	-- Raigonn
						["crs"] = { 56877 },	-- Raigonn
						["g"] = {
							ach(19902),	-- Gate of the Setting Sun
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(649, {	-- Raigonn
						["crs"] = { 56877 },	-- Raigonn
						["g"] = {
							ach(19903),	-- Heroic: Gate of the Setting Sun
						},
					}),
				}),
			},
		}),
		inst(321, {	-- Mogu'shan Palace
			["coord"] = { 80.5, 33.0, VALE_OF_ETERNAL_BLOSSOMS },
			["maps"] = {
				453,	-- The Crimson Assembly Hall
				454,	-- Vaults of Kings Past
				455,	-- Throne of Ancient Conquerors
			},
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(698, {	-- Xin the Weaponmaster
						["crs"] = { 61398 },	-- Xin the Weaponmaster
						["g"] = {
							ach(19904),	-- Mogu'shan Palace
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(698, {	-- Xin the Weaponmaster
						["crs"] = { 61398 },	-- Xin the Weaponmaster
						["g"] = {
							ach(19905),	-- Heroic: Mogu'shan Palace
						},
					}),
				}),
			},
		}),
		inst(311, {	-- Scarlet Halls
			["coord"] = { 78.0, 56.8, SCARLET_MONASTERY_ENTRANCE },
			["maps"] = { 431, 432 },
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(656, {	-- Flameweaver Koegler
						["crs"] = { 59150 },	-- Flameweaver Koegler
						["g"] = {
							ach(19906),	-- Scarlet Halls
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(656, {	-- Flameweaver Koegler
						["crs"] = { 59150 },	-- Flameweaver Koegler
						["g"] = {
							ach(19907),	-- Heroic: Scarlet Halls
						},
					}),
				}),
			},
		}),
		inst(316, {	-- Scarlet Monastery
			["coord"] = { 69.2, 24.9, SCARLET_MONASTERY_ENTRANCE },
			["maps"] = {
				SCARLET_MONASTERY,	-- Scarlet Monastery: Forlorn Cloister (First Boss)
				436,	-- Scarlet Monasatery: Crusader's Chapel (Last two bosses)
			},
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(674, {	-- High Inquisitor Whitemane
						["crs"] = {
							3977,	-- High Inquisitor Whitemane
							60040,	-- Commander Durand
						},
						["g"] = {
							ach(19908),	-- Scarlet Monastery
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(674, {	-- High Inquisitor Whitemane
						["crs"] = {
							3977,	-- High Inquisitor Whitemane
							60040,	-- Commander Durand
						},
						["g"] = {
							ach(19909),	-- Heroic: Scarlet Monastery
						},
					}),
				}),
			},
		}),
		inst(246, {	-- Scholomance
			["coord"] = { 69.07, 72.96, WESTERN_PLAGUELANDS },
			["maps"] = {
				477, 478, 479,
			},
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(684, {	-- Darkmaster Gandling
						["crs"] = { 59080 },
						["g"] = {
							ach(19910),	-- Scholomance
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(684, {	-- Darkmaster Gandling
						["crs"] = { 59080 },
						["g"] = {
							ach(19911),	-- Heroic: Scholomance
						},
					}),
				}),
			},
		}),
		inst(312, {	-- Shado-Pan Monastery
			["coord"] = { 36.8 ,47.7, KUN_LAI_SUMMIT},
			["maps"] = {
				443,	-- Shado-Pan Monastery
				444,	-- Cloudstrike Dojo
				445,	-- Snowdrift Dojo
				446,	-- Sealed Chambers
			},
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(686, {	-- Taran Zhu
						["crs"] = { 56884 },	-- Taran Zhu
						["g"] = {
							ach(19898),	-- Shado-Pan Monastery
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(686, {	-- Taran Zhu
						["crs"] = { 56884 },	-- Taran Zhu
						["g"] = {
							ach(19899),	-- Heroic: Shado-Pan Monastery
						},
					}),
				}),
			},
		}),
		inst(324, {	-- Siege of Niuzao Temple
			["coord"] = { 35, 82, TOWNLONG_STEPPES },
			["maps"] = {
				457,	-- Siege of Niuzao Temple
				458,	-- The Hollowed Out Tree
				459,	-- Upper Tree Ring
			},
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(727, {	-- Wing Leader Ner'onok
						["crs"] = { 62205 },	-- Wing Leader Ner'onok
						["g"] = {
							ach(19900),	-- Siege of Niuzao Temple
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(727, {	-- Wing Leader Ner'onok
						["crs"] = { 62205 },	-- Wing Leader Ner'onok
						["g"] = {
							ach(19901),	-- Heroic: Siege of Niuzao Temple
						},
					}),
				}),
			},
		}),
		inst(302, {	-- Stormstout Brewery
			["coord"] = { 36, 69, VALLEY_OF_THE_FOUR_WINDS },
			["maps"] = {
				439,	-- Grain Cellar
				440,	-- Stormstout Brewhall
				441,	-- The Great Wheel
				442,	-- The Tasting Room
			},
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(670, {	-- Yan-Zhu the Uncasked
						["crs"] = { 59479 },	-- Yan-Zhu the Uncasked
						["g"] = {
							ach(19896),	-- Stormstout Brewery
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(670, {	-- Yan-Zhu the Uncasked
						["crs"] = { 59479 },	-- Hoptallus
						["g"] = {
							ach(19897),	-- Heroic: Stormstout Brewery
						},
					}),
				}),
			},
		}),
		inst(313, {	-- Temple of the Jade Serpent
			["coord"] = { 56.0, 57.8, THE_JADE_FOREST },
			["maps"] = {
				429,	-- Temple of the Jade Serpent
				430,	-- The Scrollkeeper's Sanctum
			},
			["g"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					e(335, {	-- Sha of Doubt
						["crs"] = { 56439 },	-- Sha of Doubt
						["g"] = {
							ach(19894),	-- Temple of the Jade Serpent
						},
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					e(335, {	-- Sha of Doubt
						["crs"] = { 56439 },	-- Sha of Doubt
						["g"] = {
							ach(19895),	-- Heroic: Temple of the Jade Serpent
						},
					}),
				}),
			},
		}),
	}),
}))));