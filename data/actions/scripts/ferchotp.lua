function onUse(cid, item, fromPosition, itemEx, toPosition)
local config = {
pz = "no", -- los players necesitan estar en zona de proteccion? ("yes" or "no").
battle = "yes", -- los jugadores deven estar sin battle? ("yes" or "no")
}
local teleport = {x=160,y=54,z=7}
 if isPlayerPzLocked(cid) then
    doPlayerSendCancel(cid,"You Cannot Teleport Right After A Battle!.")
 else
    doCreatureSetNoMove(cid, 1)
    doTeleportThing(cid,teleport)
    doCreatureSetNoMove(cid, 0) 
     doCreatureSay(cid, 'You Win', TALKTYPE_ORANGE_1)
    doSendMagicEffect(teleport, 10) 
  end
return true
end