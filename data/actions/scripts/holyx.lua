function onUse(cid, item, frompos, item2, topos)
pos = getPlayerPosition(cid)
if item.itemid == 4850 then
doTransformItem(item.uid,2692)
local creature = doSummonCreature("Pet", pos)
doConvinceCreature(cid, creature)
doSendMagicEffect(topos,39)
doPlayerSay(cid,"Pet sale ctm",1)
doRemoveItem(item.uid,item.type)
else
doPlayerSendCancel(cid,"No puedes usar esto estas en zona protegida.")
end
return 1
end
