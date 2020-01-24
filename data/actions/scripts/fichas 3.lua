function onUse(cid, item, frompos, item2, topos)
local playerc = getPlayerFreeCap(cid)
local daw = getItemWeightById(2306, 1, TRUE)

       
if getPlayerItemCount(cid, 11221) >= 120 then
if playerc >= daw then
doPlayerRemoveItem(cid, 11221, 120)
doPlayerAddItem(cid, 2306, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Has cambiado 120 fichas especiales por una Aggrox Magic Prison")
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You don't have enough cap ("..daw..") to take Aggrox Magic Prisons")
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "No tienes 120 fichas especiales")
end

       
return true
end