local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[452867] = {
		readable = "Employee Schedule",
		model = 1305630,
		text = {
			en = "Employee Schedule",
			de = "Schichtplan",
			es = "Horario de trabajador",
			mx = "Cronograma de empleados",	
			fr = "Horaires du personnel",
			it = "Programma dei Dipendenti",
			pt = "Escala de Funcionários",
			ru = "График рабочего",
			ko = "직원 일정표",
			cn = "员工日程表",
			tw = "員工時程表",
		},
	},
	[454411] = {
		readable = "Taunting Note",
		text = {
			en = "Taunting Note",
			de = "Höhnische Notiz",
			es = "Nota provocadora",
			mx = "Nota provocadora",
			fr = "Message provocateur",
			it = "Nota Provocatoria",
			pt = "Bilhete de Provocação",
			ru = "Насмешливую записку",
			ko = "도발적인 쪽지",
			cn = "挑衅字条",
			tw = "嘲諷紙條",
		},
	},
	[456073] = {
		readable = "Sputtering Taserblade", -- this object does not exist outside of the ptr, please check to remove from here
		text = {
			en = "Sputtering Taserblade",
			es = "Sputtering Taserblade",
			mx = "Sputtering Taserblade",
			de = "Sputtering Taserblade",
			fr = "Sputtering Taserblade",
			it = "Sputtering Taserblade",
			pt = "Sputtering Taserblade",
			ru = "Sputtering Taserblade",
			ko = "Sputtering Taserblade",
			cn = "Sputtering Taserblade",
			tw = "Sputtering Taserblade",
		},
	},
	[456747] = {
		readable = "Gig Sheets",
		text = {
			en = "Gig Sheets",
			de = "Auftragsblätter",
			es = "Hojas de curros",
			mx = "Hojas de encargos",
			fr = "Feuilles de missions",
			it = "Annunci di Lavoro",
			pt = "Anúncios de Trampo",
			ru = "Объявления о подработке",
			ko = "일거리 공고",
			cn = "差事清单",
			tw = "零工表單",
		},
	},
	[461478] = {
		readable = "For Rent Sign",
		model = 305398,
		text = {
			en = "For Rent Sign",
			de = "\"Zu Vermieten\"-Schild",
			es = "Cartel de \"Se alquila\"",
			mx = "Letrero de alquiler",
			fr = "Panneau À louer",
			it = "Insegna Affittasi",
			pt = "Placa de Aluguel",
			ru = "Знак \"Сдается\"",
			ko = "임대 표지판",
			cn = "招租标示",
			tw = "租用告示牌",
		},
	},
	[461492] = {
		readable = "Weapons Cache",
		text = {
			en = "Weapons Cache",
			de = "Waffentruhe",
			es = "Alijo de armas",
			mx = "Alijo de armas",
			fr = "Cache d’armes",
			it = "Cassa di Armi",
			pt = "Arca de Armas",
			ru = "Сундук с оружием",
			ko = "무기 보관함",
			cn = "武器箱",
			tw = "武器箱",
		},
	},
	[480708] = {
		readable = "Overpriced Tropical Punch",
		model = 309567,
		text = {
			en = "Overpriced Tropical Punch",
			de = "Überteuerter Tropenpunsch",
			es = "Cóctel tropical carísimo",
			mx = "Ponche tropical sobrevaluado",
			fr = "Punch tropical hors de prix",
			it = "Punch Tropicale Troppo Costoso",
			pt = "Ponche Tropical Superfaturado",
			ru = "Слишком дорогой тропический пунш",
			ko = "지나치게 비싼 열대 음료",
			cn = "昂贵的热带潘趣酒",
			tw = "價格高昂的熱帶賓治酒",
		},
	},
	[482270] = {
		readable = "Blackwater Ordinance",
		model = 5512209,
		text = {
			en = "Blackwater Ordinance",
			de = "Munition der Schwarzmeer AG",
			es = "Artillería de Aguasnegras",
			mx = "Artillería de Aguasnegras",
			fr = "Munition des Flots noirs",
			it = "Ordinanza degli Acquanera",
			pt = "Munição de Aguanegra",
			ru = "Боеприпасы Черноводья",
			ko = "블랙워터 군수품",
			cn = "黑水军火",
			tw = "黑水火炮",
		},
	},
	[493305] = {
		readable = "Exploded Plunger",
		model = 343855,
		text = {
			en = "Exploded Plunger",
			de = "Explodierter Zünder",
			es = "Detonador detonado",
			mx = "Desatascador explotado",
			fr = "Détonateur usagé",
			it = "Detonatore Esploso",
			pt = "Detonador Explodido",
			ru = "Взорвавшийся поршень",
			ko = "폭발한 격발장치",
			cn = "爆开的起爆器",
			tw = "爆炸的引爆裝置",
		},
	},
	[499090] = {
		readable = "Fireworks Hat",
		text = {
			en = "Fireworks Hat",
			de = "Feuerwerkhut",
			es = "Sombrero de fuegos artificiales",
			mx = "Sombrero de fuegos artificiales",
			fr = "Chapeau à feux d’artifice",
			it = "Cappello d'Artificio",
			pt = "Chapéu de Fogos de Artifício",
			ru = "Пирошапка",
			ko = "폭죽 모자",
			cn = "烟花之帽",
			tw = "煙火帽",
		},
	},
	[499207] = {
		readable = "Suspicious Book",
		text = {
			en = "Suspicious Book",
			de = "Verdächtiges Buch",
			es = "Libro sospechoso",
			mx = "Libro sospechoso",
			fr = "Livre suspect",
			it = "Libro Sospetto",
			pt = "Livro Suspeito",
			ru = "Подозрительная книга",
			ko = "수상한 책",
			cn = "可疑的书",
			tw = "可疑的書本",
		},
	},
	[502893] = {
		readable = "First Half of Noggenfogger's Journal",
		model = 936411,
		text = {
			en = "First Half of Noggenfogger's Journal",
			de = "Erste Hälfte von Noggenfoggers Tagebuch",
			es = "Primera mitad del diario de Tragonublo",
			mx = "Primera mitad del diario de Tragonublo",
			fr = "Première moitié du journal de Brouillecaboche",
			it = "Prima Metà del Diario di Granstrippo",
			pt = "Primeira Metade do Diário de Nublacuca",
			ru = "Первая половина дневника Гогельмогеля",
			ko = "노겐포저의 일지 전반부",
			cn = "马林·诺格弗格日记的前半本",
			tw = "諾格弗格的日誌(前半)",
		},
	},
	[502902] = {
		readable = "Second Half of Noggenfogger's Journal",
		model = 936411,
		text = {
			en = "Second Half of Noggenfogger's Journal",
			de = "Zweite Hälfte von Noggenfoggers Tagebuch",
			es = "Segunda mitad del diario de Tragonublo",
			mx = "Segunda mitad del diario de Tragonublo",
			fr = "Deuxième moitié du journal de Brouillecaboche",
			it = "Seconda Metà del Diario di Granstrippo",
			pt = "Segunda Metade do Diário de Nublacuca",
			ru = "Вторая половина дневника Гогельмогеля",
			ko = "노겐포저의 일지 후반부",
			cn = "马林·诺格弗格日记的后半本",
			tw = "諾格弗格的日誌(後半)",
		},
	},
	[502903] = {
		readable = "Gallywix's Notes",
		model = 929395,
		text = {
			en = "Gallywix's Notes",
			de = "Gallywix' Notizen",
			es = "Notas de Gallywix",
			mx = "Notas de Gallywix",
			fr = "Notes de Gallywix",
			it = "Appunti di Gallywix",
			pt = "Anotações do Gallywix",
			ru = "Заметки Галливикса",
			ko = "갤리윅스의 쪽지",
			cn = "加里维克斯的笔记",
			tw = "加里維克斯的紙條",
		},
	},
	[502908] = {
		readable = "A Threatening Letter",
		model = 1331239,
		text = {
			en = "A Threatening Letter",
			de = "Ein bedrohlicher Brief",
			es = "Carta amenazante",
			mx = "Una carta amenazante",
			fr = "Une lettre de menaces",
			it = "Lettera di Minacce",
			pt = "Carta Ameaçadora",
			ru = "Угрожающее письмо",
			ko = "협박 편지",
			cn = "一封恐吓信",
			tw = "一封威脅信",
		},
	},
})
do ObjectDB[objectID] = objectData; end
