function onUse(cid, item, frompos, item2, topos)
local vipstorage = 13540

if item.actionid == 13540 then
if getPlayerStorageValue(cid, vipstorage) == TRUE then
pos = getPlayerPosition(cid)

if pos.x == topos.x then
if pos.y < topos.y then
pos.y = topos.y + 1
else
pos.y = topos.y - 1
end
elseif pos.y == topos.y then
if pos.x < topos.x then
pos.x = topos.x + 1
else
pos.x = topos.x - 1
end
else
doPlayerSendTextMessage(cid,22,'Ponte frente a la puerta.')
return 1
end

doTeleportThing(cid,pos)
doSendMagicEffect(topos,12)
doPlayerSay(cid, "bienvenido a zona vip.", TALKTYPE_ORANGE_1)
else
doPlayerSendTextMessage(cid,22,'Solo pueden pasar players con Vip Account.')
end
return 1
end
return TRUE
end