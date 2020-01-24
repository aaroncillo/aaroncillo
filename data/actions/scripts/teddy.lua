--
-- Stuffed Dragon (sid: 2112)
--
-- TODO:
--	Make "te kiero... i love you.... ctm te odio mierda!!" more rare.
--

SOUNDS = {"te odio mierda", ":D", "i love you", "perro qlio... te kiero!", "ctm... i love you.... te odio!!", "te amo..."}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local random = math.random(1, table.maxn(SOUNDS))
	if(fromPosition.x ~= CONTAINER_POSITION) then
		doCreatureSay(cid, SOUNDS[random], TALKTYPE_ORANGE_1, fromPosition)
	else
		doCreatureSay(cid, SOUNDS[random], TALKTYPE_ORANGE_1)
	end

	if(random == 5) then -- "te kiero mucho crm!... i love you.... ctm te odio mierda!!"
 		doTargetCombatHealth(0, cid, COMBAT_PHYSICALDAMAGE, -1, -1, CONST_ME_HEART)
	end

	return TRUE
end
