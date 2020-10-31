dofile( "mods/thematic_random_starts/files/loadouts.lua" )
dofile( "data/scripts/perks/perk.lua" )

ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/thematic_random_starts/files/spells/gun_actions.lua")

-- Edit this if you want to choose a class byt he ID in loadouts.lua
local loadout_override = 1

-- cape defaults (gray)
local robe_rgba = {140, 140, 140, 255}
local belt_rgba = {82, 67, 41, 255}
local cape_rgba = {0, 0, 0, 0}
local cape_edge_rgba = {140, 140, 140, 255}

function OnPlayerSpawned( player_entity ) -- this runs when player entity has been created
	local init_check_flag = "start_loadouts_init_done"
	if GameHasFlagRun( init_check_flag ) then
		return
	end
	GameAddFlagRun( init_check_flag )

	local x,y = EntityGetTransform( player_entity )
	SetRandomSeed( x + 344, y - 523 )
	
	local loadout_rnd = Random( 1, #loadout_list )
	if ( loadout_override > 0) then loadout_rnd = loadout_override end
	local loadout_choice = loadout_list[loadout_rnd]
	local loadout_name = loadout_choice.name
	
	local inventory = nil
	local cape = nil
	local player_arm = nil

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

	local gfx_folder = loadout_choice.color or "default"

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

	-- set inventory contents
	if ( inventory ~= nil ) then
		local inventory_items = EntityGetAllChildren( inventory )
		
		-- remove default items
		if inventory_items ~= nil then
			for i,item_entity in ipairs( inventory_items ) do
				GameKillInventoryItem( player_entity, item_entity )
			end
		end

		-- add loadout items
		local loadout_items = loadout_choice.items
		for item_id,loadout_item in ipairs( loadout_items ) do
			if ( tostring( type( loadout_item ) ) ~= "table" ) then
				local item_entity = EntityLoad( loadout_item )
				EntityAddChild( inventory, item_entity )
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
					
					-- handle potions
					if ( loadout_item.potion ~= nil) then
						local rarity = loadout_item.rarity or 0
						local potion_amount = loadout_item.quantity or 1000
						item_entity = EntityLoad( "mods/thematic_random_starts/files/potions/potion_template.xml" )
						if ( loadout_item.potion ~= "random" ) then
							AddMaterialInventoryMaterial( item_entity, loadout_item.potion, potion_amount )
						else
							AddMaterialInventoryMaterial( item_entity, get_random_potion( rarity ), potion_amount )
						end
					-- handle everything else
					else
						item_entity = EntityLoad( item_option )
					end

					if item_entity then
						EntityAddChild( inventory, item_entity )
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

	-- class specific code:
	-- no jumps code (no classes have this yet)
	if ( loadout_choice.class_id == "CHANGEME" ) then
		local playerData = EntityGetFirstComponent(player_entity, "CharacterDataComponent")
		local playerPlatforming = EntityGetFirstComponent(player_entity, "CharacterPlatformingComponent")
		ComponentSetValue2(playerData, "fly_time_max", 0)
		ComponentSetValue2(playerData, "buoyancy_check_offset_y", -999999)
		ComponentSetValue2(playerPlatforming, "jump_velocity_y", -180)
		ComponentSetValue2(playerPlatforming, "jump_velocity_x", 100)
		ComponentSetValue2(playerPlatforming, "run_velocity", 180)
	end

	-- tell the player what class they are
	GamePrintImportant( "Class: " .. loadout_name .. "", "" )
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
		cape_color = "0x" .. string.format("%02x", cape_edge_rgba[4]) .. string.format("%02x", math.floor(cape_edge_rgba[3] * 0.8)) .. string.format("%02x", math.floor(cape_edge_rgba[2] * 0.8)) .. string.format("%02x", math.floor(cape_edge_rgba[1] * 0.8))
	else
		cape_color = "0x" .. string.format("%02x", cape_rgba[4]) .. string.format("%02x", cape_rgba[3]) .. string.format("%02x", cape_rgba[2]) .. string.format("%02x", cape_rgba[1])
	end

	-- GamePrintImportant( "cape_color: " .. cape_color .. " cape_color_edge: " .. cape_color_edge .. "", "" )

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

-- Scope for noita_dev.exe
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/alchemist" )
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/arsonist" )
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/berzerker" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/blasto" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/bloodcultist" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/construction" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/eldritch" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/exploder" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/flylord" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/gambler" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/laser" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/ninja" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/planar" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/pyro" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/ratmancer" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/seer" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/slime" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/summoner" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/telekarate" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/telekinetic" ) 
ModDevGenerateSpriteUVsForDirectory( "mods/thematic_random_starts/files/vampire" ) 
