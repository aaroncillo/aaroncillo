local pos =
{
    {{x = 163, y = 52, z = 7}, {x = 163, y = 52, z = 7, stackpos = 253}},
    {{x = 163, y = 53, z = 7}, {x = 163, y = 53, z = 7, stackpos = 253}},
    {{x = 163, y = 54, z = 7}, {x = 163, y = 54, z = 7, stackpos = 253}},
    {{x = 163, y = 55, z = 7}, {x = 163, y = 55, z = 7, stackpos = 253}},
    {{x = 162, y = 55, z = 7}, {x = 162, y = 55, z = 7, stackpos = 253}},
    {{x = 162, y = 54, z = 7}, {x = 162, y = 54, z = 7, stackpos = 253}},
    {{x = 162, y = 53, z = 7}, {x = 162, y = 53, z = 7, stackpos = 253}},
    {{x = 161, y = 55, z = 7}, {x = 161, y = 55, z = 7, stackpos = 253}},
    {{x = 161, y = 54, z = 7}, {x = 161, y = 54, z = 7, stackpos = 253}},
    {{x = 161, y = 53, z = 7}, {x = 161, y = 53, z = 7, stackpos = 253}},
    {{x = 160, y = 55, z = 7}, {x = 160, y = 55, z = 7, stackpos = 253}},
    {{x = 160, y = 53, z = 7}, {x = 160, y = 53, z = 7, stackpos = 253}},
    {{x = 159, y = 55, z = 7}, {x = 159, y = 55, z = 7, stackpos = 253}},
    {{x = 159, y = 54, z = 7}, {x = 159, y = 54, z = 7, stackpos = 253}},
    {{x = 159, y = 53, z = 7}, {x = 159, y = 53, z = 7, stackpos = 253}},
    {{x = 158, y = 55, z = 7}, {x = 158, y = 55, z = 7, stackpos = 253}},
    {{x = 158, y = 54, z = 7}, {x = 159, y = 54, z = 7, stackpos = 253}},
    {{x = 158, y = 53, z = 7}, {x = 159, y = 53, z = 7, stackpos = 253}},
    {{x = 157, y = 55, z = 7}, {x = 157, y = 55, z = 7, stackpos = 253}},
    {{x = 157, y = 54, z = 7}, {x = 157, y = 54, z = 7, stackpos = 253}},
    {{x = 157, y = 53, z = 7}, {x = 157, y = 53, z = 7, stackpos = 253}},
    {{x = 157, y = 52, z = 7}, {x = 157, y = 52, z = 7, stackpos = 253}},
    {{x = 158, y = 52, z = 7}, {x = 158, y = 52, z = 7, stackpos = 253}},
    {{x = 159, y = 52, z = 7}, {x = 159, y = 52, z = 7, stackpos = 253}},
    {{x = 160, y = 52, z = 7}, {x = 160, y = 52, z = 7, stackpos = 253}},
    {{x = 161, y = 52, z = 7}, {x = 161, y = 52, z = 7, stackpos = 253}},
    {{x = 162, y = 52, z = 7}, {x = 162, y = 52, z = 7, stackpos = 253}},
    {{x = 156, y = 52, z = 7}, {x = 156, y = 52, z = 7, stackpos = 253}},
    {{x = 156, y = 53, z = 7}, {x = 156, y = 53, z = 7, stackpos = 253}},
    {{x = 156, y = 54, z = 7}, {x = 156, y = 54, z = 7, stackpos = 253}},
    {{x = 156, y = 55, z = 7}, {x = 156, y = 55, z = 7, stackpos = 253}},
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 12)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
            end
        end
    end
return TRUE
end 