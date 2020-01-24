function onUse(cid, item, frompos, item2, topos)

if item.uid == 3972 then
queststatus = getPlayerStorageValue(cid,3972)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una Aggrox helmet.")
coins_uid = doPlayerAddItem(cid,3972,1)
setPlayerStorageValue(cid,3972,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end