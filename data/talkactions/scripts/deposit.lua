function onSay(cid, words, param, channel)

if doPlayerDepositMoney(cid, param) then
doPlayerSendTextMessage(cid,22,'Dinero depositado con exito.')
else
doPlayerSendTextMessage(cid,22,'Hubo un error. Puede que no tenga ese dinero con usted.')
end
return true

end