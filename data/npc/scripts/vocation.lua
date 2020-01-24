local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid

if(msgcontains(msg, 'slayer sorcerer') or msgcontains(msg, 'slayer sorc')) then
selfSay('Deseja virar {slayer sorcerer} por 10 especial coins?', cid)
talkState[talkUser] = 1
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
if(getPlayerItemCount(cid, 2159) >= 10) then
doPlayerRemoveItem(cid, 2159, 10)
doPlayerSetVocation(cid,9)
selfSay('Voca��o trocada com sucesso , Agora voc� � um slayer Sorcerer.', cid)
else
selfSay('Voc� n�o tem {Especial Coins} Suficientes.', cid)
end
talkState[talkUser] = 0

elseif(msgcontains(msg, 'druid') or msgcontains(msg, 'druida')) then
selfSay('Deseja virar {druid} por 10 especial coins?', cid)
talkState[talkUser] = 2
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 2) then
if(getPlayerItemCount(cid, 2159) >= 10) then
doPlayerRemoveItem(cid, 2159, 10)
doPlayerSetVocation(cid,2)
selfSay('Voca��o trocada com sucesso , Agora voc� � um Druid.', cid)
else
selfSay('Voc� n�o tem {Especial Coins} Suficientes.', cid)
end
talkState[talkUser] = 0

elseif(msgcontains(msg, 'knight') or msgcontains(msg, 'kina')) then
selfSay('Deseja virar {knight} por 10 especial coins?', cid)
talkState[talkUser] = 3
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 3) then
if(getPlayerItemCount(cid, 2159) >= 10) then
doPlayerRemoveItem(cid, 2159, 10)
doPlayerSetVocation(cid,4)
selfSay('Voca��o trocada com sucesso , Agora voc� � um Knight.', cid)
else
selfSay('Voc� n�o tem {Especial Coins} Suficientes.', cid)
end
talkState[talkUser] = 0

elseif(msgcontains(msg, 'paladin') or msgcontains(msg, 'pala')) then
selfSay('Deseja virar {paladin} por 10 especial coins?', cid)
talkState[talkUser] = 4
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 4) then
if(getPlayerItemCount(cid, 2159) >= 10) then
doPlayerRemoveItem(cid, 2159, 10)
doPlayerSetVocation(cid,3)
selfSay('Voca��o trocada com sucesso , Agora voc� � um Paladin.', cid)
else
selfSay('Voc� n�o tem {Especial Coins} Suficientes.', cid)
end
talkState[talkUser] = 0
end
return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())