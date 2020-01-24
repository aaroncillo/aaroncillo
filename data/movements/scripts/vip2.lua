function onStepIn(cid, item, pos)



-- teleports config
teleport1 ={x=161, y=51, z=0}

if isPlayer(cid) then

if item.actionid == 13539 then

vip = getPlayerStorageValue(cid,13540)
if vip == -1 then
doPlayerSendCancel(cid,"Esta área és exclusiva para players vips.")


doTeleportThing(cid,teleport1)

else

end

end

end

end
