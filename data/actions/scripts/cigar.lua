function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.itemid == 7499 then
doSendMagicEffect(getThingPos(itemEx.uid), CONST_ME_STUN)
return doCreatureSay(cid, "Fumate la hierba que te da vida!", TALKTYPE_ORANGE_1)
end
end