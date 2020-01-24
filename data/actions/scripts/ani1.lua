function onUse(cid, item, frompos, item2, topos)
if item.uid == 9999 then
if item.itemid == 1946 then

player1pos = {x=403, y=439, z=9, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x=403, y=440, z=9, stackpos=253}
player2 = getThingfromPos(player2pos)

player3pos = {x=403, y=441, z=9, stackpos=253}
player3 = getThingfromPos(player3pos)

player4pos = {x=403, y=442, z=9, stackpos=253}
player4 = getThingfromPos(player4pos)


if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

player1level = getPlayerLevel(player1.uid)
player2level = getPlayerLevel(player2.uid)
player3level = getPlayerLevel(player3.uid)
player4level = getPlayerLevel(player4.uid)

questlevel = 100

if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

	demon1pos = {x=367, y=434, z=10}
	demon2pos = {x=365, y=434, z=10}
	demon3pos = {x=363, y=434, z=10}
	demon4pos = {x=362, y=436, z=10}
	demon5pos = {x=363, y=438, z=10}
	demon6pos = {x=365, y=438, z=10}
        demon7pos = {x=367, y=438, z=10}
	demon8pos = {x=368, y=436, z=10}

	doSummonCreature("Monster Of Anihilator", demon1pos)
	doSummonCreature("Monster Of Anihilator", demon2pos)
	doSummonCreature("Monster Of Anihilator", demon3pos)
	doSummonCreature("Monster Of Anihilator", demon4pos)
	doSummonCreature("Monster Of Anihilator", demon5pos)
	doSummonCreature("Monster Of Anihilator", demon6pos)
	doSummonCreature("Monster Of Anihilator", demon7pos)

	nplayer1pos = {x=367, y=436, z=10}
	nplayer2pos = {x=366, y=436, z=10}
	nplayer3pos = {x=365, y=436, z=10}
	nplayer4pos = {x=368, y=436, z=10}

	doSendMagicEffect(player1pos,65)
	doSendMagicEffect(player2pos,65)
	doSendMagicEffect(player3pos,65)
	doSendMagicEffect(player4pos,65)

	doTeleportThing(player1.uid,nplayer1pos)
	doTeleportThing(player2.uid,nplayer2pos)
	doTeleportThing(player3.uid,nplayer3pos)
	doTeleportThing(player4.uid,nplayer4pos)

	doSendMagicEffect(nplayer1pos,55)
	doSendMagicEffect(nplayer2pos,55)
	doSendMagicEffect(nplayer3pos,55)
	doSendMagicEffect(nplayer4pos,55)

	doTransformItem(item.uid,1945)

	else
	doPlayerSendCancel(cid,"Todos precisam ter level 500 ou mais para entrar na quest.")
	end
	else
	doPlayerSendCancel(cid,"Voce precisa de 4 jogadores em seu time.")
end
end
if item.itemid == 1945 then

starting={x=188, y=111, z=10, stackpos=253}
checking={x=starting.x, y=starting.y, z=starting.z, stackpos=starting.stackpos}
ending={x=210, y=122, z=10, stackpos=253}
players=0
totalmonsters=0
monster = {}
repeat
creature= getThingfromPos(checking)
if creature.itemid > 0 then
if getPlayerAccess(creature.uid) == 0 then
players=players+1
end
if getPlayerAccess(creature.uid) ~= 0 and getPlayerAccess(creature.uid) ~= 3 then
totalmonsters=totalmonsters+1
monster[totalmonsters]=creature.uid
	end
end
checking.x=checking.x+1
if checking.x>ending.x then
checking.x=starting.x
checking.y=checking.y+1
end
until checking.y>ending.y
if players==0 then
trash= {x=233, y=125, z=10}
current=0
repeat
current=current+1
doTeleportThing(monster[current],trash)
until current>=totalmonsters
doTransformItem(item.uid,1946)
end


end
end
if item.uid == 5555 then
queststatus = getPlayerStorageValue(cid,5555)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"as sacado la Super Mana Rune y pico pal q lee.")
doPlayerAddItem(cid,2270,1)
setPlayerStorageValue(cid,5555,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
if item.uid == 5556 then
queststatus = getPlayerStorageValue(cid,5556)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"as sacado la RazGos Armor y pico pal q lee.")
doPlayerAddItem(cid,8880,1)
setPlayerStorageValue(cid,5556,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
if item.uid == 5557 then
queststatus = getPlayerStorageValue(cid,5557)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"as sacado la carlin sword y pico pal q lee.")
doPlayerAddItem(cid,2395,1)
setPlayerStorageValue(cid,5557,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
if item.uid == 5558 then
queststatus = getPlayerStorageValue(cid,5558)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"as sacado la Super arrows y pico pal q lee.")
doPlayerAddItem(cid,7839,1)
setPlayerStorageValue(cid,558,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
end
return 1
end