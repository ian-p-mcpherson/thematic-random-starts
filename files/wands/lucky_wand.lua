dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

function get_random_from( target )
	local rnd = Random(1, #target)
	
	return tostring(target[rnd])
end

function get_random_between_range( target )
	local minval = target[1]
	local maxval = target[2]
	
	return Random(minval, maxval)
end

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )
SetRandomSeed( x, y )

local ability_comp = EntityGetFirstComponent( entity_id, "AbilityComponent" )

local wand = { }
wand.name = {"lucky_wand"}
wand.deck_capacity = {5,5}
wand.actions_per_round = 1
wand.reload_time = {45,55}
wand.shuffle_deck_when_empty = 1
wand.fire_rate_wait = {25,30}
wand.spread_degrees = {5,15}
wand.speed_multiplier = 1
wand.mana_charge_speed = {20,100}
wand.mana_max = {20,250}
wand.spell1 = { "BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"}
wand.spell2 = { "BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"}
wand.spell3 = { "BUBBLESHOT", "BOUNCY_ORB", "ARROW", "FIREBOMB", "RUBBER_BALL", "SPITTER", "LIGHT_BULLET"}

local mana_max = get_random_between_range( wand.mana_max )
local deck_capacity = get_random_between_range( wand.deck_capacity )

ComponentSetValue( ability_comp, "ui_name", get_random_from( wand.name ) )

ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", get_random_between_range( wand.reload_time ) )
ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", get_random_between_range( wand.fire_rate_wait ) )
ComponentSetValue( ability_comp, "mana_charge_speed", get_random_between_range( wand.mana_charge_speed ) )

ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", wand.actions_per_round )
ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", deck_capacity )
ComponentObjectSetValue( ability_comp, "gun_config", "shuffle_deck_when_empty", wand.shuffle_deck_when_empty )
ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", get_random_between_range( wand.spread_degrees ) )
ComponentObjectSetValue( ability_comp, "gunaction_config", "speed_multiplier", wand.speed_multiplier )

ComponentSetValue( ability_comp, "mana_max", mana_max )
ComponentSetValue( ability_comp, "mana", mana_max )

local wand_action1 = get_random_from( wand.spell1 )
local wand_action2 = get_random_from( wand.spell2 )
local wand_action3 = get_random_from( wand.spell3 )

AddGunAction( entity_id, "FIZZLE" )
AddGunAction( entity_id, "DAMAGE_RANDOM" )
AddGunAction( entity_id, wand_action1 )
AddGunAction( entity_id, wand_action2 )
AddGunAction( entity_id, wand_action3 )