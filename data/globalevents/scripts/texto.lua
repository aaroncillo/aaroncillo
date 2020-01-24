local config = {
    positions = {
        ["Royal ot"] = { x = 160, y = 54, z = 7 },
        ["Depot"] = { x = 154, y = 49, z = 7 },
        ["Casino"] = { x = 154, y = 50, z = 7 }, 
        ["Trainers"] = { x = 164, y = 49, z = 7 },
        ["tp Antiguo"]   = { x = 248, y = 311, z = 7 },
        ["tp Moderno"]   = { x = 252, y = 311, z = 7 },
        ["Quests"]   = { x = 248, y = 308, z = 7 },
        ["Npcs"]   = { x = 252, y = 308, z = 7 },
        ["monsters"]   = { x = 38, y = 192, z = 7 },
        ["bosses"]   = { x = 34, y = 196, z = 7 },
        ["Npcs"]   = { x = 34, y = 193, z = 7 },
        ["12 casas"]   = { x = 34, y = 199, z = 7 },
        ["Templo"]   = { x = 256, y = 322, z = 8 },
        ["mas quest"]   = { x = 254, y = 322, z = 8 },
        ["vips 2"]   = { x = 156, y = 68, z = 7 },
        ["darkness"]   = { x = 250, y = 322, z = 8 },
        ["Npcs"]   = { x = 252, y = 308, z = 7 },
        ["Pvp"]   = { x = 156, y = 66, z = 7 },
        ["vip premmy"]   = { x = 150, y = 65, z = 7 },
        ["vip"]   = { x = 154, y = 43, z = 7 },
        ["Aggro set"]   = { x = 252, y = 322, z = 8 },
        ["armas"]   = { x = 258, y = 322, z = 8 },
        ["inqui"]   = { x = 247, y = 317, z = 8 },
        ["demoniac"]   = { x = 249, y = 317, z = 8 },
        ["poi quest"]   = { x = 251, y = 317, z = 8 },
        ["ani"]   = { x = 253, y = 317, z = 8 },
        ["helmet"]   = { x = 255, y = 317, z = 8 },
        ["steel"]   = { x = 257, y = 317, z = 8 },
        ["demon leg"]   = { x = 259, y = 317, z = 8 },
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  