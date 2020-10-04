local coli = {}
function coli.checkCollision(a, b)
  --With locals it's common usage to use underscores instead of camelCasing
  local a_left = a.x
  local a_right = a.x + a.width
  local a_top = a.y
  local a_bottom = a.y + a.height

  local b_left = b.x
  local b_right = b.x + b.width
  local b_top = b.y
  local b_bottom = b.y + b.height

  --If Red's right side is further to the right than Blue's left side.
  if a_right > b_left and
  --and Red's left side is further to the left than Blue's right side.
  a_left < b_right and
  --and Red's bottom side is further to the bottom than Blue's top side.
  a_bottom > b_top and
  --and Red's top side is further to the top than Blue's bottom side then..
  a_top < b_bottom then
    --There is collision!
    return true
  else
    --If one of these statements is false, return false.
    return false
  end
end
return coli