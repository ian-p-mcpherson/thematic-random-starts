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

function debug_entity(e)
  local parent = EntityGetParent(e)
  local children = EntityGetAllChildren(e)
  local comps = EntityGetAllComponents(e)

  print("--- ENTITY DATA ---")
  print("Parent: ["..parent.."] " .. (EntityGetName(parent) or "nil"))

  print(" Entity: ["..str(e).."] " .. (EntityGetName(e) or "nil"))
  print("  Tags: " .. (EntityGetTags(e) or "nil"))
  if (comps ~= nil) then
    for _, comp in ipairs(comps) do
        print("  Comp: ["..comp.."] " .. (ComponentGetTypeName(comp) or "nil"))
    end
  end

  if children == nil then return end

  for _, child in ipairs(children) do
      local comps = EntityGetAllComponents(child)
      print("  Child: ["..child.."] " .. EntityGetName(child))
      for _, comp in ipairs(comps) do
          print("   Comp: ["..comp.."] " .. (ComponentGetTypeName(comp) or "nil"))
      end
  end
  print("--- END ENTITY DATA ---")
end

function getPlayerEntity()
    local players = EntityGetWithTag("player_unit")
    if #players == 0 then return end

    return players[1]
end