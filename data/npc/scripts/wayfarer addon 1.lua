local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                        npcHandler:onThink()                        end

local focus = 0
local talk_start = 0

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hiho ' .. getCreatureName(cid) .. ' Yo le puedo dar el Wayfarer addon 1, para mas informacion. diga help...')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Lo siento, ' .. getCreatureName(cid) .. '! ya hablo con usted en 1 minuto espera wn.')

	elseif focus == cid then
		talk_start = os.clock()

	if msgcontains(msg, 'help') then
			selfSay('Para saber  que necesita para obtener el Wayfarer addon 1 diga: addon 1')


	elseif msgcontains(msg, 'addon 1') then
                 if getPlayerStorageValue(cid,999997) >= 2 then
					selfSay('Usted ya tiene ese addon.')

                 else if getPlayerStorageValue(cid,999997) == 1 then
                    selfSay('Usted necesita traerme 100k, tu los trajiste para mi ^^?')
					addon_state = 2
		 else
		            setPlayerStorageValue(cid,999997,1)
                    selfSay('Usted necesita traerme 100k, tu los trajiste para mi ^^?')
        end
	end
	elseif msgcontains(msg, 'yes') and addon_state == 2 then
                 if doPlayerRemoveItem(cid,2160, 5) == 0 or doPlayerRemoveItem(cid,2160, 5) == 0 then
		  			selfSay('Desculpa wn usted no tiene los 100k ¬¬ 88 666...')
                 else  
			selfSay('Listo wn, ahora teni un nuevo addon gil qliao el addon 1 del wayfarer!.')
			if getPlayerSex(cid) == 0 then
		    doPlayerAddOutfit(cid, 366, 1)
		    setPlayerStorageValue(cid,999997,1)
			else
			doPlayerAddOutfit(cid, 367, 1)
			setPlayerStorageValue(cid,999997,2)
		    talk_state = 1
			end
        end	
  	

        elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
            selfSay('Adios ' .. creatureGetName(cid) .. ', Vuelve luego washon :$.')
            focus = 0
            talk_start = 0

        elseif msg ~= "" then
            selfSay('Como? Yo no lo entendi toy medio sordo :Z!')
            talk_state = 0
        end
    end
end

function onCreatureChangeOutfit(creature)
end

function onThink()
    doNpcSetCreatureFocus(focus)
    if (os.clock() - talk_start) > 30 then
        if focus > 0 then
            selfSay('Next ctm xD!!...')
        end
        focus = 0
        talk_start = 0
    end
    if focus ~= 0 then
        if getDistanceToCreature(focus) > 5 then
            selfSay('Andate a la xuxa')
            focus = 0
            talk_start = 0
        end
    end
end

npcHandler:setCallback(CALLBACK_ONTHINK, thinkCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:addModule(FocusModule:new())

