--[[ Wand Template

note: 	gfx.sprite corresponds with a .png file in:
		mods/thematic_random_starts/files/wands/gfx/	

			{ wand = {
				name = 		{{"wand_name"}},
				capacity = 	{{1,2}},
				actions = 	{{1}},
				reload = 	{{40, 50}},
				shuffle = 	{{0}},
				delay = 	{{20,25}},
				spread = 	{{0,5}},
				speed = 	{{1}},
				regen = 	{{40,50}},
				mana_max = 	{{140,150}},
				actions = {
					{"LIGHT_BULLET", "MIST_SLIME"},
				},
				actions_permanent = {
					{"SPEED"}
				},
				gfx = {
					sprite = "wand_filename",
					offset_x = 1.0,
					offset_y = 1.0,
					tip_x = 8.0,
					tip_y = 0.0
				}
			}},
]]

loadout_list =
{
	{
		-- ID: 1
		name = "Slime Sorcerer",
		description = {"A slimy fate awaits your foes...", "Once upon a slime...", "What have you got to ooze?"},
		class_id = "slime",
		color = "slime",

		robe_color = {198, 77, 179, 255},
		belt_color = {132, 176, 74, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"slime_wand"}},
				capacity = 	{{2,2}},
				actions = 	{{1}},
				reload = 	{{65, 75}},
				shuffle = 	{{0}},
				delay = 	{{20,25}},
				spread = 	{{0,5}},
				speed = 	{{1}},
				regen = 	{{60,70}},
				mana_max = 	{{90,100}},
				actions = {
					{"LIGHT_BULLET_TRIGGER", "MIST_SLIME"},
				},
				gfx = {
					sprite = "slime_wand",
					offset_x = 1.0
				}
			}},
			{ wand = {
				name = 		{{"slimesploder"}},
				capacity = 	{{4,4}},
				actions = 	{{1}},
				reload = 	{{35, 40}},
				shuffle = 	{{1}},
				delay = 	{{30,40}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{30,40}},
				mana_max = 	{{150,160}},
				actions = {
					{"SLIMEBALL"},
				},
				actions_permanent = {
					{"HITFX_EXPLOSION_SLIME"}
				},
				gfx = {
					sprite = "slimesploder",
					offset_x = 1.0
				}
			}},
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
		description = {"One more inspection and you can retire...", "This place is NOT up to code...", "The suspense is building..."},
		class_id = "construction",
		color = "construction",
		
		robe_color = {255, 204, 0, 255},
		belt_color = {82, 67, 41, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"dirt_shovel"}},
				capacity = 	{{2,2}},
				actions = 	{{1}},
				reload = 	{{55, 65}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{18,22}},
				mana_max = 	{{110,130}},
				actions = {
					{"LASER_LUMINOUS_DRILL", "SOILBALL"},
				},
				gfx = {
					sprite = "dirt_shovel",
					offset_x = 2.0,
				}
			}},
			{ wand = {
				name = 		{{"drill"}},
				capacity = 	{{1,1}},
				actions = 	{{1}},
				reload = 	{{5, 5}},
				shuffle = 	{{0}},
				delay = 	{{3,3}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{50,60}},
				mana_max = 	{{20,30}},
				actions = {
					{"DIGGER"},
				},
				gfx = {
					sprite = "drill",
				}
			}},
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
		description = {"Time to give them a peice of your mind...","Catch.","Psychics have never been boulder."},
		class_id = "telekinetic",
		color = "telekinetic",
		
		robe_color = {180, 180, 160, 255},
		belt_color = {137, 137, 127, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"pebble_stick"}},
				capacity = 	{{4,4}},
				actions = 	{{1}},
				reload = 	{{55, 65}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{3,5}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions = {
					{"SUMMON_ROCK"},
				},
				gfx = {
					sprite = "pebble_stick",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
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
		description = {"","",""},
		class_id = "vampire",
		color = "vampire",
		
		robe_color = {60, 60, 60, 255},
		belt_color = {100, 100, 100, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {175, 26, 26, 255},

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
		description = {"","",""},
		class_id = "bloodcultist",
		color = "bloodcultist",
		
		robe_color = {175, 26, 26, 255},
		belt_color = {89, 74, 44, 255},
		cape_color_edge = {168, 152, 118, 255},
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
		description = {"","",""},
		class_id = "ninja",
		color = "ninja",
		
		robe_color = {58, 62, 82, 255},
		belt_color = {42, 44, 56, 255},
		cape_color_edge = {42, 44, 56, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "laser",
		color = "laser",
		
		robe_color = {85, 201, 108, 255},
		belt_color = {218, 218, 118, 255},
		cape_color_edge = {85, 201, 108, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
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
		description = {"","",""},
		class_id = "exploder",
		color = "exploder",
		
		robe_color = {189, 56, 56, 255},
		belt_color = {130, 101, 73, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "blasto",
		color = "blasto",
		
		robe_color = {106, 114, 147, 255},
		belt_color = {103, 66, 57, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "gambler",
		color = "gambler",
		
		robe_color = {126, 28, 255, 255},
		belt_color = {222, 194, 16, 255},
		cape_color_edge = {222, 194, 16, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "telekarate",
		color = "telekarate",
		
		robe_color = {210, 210, 220, 255},
		belt_color = {60, 60, 65, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {149, 208, 237, 255},

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
		description = {"","",""},
		class_id = "berzerker",
		color = "berzerker",
		
		robe_color = {77, 94, 67, 255},
		belt_color = {76, 76, 60, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "eldritch",
		color = "eldritch",
		
		robe_color = {105, 103, 135, 255},
		belt_color = {74, 73, 96, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {40, 40, 50, 255},

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
		description = {"","",""},
		class_id = "planar",
		color = "planar",
		
		robe_color = {230, 230, 204, 255},
		belt_color = {112, 109, 99, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {226, 148, 239, 255},

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
		description = {"","",""},
		class_id = "seer",
		color = "seer",
		
		robe_color = {191, 123, 199, 255},
		belt_color = {207, 205, 205, 255},
		cape_color_edge = {207, 205, 205, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "alchemist",
		color = "alchemist",
		
		robe_color = {68, 102, 79, 255},
		belt_color = {181, 176, 130, 255},
		cape_color_edge = {181, 176, 130, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "pyro",
		color = "pyro",
		
		robe_color = {237, 134, 0, 255},
		belt_color = {105, 70, 52, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "arsonist",
		color = "arsonist",
		
		robe_color = {209, 160, 0, 255},
		belt_color = {99, 93, 90, 255},
		cape_color_edge = {99, 93, 90, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "ratmancer",
		color = "ratmancer",
		
		robe_color = {128, 105, 92, 255},
		belt_color = {59, 40, 34, 255},
		cape_color_edge = {94, 80, 72, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "summoner",
		color = "summoner",
		
		robe_color = {207, 116, 144, 255},
		belt_color = {142, 200, 212, 255},
		cape_color_edge = {142, 200, 212, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
		description = {"","",""},
		class_id = "flylord",
		color = "flylord",
		
		robe_color = {77, 68, 56, 255},
		belt_color = {46, 43, 39, 255},
		cape_color_edge = {46, 43, 39, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

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
	},
	{
		-- ID: 22
		name = "Magnetmancer",
		description = {"","",""},
		class_id = "magnet",
		color = "magnet",
		
		robe_color = {107, 117, 161, 255},
		belt_color = {56, 68, 214, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {131, 64, 64, 255},

		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/magnet_stick.xml",
			"mods/thematic_random_starts/files/wands/ball_wand.xml",
			{ potion = "water", amount = 1},
		},
		perks =
		{
			"ATTRACT_ITEMS",
		}
	},
	{
		-- ID: 23
		name = "Air Sage",
		description = {"","",""},
		class_id = "airsage",
		color = "airsage",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/air_wand.xml",
			"mods/thematic_random_starts/files/wands/rain_stick.xml",
			{ potion = "water", amount = 2, quantity = 0},
		},
		perks =
		{
			"LOW_GRAVITY",
		}
	},
	{
		-- ID: 24
		name = "Geomancer",
		description = {"","",""},
		class_id = "geomancer",
		color = "geomancer",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/air_wand.xml",
			"mods/thematic_random_starts/files/wands/levitator_wand.xml",
			{ potion = "water", amount = 2, quantity = 0},
		},
		perks =
		{
			"EXPLODING_GOLD",
		}
	},
	{
		-- ID: 26
		name = "Adventurer",
		description = {"","",""},
		class_id = "adventurer",
		color = "adventurer",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 80,
		items = 
		{
			"mods/thematic_random_starts/files/wands/air_wand.xml",
			"mods/thematic_random_starts/files/wands/levitator_wand.xml",
			{ potion = "water", amount = 2, quantity = 0},
		},
		perks =
		{
			"GOLD_IS_FOREVER",
		}
	},
	{
		-- ID: 27
		name = "Lightning Wizard",
		description = {"","",""},
		class_id = "lightning",
		color = "lightning",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 80,
		items = 
		{
			"mods/thematic_random_starts/files/wands/air_wand.xml",
			"mods/thematic_random_starts/files/wands/levitator_wand.xml",
			{ potion = "water", amount = 2, quantity = 0},
		},
		perks =
		{
			"ELECTRICITY",
		}
	},
	{
		-- ID: 27
		name = "Cryomancer",
		description = {"","",""},
		class_id = "cryomancer",
		color = "cryomancer",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			"mods/thematic_random_starts/files/wands/air_wand.xml",
			"mods/thematic_random_starts/files/wands/levitator_wand.xml",
			{ potion = "water", amount = 2, quantity = 0},
		},
		perks =
		{
			"FREEZE_FIELD",
		}
	},
	{
		-- ID: 28
		name = "Possessed Mage",
		description = {"","",""},
		class_id = "possessed",
		color = "possessed",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/air_wand.xml",
			"mods/thematic_random_starts/files/wands/levitator_wand.xml",
			{ potion = "water", amount = 2, quantity = 0},
		},
		perks =
		{
			"ANGRY_GHOST",
		}
	},
	{
		-- ID: 29
		name = "Wand Tinkerer",
		description = {"","",""},
		class_id = "tinker",
		color = "tinker",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 70,
		items = 
		{
			"mods/thematic_random_starts/files/wands/air_wand.xml",
			"mods/thematic_random_starts/files/wands/levitator_wand.xml",
			{ potion = "water", amount = 2, quantity = 0},
		},
		perks =
		{
			"EDIT_WANDS_EVERYWHERE",
		}
	},
	{
		-- ID: 30
		name = "Thrifty Shopper",
		description = {"","",""},
		class_id = "thrifty",
		color = "thrifty",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/shiddy_wand.xml",
			{ potion = "water", amount = 1, quantity = 500},
			{ money = 200},
		},
		perks =
		{
			"EXTRA_PERK",
		}
	},
	{
		-- ID: 31
		name = "Storm Wizard",
		description = {"","",""},
		class_id = "storm",
		color = "storm",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/shiddy_wand.xml",
			{ potion = "water", amount = 1, quantity = 500},
			{ money = 200},
		},
		perks =
		{
			"EXTRA_PERK",
		}
	},
	{
		-- ID: 32
		name = "Tidal Sorcerer",
		description = {"","",""},
		class_id = "tide",
		color = "tide",
		
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			"mods/thematic_random_starts/files/wands/shiddy_wand.xml",
			{ potion = "water", amount = 1, quantity = 500},
			{ money = 200},
		},
		perks =
		{
			"EXTRA_PERK",
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
