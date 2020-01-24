function onUse(cid, item, frompos, item2, topos)

if item.uid == 7873 then
queststatus = getPlayerStorageValue(cid,7873)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una Aggrox sword.")
coins_uid = doPlayerAddItem(cid,7873,1)
setPlayerStorageValue(cid,7873,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end