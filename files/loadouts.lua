loadout_list =
{
	{
		-- ID: 1
		name = "Slime Sorcerer",
		class_id = "slime",
		color = "slime",


		robe_color = {198, 77, 179, 255},
		belt_color = {132, 176, 74, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/slime_wand.xml",
			"mods/thematic_random_starts/files/wands/slimesploder.xml",
			{ potion = "slime", amount = 1},
		},
		perks =
		{
			"BLEED_SLIME",
		}
	},
	{
		-- ID: 2
		name = "Construction Conjurer",
		class_id = "construction",
		color = "construction",
		
		robe_color = {255, 204, 0, 255},
		belt_color = {82, 67, 41, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/dirt_shovel.xml",
			"mods/thematic_random_starts/files/wands/drill.xml",
			{ potion = "cement", amount = 1},
			{ potion = "water", amount = 1},
		},
		perks =
		{
			"HIGH_GRAVITY",
		}
	},
	{
		-- ID: 3
		name = "Telekinetic",
		class_id = "telekinetic",
		color = "telekinetic",
		
		robe_color = {230, 230, 230, 255},
		belt_color = {175, 26, 26, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 80,
		items = 
		{
			"mods/thematic_random_starts/files/wands/pebble_stick.xml",
			{ potion = "water", amount = 1},
		},
		perks =
		{
			"TELEKINESIS",
		}
	},
	{
		-- ID: 4
		name = "Vampire",
		class_id = "vampire",
		color = "vampire",
		
		robe_color = {80, 80, 80, 255},
		belt_color = {175, 26, 26, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {175, 26, 26, 255}, -- calculate from cape_color_edge

		hp = 60,
		items = 
		{
			"mods/thematic_random_starts/files/wands/crossbow.xml",
			"mods/thematic_random_starts/files/wands/chainsaw.xml",
			{ potion = "blood", amount = 1},
		},
		perks =
		{
			"VAMPIRISM",
		}
	},
	{
		-- ID: 5
		name = "Blood Cultist",
		class_id = "bloodcultist",
		color = "bloodcultist",
		
		robe_color = {175, 26, 26, 255},
		belt_color = {89, 74, 44, 255},
		cape_color_edge = {89, 74, 44, 255}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/blade_stick.xml",
			"mods/thematic_random_starts/files/wands/chainsaw.xml",
			{ potion = "blood", amount = 1},
		},
		perks =
		{
			"GLOBAL_GORE",
		}
	},
	{
		-- ID: 6
		name = "Ninja",
		class_id = "ninja",
		color = "ninja",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 60,
		items = 
		{
			"mods/thematic_random_starts/files/wands/knife.xml",
			--"mods/thematic_random_starts/files/wands/ninja_stars.xml",
			"mods/thematic_random_starts/files/wands/ninja_stars_alt.xml",
			{ potion = "smoke", amount = 1},
		},
		perks =
		{
			"INVISIBILITY",
		}
	},
	{
		-- ID: 7
		name = "Laser Wizard",
		class_id = "laser",
		color = "laser",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/laser_stick.xml",
			"mods/thematic_random_starts/files/wands/barrier_wand.xml",
			{ potion = "water", amount = 1},
		},
		perks =
		{
			"BOUNCE",
		}
	},
	{
		-- ID: 8
		name = "Demolitionist",
		class_id = "exploder",
		color = "exploder",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 80,
		items = 
		{
			"mods/thematic_random_starts/files/wands/brimstone_wand.xml",
			"mods/thematic_random_starts/files/wands/tnt_stick.xml",
			{ potion = "water", amount = 1},
			{ potion = "gunpowder_unstable", amount = 1},
		},
		perks =
		{
			"PROTECTION_EXPLOSION",
		}
	},
	{
		-- ID: 9
		name = "Blastomancer",
		class_id = "blasto",
		color = "blasto",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/novice_wand.xml",
			"mods/thematic_random_starts/files/wands/bomb_stick.xml",
			{ potion = "magic_liquid_berserk", amount = 1},
			{ potion = "gunpowder_unstable", amount = 1},
		},
		perks =
		{
			"REVENGE_EXPLOSION",
		}
	},
	{
		-- ID: 10
		name = "Gambler",
		class_id = "gambler",
		color = "gambler",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 60,
		items = 
		{
			"mods/thematic_random_starts/files/wands/lucky_wand.xml",
			{ potion = "magic_liquid_random_polymorph", amount = 1},
			{ potion = "alcohol", amount = 1},
		},
		perks =
		{
			"PERKS_LOTTERY",
		}
	},
	{
		-- ID: 11
		name = "Tele-Karate Master",
		class_id = "telekarate",
		color = "telekarate",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/telekarate_wand.xml",
			{ potion = "water", amount = 1},
			{ potion = "magic_liquid_movement_faster", amount = 1},
		},
		perks =
		{
			"STRONG_KICK",
		}
	},
	{
		-- ID: 12
		name = "Berserker",
		class_id = "berzerker",
		color = "berzerker",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 80,
		items = 
		{
			"mods/thematic_random_starts/files/wands/boomstick.xml",
			"mods/thematic_random_starts/files/wands/chainsaw.xml",
			{ potion = "magic_liquid_berserk", amount = 1},
		},
		perks =
		{
			"PROTECTION_MELEE",
		}
	},
	{
		-- ID: 13
		name = "Eldritch Cultist",
		class_id = "eldritch",
		color = "eldritch",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/tentacle_stick.xml",
			"mods/thematic_random_starts/files/wands/torch.xml",
			{ potion = "magic_liquid_berserk", amount = 1},
		},
		perks =
		{
			"REVENGE_TENTACLE",
		}
	},
	{
		-- ID: 14
		name = "Planar Cultist",
		class_id = "planar",
		color = "planar",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/apprentice_wand.xml",
			"mods/thematic_random_starts/files/wands/portal_wand.xml",
			{ potion = "blood", amount = 1},

		},
		perks =
		{
			"LOW_HP_DAMAGE_BOOST",
		}
	},
	{
		-- ID: 15
		name = "Crystal Seer",
		class_id = "seer",
		color = "seer",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 70,
		items = 
		{
			"mods/thematic_random_starts/files/wands/crystal_wand.xml",
			"mods/thematic_random_starts/files/wands/crystal_detonator.xml",
			{ potion = "water", amount = 1},
			{ potion = "blood_fungi", amount = 1},
		},
		perks =
		{
			"REMOVE_FOG_OF_WAR",
		}
	},
	{
		-- ID: 16
		name = "Alchemist",
		class_id = "alchemist",
		color = "alchemist",
		
		robe_color = {122, 122, 122, 255},
		belt_color = {217, 185, 69, 255},
		cape_color_edge = {55, 99, 65, 255},
		cape_color = {217, 185, 69, 255},

		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/alchemist_wand.xml",
			{ potion = "random", rarity = 1, amount = 1},
			{ potion = "random", rarity = 2, amount = 1},
			{ potion = "random", rarity = 3, amount = 1},
			{ potion = "random", rarity = 4, amount = 1},
		},
		perks =
		{
			"MANA_FROM_KILLS",
		}
	},
	{
		-- ID: 17
		name = "Pyromancer",
		class_id = "pyro",
		color = "pyro",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 70,
		items = 
		{
			"mods/thematic_random_starts/files/wands/pyromancer_wand.xml",
			"mods/thematic_random_starts/files/wands/fireball_stick.xml",
			{ potion = "oil", amount = 1},
		},
		perks =
		{
			"PROTECTION_FIRE",
		}
	},
	{
		-- ID: 18
		name = "Arsonist",
		class_id = "arsonist",
		color = "arsonist",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/flamethrower.xml",
			"mods/thematic_random_starts/files/wands/arson_stick.xml",
			--"mods/thematic_random_starts/files/wands/torch.xml",
			{ potion = "water", amount = 1},
		},
		perks =
		{
			"BLEED_OIL",
		}
	},
	{
		-- ID: 19
		name = "Ratmancer",
		class_id = "ratmancer",
		color = "ratmancer",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/rat_on_a_stick.xml",
			{ potion = "swamp", amount = 1},
			{ potion = "acid", amount = 1},
		},
		perks =
		{
			"PLAGUE_RATS",
		}
	},
	{
		-- ID: 20
		name = "Summoner",
		class_id = "summoner",
		color = "summoner",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/spitter_wand.xml",
			"mods/thematic_random_starts/files/wands/summon_stick.xml",
			{ potion = "water", amount = 1},
			{ potion = "magic_liquid_charm", amount = 1},
		},
		perks =
		{
			"GENOME_MORE_LOVE",
		}
	}
	,
	{
		-- ID: 21
		name = "Lord of the Flies",
		class_id = "flylord",
		color = "flylord",
		
		-- cape_color = 0xff9a6f9b,
		-- cape_color_edge = 0xff76547f,
		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/fly_stick.xml",
			{ potion = "swamp", amount = 1},
			{ potion = "poo", amount = 1},
		},
		perks =
		{
			"GENOME_MORE_HATRED",
		}
	}
}

-- {
-- "data/entities/misc/custom_cards/bomb.xml",
-- amount = 1,
-- },
-- {
-- "data/entities/misc/custom_cards/tnt.xml",
-- amount = 1,
-- },
