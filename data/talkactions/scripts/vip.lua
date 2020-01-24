function onSay(cid, words, param)
if doPlayerRemoveMoney(cid, 1000000) == TRUE then
setPlayerStorageValue(cid,13540,1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "ahora eres vip ")
doSendMagicEffect(getPlayerPosition(cid), 28)
else
doPlayerSendCancel(cid, "Necesitas 100 cc para vip (Vale La Pena xD).")
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Vip!!!.")
doSendMagicEffect(getPlayerPosition(cid), 2)
end
end