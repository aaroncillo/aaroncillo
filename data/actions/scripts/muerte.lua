function onUse(cid, item, frompos, item2, topos)
    if item.itemid == 5475 then
         doTeleportThing(cid,topos)
         doCreatureAddHealth(cid, -9000000)
         doCreatureAddHealth(cid, -9000000)
         doSendAnimatedText(topos,"xD wueon!!",50)
         doTransformItem(item.uid,item.itemid-1)
    else
         doTransformItem(item.uid,item.itemid+1)
    end
return 1
end