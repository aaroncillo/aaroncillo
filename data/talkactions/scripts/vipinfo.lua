local config = {
	rateSpawn = getConfigInfo('rateSpawn'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	autoSaveEachMinutes = getConfigInfo('autoSaveEachMinutes')
}

function onSay(cid, words, param)
	local str = "#El Sistema vip por Hoster Aggresor#\n\n[Comprando Vip]\nLo primero que tienes que hacer es ir a la izquierda del dp donde un npc que se llama vip seller le dices hi y le compras la vip stone a 100cc\nDespues de eso usa el item y te llebara a un lugar abre el cofre y sientate en el trono.\n\n[Players VIP]\nCuando usted sea un player vip tendra mycho acceso a nuevas hareas de hunt y npcs\nE o el Slayer Seller (vende items vips diga Hi para saber que items vende)\n\n[Sala de Npcs]\nEsta sala contiene muchos de los Npcs y un nuevo Npc llamado Soft Boots Seller (vende soft boots)\n\n[Promotion Seller]\nEste Npc Promotion Seller vende una promocion para players que les dara muchas ventajas (Lvl 20 y cuesta 20k)\n\n\n---------------------------------------------------------------------------\nRate Spawn: " .. config.rateSpawn
	doPlayerPopupFYI(cid, str)
	return FALSE
end