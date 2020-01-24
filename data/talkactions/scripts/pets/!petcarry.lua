dofile("./petConfig. lua")


function onSay(cid, words, param)
local mySto = 0
local daPet = getPlayerStorageValue(cid, storages.petUid)
if param == "clear" then
for i = 1, table.maxn(petItems) do
doCreatureSay(daPet, '' .. petItems[i] .. '', TALKTYPE_ORANGE_1)
end
end
if isCreature(daPet) == 1 then
local pos = getCreaturePosition(daPet)
local a = 1
while a < 10 do
if getItemWeight(getThingfromPos({x = pos.x, y = pos.y, z = pos.z, stackpos = a}).itemid, 1) ~= 0 then
break
end
a = a + 1
end
local carryingItem = getThingfromPos({x = pos.x, y = pos.y, z = pos.z, stackpos = a})
if getItemWeight(carryingItem.itemid, 1) ~= 0 then
if isContainer(carryingItem.uid) == 0 then
for b = 1, table.maxn(petItems) do
if getPlayerStorageValue(cid, petItems[b]) == 0 or getPlayerStorageValue(cid, petItems[b]) == -1 then
mySto = b
break
end
end
if mySto ~= 0 then
local theID = carryingItem.itemid
if isItemStackable(theID) == 1 then
doRemoveItem(carryingItem.uid, carryingItem.type)
else
doRemoveItem(carryingItem.uid, 1)
end
setPlayerStorageValue(cid, petItems[mySto], theID)
doCreatureSay(daPet, 'Hmm, ' .. getItemName(theID) .. ', I\'ll save it on my ' .. mySto .. ' bag!', TALKTYPE_ORANGE_1)
else
doCreatureSay(daPet, 'I have no space!', TALKTYPE_ORANGE_1)
end
else
doCreatureSay(daPet, 'I can\'t take containers!', TALKTYPE_ORANGE_1)
end
else
doCreatureSay(daPet, 'I can\'t see any item!', TALKTYPE_ORANGE_1)
end
else
doPlayerSendCancel(cid, 'You haven\'t call your pet!')
end
return FALSE
end