local pos =
{
    {{x = 321, y = 320, z = 8}, {x = 321, y = 320, z = 8, stackpos = 253}},
    {{x = 255, y = 322, z = 8}, {x = 255, y = 322, z = 8, stackpos = 253}},
    {{x = 251, y = 322, z = 8}, {x = 251, y = 322, z = 8, stackpos = 253}},
    {{x = 253, y = 322, z = 8}, {x = 253, y = 322, z = 8, stackpos = 253}},
    {{x = 259, y = 322, z = 8}, {x = 259, y = 322, z = 8, stackpos = 253}},
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 48)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
            end
        end
    end
return TRUE
end  