local t = {
   redPos = {x = 982, y = 1022, z = 7},
   bluePos = {x = 993, y = 1033, z = 7},
   redStorage = 15000,
   blueStorage = 15001,
   fromPos = {x = 1004, y = 1023, z = 7},
   toPos = {x = 1015, y = 1032, z = 7}
}
local conditionBlue = createConditionObject(CONDITION_OUTFIT)
   setConditionParam(conditionBlue, CONDITION_PARAM_TICKS, 1800 * 1000)
   addOutfitCondition(conditionBlue, {lookType = 130, lookHead = 87, lookBody = 87, lookLegs = 87, lookFeet = 87})
local conditionRed = createConditionObject(CONDITION_OUTFIT)
   setConditionParam(conditionRed, CONDITION_PARAM_TICKS, 1800 * 1000)
   addOutfitCondition(conditionRed, {lookType = 130, lookHead = 94, lookBody = 94, lookLegs = 94, lookFeet = 94})
local function teleportThing(minutes)
   local event = 0
   if minutes <= 0 then
      for _, cid in ipairs(getPlayersOnline()) do
         if isInRange(getThingPos(cid), t.fromPos, t.toPos) then
            if math.random(1, 3) < 3 then
               setPlayerStorageValue(cid, t.redStorage, 1)
               doAddCondition(cid, conditionRed)
               doTeleportThing(cid, t.redPos, true)
            else
               setPlayerStorageValue(cid, t.blueStorage, 1)
               doAddCondition(cid, conditionBlue)
               doTeleportThing(cid, t.bluePos, true)
            end
         end
      end
      return true
   end
   if minutes == 1 then
      doBroadcastMessage("Capture The Flag will begin in " .. minutes .. " minute!")
   elseif minutes <= 3 then
      doBroadcastMessage("Capture The Flag will begin in " .. minutes .. " minutes!")
   else
      doBroadcastMessage("Capture The Flag will begin in " .. minutes .. " minutes!")
   end
   event = addEvent(teleportThing, 60, minutes - 1)
   return true
end
function onThink(interval, lastExecution)
   return teleportThing(math.abs(math.ceil(1)))
end
