function onSay(cid, words, param) 
 
 
local config = {
pz = "no", -- los players necesitan estar en zona de proteccion? ("yes" or "no").
battle = "yes", -- los jugadores deven estar sin battle? ("yes" or "no")
premium = "no", -- se necesita ser premium account ("yes" or "no")
gastable="yes"
}
 
 
-------------Config Lugares---------------- 
local lugar = { 
["depot"] = {{x=128, y=54, z=6}, 0, 0}, 
["templo"] = {{x=160, y=54, z=7}, 0, 0},
["carlin"] = {{x=85, y=45, z=15}, 0, 0},
["vip"] = {{x=151, y=63, z=7}, 0, 0},    
} 

--[[ Lista de Viagem (Não mexa) ]]--
if (param == "list") then
local str = ""
str = str .. "lista de viajes :\n\n"
for name, pos in pairs(lugar) do
str = str..name.."\n"
end
str = str .. ""
doShowTextDialog(cid, 6579, str)
return TRUE
end
 
 
-------------/Config Checkar não mecha---------------- 
local lugares = lugar[param] 
if (param == "check") then 
for name, pos in pairs(lugar) do 
text = "Destino: "..name..", Level necessario: "..pos[2].."," 
if(config.battle == "yes") then 
text = text.." usted puede usar estando battle: no" 
else 
text = text.." usted puede usar estando battle: SI" 
end 
if(config.pz == "yes") then 
text = text.." usted DeVe Usar estando en zona PZ: SI" 
else 
text = text.." usted DeVe Usar estando en zona PZ: No" 
end 
if (pos[3] == TRUE) then 
text = text..", Cost: "..pos[4]..";" 
end 
doPlayerSendTextMessage(cid, 20, ""..text.."") 
end 
return TRUE 
end 
 
 
if(config.pz == "yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then 
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"usted necesita estar en protection zone para poder teleportar.") 
return TRUE 
end 
 
if(config.premium == "yes") and (not isPremium(cid)) then 
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "solo jugadores premium account pueden teleportar.") 
return TRUE 
end 

if (config.vip == "yes") and getPlayerStorageValue(cid,11551) < 1 then 
doPlayerSendCancel(cid,"tu no tienes acceso ah estos comandos.") 
return TRUE 
end 
 
if(config.battle == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then 
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "usted necesita estar sin battle para poder usar teleport.") 
return TRUE 
end 
 
if not(lugares) then 
doPlayerSendTextMessage(cid, 22, "disculpe,este lugar no existe") 
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF) 
return TRUE 
end 
 
if (getPlayerLevel(cid) <= lugares[2]) then 
doPlayerSendTextMessage(cid, 22, "Desculpe,Voce não tem level. voce precisa "..lugares[2].." level ou mais para ser teleportado.") 
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF) 
return TRUE 
end 
 
if (config.Need == "yes") and getPlayerItemCount(cid,config.Item) < 1 then 
doPlayerSendCancel(cid,"Você não tem o item " .. getItemNameById(config.Item) .. ".") 
return TRUE 
end 
 
if(config.custo == "yes") and (doPlayerRemoveMoney(cid, lugares[3]) == FALSE) then 
doPlayerSendTextMessage(cid, 22, "Desculpe,voce nao tem dinheiro suficiente. Voce precisa "..lugares[3].." gp para ser teleportado.") 
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF) 
return TRUE 
end 
doTeleportThing(cid, lugares[1]) 
doSendMagicEffect(lugares[1], CONST_ME_TELEPORT) 
doPlayerSendTextMessage(cid, 22, "" .. getPlayerName(cid) .. " fue teleportado para: \n " .. param .. ".") 
return TRUE 
end
