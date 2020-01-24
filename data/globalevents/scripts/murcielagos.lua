local pos =
{
    {{x = 169, y = 52, z = 7}, {x = 169, y = 52, z = 7, stackpos = 253}},
    {{x = 164, y = 44, z = 7}, {x = 164, y = 44, z = 7, stackpos = 253}},
    {{x = 153, y = 45, z = 7}, {x = 153, y = 45, z = 7, stackpos = 253}},
    {{x = 142, y = 47, z = 7}, {x = 142, y = 47, z = 7, stackpos = 253}},
    {{x = 248, y = 311, z = 7}, {x = 248, y = 311, z = 7, stackpos = 253}},
    {{x = 252, y = 311, z = 7}, {x = 252, y = 311, z = 7, stackpos = 253}},
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 66)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
            end
        end
    end
return TRUE
end  