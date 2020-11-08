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

		hp = 100,
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
		description = {"Somehow you know this run will suck.","Your bite is worse than your bark.","Good thing a hardware store was nearby..."},
		class_id = "vampire",

		class_color = "vampire",
		robe_color = {60, 60, 60, 255},
		belt_color = {100, 100, 100, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {175, 26, 26, 255},

		hp = 60,
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
				spread = 	{{20,22}},
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
		description = {"Silent, but deadly.","This loadout has a hidden feature.","You've been known to be a bit edgy..."},
		class_id = "ninja",

		class_color = "ninja",
		robe_color = {58, 62, 82, 255},
		belt_color = {42, 44, 56, 255},
		cape_color_edge = {42, 44, 56, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 60,
		items = 
		{
			{ wand = {
				name = 		{{"knife"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{12,12}},
				shuffle = 	{{0}},
				delay = 	{{1,1}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{1,1}},
				mana_max = 	{{1,1}},
				actions = {
					{"KNIFE"},
				},
				gfx = {
					sprite = "knife",
					offset_x = 1.0,
					tip_x = 1.0
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
				delay = 	{{50,55}},
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

		hp = 80,
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

		hp = 100,
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
		description = {"Fish? Again?!","All in on worm.","Never tell me the odds. (It's for the best)"},
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
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{60,60}},
				shuffle = 	{{0}},
				delay = 	{{18,22}},
				spread = 	{{0,0}},
				speed = 	{{1}},
				regen = 	{{115,120}},
				mana_max = 	{{190,210}},
				actions = {
					{"BURST_2", "TELEPORT_PROJECTILE_STATIC", "TELEPORT_PROJECTILE"},
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

		hp = 80,
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
			"mods/thematic_random_starts/files/wands/tentacle_stick.xml",
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

		hp = 80,
		items = 
		{
			{ wand = {
				name = 		{{"crystal_wand"}},
				capacity = 	{{4,4}},
				per_round = {{1}},
				reload = 	{{15,20}},
				shuffle = 	{{1}},
				delay = 	{{55,65}},
				spread = 	{{5,7}},
				speed = 	{{1}},
				regen = 	{{20,30}},
				mana_max = 	{{45,50}},
				actions = {
					{"PIPE_BOMB","PIPE_BOMB"},
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
				mana_max = 	{{50,50}},
				actions_permanent = {
					{"DELAYED_SPELL"},
				},
				actions = {
					{"PIPE_BOMB_DETONATOR"},
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
		description = {"Pyromancers are so hot right now.","Basically an arsonist with a license.","You've studied to a great degree..."},
		class_id = "pyro",

		class_color = "pyro",
		robe_color = {237, 134, 0, 255},
		belt_color = {105, 70, 52, 255},
		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 70,
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

		hp = 100,
		items = 
		{
			{ wand = {
				name = 		{{"flamethrower"}},
				capacity = 	{{3,3}},
				per_round = {{1}},
				reload = 	{{2,2}},
				shuffle = 	{{1}},
				delay = 	{{1,1}},
				spread = 	{{10,12}},
				speed = 	{{1}},
				regen = 	{{40,50}},
				mana_max = 	{{180,200}},
				actions_permanent = {
					{"GRAVITY"},
				},
				actions = {
					{"TORCH","FLAMETHROWER","FLAMETHROWER"},
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
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{10,12}},
				shuffle = 	{{1}},
				delay = 	{{25,30}},
				spread = 	{{20,22}},
				speed = 	{{1}},
				regen = 	{{9,11}},
				mana_max = 	{{360,370}},
				actions_permanent = {
					{"DELAYED_SPELL"},
				},
				actions = {
					{"FRIEND_FLY"},
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

		hp = 90,
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
			{ potion = "water", amount = 1},
			{ potion = "water", amount = 1, quantity = 0},
		},
		perks =
		{
			"LOW_GRAVITY",
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
					{"DELAYED_SPELL", "GRAVITY"},
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
			{ potion = "mud", amount = 1},
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
					sprite = "crossbow",
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
						{"SUMMON_EGG","SUMMON_EGG","SUMMON_EGG","MINE","MINE","SOILBALL","SPORE_POD","PROPANE_TANK","BLACK_HOLE","EXPLODING_DEER"}
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
			"HEARTS_MORE_EXTRA_HP",
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

		hp = 70,
		items = 
		{
			{ wand = {
				name = 		{{"shockball_wand"}},
				capacity = 	{{1,1}},
				per_round = {{1}},
				reload = 	{{60,61}},
				shuffle = 	{{1}},
				delay = 	{{2,3}},
				spread = 	{{4,6}},
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
		description = {"This mine is one of your old haunts...","...and you hope you won't get repossessed.","...and your pal is named Steve."},
		class_id = "possessed",
		class_color = "possessed",
		
		robe_color = {54, 54, 55, 255},
		belt_color = {219, 219, 220, 255},
		cape_color_edge = {219, 219, 219, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 70,
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
		description = {"You ever try a wand without looking at it?","...yeah this wand looks perfectly safe.","Pretty the duct tape is holding..."},
		class_id = "tinker",
		class_color = "tinker",
		
		robe_color = {232, 197, 115, 255},
		belt_color = {115, 92, 70, 255},
		cape_color_edge = {115, 92, 70, 255},
		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge

		hp = 60,
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
						{ "BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"},
						{ "BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"}
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
						{ "TORCH_ELECTRIC", "DISC_BULLET_BIG","ACIDSHOT","PURPLE_EXPLOSION_FIELD"}, --dangerous things
						{ "CHAINSAW", "DIGGER", "LUMINOUS_DRILL", "LUMINOUS_DRILL_LASER"}, --good utility
						{ "BOUNCE", "PIERCING_SHOT", "BURST_2", "BURST_3", "DELAYED_SPELL", "LIFETIME"}, --modifiers
						{ "LIGHT_BULLET_TRIGGER", "BULLET_TRIGGER", "SLOW_BULLET_TRIGGER", "SPITTER_TIMER"}, --triggers
						{ "LIGHT_BULLET_TRIGGER", "BULLET_TRIGGER", "SLOW_BULLET_TRIGGER", "SPITTER_TIMER"} --misc bits
					},
				},
				gfx = {
					sprite = "toolbox",
					offset_x = 5.0,
					offset_y = -1.0
				}
			}},
			{ potion = "water", amount = 1},
		},
		perks =
		{
			"EDIT_WANDS_EVERYWHERE",
		}
	},
--	{
--		-- ID: 30
--		name = "Thrifty Shopper",
--		description = {"","",""},
--		class_id = "thrifty",
--		class_color = "thrifty",
--		
--		robe_color = {224, 242, 255, 255},
--		belt_color = {151, 196, 218, 255},
--		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
--		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge
--
--		hp = 90,
--		items = 
--		{
--			"mods/thematic_random_starts/files/wands/shiddy_wand.xml",
--			{ potion = "water", amount = 1, quantity = 500},
--			{ money = 200},
--		},
--		perks =
--		{
--			"EXTRA_PERK",
--		}
--	},
--	{
--		-- ID: 31
--		name = "Storm Wizard",
--		description = {"","",""},
--		class_id = "storm",
--		class_color = "storm",
--		
--		robe_color = {224, 242, 255, 255},
--		belt_color = {151, 196, 218, 255},
--		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
--		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge
--	
--		hp = 90,
--		items = 
--		{
--			"mods/thematic_random_starts/files/wands/shiddy_wand.xml",
--			{ potion = "water", amount = 1, quantity = 500},
--			{ money = 200},
--		},
--		perks =
--		{
--			"EXTRA_PERK",
--		}
--	},
--	{
--		-- ID: 32
--		name = "Tidal Sorcerer",
--		description = {"","",""},
--		class_id = "tide",
--		class_color = "tide",
--		
--		robe_color = {224, 242, 255, 255},
--		belt_color = {151, 196, 218, 255},
--		cape_color_edge = {0, 0, 0, 0}, -- default to robe_color
--		cape_color = {0, 0, 0, 0}, -- calculate from cape_color_edge
--
--		hp = 90,
--		items = 
--		{
--			"mods/thematic_random_starts/files/wands/shiddy_wand.xml",
--			{ potion = "water", amount = 1, quantity = 500},
--			{ money = 200},
--		},
--		perks =
--		{
--			"EXTRA_PERK",
--		}
--	}
}

-- {
-- "data/entities/misc/custom_cards/bomb.xml",
-- amount = 1,
-- },
-- {
-- "data/entities/misc/custom_cards/tnt.xml",
-- amount = 1,
-- },
