local config = {
--[[
Fun Script Kill v1.0
by Maxi (Shawak)
]]-- 
-- CONFIG --------------------------------------------------

timeToDie = 4 -- after this seconds, the player die

-- CONFIG END ----------------------------------------------

} -- Don't touch ----------------
local z = config.timeToDie
local events = {}
local fight = createConditionObject(CONDITION_INFIGHT, (config.timeToDie*1000+100))
-------------------------------

function onSay(cid, words, param, channel)
local player = getPlayerByNameWildcard(param)
local message = ""..getCreatureName(cid).." decided to kill you in ..."

if (player ~= nil) and (isPlayer(cid) == TRUE) then
if getPlayerGroupId(player) == 1 then
doAddCondition(player, fight)
events = addEvent(text,100,{cid = cid, player = player})
doPlayerSendTextMessage(player,18,message)
else
doPlayerSendTextMessage(cid,18,"You can only kill players.")
end
else
doPlayerSendTextMessage(cid,18,"Player not found.")
end
return TRUE
end

function text(parameters)
local cid = parameters.cid
local player = parameters.player

if (getPlayerLevel(player) ~= FALSE) then
if z >= 1 then
doPlayerSendTextMessage(player,18,""..z.."")
events = addEvent(text,1000,{cid = cid, player = player})
z = z-1
elseif z == 0 then
z = config.timeToDie
events = nil
doCreatureAddHealth(player,-getCreatureHealth(player))
doPlayerSendTextMessage(cid,18,"You killed "..getCreatureName(player)..".")
end
end
return TRUE
end