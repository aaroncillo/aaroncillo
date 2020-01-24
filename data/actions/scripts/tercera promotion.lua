-- Paladin Vocation Teleport --
function onUse(cid, item, frompos, item2, topos)

if item.uid == 6103 and item.itemid == 9825 then

player1pos = {x=128, y=295, z=7, stackpos=253}
player1 = getThingfromPos(player1pos)

player1level = getPlayerLevel(player1.uid)

voclevel = 150

if player1level >= voclevel then

nplayer1pos = {x=129, y=295, z=7}

doSendMagicEffect(player1pos,2)

doTeleportThing(player1.uid,nplayer1pos)

doSendMagicEffect(nplayer1pos,10)

if getPlayerVocation(cid) < 12 then
doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
doPlayerSendTextMessage(cid, 22, "usted ahora posee la Aggro Promocion.")
else
doPlayerSendCancel(cid,"usted ya tiene la promocion o no tiene el lvl necesario.")
end

elseif item.uid == 6103 and item.itemid == 9826 then
end
else
return 0
end

return 1
end