local function getDamage(cid)
   min = (getPlayerLevel(cid) * 1 + getPlayerMagLevel(cid) * 1) * 0.6
   max = (getPlayerLevel(cid) * 1 + getPlayerMagLevel(cid) * 1) * 1
   return math.random(min, max)
end
 
local function efecto(x)
   local P, C = getCreaturePosition(x.cid), 0
   local From = 
   {
      {x = P.x + 2, y = P.y, z = P.z}, 
      {x = P.x, y = P.y - 2, z = P.z},
      {x = P.x - 2, y = P.y, z = P.z}, 
      {x = P.x, y = P.y + 2, z = P.z},
      {x = P.x - 1, y = P.y - 1, z = P.z}, 
      {x = P.x - 1, y = P.y + 1, z = P.z},
      {x = P.x + 1, y = P.y + 1, z = P.z}, 
      {x = P.x + 1, y = P.y - 1, z = P.z}
   }
   local To = {2, 3, 4, 1, 6, 7, 8, 5}
   repeat
      for i = 1, (#From / 2) do
         local dmg = getDamage(x.cid)
         local to, f = From[To[i]], (C % 2 == 1) and true or false
         doSendDistanceShoot(From[i], to, CONST_ANI_SMALLICE)
         if f then doAreaCombatHealth(x.cid, COMBAT_ICEDAMAGE, to, 0, -(dmg / 2), -dmg, CONST_ME_ICEATTACK) end
         i = i + (#From / 2)
         local to = From[To[i]]
         doSendDistanceShoot(From[i], to, CONST_ANI_SMALLHOLY)
         if f then doAreaCombatHealth(x.cid, COMBAT_HOLYDAMAGE, to, 0, -1, -getDamage(x.cid), CONST_ME_HOLYDAMAGE) end
      end
      C = C + 1
   until C == 10
end 
 
function onCastSpell(cid, var)
   for i = 1, 5 do
      addEvent(efecto, i * 400, {cid = cid})
   end
   return TRUE
end