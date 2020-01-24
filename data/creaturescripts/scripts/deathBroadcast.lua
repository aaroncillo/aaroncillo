function onKill(cid, target)
local pos = getCreaturePosition(cid)
local config = {
    ["Minotaur"] = {
    summonfinal = "The Horned Fox",    
    necesarios = 100,
    efectos = 15,
    valor = 10001,    
    questcompleto = 10002,
    premio = true,
    medalla = true,
    premioid = 1234,
    premioconteo = 1,
    medallaid = 1234
    }
}
    if(isPlayer(target) ~= TRUE) then
        local name = getCreatureName(target)
        local monster = config[string.lower(name)]
        if(monster)then
            if((getPlayerStorageValue(cid, monster.valor) == monster.necesarios-1)and(getPlayerStorageValue(cid, monster.questcompleto) == -1))then
                 doCreatureSay(cid, "Has matado "..monster.necesarios.." "..monster.monstername..". Ahora asesina al "..monster.summonfinal..".", TALKTYPE_ORANGE_1)
                 if((monster.premio) == true)then
                    doPlayerAddItem(cid, monster.premioid, monster.premioconteo)
                    if((monster.medalla) == true)then
                        local medal = doPlayerAddItem(cid,config.wrightablereward,1)
                        doSetItemSpecialDescription(medal, "Esta medalla fue otorgada a "..getPlayerName(cid).." por asesinar "..monster.necesarios.." "..monster.." y ser un verdadero cazador de "..monster..".")
                    end
                end
                setPlayerStorageValue(cid, monster.questcompleto, 1)
                doSendMagicEffect(pos, monster.efecto)
                doCreateMonster(string.lower(monster.summonfinal), pos.x + 1)
            elseif(getPlayerStorageValue(cid, monster.valor) < monster.necesarios-1)then
                setPlayerStorageValue(cid, monster.valor,(getPlayerStorageValue(cid, monster.valor))+1)
                doCreatureSay(cid, "Necesitas matar "..monster.necesarios-(getPlayerStorageValue(cid, monster.valor)).." "..monster.monstername.." para sumonear el "..monster.summonfinal".", TALKTYPE_ORANGE_1)
            end
        end
    end
    return TRUE
end