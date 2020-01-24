function onUse(cid, item, frompos, item2, topos)
-- annihilator
if item.uid == 7004 then
if item.itemid == 1945 then

player1pos = {x=579, y=70, z=7, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x=578, y=70, z=7, stackpos=253}
player2 = getThingfromPos(player2pos)

player3pos = {x=577, y=70, z=7, stackpos=253}
player3 = getThingfromPos(player3pos)

player4pos = {x=576, y=70, z=7, stackpos=253}
player4 = getThingfromPos(player4pos)


if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

player1level = getPlayerLevel(player1.uid)
player2level = getPlayerLevel(player2.uid)
player3level = getPlayerLevel(player3.uid)
player4level = getPlayerLevel(player4.uid)

questlevel = 1000

if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

queststatus1 = getPlayerStorageValue(player1.uid,7004)
queststatus2 = getPlayerStorageValue(player2.uid,7004)
queststatus3 = getPlayerStorageValue(player3.uid,7004)
queststatus4 = getPlayerStorageValue(player4.uid,7004)

if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then

nplayer1pos = {x=576, y=49, z=7}
nplayer2pos = {x=575, y=49, z=7}
nplayer3pos = {x=574, y=49, z=7}
nplayer4pos = {x=573, y=49, z=7}

doSendMagicEffect(player1pos,2)
doSendMagicEffect(player2pos,2)
doSendMagicEffect(player3pos,2)
doSendMagicEffect(player4pos,2)

doTeleportThing(player1.uid,nplayer1pos)
doTeleportThing(player2.uid,nplayer2pos)
doTeleportThing(player3.uid,nplayer3pos)
doTeleportThing(player4.uid,nplayer4pos)

doSendMagicEffect(nplayer1pos,10)
doSendMagicEffect(nplayer2pos,10)
doSendMagicEffect(nplayer3pos,10)
doSendMagicEffect(nplayer4pos,10)

doTransformItem(item.uid,item.itemid+1)

else
doPlayerSendCancel(cid,"Alguien del team ya iso la Quest.")
end
else
doPlayerSendCancel(cid,"Todos deben ser arriba de lvl 1000.")
end
else
doPlayerSendCancel(cid,"Nesesitas 4 players para hacer la quest.")
end
elseif item.itemid == 1946 then
if getPlayerAccess(cid) > 0 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Imposible.")
end
end

end
return 1
end
