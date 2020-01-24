function onStepIn(cid, item, pos)
position = getPlayerPosition(cid)
if item.actionid == 2600 then
doSendMagicEffect(position, CONST_ME_MAGIC_BLUE)
doCreatureAddHealth(cid,10000000000)
end
end