function onKill(cid, target)
local config = {
monstername = "demon",
mrfnal = "Hellgorak",
needeedkills = 1,
effect = 15,
storage = 10001,
hunterstorage = 10002,
pos = getPlayerPosition(cid)
}
if(isMonster(target) == TRUE) then
if getCreatureName(target) == string.lower(config.monstername)then
if getPlayerStorageValue(cid, config.storage) == config.needeedkills-1 and getPlayerStorageValue(cid,config.hunterstorage) == -1 then
doCreatureSay(cid, "Has matado "..config.needeedkills.." "..config.monstername..". Ahora asesina al "..config.mrfinal".", TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid,config.hunterstorage,1)
doSendMagicEffect(config.pos, config.effect)
doCreateMonster("Demon", config.pos.x + 1)
elseif getPlayerStorageValue(cid, config.storage) < config.needeedkills-1 then
setPlayerStorageValue(cid, config.storage,(getPlayerStorageValue(cid, config.storage))+1)
doCreatureSay(cid, "Necesitas matar "..config.needeedkills-getPlayerStorageValue(cid, config.storage).." "..config.monstername.." para sumonear el "..config.mrfinal".", TALKTYPE_ORANGE_1)
end
end
end
return TRUE
end