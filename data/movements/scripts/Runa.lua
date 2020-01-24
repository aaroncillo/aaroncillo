function onStepIn(cid, item, pos)
local position = {x=160, y=50, z=5}
local position2 = {x=160, y=54, z=7}

if (getPlayerItemCount(cid, 2276) < 1) then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Felicidades! Haz ganado mana rune")
doPlayerAddItem(cid,2276,1) 
doTeleportThing(cid, position)
doSendMagicEffect(position,10)
else

doTeleportThing(cid, position2)
doSendMagicEffect(position2,10)
end
end