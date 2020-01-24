function onUse(cid, item, frompos, item2, topos)
local playerc = getPlayerFreeCap(cid)
local daw = getItemWeightById(2308, 1, TRUE)

       
if getPlayerItemCount(cid, 11221) >= 150 then
if playerc >= daw then
doPlayerRemoveItem(cid, 11221, 150)
doPlayerAddItem(cid, 2308, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Has cambiado 150 fichas especiales por una HookShots")
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You don't have enough cap ("..daw..") to take HookShots")
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "No tienes 150 fichas especiales")
end

       
return true
end