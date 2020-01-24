function onUse(cid, item, frompos, item2, topos)
pos = getPlayerPosition(cid)
if getTilePzInfo(topos) == 0 then
if getTilePzInfo(pos) == 0 then
if item.itemid == 2140 then
doTransformItem(item.uid,2692)
doSummonCreature("Mafiry", pos)
doSendMagicEffect(topos,12)
doPlayerSay(cid,"o.0",1)
doRemoveItem(item.uid,item.type)
else
doPlayerSendCancel(cid,"You cannot use that.")
end
else
doPlayerSendCancel(cid,"No puedes usar esto estas en zona protegida.")
end
else
doPlayerSendCancel(cid,"No puedes usar esto estas en zona protegida.")
end
return 1
end