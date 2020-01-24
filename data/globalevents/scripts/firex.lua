local pos =
{
    {{x = 160, y = 53, z = 7}, {x = 160, y = 53, z = 7, stackpos = 253}},
    {{x = 160, y = 55, z = 7}, {x = 160, y = 55, z = 7, stackpos = 253}},
    {{x = 161, y = 54, z = 7}, {x = 161, y = 54, z = 7, stackpos = 253}},
    {{x = 159, y = 54, z = 7}, {x = 159, y = 54, z = 7, stackpos = 253}},
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 36)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
            end
        end
    end
return TRUE
end  