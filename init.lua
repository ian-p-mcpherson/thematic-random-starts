-- Init scripts
dofile( "mods/thematic_random_starts/files/loadouts.lua" )
dofile( "data/scripts/gun/procedural/gun_procedural_better.lua")
dofile( "data/scripts/perks/perk.lua" )
dofile( "data/scripts/lib/mod_settings.lua" )

-- Add custom spells
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/thematic_random_starts/files/spells/gun_actions.lua")

-- Add custom materials
ModMaterialsFileAdd("mods/thematic_random_starts/files/materials/materials.xml")

-- cape defaults (gray)
local robe_rgba = {140, 140, 140, 255}
local belt_rgba = {82, 67, 41, 255}
local cape_rgba = {0, 0, 0, 0}
local cape_edge_rgba = {140, 140, 140, 255}

-- constants
wand_gfx_root = "mods/thematic_random_starts/files/wands/gfx/"

function OnPlayerSpawned( player_entity ) -- this runs when player entity has been created
	-- init the mod
	local init_check_flag = "start_loadouts_init_done"
	if GameHasFlagRun( init_check_flag ) then
		return
	end
	GameAddFlagRun( init_check_flag )

	-- get settings
	local loadout_override = 0
	local enable_robes =  ModSettingGet("thematic_random_starts.enable_robes")
	local enable_starts = ModSettingGet("thematic_random_starts.enable_random_starts")
	local clear_inventory = ModSettingGet("thematic_random_starts.clear_inventory")

	-- if neither are enabled, let mod load but do nothing
	if ( enable_robes == false and enable_starts == false ) then
		return
	end

	-- get the override id if random is disabled
	if ( ModSettingGet("thematic_random_starts.enable_random") == false ) then 
		loadout_override = math.floor(ModSettingGet("thematic_random_starts.loadout_override") + 0.5)
	end

	-- get a random seed
	local x,y = EntityGetTransform( player_entity )
	SetRandomSeed( x + 344, y - 523 )

	-- get a random loadout ID or use override
	local loadout_rnd
	if ( loadout_override > 0) then 
		loadout_rnd = loadout_override
	else
		loadout_rnd = GetRandomLoadout()
	end

	SetPlayerLoadout( player_entity, loadout_rnd, enable_robes, true, enable_starts, clear_inventory )
end

