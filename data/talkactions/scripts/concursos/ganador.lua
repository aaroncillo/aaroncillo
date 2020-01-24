local position = {x=556, y=514, z=7,} 
function onSay(cid,words,param) 
if param ~= nil then 
doBroadcastMessage("El ganador es: " .. param .. " ")
doTeleportThing(getPlayerByName(param),position) 
doSendMagicEffect(position,10) 
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
doPlayerSendTextMessage(cid,18,"You Win "..getCreatureName(player)..".")
end
end
return TRUE
end