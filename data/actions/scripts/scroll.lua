function onUse(cid, item, frompos, item2, topos)
player1pos = getPlayerPosition(cid)
player1 = getThingfromPos(player1pos)
if player1.itemid > 0 then
temple = {x=160, y=54, z=7}
doSendMagicEffect(topos,12)
doTeleportThing(player1.uid,temple)
doSendMagicEffect(temple,50)
doSendMagicEffect(temple,54)
doSendAnimatedText(getPlayerPosition(cid), "teleport", math.random(1, 255))
doPlayerSendTextMessage(player1.uid,22,"tu fuiste teletransportado por el scroll.")
end
end