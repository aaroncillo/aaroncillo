local pos =
{
    {{x = 358, y = 360, z = 7}, {x = 358, y = 360, z = 7, stackpos = 253}},
    {{x = 256, y = 308, z = 7}, {x = 256, y = 308, z = 7, stackpos = 253}},
    {{x = 256, y = 311, z = 7}, {x = 256, y = 311, z = 7, stackpos = 253}},
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 6)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
            end
        end
    end
return TRUE
end  