local ObjectDB = ObjectDB; for objectID,objectData in pairs({
	[339211] = {
		readable = "Empty Dish",
		model = 955688,
		text = {
			en = "Empty Dish",
			es = "Plato vacío",
			de = "Leerer Teller",
			fr = "Assiette vide",
			it = "Ciotola Vuota",
			pt = "Empty Dish",
			ru = "Пустая миска",
			ko = "빈 그릇",
			cn = "空碗",
		},
	},
})
do ObjectDB[objectID] = objectData; end