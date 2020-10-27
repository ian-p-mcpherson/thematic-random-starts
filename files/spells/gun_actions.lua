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
      --current_reload_time = current_reload_time - ACTION_DRAW_RELOAD_TIME_INCREASE - 10 -- this is a hack to get the digger reload time back to 0
    end,
  }
)