function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 4
mensagem = 'Ahora usted es residente de fire fortress'

if item.uid == 17208 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end