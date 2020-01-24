function onKill(cid, target)
if isPlayer(target) == TRUE then
if getPlayerIp(cid) ~= getPlayerIp(target) then
loot = 2160 
item = doPlayerAddItem(cid,loot,2)
elseif getPlayerName(cid) == getPlayerName(target) then
doPlayerAddItem(cid,loot,2)
else
doPlayerAddExperience(cid, -1000000)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"You have been punished for killing a player of the same IP.")
end
end
return TRUE
end