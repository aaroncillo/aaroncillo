local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid)                          npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)                      npcHandler:onCreatureDisappear(cid)                    end
function onCreatureSay(cid, type, msg)                  npcHandler:onCreatureSay(cid, type, msg)                end
function onThink()                                      npcHandler:onThink()                                    end
function creatureSayCallback(cid, type, msg)
        if(not npcHandler:isFocused(cid)) then
                return false
        end
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid        
local spells = {
                [1] = {spell_name = "Ultimate exori" ,price = 15000, words = 'exori ultimate', number = 1},
                }    
for i = 1, #spells do
    if msgcontains(msg, spells[i].spell_name) then
        if getPlayerLearnedInstantSpell(cid, spells[i].spell_name) == false then
            npcHandler:say("Would you like to buy "..spells[i].spell_name.." for "..spells[i].price.." gold?", cid)
            talkState[talkUser] = spells[i].number
        else
            npcHandler:say("You already know how to cast this spell.", cid)
        end
    elseif msgcontains(msg, 'yes') then
        if talkState[talkUser] == spells[i].number then
            if getPlayerMoney(cid) >= spells[i].price then
                doPlayerRemoveMoney(cid, spells[i].price)
                npcHandler:say("To cast this spell say {"..spells[i].words.."}.", cid)
                doPlayerLearnInstantSpell(cid, spells[i].spell_name)
                doSendMagicEffect(getCreaturePosition(cid), 12)
            else
                npcHandler:say("You don't have enough money.", cid)
            end
        end
    end
end
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())