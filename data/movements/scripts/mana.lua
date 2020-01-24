function onStepIn(cid, item, pos)
position = getPlayerPosition(cid)
if item.actionid == 2601 then
doSendMagicEffect(position, CONST_ME_GREEN_BLUE)
doCreatureAddMana(cid,10000000000)
end
end