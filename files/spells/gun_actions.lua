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
      
      dofile_once("mods/thematic_random_starts/files/scripts/wmpls_utils.lua")
      dofile_once("data/scripts/lib/utilities.lua")
      
      -- tweakable vars
      local teleport_range = 65
      
      -- prep for teleport
      local player_entity = getPlayerEntity()


      -- TEST
      --local player_entity = getPlayerEntity()
      --EntitySave( player_entity, "player.xml" ) -- This results in a player object with an "aiming_reticle" tagged component
      --local pos_x, pos_y = EntityGetTransform( player_entity )
      --GamePrint("player position (" .. pos_x .. ", " .. pos_y .. ")", "") -- This reports the player's position accurately
      --local aim_comp = EntityGetComponent(root_id, "SpriteComponent", "aiming_reticle")
      --EntitySave( aim_comp, "aim_comp.xml" ) -- This results in some background object and I do not know why

     --EntitySave( player_entity, "test_3.xml" )
      local pos_x, pos_y = EntityGetTransform( player_entity )
      pos_y = pos_y - 4

      --GamePrint("player position (" .. str(pos_x) .. ", " .. str(pos_y) .. ")", "")
      

      local mouse_x, mouse_y = DEBUG_GetMouseWorld()
      --GamePrint("mouse position (" .. str(mouse_x) .. ", " .. str(mouse_y) .. ")", "")

      -- Do a raycast for wall detection
      local hit_x = mouse_x - pos_x
      local hit_y = mouse_y - pos_y 
      hit_x, hit_y = vec_normalize(hit_x, hit_y)
      hit_x, hit_y = vec_mult(hit_x, hit_y, teleport_range)
      local did_hit
      did_hit,hit_x,hit_y = RaytracePlatforms(pos_x, pos_y, pos_x + hit_x, pos_y + hit_y)

      --GamePrint("did hit: " .. str(did_hit) .. "")



      
      --GamePrint("before reel back (" .. str(hit_x) .. ", " .. str(hit_y) .. ")", "")
      
      -- reel it back a bit so we're less likely to end up inside a wall
      local back_x = pos_x - hit_x
      local back_y = pos_y - hit_y
      local back_distance = math.min(20, get_magnitude(back_x, back_y)) -- don't overshoot
      back_x, back_y = vec_normalize(back_x, back_y)
      hit_x = hit_x + back_x * back_distance
      hit_y = hit_y + back_y * back_distance
      
      --GamePrint("after reel back (" .. str(hit_x) .. ", " .. str(hit_y) .. ")", "")
      

      --EntityLoad("data/entities/particles/poof_red_tiny.xml", hit_x, hit_y)
      --EntityLoad("data/entities/particles/poof_yellow_tiny.xml", pos_x, pos_y)
      --EntityLoad("data/entities/particles/poof_yellow_tiny.xml", mouse_x, mouse_y)

      -- teleport
      EntitySetTransform(player_entity, hit_x, hit_y)
      --LoadPixelScene("data/biome_impl/teleportitis_dodge_hole.png", "", hit_x-3, hit_y-12, "", true)


    end,
  }
)