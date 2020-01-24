function onUse(cid, item, frompos, item2, topos)
local playerc = getPlayerFreeCap(cid)
local daw = getItemWeightById(2494, 1, TRUE)

       
if getPlayerItemCount(cid, 11221) >= 50 then
if playerc >= daw then
doPlayerRemoveItem(cid, 11221, 50)
doPlayerAddItem(cid, 7435, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Has cambiado 50 fichas especiales por una Zero Axe")
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You don't have enough cap ("..daw..") to take Zero Axe")
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "No tienes 50 fichas especiales")
end

       
return true
end