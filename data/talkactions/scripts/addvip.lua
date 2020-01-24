function onSay(cid, words, param)
if doPlayerRemoveMoney(cid, [color="#FF0000"]2000000[/color]) == TRUE then
setPlayerStorageValue(cid,13540,1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "[color="#A0522D"]Parabens agora voce e vip[/color].)")
doSendMagicEffect(getPlayerPosition(cid), 28)
else
doPlayerSendCancel(cid, "Voce precisa de 2kk para comprar Vip.")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "[color="#00BFFF"]Voce nao tem 2kk para comprar Vip[/color].")
doSendMagicEffect(getPlayerPosition(cid), 2)
end
end