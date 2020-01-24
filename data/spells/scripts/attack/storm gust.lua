local arr = 
   {
      {
         {1, 0, 1, 0, 1},
         {0, 1, 0, 1, 0},
         {1, 0, 3, 0, 1},
         {0, 1, 0, 1, 0},
         {1, 0, 1, 0, 1}
      },
      {
         {0, 1, 0, 1, 0},
         {1, 0, 1, 0, 1},
         {0, 1, 3, 1, 0},
         {1, 0, 1, 0, 1},
         {0, 1, 0, 1, 0}
      },
      {
         {1, 1, 1, 1, 1},
         {1, 1, 1, 1, 1},
         {1, 1, 3, 1, 1},
         {1, 1, 1, 1, 1},
         {1, 1, 1, 1, 1}
      }
   }
 
local effect, combat = {CONST_ME_ICEATTACK, CONST_ME_ICEATTACK, CONST_ME_ICEAREA}, {}
 
local function tileChecker(pos)
   local myTable = {}
   if (type(pos) == 'table') then
      for i = 1, 5 do
         pos.stackpos = i
         local Thing = getThingFromPos(pos)
         local thisID, thisUID = Thing.itemid, Thing.uid
         if thisID > 1 then
            table.insert(myTable, thisUID)
         end
      end
   end
   return #myTable > 0 and myTable or nil
end
 
local function MoveAgain(p)
   if isPlayer(p.player) == TRUE then
      doPlayerSetNoMove(p.player, FALSE)
   end
end
 
local function GetPosToPush(cid, pos)
   local nPos = {
      [0]={x=pos.x, y=pos.y-1, z=pos.z}, 
      [1]={x=pos.x+1, y=pos.y, z=pos.z}, 
      [2]={x=pos.x, y=pos.y+1, z=pos.z}, 
      [3]={x=pos.x-1, y=pos.y, z=pos.z}}
   return nPos[getPlayerLookDir(cid)]
end
 
function onTargetTile(cid, pos)
   pos.stackpos = 253
   local player = getThingFromPos(pos).uid
   if isPlayer(player) == TRUE then
      if math.random(1, 2) == 1 then
         doPlayerSetNoMove(player, TRUE)
         addEvent(MoveAgain, 2000, {player=player})
      else
         if cid ~= player then
            local P = GetPosToPush(player, pos)
            local tileItems, count = tileChecker(P) or {}, 0
            if #tileItems > 0 then
               for _, i in ipairs(tileItems) do
                  if getTilePzInfo(P) == false then
                     if (hasProperty(i, CONST_PROP_BLOCKSOLID) == FALSE)then
                        count = count + 1
                     end
                  end
               end
            end
            if count == #tileItems then
               doTeleportThing(player, P, TRUE)
            end
            tileItems, count = {}, 0
         end
      end
   end
   return TRUE
end
 
for i = 1, 3 do
   combat[i] = createCombatObject()
   setCombatParam(combat[i], COMBAT_PARAM_EFFECT, effect[i])
   setCombatArea(combat[i], createCombatArea(arr[i]))
   _G["onTargetTile" .. i] = onTargetTile
   setCombatCallback(combat[i], CALLBACK_PARAM_TARGETTILE, "onTargetTile" .. i)
end
 
local function Spell(x)
   doCombat(x.cid, combat[x.i], x.var)
end
 
function onCastSpell(cid, var)
   for i = 1, 3 do
      addEvent(Spell, 500 * i, {cid=cid, var=var, i=i})
   end
   return TRUE
end