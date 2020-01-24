function onLook(cid, thing, position, lookDistance)
	if isPlayer(thing.uid) and not getPlayerFlagValue(cid, PLAYERCUSTOMFLAG_CANSEECREATUREDETAILS) then
		doPlayerSetSpecialDescription(thing.uid, (getPlayerSex(thing.uid) == 0 and '.\nElla' or '.\nEl') ..' tiene un maximo de '..getCreatureMaxHealth(thing.uid)..' vida y '..getCreatureMaxMana(thing.uid)..' mana')
	end
	return true
end