table.insert(actions,
  {
    id                  = "BURST_D6",
    name                = "Multiply by D6",
    description         = "Copy a spell D6 times",
    sprite              = "data/ui_gfx/items/die.png",
    type                = ACTION_TYPE_OTHER,
    spawn_level         = "0,0",
    spawn_probability   = "0,0",
    price = 320,
    mana = 140,
    action    = function( recursion_level, iteration )
      c.fire_rate_wait = c.fire_rate_wait + 35
      c.spread_degrees = c.spread_degrees + 15

      local data1 = {}
      local s1 = ""

      if ( #deck > 0 ) then
        s1 = "deck"
        data1 = deck[1]
      else
        data1 = nil
      end
      
      local rec1 = check_recursion( data1, recursion_level )
      
      if ( data1 ~= nil ) and ( rec1 > -1 ) then
        SetRandomSeed( GameGetFrameNum() + #deck, GameGetFrameNum() - 1337 + #discarded )
        local rnd = Random( 1, 6 )
        for i=2,rnd do
          data1.action( rec1 )
        end
      end
      draw_actions( 1, true )
    end,
  }
)