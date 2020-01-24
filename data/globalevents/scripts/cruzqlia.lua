local pos =
{
    {{x = 317, y = 323, z = 8}, {x = 317, y = 323, z = 8, stackpos = 253}},
    {{x = 257, y = 322, z = 8}, {x = 257, y = 322, z = 8, stackpos = 253}},
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 49)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
            end
        end
    end
return TRUE
end  