function GetRandomLoadout() -- gets a random loadout from available loadouts
	local loadout_rnd
	local loadout_exceptions = get_loadout_exceptions()
	for i,j in ipairs(loadout_exceptions) do
		table.remove (loadout_list, j)
	end
	if #loadout_list == 0 then
		loadout_rnd = 0
	else
		loadout_rnd = Random( 1, #loadout_list )
	end
	return loadout_rnd
end

function SetPlayerLoadout( player_entity, loadout_id, do_robes, do_notification, do_loadout, clear_inventory) -- this function is separate for other mods to use it
	-- default args
	if ( loadout_id == nil ) then loadout_id = 0 end
	if ( do_robes == nil ) then do_robes = true end
	if ( do_notification == nil ) then do_notification = true end
	if ( do_loadout == nil ) then do_loadout = true end
	if ( clear_inventory == nil ) then clear_inventory = true end

	-- get a random seed
	local x,y = EntityGetTransform( player_entity )
	SetRandomSeed( x + 344, y - 523 )

	if ( loadout_id == nil or loadout_id < 1 or loadout_id > #loadout_list) then
		loadout_id = GetRandomLoadout()
	end

	-- initialize player vars
	local inventory = nil
	local cape = nil
	local player_arm = nil
	local wallet = nil

	-- find the quick inventory, player cape and arm
	local player_child_entities = EntityGetAllChildren( player_entity )
	if ( player_child_entities ~= nil ) then
		for i,child_entity in ipairs( player_child_entities ) do
			local child_entity_name = EntityGetName( child_entity )
			
			if ( child_entity_name == "inventory_quick" ) then
				inventory = child_entity
			end
			
			if ( child_entity_name == "cape" ) then
				cape = child_entity
			end
			
			if ( child_entity_name == "arm_r" ) then
				player_arm = child_entity
			end
		end
	end

	-- get wallet
	wallet = EntityGetFirstComponent( player_entity, "WalletComponent" )

	-- compute improbability
	local improbability = Random( 1, 8767128 )
	if improbability == 1 then
		GamePrintImportant( "We have normality?",  "What a high improbability factor...")
		local item_entity = EntityLoad( "mods/thematic_random_starts/files/potions/potion_template.xml" )
		AddMaterialInventoryMaterial( item_entity, "gargleblaster", 1000 )
		GamePickUpInventoryItem( player_entity, item_entity, false )

		-- TODO make the whale floppy
		local pos_x, pos_y = EntityGetTransform( player_entity )
		local whale = EntityLoad ( "mods/thematic_random_starts/files/entities/improbability/whale_full.xml", pos_x, pos_y - 500)
		local petunias = EntityLoad ( "mods/thematic_random_starts/files/entities/improbability/petunias.xml", pos_x + 50, pos_y - 200 )
		return
	end

	-- catch for when a player disables all loadouts for some reason
	if loadout_id == 0 then
		GamePrintImportant( "You are feeling normal.",  "You have no loadouts enabled!")
		return
	end

	-- gather vars for setting up the player
	local loadout_choice = loadout_list[loadout_id]
	local loadout_name = loadout_choice.name

	local gfx_folder = loadout_choice.class_color or "default"

	if do_robes == true then
		-- set player sprite
		local player_sprite_component = EntityGetFirstComponent( player_entity, "SpriteComponent" )
		local player_sprite_file = "mods/thematic_random_starts/files/" .. gfx_folder .. "/player.xml"
		ComponentSetValue( player_sprite_component, "image_file", player_sprite_file )
		
		-- set player arm sprite
		local player_arm_sprite_component = EntityGetFirstComponent( player_arm, "SpriteComponent" )
		local player_arm_sprite_file = "mods/thematic_random_starts/files/" .. gfx_folder .. "/player_arm.xml"
		ComponentSetValue( player_arm_sprite_component, "image_file", player_arm_sprite_file )
		
		-- set player ragdoll
		local player_ragdoll_component = EntityGetFirstComponent( player_entity, "DamageModelComponent" )
		local player_ragdoll_file = "mods/thematic_random_starts/files/" .. gfx_folder .. "/ragdoll/filenames.txt"
		ComponentSetValue( player_ragdoll_component, "ragdoll_filenames_file", player_ragdoll_file )

		-- set colors
		if ( loadout_choice.robe_color ~= nil) then robe_rgba = loadout_choice.robe_color end
		if ( loadout_choice.belt_color ~= nil) then belt_rgba = loadout_choice.belt_color end
		if ( loadout_choice.cape_color ~= nil) then cape_rgba = loadout_choice.cape_color end
		if ( loadout_choice.cape_color_edge ~= nil) then cape_edge_rgba = loadout_choice.cape_color_edge end
		set_cape_color( player_entity )

		-- refresh sprites
		EntityRefreshSprite(player_entity, player_sprite_component)
	end

	local notify_text = "You are dressed like"
	if do_loadout == true then
		notify_text = "You are"
		-- set inventory contents
		if ( inventory ~= nil) then
			local inventory_items = EntityGetAllChildren( inventory )
			
			-- remove default items if needed
			if inventory_items ~= nil and clear_inventory == true then
				for i,item_entity in ipairs( inventory_items ) do
					GameKillInventoryItem( player_entity, item_entity )
				end
			end

			-- add loadout items
			local loadout_items = loadout_choice.items
			for item_id,loadout_item in ipairs( loadout_items ) do
				if ( tostring( type( loadout_item ) ) ~= "table" ) then
					local item_entity = EntityLoad( loadout_item )
					GamePickUpInventoryItem( player_entity, item_entity, false )
				else
					local amount = loadout_item.amount or 1
					
					for i=1,amount do
						local item_option = ""
						
						if ( loadout_item.options ~= nil ) then
							local item_options = loadout_item.options
							local item_options_rnd = Random( 1, #item_options )
							
							item_option = item_options[item_options_rnd]
						else
							item_option = loadout_item[1]
						end
						
						if ( loadout_item.wand ~= nil) then
							-- handle wands
							local new_wand = init_wand(loadout_item.wand)
							if ( new_wand ~= nil ) then
								GamePickUpInventoryItem( player_entity, new_wand, false )
							end
						elseif ( loadout_item.potion ~= nil) then
							-- handle potions
							local rarity = loadout_item.rarity or 0
							local potion_amount = loadout_item.quantity or 1000
							item_entity = EntityLoad( "mods/thematic_random_starts/files/potions/potion_template.xml" )
							if ( loadout_item.potion ~= "random" ) then
								AddMaterialInventoryMaterial( item_entity, loadout_item.potion, potion_amount )
							else
								AddMaterialInventoryMaterial( item_entity, get_random_potion( rarity ), potion_amount )
							end
						elseif ( loadout_item.money ~= nil) then
							-- handle money
							ComponentSetValue( wallet, "money", loadout_item.money )
						else
							-- handle everything else
							item_entity = EntityLoad( item_option )
						end

						if item_entity then
							GamePickUpInventoryItem( player_entity, item_entity, false )
						end
					end
				end
			end
		end

		-- add perks
		if ( loadout_choice.perks ~= nil ) then
			for i,perk_name in ipairs( loadout_choice.perks ) do
				local perk_entity = perk_spawn( x, y, perk_name )
				if ( perk_entity ~= nil ) then
					perk_pickup( perk_entity, player_entity, EntityGetName( perk_entity ), false, false )
				end
			end	
		end

		-- set HP
		local damagemodels = EntityGetComponent( player_entity, "DamageModelComponent" )
		local hp_modified = loadout_choice.hp / 25
		for i,damagemodel in ipairs(damagemodels) do
			ComponentSetValue( damagemodel, "max_hp_old", hp_modified )
			ComponentSetValue( damagemodel, "max_hp", hp_modified )
			ComponentSetValue( damagemodel, "hp", hp_modified)
			ComponentSetValue( damagemodel, "mLastMaxHpChangeFrame", GameGetFrameNum() )
		end
	end

	-- tell the player what class they are
	if do_notification == true then
		local a_an = "a"
		local first_letter = string.lower(string.sub(loadout_name,1,1))
		if ( first_letter == "a" or first_letter == "e" or first_letter == "i" or first_letter == "o" or first_letter == "u" ) then a_an = a_an .. "n" end
		GamePrintImportant( notify_text .. " " .. a_an .. " " .. loadout_name .. "",  tostring(get_random_from( loadout_choice.description )))
	end
end

function get_random_potion( rarity )
	local r_value = 0
	if ( rarity == 0)  then r_value = Random( 0, 100 ) 
	elseif ( rarity == 1)  then r_value = Random( 50, 100 ) 
	elseif ( rarity == 2)  then r_value = Random( 70, 100 ) 
	elseif ( rarity == 3)  then r_value = Random( 95, 100 ) 
	elseif ( rarity == 4)  then r_value = 100 end

	if( r_value <= 60 ) then
		r_value = Random( 1, 100 )
		if( r_value == 1 ) then return "cement" end
		if( r_value <= 10 ) then return "mud" end
		if( r_value <= 20 ) then return "water_swamp" end
		if( r_value <= 30 ) then return "water_salt" end
		if( r_value <= 40 ) then return "swamp" end
		if( r_value <= 50 ) then return "snow" end
		return "water"
	elseif( r_value <= 70 ) then
		return random_from_array( { "blood", "oil" , "alcohol", "radioactive_liquid"} )
	elseif( r_value <= 99 ) then
		return random_from_array( { "acid", "material_confusion", "magic_liquid_polymorph", "magic_liquid_random_polymorph", "magic_liquid_berserk", "magic_liquid_charm","magic_liquid_movement_faster", "magic_liquid_invisibility", "magic_liquid_worm_attractor", "poison", "magic_liquid_mana_regeneration" } )
	else
		r_value = Random( 0, 100000 )
		if( r_value == 0 ) then return "creepy_liquid" end 
		if( r_value == 79 ) then return "gold" end 
		if( r_value == 666 ) then return "urine" end
		if( r_value == 9000 ) then return "magic_liquid_hp_regeneration" end 
		if( r_value == 9001 ) then return "magic_liquid_hp_regeneration_unstable" end 
		if( r_value == 99999 ) then return "midas_precursor" end 
		if( r_value == 100000 ) then return "midas" end 
		return random_from_array( { "slime", "gunpowder_unstable", "blood_worm", "magic_liquid_protection_all" , "magic_liquid_random_polymorph", "lava"} )
	end
end

function set_cape_color( player_entity )
	-- cape edge defaults to robe_color
	if (cape_edge_rgba[1] == 0) then cape_edge_rgba = robe_rgba end

	local cape_color
	local cape_color_edge = "0x" .. string.format("%02x", cape_edge_rgba[4]) .. string.format("%02x", cape_edge_rgba[3]) .. string.format("%02x", cape_edge_rgba[2]) .. string.format("%02x", cape_edge_rgba[1])
	if ( cape_rgba[1] == 0 ) then
		-- cape color defaults to a value calculated from cape_edge_rgba
		cape_color = "0x" .. string.format("%02x", cape_edge_rgba[4]) .. string.format("%02x", math.floor(cape_edge_rgba[3] * 0.8)) .. string.format("%02x", math.floor(cape_edge_rgba[2] * 0.8)) .. string.format("%02x", math.floor(cape_edge_rgba[1] * 0.8))
	else
		cape_color = "0x" .. string.format("%02x", cape_rgba[4]) .. string.format("%02x", cape_rgba[3]) .. string.format("%02x", cape_rgba[2]) .. string.format("%02x", cape_rgba[1])
	end

	local cape = nil
	local player_children = EntityGetAllChildren(player_entity)
	if (player_children ~= nil) then
		for i,child in ipairs(player_children) do			
			if (EntityGetName(child) == "cape") then
				cape = child
			end
		end
	end

	edit_component( cape, "VerletPhysicsComponent", function(comp,vars)
		vars.cloth_color = tonumber(cape_color, 16)
		vars.cloth_color_edge = tonumber(cape_color_edge, 16)
	end)
end

function get_random_from( target )
	if (type(target) ~= "table") then return target end
	if ( target ~= nil) then
		local rnd = Random(1, #target)
		return target[rnd]
	end
	return nil
end

function get_random_between_range( target )
	if (type(target) ~= "table") then return target end
	if (table.getn( target ) == 1) then
		return target[1]
	end
	local minval = target[1]
	local maxval = target[2]
	return Random(minval, maxval)
end

function init_wand( config )
	local entity = EntityLoad("mods/thematic_random_starts/files/wands/wand_template.xml")
	local ability_component = EntityGetFirstComponent(entity, "AbilityComponent")

	if (config.gfx ~= nil) then
		local gfx = config.gfx
		local sprite = wand_gfx_root .. (gfx.sprite or "novice_wand") .. ".png"
		local offset_x = 0.5 + (gfx.offset_x or 0.0)
		local offset_y = 4.0 + (gfx.offset_y or 0.0)
		local tip_x = 0.0 + (gfx.tip_x or 8.0)
		local tip_y = 0.5 + (gfx.tip_y or 0.0)
		SetWandSprite( entity, ability_component, sprite, offset_x, offset_y, tip_x, tip_y)
		EntityRefreshSprite(entity, EntityGetFirstComponent( entity, "SpriteComponent", "item" ))
	end

	local name = get_random_from(config.name) or {"wand"}
	local deck_capacity = get_random_from(config.capacity) or {2,4}
	local actions_per_round = get_random_from(config.per_round) or {1}
	local reload_time = get_random_from(config.reload) or {30,40}
	local shuffle_deck_when_empty = get_random_from(config.shuffle) or {1}
	local fire_rate_wait = get_random_from(config.delay) or {10,15}
	local spread_degrees = get_random_from(config.spread) or {0,5}
	local speed_multiplier = get_random_from(config.speed) or {1}
	local mana_charge_speed = get_random_from(config.regen) or {50,60}
	local mana_max = get_random_from(config.mana_max) or {140,150}
	local actions = get_random_from(config.actions) or {}
	local actions_permanent = get_random_from(config.actions_permanent) or {}

	ComponentSetValue( ability_component, "ui_name", get_random_from( name ) )
	ComponentObjectSetValue( ability_component, "gun_config", "reload_time", get_random_between_range( reload_time ) )
	ComponentObjectSetValue( ability_component, "gunaction_config", "fire_rate_wait", get_random_between_range( fire_rate_wait ) )
	ComponentSetValue( ability_component, "mana_charge_speed", get_random_between_range( mana_charge_speed ) )
	ComponentObjectSetValue( ability_component, "gun_config", "actions_per_round", get_random_between_range( actions_per_round ) )
	deck_capacity = get_random_between_range( deck_capacity) 
	ComponentObjectSetValue( ability_component, "gun_config", "deck_capacity", deck_capacity)
	ComponentObjectSetValue( ability_component, "gun_config", "shuffle_deck_when_empty", get_random_from( shuffle_deck_when_empty ) )
	ComponentObjectSetValue( ability_component, "gunaction_config", "spread_degrees", get_random_between_range( spread_degrees ) )
	ComponentObjectSetValue( ability_component, "gunaction_config", "speed_multiplier", get_random_between_range( speed_multiplier ) )
	local mana_max = get_random_between_range( mana_max)
	ComponentSetValue( ability_component, "mana_max", mana_max )
	ComponentSetValue( ability_component, "mana", mana_max )

	for i,action in ipairs(actions) do
		if i > deck_capacity then break end
		AddGunAction( entity, get_random_from( action ) )
	end

	for i,p_action in ipairs(actions_permanent) do
		AddGunActionPermanent( entity, get_random_from( p_action ) )
	end

	return entity
end

function get_loadout_exceptions()
	local exclusions = {}
	for i=1, #loadout_list, 1 do
		local ld = ModSettingGet("thematic_random_starts.id_" .. str(i))
		if ld ~= nil and ld ~= '' and ld == false then 
			exclusions[#exclusions + 1] = i
		end
	end
	table.sort(exclusions, function(a,b) return a>b end)
	return exclusions
end

function str(var)
  if type(var) == 'table' then
    local s = '{ '
    for k,v in pairs(var) do
      if type(k) ~= 'number' then k = '"'..k..'"' end
      s = s .. '['..k..'] = ' .. str(v) .. ','
    end
    return s .. '} '
  end
  return tostring(var)
end