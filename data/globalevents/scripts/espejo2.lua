local pos =
{
    {{x = 150, y = 56, z = 7}, {x = 150, y = 56, z = 7, stackpos = 253}},
    {{x = 151, y = 56, z = 7}, {x = 151, y = 56, z = 7, stackpos = 253}},
    {{x = 152, y = 56, z = 7}, {x = 152, y = 56, z = 7, stackpos = 253}},
    {{x = 153, y = 56, z = 7}, {x = 153, y = 56, z = 7, stackpos = 253}},
    {{x = 154, y = 56, z = 7}, {x = 154, y = 56, z = 7, stackpos = 253}},
    {{x = 155, y = 56, z = 7}, {x = 155, y = 56, z = 7, stackpos = 253}},
    {{x = 156, y = 56, z = 7}, {x = 156, y = 56, z = 7, stackpos = 253}},
    {{x = 149, y = 56, z = 7}, {x = 149, y = 56, z = 7, stackpos = 253}},
    {{x = 148, y = 56, z = 7}, {x = 148, y = 56, z = 7, stackpos = 253}},
    {{x = 147, y = 56, z = 7}, {x = 147, y = 56, z = 7, stackpos = 253}},
    {{x = 146, y = 56, z = 7}, {x = 146, y = 56, z = 7, stackpos = 253}},
    {{x = 145, y = 56, z = 7}, {x = 145, y = 56, z = 7, stackpos = 253}},
    {{x = 144, y = 56, z = 7}, {x = 144, y = 56, z = 7, stackpos = 253}},
    {{x = 143, y = 56, z = 7}, {x = 143, y = 56, z = 7, stackpos = 253}},
    {{x = 142, y = 56, z = 7}, {x = 142, y = 56, z = 7, stackpos = 253}},
    {{x = 165, y = 56, z = 7}, {x = 165, y = 56, z = 7, stackpos = 253}},
    {{x = 166, y = 56, z = 7}, {x = 166, y = 56, z = 7, stackpos = 253}},
    {{x = 167, y = 56, z = 7}, {x = 167, y = 56, z = 7, stackpos = 253}},
    {{x = 168, y = 56, z = 7}, {x = 168, y = 56, z = 7, stackpos = 253}},
    {{x = 169, y = 56, z = 7}, {x = 169, y = 56, z = 7, stackpos = 253}},
    {{x = 170, y = 56, z = 7}, {x = 170, y = 56, z = 7, stackpos = 253}},
    {{x = 171, y = 56, z = 7}, {x = 171, y = 56, z = 7, stackpos = 253}},
    {{x = 172, y = 56, z = 7}, {x = 172, y = 56, z = 7, stackpos = 253}},
    {{x = 173, y = 56, z = 7}, {x = 173, y = 56, z = 7, stackpos = 253}},
    {{x = 174, y = 56, z = 7}, {x = 174, y = 56, z = 7, stackpos = 253}},
    {{x = 175, y = 56, z = 7}, {x = 175, y = 56, z = 7, stackpos = 253}}
    }
function onThink(cid, interval, lastExecution)
    for _, positions in pairs(pos) do
        doSendMagicEffect(positions[1], 57)
        if getThingFromPos(positions[2]).itemid > 0 then
            for _, name in pairs(getOnlinePlayers()) do
                local player = getPlayerByName(name)
                    doSendAnimatedText(positions[1], "Espelho", 18)
            end
        end
    end
return TRUE
end  