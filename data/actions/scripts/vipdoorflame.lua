function onUse(cid, item, frompos, item2, topos)
queststatus = getPlayerStorageValue(cid,35966)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Sorry, pero solo usuarios vip Pueden pasar.")
else
doTransformItem(item.uid, item.itemid)
doTeleportThing(cid, topos, TRUE)
doSendMagicEffect(topos, 39)
doPlayerSendTextMessage(cid,22,"Bienvenido! a Zona Vip Premium")
end
end