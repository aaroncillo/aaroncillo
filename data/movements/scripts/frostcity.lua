function onStepIn(cid, item, pos)
-- Script By Debone

idcidade = 5
mensagem = 'Usted es residente de Frost city'

if item.uid == 17322 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end