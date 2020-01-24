function onSay(cid, words, param)
if doPlayerRemoveMoney(cid, 20) == TRUE then
doPlayerAddItem(cid, 1988, 1)
else
doPlayerSendCancel(cid, 'You don\'t have enough money.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
return TRUE
end