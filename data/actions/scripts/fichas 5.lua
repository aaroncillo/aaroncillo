function onUse(cid, item, frompos, item2, topos)
local playerc = getPlayerFreeCap(cid)
local daw = getItemWeightById(12607, 1, TRUE)

       
if getPlayerItemCount(cid, 11221) >= 250 then
if playerc >= daw then
doPlayerRemoveItem(cid, 11221, 250)
doPlayerAddItem(cid, 12607, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Has cambiado 250 fichas especiales por una boots of aggrox")
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You don't have enough cap ("..daw..") to take terra rune")
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "No tienes 250 fichas especiales")
end

       
return true
end