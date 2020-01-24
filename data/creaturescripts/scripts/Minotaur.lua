function onKill(cid, target)
local config = {
     monstername = "Minotaur", -- nombre del monster
     monsternamerfnal = "Minotaur Archer",
     needeedkills = 1, -- cuantos necesitas matar para sumonear al horned
     effect = 15, -- efecto
     storage = 10001, -- storage de las muertes
     hunterstorage = 10002, -- storage del quest completo
     pos = getPlayerPosition(cid) -- tu posicion
}
         if(isMonster(target) == TRUE) then
             if getCreatureName(target) == string.lower(config.monstername)then
                  if  getPlayerStorageValue(cid, config.storage) == config.needeedkills-1 and  getPlayerStorageValue(cid,config.hunterstorage) == -1 then
                      doCreatureSay(cid,  "Has matado "..config.needeedkills.." "..config.monstername..". Ahora  asesina al "..config.mrfinal".", TALKTYPE_ORANGE_1)
                      setPlayerStorageValue(cid,config.hunterstorage,1)
                      doSendMagicEffect(config.pos, config.effect)
                      doCreateMonster("Demon", config.pos.x + 1)
                 elseif getPlayerStorageValue(cid, config.storage) < config.needeedkills-1 then
                      setPlayerStorageValue(cid, config.storage,(getPlayerStorageValue(cid, config.storage))+1)
                      doCreatureSay(cid,  "Necesitas matar "..config.needeedkills-getPlayerStorageValue(cid,  config.storage).." "..config.monstername.." para sumonear el  "..config.mrfinal".", TALKTYPE_ORANGE_1)
                  end
             end
         end
     return TRUE
end