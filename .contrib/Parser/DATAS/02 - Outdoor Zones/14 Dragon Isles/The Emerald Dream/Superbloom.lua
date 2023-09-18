---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(TREE_1, {
		header(HEADERS.Quest, 78203, {	-- Superbloom
			n(ACHIEVEMENTS, {
				ach(19313),	-- Bloom Man Group
				ach(19315),	-- Dream Chaser
				ach(19310),	-- Fruit of the Bloom
				ach(19312),	-- Super Duper Bloom
			}),
			n(RARES, sharedData({ ["isWeekly"] = true }, {
				n(207543, { -- Marikke
					["coord"] = { 44.1, 71.9, TREE_1 },
					--[[["questID"] = xx,
					["groups"] = {
						may be DM was his loot but now it is unclear
					},]]--
				}),
			})),
			n(REWARDS, {
				--- Seeds
				i(208066),	-- Small Dreamseed
				i(208067),	-- Plump Dreamseed
				i(208047),	-- Gigantic Dreamseed
				--- DM
				i(207762),	-- Grotto Netherwing Drake: Chin Spike (DM!)
				--- Leather gear
				i(210375),	-- Crystalline Tender's Wristbands
				-- RECIPE
				i(210174),	-- Formula: Illusory Adornment: Dreams (RECIPE!)
				i(210241),	-- Recipe: Dreamwalker's Healing Potion (RECIPE!)
				i(210242),	-- Recipe: Slumbering Peace Tea (RECIPE!)
				i(210243),	-- Technique: Contract: Dream Wardens (RECIPE!)
				i(210490),	-- Technique: Vantus Rune: Amirdrassil, the Dream's Hope (RECIPE!)
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, m(DRAGON_ISLES, {
	m(TREE_1, {
		header(HEADERS.Quest, 78203, {	-- Superbloom
			q(78203),	-- Superbloom
			--
			--q(78319),	-- on first kill with rare state of event | shared loot with all this hqts
			--q(78502),	-- on first kill with rare state of event | DM (chin spike), leather piece of gear
			--q(78553),	-- on first kill with rare state of event | and gigantic dreamseed
			--q(78554),	-- on 2nd kill with rare state of event - was looted small dreamseed
			-- spells for achievement Fruit of the Bloom ach(19310)
			q(78487),	-- Basket of Explosive Acorns (spellID 424568)
			q(78488),	-- Bubble Blowgun (spellID 414636)
			q(78482),	-- Dream Gatherer (spellID 418100)
			q(78483),	-- Feral Overflow (spellID 424822)
			q(78492),	-- Flower Trail (spellID 414584)
			q(78484),	-- Lifesurger (spellID 418166)
			--q(),	-- Memory of L'ghorek (spellID )
			q(78495),	-- Memory of Ursoc (spellID 424273)
			q(78491),	-- Mighty Roar (spellID 416868)
			q(78486),	-- Moonkin Mayhem (spellID 415147)
			q(78489),	-- Moonkin Jump (spellID 415185)
			q(78498),	-- Potent Lullaby (spellID 418754)
			q(78490),	-- Putrid Propulsion (spellID 424560)
			q(78485),	-- Sack of Talontreats (spellID 424341)
			q(78496),	-- Star Shower (spellID 417790)
			q(78497),	-- The Superb Loom (spellID 425196)
			q(78493),	-- Wake Up! (spellID 415174)
		}),
	}),
}));