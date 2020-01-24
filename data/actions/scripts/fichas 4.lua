function onUse(cid, item, frompos, item2, topos)
local playerc = getPlayerFreeCap(cid)
local daw = getItemWeightById(2314, 1, TRUE)

       
if getPlayerItemCount(cid, 11221) >= 110 then
if playerc >= daw then
doPlayerRemoveItem(cid, 11221, 110)
doPlayerAddItem(cid, 2314, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Has cambiado 110 fichas especiales por una Terra rune")
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You don't have enough cap ("..daw..") to take terra rune")
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "No tienes 110 fichas especiales")
end

       
return true
end