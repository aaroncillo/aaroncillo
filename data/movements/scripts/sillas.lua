local tp = {x=138, y=56, z=7}

function onStepIn(cid, item, position, fromPosition)
if item.itemid == 5024 then
doRemoveItem(item.uid)
doTeleportThing(cid, tp)
doSendMagicEffect(position, 36)
end
return true
end
