function onLogin(cid)
    if getPlayerStorageValue(cid, 30001) == -1 then
        if getPlayerVocation(cid) == 1 then
            doPlayerAddItem(cid, 2190, 1)--Wand Of Vortex
            doPlayerAddItem(cid, 2525, 1)--Copper Shield
            doPlayerAddItem(cid, 2457, 1)--Legion Helmet
            doPlayerAddItem(cid, 2463, 1)--Chain Armor
            doPlayerAddItem(cid, 2647, 1)--Chain Legs
            doPlayerAddItem(cid, 2173, 1)--Amulet of loss
            doPlayerAddItem(cid, 2195, 1)--Leather Boots
            doPlayerAddItem(cid, 10518, 1)--Golden Backpack
            doPlayerAddItem(cid, 2674, 50)--Ham
            doPlayerAddItem(cid, 2124, 1)
            doPlayerAddItem(cid, 2268, 1)
            doPlayerAddItem(cid, 2276, 1)
            doPlayerAddItem(cid, 2273, 1)
            doPlayerAddItem(cid, 2160, 10)
            doPlayerAddItem(cid, 2554, 1)
            doPlayerAddItem(cid, 2120, 1)
            doPlayerAddItem(cid, 2127, 1)
            doPlayerAddItem(cid, 5810, 1)
        doPlayerSendTextMessage(cid,22,""..getPlayerName(cid).." ahora tienes los primeros items de "..getPlayerVocationName(cid)..".")
        end
        if getPlayerVocation(cid) == 2 then
            doPlayerAddItem(cid, 2525, 1)--Copper Shield
            doPlayerAddItem(cid, 2182, 1)--Snakekbite Rod
            doPlayerAddItem(cid, 2457, 1)--Legion Helmet
            doPlayerAddItem(cid, 2463, 1)--Chain Armor
            doPlayerAddItem(cid, 2647, 1)--Chain Legs
            doPlayerAddItem(cid, 2173, 1)--Amulet of loss
            doPlayerAddItem(cid, 2195, 1)--Leather Boots
            doPlayerAddItem(cid, 10518, 1)--Golden Backpack
            doPlayerAddItem(cid, 2674, 50)--Ham
            doPlayerAddItem(cid, 2124, 1)
            doPlayerAddItem(cid, 2268, 1)
            doPlayerAddItem(cid, 2276, 1)
            doPlayerAddItem(cid, 2273, 1)
            doPlayerAddItem(cid, 2127, 1)
            doPlayerAddItem(cid, 2160, 10)
            doPlayerAddItem(cid, 2554, 1)
            doPlayerAddItem(cid, 2120, 1)
            doPlayerAddItem(cid, 5810, 1)
        doPlayerSendTextMessage(cid,22,""..getPlayerName(cid).." ahora tienes los primeros items de "..getPlayerVocationName(cid)..".")
        end
        if getPlayerVocation(cid) == 3 then
            doPlayerAddItem(cid, 2525, 1)--Copper Shield
            doPlayerAddItem(cid, 2456, 1)--Bow
            doPlayerAddItem(cid, 2457, 1)--Legion Helmet
            doPlayerAddItem(cid, 2463, 1)--Chain Armor
            doPlayerAddItem(cid, 2647, 1)--Chain Legs
            doPlayerAddItem(cid, 2173, 1)--Amulet of loss
            doPlayerAddItem(cid, 2195, 1)--boots of haste
            doPlayerAddItem(cid, 10518, 1)--Golden Backpack
            doPlayerAddItem(cid, 2674, 50)--Ham
            doPlayerAddItem(cid, 2389, 1)--Spear
            doPlayerAddItem(cid, 2544, 1)
            doPlayerAddItem(cid, 2124, 1)
            doPlayerAddItem(cid, 2268, 1) 
            doPlayerAddItem(cid, 2276, 1)
            doPlayerAddItem(cid, 2127, 1)
            doPlayerAddItem(cid, 2273, 1)
            doPlayerAddItem(cid, 2160, 10)
            doPlayerAddItem(cid, 2554, 1)
            doPlayerAddItem(cid, 2120, 1)
            doPlayerAddItem(cid, 5810, 1)
        doPlayerSendTextMessage(cid,22,""..getPlayerName(cid).." ahora tienes los primeros items de "..getPlayerVocationName(cid)..".")
        end
        if getPlayerVocation(cid) == 4 then
            doPlayerAddItem(cid, 2457, 1)--Legion Helmet
            doPlayerAddItem(cid, 2463, 1)--Chain Armor
            doPlayerAddItem(cid, 2525, 1)--Copper Shield
            doPlayerAddItem(cid, 2647, 1)--Chain Legs
            doPlayerAddItem(cid, 2173, 1)--Amulet of loss
            doPlayerAddItem(cid, 2195, 1)--boots of haste
            doPlayerAddItem(cid, 10518, 1)--demon Backpack
            doPlayerAddItem(cid, 2383, 1)--Spike Sword
            doPlayerAddItem(cid, 2394, 1)--Morning Star
            doPlayerAddItem(cid, 2428, 1)--Orcish Axe
            doPlayerAddItem(cid, 2674, 50)--manzanas
            doPlayerAddItem(cid, 2124, 1)
            doPlayerAddItem(cid, 2313, 1)
            doPlayerAddItem(cid, 2276, 1)
            doPlayerAddItem(cid, 2273, 1)
            doPlayerAddItem(cid, 2127, 1)
            doPlayerAddItem(cid, 2160, 10)
            doPlayerAddItem(cid, 2554, 1)
            doPlayerAddItem(cid, 2120, 1)
            doPlayerAddItem(cid, 5810, 1)
        doPlayerSendTextMessage(cid,22,""..getPlayerName(cid).." ahora tienes los primeros items de "..getPlayerVocationName(cid)..".")
        end
            setPlayerStorageValue(cid, 30001, 1)
    end
     return TRUE
end 