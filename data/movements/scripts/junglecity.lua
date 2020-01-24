function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 9
mensagem = 'Usted es residente de Jungle city'

if item.uid == 17323 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end