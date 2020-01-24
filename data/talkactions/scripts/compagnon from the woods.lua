function onSay(cid, words, param)

    playerpos = getPlayerPosition(cid)
    queststatus = getPlayerStorageValue(cid,0001)

            if getPlayerLevel(cid) < 80 then
                    doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTENOUGHLEVEL)

            elseif getPlayerMagLevel(cid) < 10 then
                    doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTENOUGHMAGICLEVEL)

            elseif getPlayerVocation(cid) < 7 then
            doPlayerSendTextMessage(cid,18,"You do not have the right vocation.")

            elseif getPlayerVocation(cid) > 7 then
            doPlayerSendTextMessage(cid,18,"You do not have the right vocation.")

            elseif getTilePzInfo(playerpos) == 1 then
                    doPlayerSendDefaultCancel(cid, RETURNVALUE_ACTIONNOTPERMITTEDINPROTECTIONZONE)

            elseif getPlayerMana(cid) < 500 then
                    doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTENOUGHMANA)

            elseif queststatus == -1 then
            doPlayerSendTextMessage(cid,18,"You must learn this spell first.")

            elseif getPlayerSoul(cid) < 55 then
                    doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTENOUGHSOUL)

            else
            doPlayerAddMana(cid,-500)
            doPlayerAddSoul(cid,-55)
            local monster = doSummonCreature("Elf", getCreaturePosition(cid))
                    doConvinceCreature(cid, monster)
            local monster = doSummonCreature("Elf", getCreaturePosition(cid))
                    doConvinceCreature(cid, monster)
            local monster = doSummonCreature("Elf Scout", getCreaturePosition(cid))
                    doConvinceCreature(cid, monster)
            local monster = doSummonCreature("Elf Scout", getCreaturePosition(cid))
                    doConvinceCreature(cid, monster)
            local monster = doSummonCreature("Elf Arcanist", getCreaturePosition(cid))
                    doConvinceCreature(cid, monster)
            local monster = doSummonCreature("Elf Arcanist", getCreaturePosition(cid))
                    doConvinceCreature(cid, monster)
            
end
return 1
end