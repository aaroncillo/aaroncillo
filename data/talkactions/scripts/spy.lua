function getItemsInContainer(cont, sep)
    local text = ""
    local tsep = ""
    local count = ""
    for i=1, sep do
        tsep = tsep.."-"
    end
    tsep = tsep..">"
    for i=0, getContainerSize(cont.uid)-1 do
        local item = getContainerItem(cont.uid, i)
        if isContainer(item.uid) == FALSE then
            if item.type > 0 then
                count = "("..item.type.."x)"
            end
            text = text.."\n"..tsep..getItemNameById(item.itemid).." "..count
        else
            if getContainerSize(item.uid) > 0 then
                text = text.."\n"..tsep..getItemNameById(item.itemid) 
                text = text..getItemsInContainer(item, sep+2)
            else
                text = text.."\n"..tsep..getItemNameById(item.itemid)
            end
        end
    end
    return text
end
 
function onSay(cid, words, param, channel)
    if(param == "") then
        doPlayerSendCancel(cid, "Necesitas poner un nombre.")
        return TRUE
    end
    local slotName = {"Cabeza", "Amuleto", "Mochila", "Armadura", "Mano Derecha", "Mano Izquierda", "Piernas", "Pies", "Anillo", "Arrow Slot"}
    local player = getPlayerByNameWildcard(param)
    if isPlayer(player) == TRUE then
        local text = getPlayerName(player).."'s Equip: "    
        for i=1, 10 do
            text = text.."\n\n"
            local item = getPlayerSlotItem(player, i)
            if item.itemid > 0 then
                if isContainer(item.uid) == TRUE then
                    text = text..slotName[i]..": "..getItemNameById(item.itemid)..getItemsInContainer(item, 1)
                else
                    text = text..slotName[i]..": "..getItemNameById(item.itemid)
                end
            else
                text = text..slotName[i]..": Vacio"
            end
        end
        doShowTextDialog(cid, 6579, text)
    else
        doPlayerSendCancel(cid, "Este jugador no esta conectado.")
    end
 return TRUE
end 
