function onUse(cid, item, frompos, item2, topos)
local playerc = getPlayerFreeCap(cid)
local daw = getItemWeightById(8304, 1, TRUE)

       
if getPlayerItemCount(cid, 11221) >= 200 then
if playerc >= daw then
doPlayerRemoveItem(cid, 11221, 200)
doPlayerAddItem(cid, 8304, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Has cambiado 200 fichas especiales por una vip flame")
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You don't have enough cap ("..daw..") to take vip flame")
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "No tienes 200 fichas especiales")
end

       
return true
end