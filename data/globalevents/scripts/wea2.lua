
local pos =
{
    {{x = 158, y = 52, z = 7}, {x = 158, y = 52, z = 7, stackpos = 253}},
    {{x = 162, y = 52, z = 7}, {x = 162, y = 52, z = 7, stackpos = 253}},
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 15)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
                    doSendAnimatedText(positions[1], "First Items", 18)
            end
        end
    end
return TRUE
end 
