function onCastSpell(cid, var)
        local pos = getPlayerPosition(cid)
        local disco = math.random(1,255)
        local bolt = math.random(47,48)
        doSendMagicEffect(pos, bolt)
        return doSetCreatureLight(cid, 9, disco, (6*60+10)*9000)
end