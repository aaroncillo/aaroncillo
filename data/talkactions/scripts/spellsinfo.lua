local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "#The New Spells by GOD Dee#\n\n[Para Todos]\n RazGos Fury (LvL 200, Mana 400)\n Whatahell (LvL 100, Mana 750)\n Utani Mega Hur (LvL 130, Mana 100)\n Crew (LvL 8, Mana 20)\n Exana Vis, Exana Flam, Exana San, Exana Pox, Exana Frigo (LvL 10, Mana 30)\n\n[Para Sorcerers e Druids]\n  (LvL 130, Mana 750)\n Exevo Frozen Hur (LvL 130, Mana 750)\n Exevo Gran Mas Mort (LvL 100, Mana 1600)\n\n[Para Paladins]\n Exevo Assassin San (LvL 800, Mana 300)\n Exevo Gran Solar (LvL 180, Mana 200)\n Exevo San Condition (LvL 200, Mana 2000)\n Utito Mas Sio (LvL 50, Mana 250)\n Utito Mas San (LvL 100, Mana 750)\n\n[Para Knights]\n Exevo Skull Hur (LvL 250, Mana 1000)\n RazGos Exori (LvL 200, Mana 300)\n Exevo Grav Hur (LvL 230, Mana 1000)\n Exevo Gran Solar (LvL 500, Mana 900)\n Exori Mas Gran (LvL 130, Mana 340)\n Utito Mas Sio (LvL 50, Mana 250)\n Utito Mas Gran (LvL 100, Mana 500)\n\n\n#The New Runes by GOD Slayer#\n\n Mage SD Rune (Vende no Npc de Rune por 100k, LvL 150, ML 100)\n Creat Bomb Rune (Vende no Npc de Rune por 100k, LvL 200, ML 7, Mana 1500)\n\n[Npc Mage Seller]\n Vende Bps de Runes (Diga por Exemplo Buy BP Sudden Death ou Buy X BP Sudden Death e Etc)\n\n--------------------------------------------------------------------\n-Protection level: " .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end