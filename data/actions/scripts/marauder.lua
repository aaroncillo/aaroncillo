local function montar(parametros)
cid = params[1]
if getPlayerStorageValue(cid, 5555) == 1 then
setPlayerStorageValue(cid,montado,-1)
doPlayerSendTextMessage(cid,22,"Voce desceu da montaria.")
if voc == 1 or voc == 5 then
--aqui é a acão (para sorcerers) que acontecerá depois que o player descer da montaria.
elseif voc == 2 or voc == 6 then
--aqui é a acão (para druids) que acontecerá depois que o player descer da montaria.
elseif voc == 3 or voc == 7 then
--aqui é a acão (para paladins) que acontecerá depois que o player descer da montaria.
elseif voc == 4 or voc == 8 then
--aqui é a acão (para knights) que acontecerá depois que o player descer da montaria.
end
end
end
function onUse(cid, item, frompos, item2, topos)
--Configs--
local mount_orb = 11241 -- id da mount orb
local vipstorage = 1111 -- id do storagevalue do vip
local voc = getPlayerVocation(cid)
local sex = getPlayerSex(cid)
params = { [1]=cid, [2]=lvl, [3]=voc, [4]=ml }
roupamontado1 = {lookType = 342}
roupamontado2 = {lookType = 342}
roupamontado3 = {lookType = 342}
roupamontado4 = {lookType = 342}
montado = getPlayerStorageValue(cid,5555)
vip = getPlayerStorageValue(cid,vipstorage)
soul = getPlayerSoul(cid)
--end of configs--

--ACTION TIME!--
if item.itemid == mount_orb then
if soul >= 1 and montado == -1 then
addEvent(montar, 60000, params)
--Sorc
if voc == 1 or voc == 5 then
doSetCreatureOutfit(cid,roupamontado1, 60000)
--aqui é o que acontecerá com o player (sorcerer) ao subir na montaria.
doPlayerSendTextMessage(cid,22,"Você dominou a criatura")
setPlayerStorageValue(cid,montado,1)
doRemoveItem(item.uid, 1) 
doPlayerSay(cid,"Ha-Yoh", 17)
doPlayerAddSoul(cid, -1)
--Druid
elseif voc == 2 or voc == 6 then
--aqui é o que acontecerá com o player (sorcerer) ao subir na montaria.
doPlayerSendTextMessage(cid,22,"Você dominou a criatura")
setPlayerStorageValue(cid,montado,1)
doRemoveItem(item.uid, 1) 
doPlayerSay(cid,"Ha-Yoh", 17)
doPlayerAddSoul(cid, -1)
doSetCreatureOutfit(cid,roupamontado2, 60000)
--Pally
elseif voc == 3 or voc == 7 then
--aqui é o que acontecerá com o player (sorcerer) ao subir na montaria.
doPlayerSendTextMessage(cid,22,"Você dominou a criatura")
setPlayerStorageValue(cid,montado,1)
doRemoveItem(item.uid, 1) 
doPlayerSay(cid,"Ha-Yoh", 17)
doPlayerAddSoul(cid, -1)
doSetCreatureOutfit(cid,roupamontado3, 60000)
--Kina
elseif voc == 4 or voc == 8 then
--aqui é o que acontecerá com o player (sorcerer) ao subir na montaria.
doPlayerSendTextMessage(cid,22,"Você dominou a criatura")
setPlayerStorageValue(cid,montado,1)
doRemoveItem(item.uid, 1) 
doPlayerSay(cid,"Ha-Yoh", 17)
doPlayerAddSoul(cid, -1)
doSetCreatureOutfit(cid,roupamontado4, 60000)
--No Voc
elseif voc == 0 then
doPlayerSay(cid,"Eu nao tenho voc!", 17)
---
end
elseif soul < 1 then
end
end
end