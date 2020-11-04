table.insert(actions,
  {
    id                 = "KNIFE",
    name               = "Knife",
    description        = "Stab someone with your wand. This is not magic.",
    sprite             = "mods/thematic_random_starts/files/spells/knife/knife_ui.png",
    type               = ACTION_TYPE_PROJECTILE,
    spawn_level        = "0,0",
    spawn_probability  = "0,0",
    price              = 10,
    mana               = 0,
    action = function()
      add_projectile("mods/thematic_random_starts/files/spells/knife/knife.xml")
      c.fire_rate_wait = 0
      
      --dofile_once("mods/thematic_random_starts/files/scripts/wmpls_utils.lua")
      --dofile_once("data/scripts/lib/utilities.lua")
      --
      ---- tweakable vars
      --local teleport_range = 90
      --
      ---- prep for teleport
      --local x = 0
      --local y = 0
      --local pos_x = 0 
      --local pos_y = 0 
      --local entity_id = EntityGetWithTag( "player_unit" )
      --for i,entity in pairs( entity_id ) do 
      --  pos_x, pos_y = EntityGetTransform( entity )
      --end
      --
      --EntitySave( entity_id, "test_entity" )
      --debug_entity(entity_id)
      --
      --GamePrint("player position (" .. pos_x .. ", " .. pos_y .. ")", "")
      --
      ---- teleport direction from player aim
      --local aim_comp = EntityGetFirstComponent(entity_id, "SpriteComponent", "aiming_reticle")
      --
      --GamePrint("aim reticle (" .. aim_comp.offset_x .. ", " .. aim_comp.offset_y .. ")", "")
      --
      --component_read( aim_comp, { offset_x = 0, offset_y = 0 }, function(comp)
      --  x = aim_comp.offset_x
      --  y = aim_comp.offset_y - 4
      --  x, y = vec_normalize(x, y)
      --  x, y = vec_mult(x, y, teleport_range)
      --  x, y = vec_rotate(x, y, -math.pi * 0.5 * sign(x)) -- rotate 90 towards top
      --  local did_hit
      --  did_hit,x,y = RaytracePlatforms(pos_x, pos_y, pos_x + x, pos_y + y)
      --end)
      --
      --GamePrint("before reel back (" .. x .. ", " .. y .. ")", "")
      --
      ---- reel it back a bit so we're less likely to end up inside a wall
      --local back_x = pos_x - x
      --local back_y = pos_y - y
      --local back_distance = math.min(20, get_magnitude(back_x, back_y)) -- don't overshoot
      --back_x, back_y = vec_normalize(back_x, back_y)
      --x = x + back_x * back_distance
      --y = y + back_y * back_distance
      --
      --GamePrint("after reel back (" .. x .. ", " .. y .. ")", "")
      --
      ---- teleport
      --for i,entity_id in pairs( entity_id ) do 
      --  --EntitySetTransform(entity_id, x, y)
      --end
    end,
  }
)