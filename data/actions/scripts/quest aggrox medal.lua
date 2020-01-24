function onUse(cid, item, frompos, item2, topos)

if item.uid == 10136 then
queststatus = getPlayerStorageValue(cid,10136)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Encontraste una Aggrox medal.")
coins_uid = doPlayerAddItem(cid,10136,1)
setPlayerStorageValue(cid,10136,1)
end

else
doPlayerSendTextMessage(cid,22,"Este cofre esta vacio.")
end

return 0
end