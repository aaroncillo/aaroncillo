function onUse(cid, item, fromPosition, itemEx, toPosition)
if math.random(1, 1) == 1 then
doSendMagicEffect(fromPosition, CONST_ME_POFF)
doPlayerAddItem(cid, ITEM_GOLD_COIN, -1)

doTransformItem(item.uid, 7499)

else

doSendMagicEffect(getThingPos(itemEx.uid), CONST_ME_MAGIC_BLUE)

doPlayerRemoveItem(cid, ITEM_PLATINUM_COIN, 1)

end

return TRUE

end