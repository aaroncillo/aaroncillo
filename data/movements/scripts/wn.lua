function onStepIn(cid, item, pos)
position = getPlayerPosition(cid)
if item.actionid == 2500 then
doSendMagicEffect(position,17)
doCreatureAddHealth(cid,-10000000000)
doSendAnimatedText(pos,
"Te dije.",55)
end
end