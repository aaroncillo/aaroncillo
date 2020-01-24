function onSay(cid, words, param, channel)

if doPlayerWithdrawMoney(cid, param) then
doPlayerSendTextMessage(cid,22,'Dinero retirado con exito.')
else
doPlayerSendTextMessage(cid,22,'a ocurrido un error. Talvez usted no tiene este dinero en el banco.')
end
return true

end