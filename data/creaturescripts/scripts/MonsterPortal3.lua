function onKill(cid, target, lastHit)
	local m = {
		["Aggrox Earth Elemental"] = {
			time = 10, -- Seconds
			to = { x = 697, y = 66, z = 7 }, -- Where Teleport Goes
			tp = { x = 695, y = 35, z = 7 } -- Where Teleport Creates
		}
	}
	local monster = m[getCreatureName(target)]
		local function deleteTeleport()
			local teleport = getTileItemById(monster.tp, 1387)
			if(teleport.uid > 0) then
				doRemoveItem(teleport.uid)
				doSendMagicEffect(monster.tp, CONST_ME_POFF)
				doSendAnimatedText(monster.tp, "serrado", TEXTCOLOR_RED)
			end
			return true
		end
	if(monster) then
		doCreateTeleport(1387, monster.to, monster.tp)
		addEvent(deleteTeleport, monster.time * 1000)
		doCreatureSay(cid, "Tu tienes " .. monster.time .. " segundos para escapar!", TALKTYPE_ORANGE_1)
	end
	return true
end