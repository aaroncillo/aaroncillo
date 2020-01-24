function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerLevel(cid) > 1 then
doCreatureAddMana(cid, getCreatureMaxMana(cid))
doSendMagicEffect(getPlayerPosition(cid), 31)
doSendAnimatedText(getPlayerPosition(cid), "MANA FULL", 250)
end
end

