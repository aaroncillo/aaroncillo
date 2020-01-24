function onStepIn(cid, item, pos)



-- teleports config
teleport1 ={x=171, y=50, z=7}



if isPlayer(cid) then

if item.actionid == 1031 then

vip = getPlayerStorageValue(cid,13540)
if vip == -1 then
doPlayerSendCancel(cid,"Esta área é exclusiva para players vips.")


doTeleportThing(cid,teleport1)


else

end

end

end

end
