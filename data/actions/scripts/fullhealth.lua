function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerLevel(cid) > 1 then
doCreatureAddHealth(cid, getCreatureMaxHealth(cid))
doSendMagicEffect(getPlayerPosition(cid), 31)
doSendAnimatedText(getPlayerPosition(cid), "HEAL FULL", 18)
end
end

