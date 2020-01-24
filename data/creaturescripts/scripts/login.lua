function onLogin(cid)
	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		for i = PLAYERLOSS_EXPERIENCE, PLAYERLOSS_ITEMS do
			doPlayerSetLossPercent(cid, i, loss)
		end
	end
 	   
        registerCreatureEvent(cid, "onPrepareDeath")
        registerCreatureEvent(cid, "Mail")
	    registerCreatureEvent(cid, "GuildMotd")
	    registerCreatureEvent(cid, "questLook") 
        registerCreatureEvent(cid, "Advance")
        registerCreatureEvent(cid, "Look")
        registerCreatureEvent(cid, "PlayerDeath")
        registerCreatureEvent(cid, "DeathBroadcast")
        registerCreatureEvent(cid, "AdvanceSave")
        registerCreatureEvent(cid, "MonsterPortal")
        registerCreatureEvent(cid, "MonsterPortal2")
        registerCreatureEvent(cid, "MonsterPortal3")
        registerCreatureEvent(cid, "MonsterPortal4")
        registerCreatureEvent(cid,'SpellUp')
        return TRUE
end