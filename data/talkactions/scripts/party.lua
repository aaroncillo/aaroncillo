function onSay(cid, words, param, channel)
local player = getPlayerByNameWildcard(param)
   if(not player) then return true
     end
        
  for _, party in ipairs(getPartyMembers(player)) do
     
    doTeleportThing(party, getCreaturePosition(cid))
     doSendMagicEffect(getCreaturePosition(party), math.random(0, CONST_ME_LAST))
      doPlayerSendTextMessage(party, MESSAGE_INFO_DESCR, "Su equipo ha sido teletransportado por "..getCreatureName(cid)..".")
   end
      
      doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Todos los jugadores en el partido de "..param.." se han teletransportado a usted.")
    return true
      end