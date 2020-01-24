local config = {
    positions = {
        ["Trainers"] = { x = 156, y = 49, z = 7 },
        ["tp 8.54"] = { x = 157, y = 49, z = 7 },
        ["tpmoderno"] = { x = 158, y = 49, z = 7 },
        ["Vip premy"] = { x = 150, y = 65, z = 6 },
        ["quest"] = { x = 159, y = 49, z = 7 },
        ["npcs"] = { x = 160, y = 49, z = 7 },
        ["Tps"] = { x = 161, y = 49, z = 7 },
        ["nobatos"] = { x = 162, y = 49, z = 7 },
        ["-1 frag"] = { x = 149, y = 47, z = 7 },
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  