local config = {
    positions = {
        ["Vips"]     = { x = 153, y = 63, z = 7 },
        ["Monsters"] = { x = 32, y = 196, z = 7 },
        ["Ciudades"] = { x = 304, y = 314, z = 8 },
        ["Quests"]    = { x = 321, y = 319, z = 8 },
        ["Templo"]   = { x = 317, y = 324, z = 8 },
        ["Iglesia"]   = { x = 308, y = 309, z = 8 },
        ["Eventos"]   = { x = 312, y = 309, z = 8 },
        ["Encantamiento"]   = { x = 320, y = 305, z = 8 },
        ["Non pvp"]   = { x = 358, y = 355, z = 7 },
        ["Jungle"]   = { x = 358, y = 358, z = 7 },
        ["Fire"]   = { x = 358, y = 361, z = 7 },
        ["Ice"]   = { x = 358, y = 364, z = 7 },
        ["Templo"]   = { x = 368, y = 359, z = 7 },
        ["Quest"]   = { x = 320, y = 309, z = 8 },
        ["Ajedres"]   = { x = 324, y = 289, z = 8 },
        ["football"]   = { x = 328, y = 289, z = 8 },
        ["Demonios"]   = { x = 312, y = 313, z = 8 },
        ["Templox"]   = { x = 317, y = 324, z = 8 },
        ["Templo"]   = { x = 251, y = 315, z = 7 },
        ["Vips"]   = { x = 153, y = 65, z = 7 },
        ["subterraneo"]   = { x = 173, y = 49, z = 7 },
        ["Carlinwar"]   = { x = 156, y = 64, z = 7 },
        ["click :P"]   = { x = 145, y = 47, z = 7 },
        ["nobatos"]   = { x = 256, y = 311, z = 7 },
        ["casa  gays"]   = { x = 404, y = 147, z = 6 },
        ["tps"]   = { x = 156, y = 62, z = 7 },
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  