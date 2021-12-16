loadout_list =
{
	{
		-- ID: 1
		name = "Slime Sorcerer",
		description = {"A slimy fate awaits your foes...", "Once upon a slime...", "What have you got to ooze?"},
		class_id = "slime",

		class_color = "slime",
		robe_color = {198, 77, 179, 255},
		belt_color = {132, 176, 74, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"slime_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{65,75}},
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
				per_round = {{1}},
				reload = 	{{35,40}},
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

		class_color = "construction",
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
				per_round = {{1}},
				reload = 	{{55,65}},
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
				per_round = {{1}},
				reload = 	{{5,5}},
				shuffle = 	{{0}},
				delay = 	{{3,3}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{1,1}},
				mana_max = 	{{1,1}},
				actions = {
					{"DIGGER"},
				},
				gfx = {
					sprite = "drill",
				}
			}},
			{ potion = "cement", amount = 1},
			{ potion = "water", amount = 1},
			"data/entities/misc/custom_cards/tnt.xml",
		},
		perks =
		{
			"ABILITY_ACTIONS_MATERIALIZED",
		}
	},
	{
		-- ID: 3
		name = "Telekinetic",
		description = {"Time to give them a peice of your mind...","Catch.","Psychics have never been boulder."},
		class_id = "telekinetic",

		class_color = "telekinetic",
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
				per_round = {{1}},
				reload = 	{{55,65}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{3,5}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions = {
					{"SUMMON_ROCK", "SUMMON_ROCK"},
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
		description = {"Somehow you know this run will suck.","The bleeding edge of magic...","Chop chop, get to it."},
		class_id = "vampire",

		class_color = "vampire",
		robe_color = {60, 60, 60, 255},
		belt_color = {100, 100, 100, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {175, 26, 26, 255},

		hp = 50,
		items = 
		{
			{ wand = {
				name = 		{{"crossbow"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{115,125}},
				shuffle = 	{{1}},
				delay = 	{{5,7}},
				spread = 	{{1,2}},
				speed = 	{{1}},
				regen = 	{{40,45}},
				mana_max = 	{{45,50}},
				actions = {
					{"ARROW", "ARROW", "ARROW"},
				},
				gfx = {
					sprite = "crossbow",
					offset_x = 4.0,
					tip_x = 9.0,
					tip_y = -1.0
				}
			}},
			{ wand = {
				name = 		{{"vampire_wand"}},
				capacity = 	{{0,0}},
				per_round = {{1}},
				reload = 	{{26,28}},
				shuffle = 	{{0}},
				delay = 	{{10,12}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{1,1}},
				mana_max = 	{{1,1}},
				actions_permanent = {
					{"CHAINSAW"},
				},
				gfx = {
					sprite = "vampire_wand",
					offset_x = 1.0,
					tip_x = 4.0
				}
			}},
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
		description = {"Time to find some new \"initiates\"...","You've got plenty of time to bleed.","You've learned to always B positive."},
		class_id = "bloodcultist",

		class_color = "bloodcultist",
		robe_color = {175, 26, 26, 255},
		belt_color = {89, 74, 44, 255},
		cape_color_edge = {168, 152, 118, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"blade_stick"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{20,22}},
				shuffle = 	{{0}},
				delay = 	{{10,12}},
				spread = 	{{12,14}},
				speed = 	{{1}},
				regen = 	{{35,40}},
				mana_max = 	{{80,90}},
				actions = {
					{"SPEED", "HITFX_CRITICAL_BLOOD", "DISC_BULLET"},
				},
				gfx = {
					sprite = "blade_stick",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ wand = {
				name = 		{{"chainsaw"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{12,12}},
				shuffle = 	{{1}},
				delay = 	{{10,10}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{20,22}},
				mana_max = 	{{20,30}},
				actions = {
					{"CHAINSAW"},
				},
				gfx = {
					sprite = "chainsaw",
					offset_x = 1.0,
					tip_x = 6.0
				}
			}},
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
		description = {"Silent, but deadly.","Your perk has a hidden feature.","You've been known to be a bit edgy..."},
		class_id = "ninja",

		class_color = "ninja",
		robe_color = {58, 62, 82, 255},
		belt_color = {42, 44, 56, 255},
		cape_color_edge = {42, 44, 56, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 70,
		items = 
		{
			{ wand = {
				name = 		{{"knife"}},
				capacity = 	{{6,6}},
				per_round = {{2}},
				reload = 	{{1,1}},
				shuffle = 	{{0}},
				delay = 	{{180,190}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{55,65}},
				mana_max = 	{{140,150}},
				actions_permanent = {
					{"DAMAGE", "COLOUR_RED"},
				},
				actions = {
					{"LASER_LUMINOUS_DRILL","LASER_LUMINOUS_DRILL","LUMINOUS_DRILL", "SUPER_TELEPORT_CAST", "NOLLA", "TELEPORT_PROJECTILE_STATIC"},
				},
				gfx = {
					sprite = "knife",
					offset_x = 1.0,
					tip_x = 2.0
				}
			}},
			{ wand = {
				name = 		{{"ninja_stars"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{260,270}},
				shuffle = 	{{0}},
				delay = 	{{30,40}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{25,30}},
				mana_max = 	{{65,70}},
				actions = {
					{"W_SHAPE", "DISC_BULLET", "DISC_BULLET", "DISC_BULLET"},
				},
				gfx = {
					sprite = "ninja_stars",
					offset_x = 3.0,
					tip_x = 0.0
				}
			}},
			{ potion = "water", amount = 1},
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
		description = {"You're known to make light of bad situations...","You're rubber, they're glue.","Photon, photoff."},
		class_id = "laser",

		class_color = "laser",
		robe_color = {85, 201, 108, 255},
		belt_color = {218, 218, 118, 255},
		cape_color_edge = {85, 201, 108, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"laser_stick"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{25,30}},
				shuffle = 	{{0}},
				delay = 	{{60,65}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{90,105}},
				mana_max = 	{{100,110}},
				actions = {
					{"LIGHT", "LASER"},
				},
				actions_permanent = {
					{"LIFETIME"},
				},
				gfx = {
					sprite = "laser_stick",
					offset_x = 2.0
				}
			}},
			{ wand = {
				name = 		{{"barrier_wand"}},
				capacity = 	{{0,0}},
				per_round = {{1}},
				reload = 	{{60,60}},
				shuffle = 	{{1}},
				delay = 	{{60,60}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{10,10}},
				mana_max = 	{{10,10}},
				actions_permanent = {
					{"ENERGY_SHIELD_SECTOR"},
				},
				gfx = {
					sprite = "barrier_wand",
					offset_x = 2.0
				}
			}},
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
		description = {"Experience the magic of high-yield explosives.","You've been known to have a short fuse...","This new wand is dynamite."},
		class_id = "exploder",

		class_color = "exploder",
		robe_color = {189, 56, 56, 255},
		belt_color = {130, 101, 73, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 70,
		items = 
		{
			{ wand = {
				name = 		{{"brimstone_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{65,75}},
				shuffle = 	{{1}},
				delay = 	{{17,20}},
				spread = 	{{7,10}},
				speed = 	{{1}},
				regen = 	{{20,30}},
				mana_max = 	{{45,50}},
				actions = {
					{"FIRE_BLAST"},
				},
				gfx = {
					sprite = "brimstone_wand",
					offset_x = 2.0,
					tip_x = 10.0
				}
			}},
			{ wand = {
				name = 		{{"tnt_stick"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{55,65}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{3,4}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions = {
					{"DYNAMITE"},
				},
				gfx = {
					sprite = "tnt_stick",
					offset_x = 2.0,
					tip_x = 10.0
				}
			}},
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
		description = {"This run is gonna be a blast.","Berserkium is the bomb.","You've got an explosive personality."},
		class_id = "blasto",

		class_color = "blasto",
		robe_color = {106, 114, 147, 255},
		belt_color = {103, 66, 57, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"novice_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{65,75}},
				shuffle = 	{{1}},
				delay = 	{{17,20}},
				spread = 	{{7,10}},
				speed = 	{{1}},
				regen = 	{{20,30}},
				mana_max = 	{{45,50}},
				actions = {
					{"FIREBOMB", "FIREBOMB"},
				},
				gfx = {
					sprite = "novice_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
			{ wand = {
				name = 		{{"bomb_stick"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{55,65}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{3,4}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions = {
					{"BOMB", "BOMB"},
				},
				gfx = {
					sprite = "bomb_stick",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
			{ potion = "magic_liquid_berserk", amount = 1},
		},
		perks =
		{
			"REVENGE_EXPLOSION",
		}
	},
	{
		-- ID: 10
		name = "Gambler",
		description = {"Feeling so lucky you could die.","...and you're on a roll.","This RNG is to die for."},
		class_id = "gambler",

		class_color = "gambler",
		robe_color = {126, 28, 255, 255},
		belt_color = {222, 194, 16, 255},
		cape_color_edge = {222, 194, 16, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 60,
		items = 
		{
			{ wand = {
				name = 		{{"d6_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{45,55}},
				shuffle = 	{{0}},
				delay = 	{{34,36}},
				spread = 	{{3,5}},
				speed = 	{{1}},
				regen = 	{{11,12}},
				mana_max = 	{{6,6}},
				actions_permanent = {
					{"BURST_D6"},
				},
				actions = {
					{"LIGHT_BULLET"},
				},
				gfx = {
					sprite = "d6_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
			{ potion = "alcohol", amount = 1},
			"data/entities/items/pickup/physics_die.xml"
		},
		perks =
		{
			"GAMBLE",
		}
	},
	{
		-- ID: 11
		name = "Tele-Karate Master",
		description = {"Acceleratium has a real kick to it.","Master of the martial dark arts.","Sorcery is afoot..."},
		class_id = "telekarate",

		class_color = "telekarate",
		robe_color = {210, 210, 220, 255},
		belt_color = {60, 60, 65, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {149, 208, 237, 255},

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"telekarate_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{80,80}},
				shuffle = 	{{0}},
				delay = 	{{18,22}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{115,120}},
				mana_max = 	{{190,210}},
				actions = {
					{"TELEPORT_PROJECTILE_SHORT", "TELEPORT_PROJECTILE_SHORT"},
				},
				actions_permanent = {
					{"ENERGY_SHIELD_SECTOR"},
				},
				gfx = {
					sprite = "telekarate_wand",
					offset_x = 2.0,
					tip_x = 8.0
				}
			}},
			{ wand = {
				name = 		{{"return_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{60,60}},
				shuffle = 	{{0}},
				delay = 	{{18,22}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{60,70}},
				mana_max = 	{{40,45}},
				actions = {
					{"TELEPORT_PROJECTILE_CLOSER"},
				},
				gfx = {
					sprite = "return_wand",
					offset_x = 2.0,
					tip_x = 8.0
				}
			}},
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
		description = {"Doomed to be a slayer of sorts...","...and you're all out of bubblegum.","To kill the boss, shoot at it until it dies."},
		class_id = "berzerker",

		class_color = "berzerker",
		robe_color = {77, 94, 67, 255},
		belt_color = {76, 76, 60, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 70,
		items = 
		{
			{ wand = {
				name = 		{{"boomstick"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{160,170}},
				shuffle = 	{{1}},
				delay = 	{{1,2}},
				spread = 	{{5,7}},
				speed = 	{{1}},
				regen = 	{{20,25}},
				mana_max = 	{{50,55}},
				actions_permanent = {
					{"RECOIL"},
				},
				actions = {
					{"BUCKSHOT", "BUCKSHOT"},
				},
				gfx = {
					sprite = "boomstick",
					offset_x = 3.0,
					offset_y = 1.0,
					tip_x = 7.0,
					tip_y = -3.0
				}
			}},
			{ wand = {
				name = 		{{"chainsaw_zerk"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{12,12}},
				shuffle = 	{{1}},
				delay = 	{{10,10}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{48,52}},
				mana_max = 	{{20,30}},
				actions = {
					{"CHAINSAW"},
				},
				gfx = {
					sprite = "chainsaw_zerk",
					offset_x = 1.0,
					tip_x = 6.0
				}
			}},
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
		description = {"You're a sucker for faustian bargains.","The robes don't fit quite like they used to...","Let's get kraken."},
		class_id = "eldritch",

		class_color = "eldritch",
		robe_color = {105, 103, 135, 255},
		belt_color = {74, 73, 96, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {40, 40, 50, 255},

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"tentacle_stick"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{55,65}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{3,4}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions = {
					{"TENTACLE"},
				},
				gfx = {
					sprite = "tentacle_stick",
					offset_x = 2.0,
					tip_x = 10.0
				}
			}},
			{ wand = {
				name = 		{{"torch"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{60,60}},
				shuffle = 	{{1}},
				delay = 	{{1,1}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{1,1}},
				mana_max = 	{{1,1}},
				actions = {
					{"TORCH"},
				},
				gfx = {
					sprite = "torch",
					offset_x = 3.0,
					tip_x = 7.0
				}
			}},
			{ potion = "blood", amount = 1},
		},
		perks =
		{
			"REVENGE_TENTACLE",
		}
	},
	{
		-- ID: 14
		name = "Planar Cultist",
		description = {"Your patron doesn't like visitors...","Planar magic is far out.","Your pocket dimension has gotten quite hungry..."},
		class_id = "planar",

		class_color = "planar",
		robe_color = {230, 230, 204, 255},
		belt_color = {112, 109, 99, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {226, 148, 239, 255},

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"apprentice_wand"}},
				capacity = 	{{3,4}},
				per_round = {{1}},
				reload = 	{{55,60}},
				shuffle = 	{{1}},
				delay = 	{{7,10}},
				spread = 	{{2,3}},
				speed = 	{{1}},
				regen = 	{{20,30}},
				mana_max = 	{{45,50}},
				actions = {
					{"LIGHT_BULLET","LIGHT_BULLET"},
				},
				gfx = {
					sprite = "apprentice_wand",
					offset_x = 2.0
				}
			}},
			{ wand = {
				name = 		{{"portal_wand"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{35,45}},
				shuffle = 	{{0}},
				delay = 	{{50,55}},
				spread = 	{{10,15}},
				speed = 	{{1}},
				regen = 	{{20,25}},
				mana_max = 	{{140,150}},
				actions = {
					{"BLOOD_MAGIC","TELEPORT_CAST","TENTACLE_PORTAL"},
				},
				gfx = {
					sprite = "portal_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
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
		description = {"Deja vu?","The fungi tastes like schnozberries.","...but you didn't see that one coming."},
		class_id = "seer",

		class_color = "seer",
		robe_color = {191, 123, 199, 255},
		belt_color = {207, 205, 205, 255},
		cape_color_edge = {207, 205, 205, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"crystal_wand"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{15,20}},
				shuffle = 	{{1}},
				delay = 	{{55,65}},
				spread = 	{{5,7}},
				speed = 	{{1}},
				regen = 	{{20,30}},
				mana_max = 	{{45,50}},
				actions = {
					{"PIPE_BOMB","PIPE_BOMB","PIPE_BOMB"},
				},
				gfx = {
					sprite = "crystal_wand",
					offset_x = 2.0
				}
			}},
			{ wand = {
				name = 		{{"crystal_detonator"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{180,180}},
				shuffle = 	{{1}},
				delay = 	{{30,30}},
				spread = 	{{10,15}},
				speed = 	{{1}},
				regen = 	{{20,20}},
				mana_max = 	{{51,55}},
				actions = {
					{"BOMB_DETONATOR"},
				},
				gfx = {
					sprite = "crystal_detonator",
					offset_x = 1.0,
					offset_y = 1.0,
					tip_x = 9.0,
					tip_y = -1.0,
				}
			}},
			{ potion = "water", amount = 1},
			{ potion = "blood_fungi", amount = 1, quantity = 400},
		},
		perks =
		{
			"REMOVE_FOG_OF_WAR",
		}
	},
	{
		-- ID: 16
		name = "Alchemist",
		description = {"The Work is personal this time...","No need to be so reactionary...","You've always been an experiential learner..."},
		class_id = "alchemist",

		class_color = "alchemist",
		robe_color = {59, 204, 182, 255},
		belt_color = {181, 176, 130, 255},
		cape_color_edge = {181, 176, 130, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"alchemist_wand"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{1,1}},
				shuffle = 	{{1}},
				delay = 	{{5,6}},
				spread = 	{{4,6}},
				speed = 	{{1}},
				regen = 	{{10,12}},
				mana_max = 	{{15,16}},
				actions = {
					{"RUBBER_BALL","RUBBER_BALL","RUBBER_BALL"},
				},
				gfx = {
					sprite = "alchemist_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
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
		description = {"Pyromancers are so hot right now.","Essentially an arsonist with a license.","You've studied to a great degree..."},
		class_id = "pyro",

		class_color = "pyro",
		robe_color = {237, 134, 0, 255},
		belt_color = {105, 70, 52, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"pyromancer_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{65,75}},
				shuffle = 	{{0}},
				delay = 	{{18,22}},
				spread = 	{{7,10}},
				speed = 	{{1}},
				regen = 	{{20,30}},
				mana_max = 	{{45,55}},
				actions_permanent = {
					{"ACCELERATING_SHOT"},
				},
				actions = {
					{"FIRE_TRAIL","FIREBOMB"},
				},
				gfx = {
					sprite = "pyromancer_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
			{ wand = {
				name = 		{{"fireball_stick"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{35,40}},
				shuffle = 	{{0}},
				delay = 	{{35,40}},
				spread = 	{{20,25}},
				speed = 	{{1}},
				regen = 	{{45,50}},
				mana_max = 	{{55,60}},
				actions = {
					{"LIGHT","GRENADE"},
				},
				gfx = {
					sprite = "fireball_stick",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
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
		description = {"You've got a burning passion...","But you prefer \"practical problem solver\".","It's only illegal if you get caught."},
		class_id = "arsonist",

		class_color = "arsonist",
		robe_color = {209, 160, 0, 255},
		belt_color = {99, 93, 90, 255},
		cape_color_edge = {99, 93, 90, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"flamethrower"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{2,2}},
				shuffle = 	{{1}},
				delay = 	{{1,1}},
				spread = 	{{10,12}},
				speed = 	{{1}},
				regen = 	{{60,70}},
				mana_max = 	{{180,200}},
				actions_permanent = {
					{"GRAVITY"},
				},
				actions = {
					{"TORCH","FLAMETHROWER","FLAMETHROWER","FLAMETHROWER"},
				},
				gfx = {
					sprite = "flamethrower",
					offset_x = 3.0,
					tip_x = 10.0
				}
			}},
			{ wand = {
				name = 		{{"arson_stick"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{1,1}},
				shuffle = 	{{0}},
				delay = 	{{1,1}},
				spread = 	{{10,12}},
				speed = 	{{1}},
				regen = 	{{1,1}},
				mana_max = 	{{1,1}},
				actions = {
					{"MATERIAL_OIL"},
				},
				gfx = {
					sprite = "arson_stick",
					offset_x = 4.0,
					tip_x = 5.0
				}
			}},
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
		description = {"\"Ratify\" takes on a whole new meaning...","...and you wonder if the Moon is actually made of cheese.","Ratting on someone has never been taken more literally..."},
		class_id = "ratmancer",

		class_color = "ratmancer",
		robe_color = {128, 105, 92, 255},
		belt_color = {59, 40, 34, 255},
		cape_color_edge = {94, 80, 72, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"rat_on_a_stick"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{60,65}},
				shuffle = 	{{1}},
				delay = 	{{2,3}},
				spread = 	{{5,7}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions = {
					{"SLIMEBALL","SLIMEBALL","SLIMEBALL"},
				},
				gfx = {
					sprite = "rat_on_a_stick",
					offset_x = 2.0,
					offset_y = 1.0,
					tip_x = 11.0,
					tip_y = -2.0
				}
			}},
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
		description = {"You can't summon without breaking some eggs...","Something is wrong with your perfume...","Friendly fire has never been more friendly."},
		class_id = "summoner",

		class_color = "summoner",
		robe_color = {207, 116, 144, 255},
		belt_color = {142, 200, 212, 255},
		cape_color_edge = {142, 200, 212, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"spitter_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{35,40}},
				shuffle = 	{{1}},
				delay = 	{{6,8}},
				spread = 	{{5,7}},
				speed = 	{{1}},
				regen = 	{{50,60}},
				mana_max = 	{{45,50}},
				actions = {
					{"SPITTER","SPITTER"},
				},
				gfx = {
					sprite = "spitter_wand",
					offset_x = 1.0,
					tip_x = 9.0
				}
			}},
			{ wand = {
				name = 		{{"summon_stick"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{80,90}},
				shuffle = 	{{1}},
				delay = 	{{35,40}},
				spread = 	{{2,3}},
				speed = 	{{1}},
				regen = 	{{20,30}},
				mana_max = 	{{150,160}},
				actions = {
					{"SUMMON_EGG","SUMMON_EGG","SUMMON_EGG","SUMMON_EGG"},
				},
				gfx = {
					sprite = "summon_stick",
					offset_x = 1.0,
					tip_x = 9.0
				}
			}},
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
		description = {"Is... is that real?.","Don't get your bottles mixed up....","You're the answer to \"What's the buzz?\"."},
		class_id = "flylord",

		class_color = "flylord",
		robe_color = {77, 68, 56, 255},
		belt_color = {46, 43, 39, 255},
		cape_color_edge = {46, 43, 39, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"fly_stick"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{10,12}},
				shuffle = 	{{0}},
				delay = 	{{240,240}},
				spread = 	{{20,22}},
				speed = 	{{1}},
				regen = 	{{90, 100}},
				mana_max = 	{{180,190}},
				actions_permanent = {
					{"LIFETIME_DOWN"},
				},
				actions = {
					{"HOMING_ROTATE","AVOIDING_ARC","FRIEND_FLY"},
				},
				gfx = {
					sprite = "fly_stick",
					offset_x = 1.0,
					tip_x = 9.0
				}
			}},
			{ wand = {
				name = 		{{"initiate_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{55,60}},
				shuffle = 	{{1}},
				delay = 	{{14,16}},
				spread = 	{{2,3}},
				speed = 	{{1}},
				regen = 	{{20,30}},
				mana_max = 	{{45,50}},
				actions = {
					{"RUBBER_BALL","RUBBER_BALL"},
				},
				gfx = {
					sprite = "initiate_wand",
					offset_x = 2.0
				}
			}},
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
		description = {"Most attractive sorcerer in the land...","You're positive you've been here before...","Don't be so negative..."},
		class_id = "magnet",

		class_color = "magnet",
		robe_color = {107, 117, 161, 255},
		belt_color = {56, 68, 214, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {131, 64, 64, 255},

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"magnet_stick"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{130,135}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{130,140}},
				actions_permanent = {
					{"GRAVITY_FIELD_ENEMY", "LIGHT_SHOT"},
				},
				actions = {
					{"LIGHT_BULLET"},
				},
				gfx = {
					sprite = "magnet_stick",
					offset_x = 3.0
				}
			}},
			{ wand = {
				name = 		{{"bubbler"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{80,85}},
				shuffle = 	{{0}},
				delay = 	{{-10,-10}},
				spread = 	{{45,50}},
				speed = 	{{1}},
				regen = 	{{45,50}},
				mana_max = 	{{30,32}},
				actions_permanent = {
					{"LIFETIME"},
				},
				actions = {
					{"BUBBLESHOT","BUBBLESHOT","BUBBLESHOT","BUBBLESHOT"},
				},
				gfx = {
					sprite = "bubbler",
					offset_x = 1.0
				}
			}},
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
		description = {"What a gas.","You've always been an airhead...","Your wand blows."},
		class_id = "airsage",

		class_color = "airsage",
		robe_color = {224, 242, 255, 255},
		belt_color = {151, 196, 218, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"air_wand"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{45,50}},
				shuffle = 	{{0}},
				delay = 	{{2,2}},
				spread = 	{{7,9}},
				speed = 	{{1}},
				regen = 	{{50,60}},
				mana_max = 	{{45,50}},
				actions_permanent = {
					{"KNOCKBACK"},
				},
				actions = {
					{"AIR_BULLET","AIR_BULLET","AIR_BULLET","AIR_BULLET"},
				},
				gfx = {
					sprite = "air_wand",
					offset_x = 2.0,
					tip_x = 6.0
				}
			}},
			{ potion = "magic_liquid_faster_levitation", amount = 1},
			{ potion = "water", amount = 1, quantity = 0},
		},
		perks =
		{
			"ANGRY_LEVITATION",
		}
	},
	{
		-- ID: 24
		name = "Geomancer",
		description = {"Your wand rocks.","A mine is a terrible thing to waste...","Don't take this run for granite."},
		class_id = "geomancer",

		class_color = "geomancer",
		robe_color = {59, 117, 40, 255},
		belt_color = {122, 92, 26, 255},
		cape_color_edge = {122, 92, 26, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"petrify_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{10,12}},
				shuffle = 	{{0}},
				delay = 	{{35,40}},
				spread = 	{{0,5}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions_permanent = {
					{"COLOUR_RED"},
				},
				actions = {
					{"HITFX_PETRIFY", "RUBBER_BALL"},
				},
				gfx = {
					sprite = "petrify_wand",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ wand = {
				name = 		{{"crystal_stick"}},
				capacity = 	{{3,4}},
				per_round = {{1}},
				reload = 	{{95,100}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{0,5}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions_permanent = {
					{"GRAVITY"},
				},
				actions = {
					{"MINE"},
				},
				gfx = {
					sprite = "crystal_stick",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ potion = "water", amount = 1},
		},
		perks =
		{
			"EXPLODING_GOLD",
		}
	},
	{
		-- ID: 25
		name = "Adventurer",
		description = {"And not a single door to kick...","Where's the party at?","What does your bag of holding hold?"},
		class_id = "adventurer",

		class_color = "adventurer",
		robe_color = {94, 177, 255, 255},
		belt_color = {94, 88, 71, 255},
		cape_color_edge = {94, 88, 71, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"heavy_crossbow"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{115,125}},
				shuffle = 	{{1}},
				delay = 	{{5,7}},
				spread = 	{{1,2}},
				speed = 	{{1}},
				regen = 	{{20,25}},
				mana_max = 	{{25,30}},
				actions_permanent = {
					{"DAMAGE"},
				},
				actions = {
					{"ARROW"},
				},
				gfx = {
					sprite = "heavy_crossbow",
					offset_x = 4.0,
					tip_x = 9.0,
					tip_y = -1.0
				}
			}},
			{ wand = {
				name = 		{{"backpack"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{10,12}},
				shuffle = 	{{1}},
				delay = 	{{165,175}},
				spread = 	{{10,12}},
				speed = 	{{1}},
				regen = 	{{20,22}},
				mana_max = 	{{300,310}},
				actions = {
					{
						{"SUMMON_ROCK","SUMMON_ROCK","SUMMON_ROCK","SUMMON_ROCK","SUMMON_ROCK","SUMMON_ROCK","SUMMON_ROCK","SUMMON_ROCK","PEBBLE"},
						{"DYNAMITE","DYNAMITE","DYNAMITE","DYNAMITE","DYNAMITE","DYNAMITE","DYNAMITE","DYNAMITE","DYNAMITE","BOMB_CART"},
						{"BOMB","BOMB","BOMB","BOMB","BOMB","BOMB","BOMB","BOMB","BOMB","GLITTER_BOMB","GLITTER_BOMB","BOMB_HOLY"},
						{"SUMMON_EGG","SUMMON_EGG","SUMMON_EGG","MINE","MINE","EXPLODING_DUCKS","SPORE_POD","PROPANE_TANK","BLACK_HOLE","EXPLODING_DEER"}
					},
				},
				gfx = {
					sprite = "backpack",
					offset_x = 2.0,
					offset_y = 2.0,
					tip_x = 4.0,
					tip_y = -1.0
				}
			}},
			{ wand = {
				name = 		{{"map"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{60,60}},
				shuffle = 	{{1}},
				delay = 	{{10,10}},
				spread = 	{{42,42}},
				speed = 	{{1}},
				regen = 	{{10,10}},
				mana_max = 	{{100,100}},
				actions = {
					{"X_RAY"},
				},
				gfx = {
					sprite = "map",
					offset_x = 2.0,
					offset_y = 2.0,
					tip_x = 4.0,
					tip_y = -1.0
				}
			}},
			{ potion = "water", amount = 1},
			{ potion = "acid", amount = 1},
			{ potion = "magic_liquid_hp_regeneration", amount = 1, quantity = 67},
		},
		perks =
		{
			"ITEM_RADAR",
		}
	},
	{
		-- ID: 26
		name = "Lightning Wizard",
		description = {"Shocking, isn't it?","Don't let them steal your thunder...","You know how to conduct yourself."},
		class_id = "lightning",
		class_color = "lightning",
		
		robe_color = {51, 173, 255, 255},
		belt_color = {201, 209, 214, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {225, 237, 245, 255}, 

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"shockball_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{60,61}},
				shuffle = 	{{1}},
				delay = 	{{2,3}},
				spread = 	{{2,3}},
				speed = 	{{1}},
				regen = 	{{20,22}},
				mana_max = 	{{30,32}},
				actions_permanent = {
					{"ELECTRIC_CHARGE"},
				},
				actions = {
					{"BUBBLESHOT"},
				},
				gfx = {
					sprite = "shockball_wand",
					offset_x = 1.0
				}
			}},
			{ wand = {
				name = 		{{"rain_stick"}},
				capacity = 	{{2,3}},
				per_round = {{1}},
				reload = 	{{45,50}},
				shuffle = 	{{1}},
				delay = 	{{15,20}},
				spread = 	{{0,2}},
				speed = 	{{1}},
				regen = 	{{25,30}},
				mana_max = 	{{100,120}},
				actions = {
					{"CLOUD_WATER"},
				},
				gfx = {
					sprite = "rain_stick",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ potion = "water", amount = 1},
		},
		perks =
		{
			"ELECTRICITY",
		}
	},
	{
		-- ID: 27
		name = "Cryomancer",
		description = {"You know the drill...","Your skills are chilling.","You've always had a cold heart."},
		class_id = "cryomancer",
		class_color = "cryomancer",
		
		robe_color = {175, 200, 255, 255},
		belt_color = {73, 73, 83, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"freeze_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{50,55}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{130,140}},
				actions_permanent = {
					{"LIGHT_SHOT"},
				},
				actions = {
					{"FREEZE", "AIR_BULLET"},
				},
				gfx = {
					sprite = "freeze_wand",
					offset_x = 1.0,
					tip_x = 9.0
				}
			}},
			{ wand = {
				name = 		{{"cryo_drill"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{5,5}},
				shuffle = 	{{0}},
				delay = 	{{3,3}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{1,1}},
				mana_max = 	{{1,1}},
				actions = {
					{"DIGGER"},
				},
				gfx = {
					sprite = "cryo_drill",
				}
			}},
			{ potion = "blood_cold", amount = 1},
		},
		perks =
		{
			"FREEZE_FIELD",
		}
	},
	{
		-- ID: 28
		name = "Exorcist",
		description = {"This mine is one of your old haunts...","...and you hope you won't get repossessed.","...and your pal is named Tim."},
		class_id = "possessed",
		class_color = "possessed",
		
		robe_color = {54, 54, 55, 255},
		belt_color = {219, 219, 220, 255},
		cape_color_edge = {219, 219, 219, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"exoricist_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{48,52}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{1,2}},
				speed = 	{{1}},
				regen = 	{{30,35}},
				mana_max = 	{{50,55}},
				actions_permanent = {
					{"LIGHT"}
				},
				actions = {
					{"LIGHT_BULLET"},
				},
				gfx = {
					sprite = "exorcist_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
			{ potion = "water", amount = 1},
			{ potion = "purifying_powder", amount = 1, quantity = 500},
		},
		perks =
		{
			"ANGRY_GHOST",
		}
	},
	{
		-- ID: 29
		name = "Wand Tinkerer",
		description = {"You ever try a wand without looking at it?","...yeah this wand looks perfectly safe.","You're pretty sure the duct tape is holding..."},
		class_id = "tinker",
		class_color = "tinker",
		
		robe_color = {232, 197, 115, 255},
		belt_color = {115, 92, 70, 255},
		cape_color_edge = {115, 92, 70, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 70,
		items = 
		{
			{ wand = {
				name = 		{{"tinker_wand"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{48,52}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{3,4}},
				speed = 	{{1}},
				regen = 	{{40,45}},
				mana_max = 	{{150,155}},
				actions_permanent = {
					{"FIZZLE"}
				},
				actions = {
					{
						{"BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"},
						{"BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"}
					},
				},
				gfx = {
					sprite = "tinker_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
			{ wand = {
				name = 		{{"toolbox"}},
				capacity = 	{{8,8}},
				per_round = {{0}},
				reload = 	{{60,60}},
				shuffle = 	{{0}},
				delay = 	{{60,60}},
				spread = 	{{30,30}},
				speed = 	{{1}},
				regen = 	{{1,1}},
				mana_max = 	{{1,1}},
				actions = {
					{
						{"CHAINSAW", "DIGGER", "LUMINOUS_DRILL", "LASER_LUMINOUS_DRILL"}, --good utility
						{"BOUNCE", "BURST_2", "DELAYED_SPELL", "LIFETIME","KNOCKBACK","LIFETIME","SPREAD_REDUCE","KNOCKBACK","SPEED"}, --modifiers
						{"BURST_2", "BURST_3", "DELAYED_SPELL","SCATTER_2","SCATTER_3","Y_SHAPE","W_SHAPE"}, --modifiers (splits only)
						{"BUBBLESHOT_TRIGGER","LIGHT_BULLET_TRIGGER", "SPITTER_TIMER","SPITTER_TIMER","ADD_TRIGGER","ADD_TIMER"}, --triggers/timers
						{"DISC_BULLET_BIG","DISC_BULLET","SLIMEBALL","LIGHT_BULLET_TRIGGER","TELEPORT_PROJECTILE"}, --misc
						{"SUMMON_ROCK","SUMMON_HOLLOW_EGG","LIGHT","RECOIL_DAMPER","T_SHAPE"} --fluff
					},
				},
				gfx = {
					sprite = "toolbox",
					offset_x = 5.0,
					offset_y = -1.0
				}
			}},
			{ potion = "water", amount = 1, quantiy = 0},
		},
		perks =
		{
			"EDIT_WANDS_EVERYWHERE",
		}
	},
	{
		-- ID: 30
		name = "Thrifty Shopper",
		description = {"Don't spend it all in one place.","This wand was a bargain!","You hope there's a sale!"},
		class_id = "thrifty",
		class_color = "thrifty",
		
		robe_color = {93, 145, 124, 255},
		belt_color = {105, 96, 74, 255},
		cape_color_edge = {105, 96, 74, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"shiddy_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{70,75}},
				shuffle = 	{{1}},
				delay = 	{{60,65}},
				spread = 	{{7,9}},
				speed = 	{{1}},
				regen = 	{{20,22}},
				mana_max = 	{{30,40}},
				actions_permanent = {
					{"FIZZLE"}
				},
				actions = {
					{"FIREBOMB"}
				},
				gfx = {
					sprite = "shiddy_wand",
					offset_x = 2.0,
					tip_x = 10.0
				}
			}},
			{ potion = "water", amount = 2, quantity = 500},
			{ money = 250},
		},
		perks =
		{
			"EXTRA_SHOP_ITEM",
		}
	},
	{
		-- ID: 31
		name = "Tidal Sorcerer",
		description = {"It's sink or swim...","Something's fishy...","You've been known to turn the tides..."},
		class_id = "tide",
		class_color = "tide",
		
		robe_color = {65, 95, 217, 255},
		belt_color = {219, 207, 74, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"harpoon_gun"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{70,75}},
				shuffle = 	{{0}},
				delay = 	{{15,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{50,120}},
				mana_max = 	{{100,110}},
				actions_permanent = {
					{"SPEED"}
				},
				actions = {
					{"HITFX_CRITICAL_WATER","ARROW"}
				},
				gfx = {
					sprite = "harpoon_gun",
					offset_x = 4.0,
					offset_y = 2.0,
					tip_x = 9.0,
					tip_y = -1.0
				}
			}},
			{ wand = {
				name = 		{{"flood_stick"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{300,310}},
				shuffle = 	{{1}},
				delay = 	{{60,65}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{2,3}},
				mana_max = 	{{20,22}},
				actions = {
					{"CIRCLE_WATER"}
				},
				gfx = {
					sprite = "flood_stick",
					offset_x = 2.0,
					tip_x = 12.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 0},
		},
		perks =
		{
			"BREATH_UNDERWATER",
		}
	},
	{
		-- ID: 32
		name = "Lukki Initiate",
		description = {"It's your lukki day...","Multiple things are afoot...","But you still kick with your human feet."},
		class_id = "lukki",

		class_color = "lukki",
		robe_color = {155, 111, 154, 255},
		belt_color = {89, 67, 84, 255},
		cape_color_edge = {89, 67, 84, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"lukki_wand"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{40,45}},
				shuffle = 	{{0}},
				delay = 	{{50,55}},
				spread = 	{{4,6}},
				speed = 	{{1}},
				regen = 	{{30,50}},
				mana_max = 	{{100,110}},
				actions_permanent = {
					{"GRAVITY", "SPEED"}
				},
				actions = {
					{"ACIDSHOT","ACIDSHOT","ACIDSHOT","ACIDSHOT"}
				},
				gfx = {
					sprite = "lukki_wand",
					offset_x = 1.0,
					offset_y = -1.0,
					tip_x = 13.0,
					tip_y = 1.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
			{ potion = "acid", amount = 1, quantity = 1000},
		},
		perks =
		{
			"ATTACK_FOOT",
		}
	},
		{
		-- ID: 33
		name = "Platformer",
		description = {"It's a steady job.","You have an odd urge eat mushrooms...","Mustache not included."},
		class_id = "platformer",

		class_color = "platformer",
		robe_color = {219, 59, 78, 255},
		belt_color = {77, 54, 35, 255},
		cape_color_edge = {44, 50, 110, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"platformer_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{55,60}},
				shuffle = 	{{0}},
				delay = 	{{16,18}},
				spread = 	{{5,7}},
				speed = 	{{1}},
				regen = 	{{60,70}},
				mana_max = 	{{45,50}},
				actions_permanent = {
					{"SPEED","GRAVITY","BOUNCE"},
				},
				actions = {
					{"FIREBOMB","FIREBOMB"},
				},
				gfx = {
					sprite = "platformer_wand",
					offset_x = 1.0,
					tip_x = 9.0
				}
			}},
			{ wand = {
				name = 		{{"platform_stick"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{12,15}},
				shuffle = 	{{0}},
				delay = 	{{170,180}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{40,42}},
				mana_max = 	{{70,70}},
				actions = {
					{"LASER_LUMINOUS_DRILL","TEMPORARY_PLATFORM","LASER_LUMINOUS_DRILL","TEMPORARY_PLATFORM"}
				},
				gfx = {
					sprite = "platform_stick",
					offset_x = 2.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
			{ potion = "blood_fungi", amount = 1, quantity = 400},
			"mods/thematic_random_starts/files/entities/turnip.xml", 
		},
		perks =
		{
			"NO_MORE_KNOCKBACK",
		}
	},
	{
		-- ID: 34
		name = "Necromancer",
		description = {"Knock \'em dead.","Keep an eye on your minions at all times.","Your foes are dying to get a wand."},
		class_id = "necromancer",

		class_color = "necromancer",
		robe_color = {54, 54, 54, 255},
		belt_color = {59, 48, 39, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {133, 65, 132, 255},

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"necromancy_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{25,30}},
				shuffle = 	{{0}},
				delay = 	{{3,3}},
				spread = 	{{13,17}},
				speed = 	{{1}},
				regen = 	{{30,35}},
				mana_max = 	{{120,125}},
				actions = {
					{"NECROMANCY","LIGHT_BULLET"},
				},
				gfx = {
					sprite = "necromancy_wand",
					offset_x = 1.0,
					tip_y = -1.0
				}
			}},
			{ wand = {
				name = 		{{"hook_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{65,70}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{21,23}},
				mana_max = 	{{21,23}},
				actions_permanent = {
					{"HOMING_SHORT"},
				},
				actions = {
					{"TELEPORT_PROJECTILE_CLOSER"},
				},
				gfx = {
					sprite = "hook_wand",
					offset_x = 1.0,
					tip_y = -1.0
				}
			}},
			{ wand = {
				name = 		{{"eyeball"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{35,35}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{2,3}},
				speed = 	{{1}},
				regen = 	{{50,60}},
				mana_max = 	{{100,110}},
				actions_permanent = {
					{"BLOOD_MAGIC"},
				},
				actions = {
					{"LIGHT_BULLET"},
				},
				gfx = {
					sprite = "eyeball",
					offset_y = -2.0,
					tip_x = 4.0,
					tip_y = 1.0
				}
			}},
			{ wand = {
				name = 		{{"eyeball"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{35,35}},
				shuffle = 	{{1}},
				delay = 	{{15,15}},
				spread = 	{{2,3}},
				speed = 	{{1}},
				regen = 	{{50,60}},
				mana_max = 	{{100,110}},
				actions_permanent = {
					{"BLOOD_MAGIC"},
				},
				actions = {
					{"LIGHT_BULLET"},
				},
				gfx = {
					sprite = "eyeball",
					offset_y = -2.0,
					tip_x = 4.0,
					tip_y = 1.0
				}
			}},
			{ potion = "blood", amount = 1, quantity = 1000},
		},
		perks =
		{
			"RESPAWN",
		}
	},
	{
		-- ID: 35
		name = "Hunter",
		description = {"Noita, the most dangerous game?","I hope you have a license.","Where'd you get your hands on deer eggs?"},
		class_id = "hunter",

		class_color = "hunter",
		robe_color = {52, 59, 48, 255},
		belt_color = {33, 33, 33, 255},
		cape_color_edge = {77, 70, 50, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"shotgun"}},
				capacity = 	{{6,6}},
				per_round = {{1}},
				reload = 	{{240,250}},
				shuffle = 	{{1}},
				delay = 	{{15,17}},
				spread = 	{{5,7}},
				speed = 	{{1}},
				regen = 	{{60,75}},
				mana_max = 	{{50,55}},
				actions = {
					{"BUCKSHOT", "BUCKSHOT", "BUCKSHOT", "BUCKSHOT", "BUCKSHOT", "BUCKSHOT"},
				},
				gfx = {
					sprite = "shotgun",
					offset_x = 3.0,
					offset_y = 1.0,
					tip_x = 7.0,
					tip_y = -3.0
				}
			}},
			{ wand = {
				name = 		{{"deer_stick"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{300,300}},
				shuffle = 	{{0}},
				delay = 	{{30,40}},
				spread = 	{{10,12}},
				speed = 	{{1}},
				regen = 	{{30,32}},
				mana_max = 	{{155,160}},
				actions = {
					{"SUMMON_HOLLOW_EGG","EXPLODING_DEER"},
				},
				gfx = {
					sprite = "deer_stick",
					offset_x = 1.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
			{ potion = "magic_liquid_invisibility", amount = 1},
		},
		perks =
		{
			"RADAR_ENEMY",
		}
	},
	{
		-- ID: 36
		name = "Sniper",
		description = {"You prefer long-distance relationships.","Time to scope things out.","Bolt-action wands aren't exclusive to lightning wizards."},
		class_id = "sniper",

		class_color = "sniper",
		robe_color = {150, 140, 105, 255},
		belt_color = {38, 38, 38, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"sniper_wand"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{300,300}},
				shuffle = 	{{0}},
				delay = 	{{90,90}},
				spread = 	{{-10,-10}},
				speed = 	{{1}},
				regen = 	{{3,3}},
				mana_max = 	{{6,6}},
				actions_permanent = {
					{"DAMAGE", "DAMAGE", "SPEED"}
				},
				actions = {
					{"FUNKY_SPELL", "FUNKY_SPELL", "FUNKY_SPELL", "FUNKY_SPELL"}
				},
				gfx = {
					sprite = "sniper_wand",
					offset_x = 1.0
				}
			}},
			{ wand = {
				name = 		{{"rangefinder"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{60,60}},
				shuffle = 	{{1}},
				delay = 	{{10,10}},
				spread = 	{{42,42}},
				speed = 	{{1}},
				regen = 	{{10,10}},
				mana_max = 	{{100,100}},
				actions = {
					{"X_RAY"},
				},
				gfx = {
					sprite = "rangefinder",
					offset_x = 1.0
				}
			}},
			{ potion = "magic_liquid_invisibility", amount = 1},
		},
		perks =
		{
			"LASER_AIM",
		}
	},
	{
		-- ID: 37
		name = "Toxic Shaman",
		description = {"I think these eggs are expired...","You're just \"brutally honest\".","Banned in the Noita forums."},
		class_id = "sludge",

		class_color = "sludge",
		robe_color = {104, 130, 16, 255},
		belt_color = {81, 44, 102, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {81, 44, 102, 255},

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"toxic_wand"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{65,70}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{90,100}},
				mana_max = 	{{110,115}},
				actions = {
					{"SUMMON_HOLLOW_EGG", "CURSE", "MIST_RADIOACTIVE"}
				},
				gfx = {
					sprite = "rad_egg_wand",
					offset_x = 1.0,
					tip_x = 5.0
				}
			}},
				{ wand = {
				name = 		{{"poison_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{65,70}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{90,100}},
				mana_max = 	{{110,115}},
				actions = {
					{"SUMMON_HOLLOW_EGG","POISON_BLAST"}
				},
				gfx = {
					sprite = "poison_egg_wand",
					offset_x = 1.0,
					tip_x = 5.0
				}
			}},
			{ potion = "radioactive_liquid", amount = 1, quantity = 1000},
			{ potion = "poison", amount = 1, quantity = 1000},
		},
		perks =
		{
			"BLEED_GAS",
		}
	},
	{
		-- ID: 38
		name = "Metal Wizard",
		description = {"What goes around, comes around...","Toughest wizard you ever saw...","You have an angle grinder."},
		class_id = "armor",

		class_color = "armor",
		robe_color = {69, 69, 69, 255},
		belt_color = {135, 135, 135, 255},
		cape_color_edge = {135, 135, 135, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"angle_grinder"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{65,70}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{50,60}},
				mana_max = 	{{110,115}},
				actions_permanent = {
					{"LINE_ARC"},
				},
				actions = {
					{"DISC_BULLET","DISC_BULLET"}
				},
				gfx = {
					sprite = "angle_grinder",
					offset_x = 1.0
				}
			}},
			{ wand = {
				name = 		{{"table_saw"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{115,125}},
				shuffle = 	{{0}},
				delay = 	{{30,30}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{30,32}},
				mana_max = 	{{50,50}},
				actions = {
					{"HORIZONTAL_ARC","DISC_BULLET_BIG"}
				},
				gfx = {
					sprite = "table_saw",
					offset_x = 1.0
				}
			}},
			{ potion = "oil", amount = 1, quantity = 1000},
			--{ potion = "magic_liquid_protection_all", amount = 1, quantity = 200},
		},
		perks =
		{
			"STAINLESS_ARMOUR",
		}
	},
	{
		-- ID: 39
		name = "Mushroomancer",
		description = {"At parties you're a pretty fungi.","The moldy robes are a feature.","It's always the same mold story with you..."},
		class_id = "mushroomancer",

		class_color = "mushroomancer",
		robe_color = {82, 139, 184, 255},
		belt_color = {74, 66, 56, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {80, 207, 79, 255},

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"shroom_wand"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{135,145}},
				shuffle = 	{{1}},
				delay = 	{{-20,-20}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{25,26}},
				mana_max = 	{{47,48}},
				actions_permanent = {
					{"GRAVITY"}
				},
				actions = {
					{"SPORE_POD","SPORE_POD","SPORE_POD"}
				},
				gfx = {
					sprite = "shroom_wand",
					offset_x = 1.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
			{ potion = "blood_fungi", amount = 1, quantity = 400},
		},
		perks =
		{
			"LEVITATION_TRAIL",
		}
	},
	{
		-- ID: 40
		name = "Homunculist",
		description = {"This isn't what your mother meant by \"Make some friends\".","This one's name is Steve.","Apprentices are overrated."},
		class_id = "homunculist",

		class_color = "homunculist",
		robe_color = {102, 110, 101, 255},
		belt_color = {42, 42, 42, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {42, 42, 42, 255},

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"homunculist_wand"}},
				capacity = 	{{3,4}},
				per_round = {{1}},
				reload = 	{{120,130}},
				shuffle = 	{{0}},
				delay = 	{{12,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{30,32}},
				mana_max = 	{{50,50}},
				actions = {
					{"LASER"},{"SLOW_BULLET"},{"FIREBOMB","FIREBOMB"},{"SPITTER", "SPITTER", "SPITTER"},{"BULLET","BULLET"}
				},
				gfx = {
					sprite = "homunculist_wand",
					offset_x = 2.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
		},
		perks =
		{
			"HOMUNCULUS",
		}
	},
	{
		-- ID: 41
		name = "Weather Wizard",
		description = {"Today's forecast: Doom.","Raincoats are NOT lightning-proof.","With your wand, you forecast winds."},
		class_id = "weather",

		class_color = "weather",
		robe_color = {225, 228, 93, 255},
		belt_color = {98, 107, 215, 255},
		cape_color_edge = {225, 228, 93, 255},
		cape_color = {98, 107, 215, 255}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"wind_stick"}},
				capacity = 	{{5,5}},
				per_round = {{1}},
				reload = 	{{65,75}},
				shuffle = 	{{0}},
				delay = 	{{15,20}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{25,30}},
				mana_max = 	{{35,40}},
				actions_permanent = {
					{"LIFETIME_DOWN", "DELAYED_SPELL"},
				},
				actions = {
					{"SCATTER_4", "AIR_BULLET", "AIR_BULLET", "AIR_BULLET", "AIR_BULLET"},
				},
				gfx = {
					sprite = "forecast_stick",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ wand = {
				name = 		{{"curse_rain_stick"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{240,250}},
				shuffle = 	{{0}},
				delay = 	{{15,20}},
				spread = 	{{0,2}},
				speed = 	{{1}},
				regen = 	{{25,30}},
				mana_max = 	{{100,120}},
				actions_permanent = {
					{"LIGHT_SHOT"},
				},
				actions = {
					{"CURSED_ORB"},
				},
				gfx = {
					sprite = "thunder_stick",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
		},
		perks =
		{
			"REPELLING_CAPE",
		}
	},
	{
		-- ID: 42
		name = "Big Spender",
		description = {"...but don't spend it all on one enemy.","But you'd never spend your lucky nugget.","Your spells have a decent return investment."},
		class_id = "big_money",

		class_color = "big_money",
		robe_color = {232, 162, 32, 255},
		belt_color = {224, 224, 224, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {155, 0, 0, 255},

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"money_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{55,60}},
				shuffle = 	{{0}},
				delay = 	{{12,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{30,32}},
				mana_max = 	{{150,150}},
				actions_permanent = {
					{"COLOUR_YELLOW"},
				},
				actions = {
					{"MONEY_MAGIC", "LANCE"},
				},
				gfx = {
					sprite = "money_wand",
					offset_x = 2.0
				}
			}},
			{ money = 100},
			{ potion = "water", amount = 1, quantity = 1000},
			"mods/thematic_random_starts/files/entities/nugget.xml", 
		},
		perks =
		{
			"EXTRA_MONEY",
		}
	},
	{
		-- ID: 43
		name = "Worm Cultist",
		description = {"Doesn't matter if you walk without rhythm...","Make sure to stand back...","You just dig worms."},
		class_id = "worm_cultist",

		class_color = "worm_cultist",
		robe_color = {57, 67, 118, 255},
		belt_color = {64, 53, 41, 255},
		cape_color_edge = {84, 84, 58, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"worm_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{45,50}},
				shuffle = 	{{0}},
				delay = 	{{12,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{25,26}},
				mana_max = 	{{31,31}},
				actions_permanent = {
					{"COLOUR_GREEN", "LIGHT_SHOT", "CLIPPING_SHOT"},
				},
				actions = {
					{"LANCE"},
				},
				gfx = {
					sprite = "worm_wand",
					offset_x = 2.0
				}
			}},
			{ wand = {
				name = 		{{"worm_stick"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{600,650}},
				shuffle = 	{{0}},
				delay = 	{{12,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{12,13}},
				mana_max = 	{{185,200}},
				actions_permanent = {
					{"HOMING_CURSOR", "HOMING_SHORT", "LIFETIME"},
				},
				actions = {
					{"WORM_SHOT"},
				},
				gfx = {
					sprite = "worm_stick",
					offset_x = 2.0,
					tip_x = 15.0
				}
			}},
			{ potion = "magic_liquid_worm_attractor", amount = 1, quantity = 1000},
			"data/entities/items/pickup/egg_worm.xml"
		},
		perks =
		{
			"WORM_ATTRACTOR",
		}
	},
	{
		-- ID: 44
		name = "Wand Enthusiast",
		description = {"You just think they are neat.","Who reads wands before trying anyways?","What's the worst that could happen..."},
		class_id = "wand_enthusiast",

		class_color = "wand_enthusiast",
		robe_color = {199, 123, 170, 255},
		belt_color = {219, 209, 121, 255},
		cape_color_edge = {96, 191, 92, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"wand_wand"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{75,85}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{3,5}},
				speed = 	{{1}},
				regen = 	{{30,32}},
				mana_max = 	{{300,310}},
				actions = {
					{"SUMMON_WANDGHOST", "BULLET", "BULLET"},
				},
				gfx = {
					sprite = "wand_wand",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
			"data/entities/items/pickup/broken_wand.xml"
		},
		perks =
		{
			"WAND_EXPERIMENTER",
		}
	},
	{
		-- ID: 45
		name = "Space Wizard",
		description = {"Some find you repulsive.","Gravimancy has its ups and downs.","You're the star of the show."},
		class_id = "space",

		class_color = "space",
		robe_color = {54, 54, 54, 255},
		belt_color = {222, 189, 24, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {45, 111, 168, 255},

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"star_wand"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{90,95}},
				shuffle = 	{{0}},
				delay = 	{{10,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{70,75}},
				mana_max = 	{{75,90}},
				actions_permanent = {
					{"SPEED", "LIFETIME", "DECELERATING_SHOT"},
				},
				actions = {
					{"LIGHT", "EXPANDING_ORB"},
				},
				gfx = {
					sprite = "sun_wand",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ wand = {
				name = 		{{"black_hole_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{55,65}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{3,5}},
				speed = 	{{1}},
				regen = 	{{15,16}},
				mana_max = 	{{180,180}},
				actions_permanent = {
					{"LIFETIME", "DECELERATING_SHOT"},
				},
				actions = {
					{"BLACK_HOLE"},
				},
				gfx = {
					sprite = "black_hole_wand",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},
			{ wand = {
				name = 		{{"asteroid_stick"}},
				capacity = 	{{2,2}},
				per_round = {{1}},
				reload = 	{{55,65}},
				shuffle = 	{{1}},
				delay = 	{{10,15}},
				spread = 	{{3,5}},
				speed = 	{{1}},
				regen = 	{{40,60}},
				mana_max = 	{{110,130}},
				actions = {
					{"SUMMON_ROCK", "SUMMON_ROCK"},
				},
				gfx = {
					sprite = "asteroid_wand",
					offset_x = 1.0,
					tip_x = 10.0
				}
			}},

			{ potion = "water", amount = 1, quantity = 1000},
			"data/entities/items/pickup/moon.xml"
		},
		perks =
		{
			"PROJECTILE_REPULSION",
		}
	},
	{
		-- ID: 46
		name = "Warp Wizard",
		description = {"A little matter never stopped you.","You ever stub your toe and end up a room over?","Careful where you're pointed at..."},
		class_id = "warp",

		class_color = "warp",
		robe_color = {166, 190, 193, 255},
		belt_color = {224, 224, 224, 255},
		cape_color_edge = {224, 224, 224, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"telebubble_wand"}},
				capacity = 	{{6,6}},
				per_round = {{1}},
				reload = 	{{35,40}},
				shuffle = 	{{0}},
				delay = 	{{5,6}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{110,115}},
				mana_max = 	{{50,55}},
				actions_permanent = {
					{"COLOUR_PURPLE"}
				}, 
				actions = {
					{"SUPER_TELEPORT_CAST", "DECELERATING_SHOT", "W_SHAPE", "BUBBLESHOT", "BUBBLESHOT", "BUBBLESHOT"},
				},
				gfx = {
					sprite = "warp_wand",
					offset_x = 2.0
				}
			}},
			{ wand = {
				name = 		{{"warp_wand"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{85,90}},
				shuffle = 	{{0}},
				delay = 	{{12,15}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{40,45}},
				mana_max = 	{{45,50}},
				actions = {
					{"LONG_DISTANCE_CAST", "NOLLA", "TELEPORT_PROJECTILE_STATIC"},
				},
				gfx = {
					sprite = "warp_stick",
					offset_x = 2.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
		},
		perks =
		{
			"TELEPORTITIS",
		}
	},
	{
		-- ID: 47
		name = "Luck Wizard",
		description = {"Fish? Again?!","All in on worm.","Never tell me the odds. (It's for the best)"},
		class_id = "luck_wizard",

		class_color = "luck_wizard",
		robe_color = {133, 225, 124, 255},
		belt_color = {227, 197, 66, 255},
		cape_color_edge = {227, 197, 66, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 70,
		items = 
		{
			{ wand = {
				name = 		{{"lucky_wand"}},
				capacity = 	{{5,5}},
				per_round = {{1}},
				reload = 	{{45,55}},
				shuffle = 	{{1}},
				delay = 	{{14,16}},
				spread = 	{{5,15}},
				speed = 	{{1}},
				regen = 	{{50,60}},
				mana_max = 	{{100,120}},
				actions_permanent = {
					{"FIZZLE"},
				},
				actions = {
					{
						"DAMAGE_RANDOM", 
						"CHAOTIC_ARC", 
						{ "BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"}, 
						{ "BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"}, 
						{ "BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"}
					},
				},
				gfx = {
					sprite = "lucky_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
			{ potion = "magic_liquid_random_polymorph", amount = 1},
		},
		perks =
		{
			"PERKS_LOTTERY",
		}
	},
	{
		-- ID: 48
		name = "Beam Wizard",
		description = {"Be careful, you'll shoot your eye out.","Does this thing have an 'off' switch?","If it's dangerous, it's a feature!"},
		class_id = "beam",

		class_color = "beam",
		robe_color = {131, 131, 131, 255},
		belt_color = {72, 153, 183, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {46, 197, 30, 255},

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"beam_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{30,30}},
				shuffle = 	{{0}},
				delay = 	{{30,30}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{10,10}},
				mana_max = 	{{10,10}},
				actions = {
					{"TORCH_ELECTRIC"},
				},
				gfx = {
					sprite = "beam_wand",
					offset_x = 2.0,
					tip_x = 9.0
				}
			}},
		},
		perks =
		{
			"PERSONAL_LASER",
		}
	},
	{
		-- ID: 49
		name = "Lukki Breeder",
		description = {"And this one has a nasty attitude.","Your foes will be in a sticky situation.","Some might call you a web developer."},
		class_id = "lukki_pet",

		class_color = "lukki_pet",
		robe_color = {202, 195, 155, 255},
		belt_color = {53, 51, 40, 255},
		cape_color_edge = {168, 109, 151, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"web_wand"}},
				capacity = 	{{5,5}},
				per_round = {{1}},
				reload = 	{{50,60}},
				shuffle = 	{{0}},
				delay = 	{{30,35}},
				spread = 	{{7,9}},
				speed = 	{{1}},
				regen = 	{{65,70}},
				mana_max = 	{{100,110}},
				actions = {
					{"REMOVE_BOUNCE", "BURST_3", "GLUE_SHOT", "GLUE_SHOT", "GLUE_SHOT"},
				},
				gfx = {
					sprite = "glue_gun",
					offset_x = 2.0,
					offset_y = 2.0,
					tip_x = 10.0,
					tip_y = -4.0
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
		},
		perks =
		{
			"LUKKI_MINION",
		}
	},
	{
		-- ID: 50
		name = "Time Traveler",
		description = {"You travel forward in time at normal speed.","You saw that one coming.","The wounds stick around for some reason..."},
		class_id = "dodger",

		class_color = "dodger",
		robe_color = {173, 156, 208, 255},
		belt_color = {222, 222, 222, 255},
		cape_color_edge = {222, 222, 222, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 90,
		items = 
		{
			{ wand = {
				name = 		{{"raygun"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{80,85}},
				shuffle = 	{{0}},
				delay = 	{{12,14}},
				spread = 	{{-10,-10}},
				speed = 	{{1}},
				regen = 	{{65,70}},
				mana_max = 	{{25,30}},
				actions = {
					{"SPEED", "PHASING_ARC", "LUMINOUS_DRILL"},
				},
				gfx = {
					sprite = "lasgun",
					offset_x = 2.0,
					offset_y = 2.0,
					tip_x = 8.0,
					tip_y = -3.0
				}
			}},
			{ wand = {
				name = 		{{"time_device"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{120,130}},
				shuffle = 	{{0}},
				delay = 	{{18,22}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{60,70}},
				mana_max = 	{{45,50}},
				actions_permanent = {
					{"LIFETIME", "LIFETIME", "LIFETIME", "LIFETIME"},
				},
				actions = {
					{"LIGHT", "COLOUR_GREEN", "TELEPORT_PROJECTILE_STATIC"},
				},
				gfx = {
					sprite = "time_device",
					offset_x = 2.0,
					tip_x = 0.0,
					tip_y = 0.0,
				}
			}},
			{ potion = "water", amount = 1, quantity = 1000},
			{ potion = "magic_liquid_movement_faster", amount = 1, quantity = 1000},
		},
		perks =
		{
			"TELEPORTITIS_DODGE",
		}
	},
}