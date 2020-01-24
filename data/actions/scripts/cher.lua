function onUse(cid, item, frompos, item2, topos)
if item.itemid == 5390 then
doTransformItem(item.uid,5390)
doPlayerAddItem(cid,2674,100)
doSendAnimatedText(frompos,'manzanas csm', TEXTCOLOR_RED)
doDecayItem(item.uid)
end
return 1 
end