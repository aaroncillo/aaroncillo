function addCarpet(params)
    local startpos = params.startpos
    local spawnDelay = params.spawnDelay
    
    local speed = 300 --The speed in miliseconds before the sled moves 1 tile
    
    local pos = params.pos
    local cid = params.cid
    
    -- Dont edit any of the following unless you know what your doing
    local groundpos = {x=pos.x, y=pos.y, z=pos.z, stackpos=0}
    local ground = getThingfromPos(groundpos)
        
    pos1 = {x=pos.x, y=pos.y, z=pos.z, stackpos=1}
    pos2 = {x=pos.x-1, y=pos.y-1, z=pos.z, stackpos=1}
    pos3 = {x=pos.x, y=pos.y-1, z=pos.z, stackpos=1}
    pos4 = {x=pos.x+1, y=pos.y-1, z=pos.z, stackpos=1}
    pos5 = {x=pos.x-1, y=pos.y, z=pos.z, stackpos=1}
    pos6 = {x=pos.x+1, y=pos.y, z=pos.z, stackpos=1}
    pos7 = {x=pos.x-1, y=pos.y+1, z=pos.z, stackpos=1}
    pos8 = {x=pos.x, y=pos.y+1, z=pos.z, stackpos=1}
    pos9 = {x=pos.x+1, y=pos.y+1, z=pos.z, stackpos=1}
    pos10 = {x=pos.x, y=pos.y, z=pos.z+1, stackpos=1}
    pos11 = {x=pos.x-1, y=pos.y-1, z=pos.z+1, stackpos=1}
    pos12 = {x=pos.x, y=pos.y-1, z=pos.z+1, stackpos=1}
    pos13 = {x=pos.x+1, y=pos.y-1, z=pos.z+1, stackpos=1}
    pos14 = {x=pos.x-1, y=pos.y, z=pos.z+1, stackpos=1}
    pos15 = {x=pos.x+1, y=pos.y, z=pos.z+1, stackpos=1}
    pos16 = {x=pos.x-1, y=pos.y+1, z=pos.z+1, stackpos=1}
    pos17 = {x=pos.x, y=pos.y+1, z=pos.z+1, stackpos=1}
    pos18 = {x=pos.x+1, y=pos.y+1, z=pos.z+1, stackpos=1}
    pos19 = {x=pos.x, y=pos.y, z=pos.z-1, stackpos=1}
    pos20 = {x=pos.x-1, y=pos.y-1, z=pos.z-1, stackpos=1}
    pos21 = {x=pos.x, y=pos.y-1, z=pos.z-1, stackpos=1}
    pos22 = {x=pos.x+1, y=pos.y-1, z=pos.z-1, stackpos=1}
    pos23 = {x=pos.x-1, y=pos.y, z=pos.z-1, stackpos=1}
    pos24 = {x=pos.x+1, y=pos.y, z=pos.z-1, stackpos=1}
    pos25 = {x=pos.x-1, y=pos.y+1, z=pos.z-1, stackpos=1}
    pos26 = {x=pos.x, y=pos.y+1, z=pos.z-1, stackpos=1}
    pos27 = {x=pos.x+1, y=pos.y+1, z=pos.z-1, stackpos=1}
    item1 = getThingfromPos(pos1)
    item2 = getThingfromPos(pos2)
    item3 = getThingfromPos(pos3)
    item4 = getThingfromPos(pos4)
    item5 = getThingfromPos(pos5)
    item6 = getThingfromPos(pos6)
    item7 = getThingfromPos(pos7)
    item8 = getThingfromPos(pos8)
    item9 = getThingfromPos(pos9)
    item10 = getThingfromPos(pos10)
    item11 = getThingfromPos(pos11)
    item12 = getThingfromPos(pos12)
    item13 = getThingfromPos(pos13)
    item14 = getThingfromPos(pos14)
    item15 = getThingfromPos(pos15)
    item16 = getThingfromPos(pos16)
    item17 = getThingfromPos(pos17)
    item18 = getThingfromPos(pos18)
    item19 = getThingfromPos(pos19)
    item20 = getThingfromPos(pos20)
    item21 = getThingfromPos(pos21)
    item22 = getThingfromPos(pos22)
    item23 = getThingfromPos(pos23)
    item24 = getThingfromPos(pos24)
    item25 = getThingfromPos(pos25)
    item26 = getThingfromPos(pos26)
    item27 = getThingfromPos(pos27)

    newpos = {x=pos.x, y=pos.y+1, z=pos.z}
    new2pos = {x=pos.x, y=pos.y-1, z=pos.z}
    new3pos = {x=pos.x+1, y=pos.y, z=pos.z}
    new4pos = {x=pos.x-1, y=pos.y, z=pos.z}
    new5pos = {x=pos.x, y=pos.y, z=pos.z-1}
    new6pos = {x=pos.x, y=pos.y, z=pos.z+1}

    if ground.actionid == 9001 then
        spawnparams = {startpos = startpos, pos = pos}
        addEvent(spawnCarpet,spawnDelay*1000,spawnparams)
        setPlayerStorageValue(cid,9500,-1)
    elseif ground.actionid == 9004 then
        doRemoveItem(item1.uid,1)
        doRemoveItem(item2.uid,1)
        doRemoveItem(item3.uid,1)
        doRemoveItem(item4.uid,1)
        doRemoveItem(item5.uid,1)
        doRemoveItem(item6.uid,1)
        doRemoveItem(item7.uid,1)
        doRemoveItem(item8.uid,1)
        doRemoveItem(item9.uid,1)
        new4pos1 = {x=new4pos.x, y=new4pos.y, z=new4pos.z}
        new4pos2 = {x=new4pos.x-1, y=new4pos.y-1, z=new4pos.z}
        new4pos3 = {x=new4pos.x, y=new4pos.y-1, z=new4pos.z}
        new4pos4 = {x=new4pos.x+1, y=new4pos.y-1, z=new4pos.z}
        new4pos5 = {x=new4pos.x-1, y=new4pos.y, z=new4pos.z}
        new4pos6 = {x=new4pos.x+1, y=new4pos.y, z=new4pos.z}
        new4pos7 = {x=new4pos.x-1, y=new4pos.y+1, z=new4pos.z}
        new4pos8 = {x=new4pos.x, y=new4pos.y+1, z=new4pos.z}
        new4pos9 = {x=new4pos.x+1, y=new4pos.y+1, z=new4pos.z}
        doCreateItem(5582,1,new4pos1)
        doCreateItem(5578,1,new4pos2)
        doCreateItem(5579,1,new4pos3)
        doCreateItem(5580,1,new4pos4)
        doCreateItem(5581,1,new4pos5)
        doCreateItem(5583,1,new4pos6)
        doCreateItem(5584,1,new4pos7)
        doCreateItem(5585,1,new4pos8)
        doCreateItem(5586,1,new4pos9)
        
        doTeleportThing(cid, new4pos)
        
        newparams = {pos = new4pos, cid = cid, startpos = startpos, spawnDelay = 10}
        addEvent(addCarpet,speed,newparams)
    elseif ground.actionid == 9003 then
        doRemoveItem(item1.uid,1)
        doRemoveItem(item2.uid,1)
        doRemoveItem(item3.uid,1)
        doRemoveItem(item4.uid,1)
        doRemoveItem(item5.uid,1)
        doRemoveItem(item6.uid,1)
        doRemoveItem(item7.uid,1)
        doRemoveItem(item8.uid,1)
        doRemoveItem(item9.uid,1)
        new3pos1 = {x=new3pos.x, y=new3pos.y, z=new3pos.z}
        new3pos2 = {x=new3pos.x-1, y=new3pos.y-1, z=new3pos.z}
        new3pos3 = {x=new3pos.x, y=new3pos.y-1, z=new3pos.z}
        new3pos4 = {x=new3pos.x+1, y=new3pos.y-1, z=new3pos.z}
        new3pos5 = {x=new3pos.x-1, y=new3pos.y, z=new3pos.z}
        new3pos6 = {x=new3pos.x+1, y=new3pos.y, z=new3pos.z}
        new3pos7 = {x=new3pos.x-1, y=new3pos.y+1, z=new3pos.z}
        new3pos8 = {x=new3pos.x, y=new3pos.y+1, z=new3pos.z}
        new3pos9 = {x=new3pos.x+1, y=new3pos.y+1, z=new3pos.z}
        doCreateItem(5582,1,new3pos1)
        doCreateItem(5578,1,new3pos2)
        doCreateItem(5579,1,new3pos3)
        doCreateItem(5580,1,new3pos4)
        doCreateItem(5581,1,new3pos5)
        doCreateItem(5583,1,new3pos6)
        doCreateItem(5584,1,new3pos7)
        doCreateItem(5585,1,new3pos8)
        doCreateItem(5586,1,new3pos9)
        
        doTeleportThing(cid, new3pos)
        
        newparams = {pos = new3pos, cid = cid, startpos = startpos, spawnDelay = 10}
        addEvent(addCarpet,speed,newparams)
    elseif ground.actionid == 9002 then
        doRemoveItem(item1.uid,1)
        doRemoveItem(item2.uid,1)
        doRemoveItem(item3.uid,1)
        doRemoveItem(item4.uid,1)
        doRemoveItem(item5.uid,1)
        doRemoveItem(item6.uid,1)
        doRemoveItem(item7.uid,1)
        doRemoveItem(item8.uid,1)
        doRemoveItem(item9.uid,1)
        new2pos1 = {x=new2pos.x, y=new2pos.y, z=new2pos.z}
        new2pos2 = {x=new2pos.x-1, y=new2pos.y-1, z=new2pos.z}
        new2pos3 = {x=new2pos.x, y=new2pos.y-1, z=new2pos.z}
        new2pos4 = {x=new2pos.x+1, y=new2pos.y-1, z=new2pos.z}
        new2pos5 = {x=new2pos.x-1, y=new2pos.y, z=new2pos.z}
        new2pos6 = {x=new2pos.x+1, y=new2pos.y, z=new2pos.z}
        new2pos7 = {x=new2pos.x-1, y=new2pos.y+1, z=new2pos.z}
        new2pos8 = {x=new2pos.x, y=new2pos.y+1, z=new2pos.z}
        new2pos9 = {x=new2pos.x+1, y=new2pos.y+1, z=new2pos.z}
        doCreateItem(5582,1,new2pos1)
        doCreateItem(5578,1,new2pos2)
        doCreateItem(5579,1,new2pos3)
        doCreateItem(5580,1,new2pos4)
        doCreateItem(5581,1,new2pos5)
        doCreateItem(5583,1,new2pos6)
        doCreateItem(5584,1,new2pos7)
        doCreateItem(5585,1,new2pos8)
        doCreateItem(5586,1,new2pos9)
        
        doTeleportThing(cid, new2pos)
        
        newparams = {pos = new2pos, cid = cid, startpos = startpos, spawnDelay = 10}
        addEvent(addCarpet,speed,newparams)
    elseif ground.actionid == 9007 then
        doRemoveItem(item1.uid,1)
        doRemoveItem(item2.uid,1)
        doRemoveItem(item3.uid,1)
        doRemoveItem(item4.uid,1)
        doRemoveItem(item5.uid,1)
        doRemoveItem(item6.uid,1)
        doRemoveItem(item7.uid,1)
        doRemoveItem(item8.uid,1)
        doRemoveItem(item9.uid,1)
        new5pos1 = {x=new5pos.x, y=new5pos.y, z=new5pos.z-1}
        new5pos2 = {x=new5pos.x-1, y=new5pos.y-1, z=new5pos.z-1}
        new5pos3 = {x=new5pos.x, y=new5pos.y-1, z=new5pos.z-1}
        new5pos4 = {x=new5pos.x+1, y=new5pos.y-1, z=new5pos.z-1}
        new5pos5 = {x=new5pos.x-1, y=new5pos.y, z=new5pos.z-1}
        new5pos6 = {x=new5pos.x+1, y=new5pos.y, z=new5pos.z-1}
        new5pos7 = {x=new5pos.x-1, y=new5pos.y+1, z=new5pos.z-1}
        new5pos8 = {x=new5pos.x, y=new5pos.y+1, z=new5pos.z-1}
        new5pos9 = {x=new5pos.x+1, y=new5pos.y+1, z=new5pos.z-1}
        doCreateItem(5582,1,pos19)
        doCreateItem(5578,1,pos20)
        doCreateItem(5579,1,pos21)
        doCreateItem(5580,1,pos22)
        doCreateItem(5581,1,pos23)
        doCreateItem(5583,1,pos24)
        doCreateItem(5584,1,pos25)
        doCreateItem(5585,1,pos26)
        doCreateItem(5586,1,pos27)
        
        doTeleportThing(cid, new5pos)

        newparams = {pos = new5pos, cid = cid, startpos = startpos, spawnDelay = 10}
        addEvent(addCarpet,speed,newparams)
    elseif ground.actionid == 9008 then
        doRemoveItem(item1.uid,1)
        doRemoveItem(item2.uid,1)
        doRemoveItem(item3.uid,1)
        doRemoveItem(item4.uid,1)
        doRemoveItem(item5.uid,1)
        doRemoveItem(item6.uid,1)
        doRemoveItem(item7.uid,1)
        doRemoveItem(item8.uid,1)
        doRemoveItem(item9.uid,1)
        new6pos1 = {x=new6pos.x, y=new6pos.y, z=new6pos.z+1}
        new6pos2 = {x=new6pos.x-1, y=new6pos.y-1, z=new6pos.z+1}
        new6pos3 = {x=new6pos.x, y=new6pos.y-1, z=new6pos.z+1}
        new6pos4 = {x=new6pos.x+1, y=new6pos.y-1, z=new6pos.z+1}
        new6pos5 = {x=new6pos.x-1, y=new6pos.y, z=new6pos.z+1}
        new6pos6 = {x=new6pos.x+1, y=new6pos.y, z=new6pos.z+1}
        new6pos7 = {x=new6pos.x-1, y=new6pos.y+1, z=new6pos.z+1}
        new6pos8 = {x=new6pos.x, y=new6pos.y+1, z=new6pos.z+1}
        new6pos9 = {x=new6pos.x+1, y=new6pos.y+1, z=new6pos.z+1}
        doCreateItem(5582,1,pos10)
        doCreateItem(5578,1,pos11)
        doCreateItem(5579,1,pos12)
        doCreateItem(5580,1,pos13)
        doCreateItem(5581,1,pos14)
        doCreateItem(5583,1,pos15)
        doCreateItem(5584,1,pos16)
        doCreateItem(5585,1,pos17)
        doCreateItem(5586,1,pos18)
        
        doTeleportThing(cid, new6pos)

        newparams = {pos = new6pos, cid = cid, startpos = startpos, spawnDelay = 10}
        addEvent(addCarpet,speed,newparams)
    else
        doRemoveItem(item1.uid,1)
        doRemoveItem(item2.uid,1)
        doRemoveItem(item3.uid,1)
        doRemoveItem(item4.uid,1)
        doRemoveItem(item5.uid,1)
        doRemoveItem(item6.uid,1)
        doRemoveItem(item7.uid,1)
        doRemoveItem(item8.uid,1)
        doRemoveItem(item9.uid,1)
        newpos1 = {x=newpos.x, y=newpos.y, z=newpos.z}
        newpos2 = {x=newpos.x-1, y=newpos.y-1, z=newpos.z}
        newpos3 = {x=newpos.x, y=newpos.y-1, z=newpos.z}
        newpos4 = {x=newpos.x+1, y=newpos.y-1, z=newpos.z}
        newpos5 = {x=newpos.x-1, y=newpos.y, z=newpos.z}
        newpos6 = {x=newpos.x+1, y=newpos.y, z=newpos.z}
        newpos7 = {x=newpos.x-1, y=newpos.y+1, z=newpos.z}
        newpos8 = {x=newpos.x, y=newpos.y+1, z=newpos.z}
        newpos9 = {x=newpos.x+1, y=newpos.y+1, z=newpos.z}
        doCreateItem(5582,1,newpos1)
        doCreateItem(5578,1,newpos2)
        doCreateItem(5579,1,newpos3)
        doCreateItem(5580,1,newpos4)
        doCreateItem(5581,1,newpos5)
        doCreateItem(5583,1,newpos6)
        doCreateItem(5584,1,newpos7)
        doCreateItem(5585,1,newpos8)
        doCreateItem(5586,1,newpos9)
        
        doTeleportThing(cid, newpos)
        
        newparams = {pos = newpos, cid = cid, startpos = startpos, spawnDelay = 10}
        addEvent(addCarpet,speed,newparams)
    end
end

function spawnCarpet(params)
    local startpos = params.startpos
    local pos = params.pos
    pos1 = {x=startpos.x, y=startpos.y, z=startpos.z}
    pos2 = {x=startpos.x-1, y=startpos.y-1, z=startpos.z}
    pos3 = {x=startpos.x, y=startpos.y-1, z=startpos.z}
    pos4 = {x=startpos.x+1, y=startpos.y-1, z=startpos.z}
    pos5 = {x=startpos.x-1, y=startpos.y, z=startpos.z}
    pos6 = {x=startpos.x+1, y=startpos.y, z=startpos.z}
    pos7 = {x=startpos.x-1, y=startpos.y+1, z=startpos.z}
    pos8 = {x=startpos.x, y=startpos.y+1, z=startpos.z}
    pos9 = {x=startpos.x+1, y=startpos.y+1, z=startpos.z}
    doCreateItem(5582,1,pos1)
    doCreateItem(5578,1,pos2)
    doCreateItem(5579,1,pos3)
    doCreateItem(5580,1,pos4)
    doCreateItem(5581,1,pos5)
    doCreateItem(5583,1,pos6)
    doCreateItem(5584,1,pos7)
    doCreateItem(5585,1,pos8)
    doCreateItem(5586,1,pos9)
    
    pos1 = {x=pos.x, y=pos.y, z=pos.z, stackpos=1}
    pos2 = {x=pos.x-1, y=pos.y-1, z=pos.z, stackpos=1}
    pos3 = {x=pos.x, y=pos.y-1, z=pos.z, stackpos=1}
    pos4 = {x=pos.x+1, y=pos.y-1, z=pos.z, stackpos=1}
    pos5 = {x=pos.x-1, y=pos.y, z=pos.z, stackpos=1}
    pos6 = {x=pos.x+1, y=pos.y, z=pos.z, stackpos=1}
    pos7 = {x=pos.x-1, y=pos.y+1, z=pos.z, stackpos=1}
    pos8 = {x=pos.x, y=pos.y+1, z=pos.z, stackpos=1}
    pos9 = {x=pos.x+1, y=pos.y+1, z=pos.z, stackpos=1}
    item1 = getThingfromPos(pos1)
    item2 = getThingfromPos(pos2)
    item3 = getThingfromPos(pos3)
    item4 = getThingfromPos(pos4)
    item5 = getThingfromPos(pos5)
    item6 = getThingfromPos(pos6)
    item7 = getThingfromPos(pos7)
    item8 = getThingfromPos(pos8)
    item9 = getThingfromPos(pos9)
    doRemoveItem(item1.uid,1)
    doRemoveItem(item2.uid,1)
    doRemoveItem(item3.uid,1)
    doRemoveItem(item4.uid,1)
    doRemoveItem(item5.uid,1)
    doRemoveItem(item6.uid,1)
    doRemoveItem(item7.uid,1)
    doRemoveItem(item8.uid,1)
    doRemoveItem(item9.uid,1)
    
    ppos1 = {x=startpos.x, y=startpos.y, z=startpos.z, stackpos=253}
    ppos2 = {x=startpos.x-1, y=startpos.y-1, z=startpos.z, stackpos=253}
    ppos3 = {x=startpos.x, y=startpos.y, z=startpos.z, stackpos=253}
    ppos4 = {x=startpos.x+1, y=startpos.y-1, z=startpos.z, stackpos=253}
    ppos5 = {x=startpos.x-1, y=startpos.y, z=startpos.z, stackpos=253}
    ppos6 = {x=startpos.x+1, y=startpos.y, z=startpos.z, stackpos=253}
    ppos7 = {x=startpos.x-1, y=startpos.y+1, z=startpos.z, stackpos=253}
    ppos8 = {x=startpos.x, y=startpos.y+1, z=startpos.z, stackpos=253}
    ppos9 = {x=startpos.x+1, y=startpos.y+1, z=startpos.z, stackpos=253}
    player1 = getThingfromPos(ppos1)
    player2 = getThingfromPos(ppos2)
    player3 = getThingfromPos(ppos3)
    player4 = getThingfromPos(ppos4)
    player5 = getThingfromPos(ppos5)
    player6 = getThingfromPos(ppos6)
    player7 = getThingfromPos(ppos7)
    player8 = getThingfromPos(ppos8)
    player9 = getThingfromPos(ppos9)
    
    nppos1 = {x=startpos.x+1, y=startpos.y, z=startpos.z}
    nppos2 = {x=startpos.x, y=startpos.y-1, z=startpos.z}
    nppos3 = {x=startpos.x+1, y=startpos.y-1, z=startpos.z}
    nppos4 = {x=startpos.x+2, y=startpos.y-1, z=startpos.z}
    nppos5 = {x=startpos.x, y=startpos.y, z=startpos.z}
    nppos6 = {x=startpos.x+2, y=startpos.y, z=startpos.z}
    nppos7 = {x=startpos.x, y=startpos.y+1, z=startpos.z}
    nppos8 = {x=startpos.x+1, y=startpos.y+1, z=startpos.z}
    nppos9 = {x=startpos.x+2, y=startpos.y+1, z=startpos.z}
    
    if player1.itemid > 0 then
        doTeleportThing(player1.uid, nppos1)
    end
    if player2.itemid > 0 then
        doTeleportThing(player2.uid, nppos2)
    end
    if player3.itemid > 0 then
        doTeleportThing(player3.uid, nppos3)
    end
    if player4.itemid > 0 then
        doTeleportThing(player4.uid, nppos4)
    end
    if player5.itemid > 0 then
        doTeleportThing(player5.uid, nppos5)
    end
    if player6.itemid > 0 then
        doTeleportThing(player6.uid, nppos6)
    end
    if player7.itemid > 0 then
        doTeleportThing(player7.uid, nppos7)
    end
    if player8.itemid > 0 then
        doTeleportThing(player8.uid, nppos8)
    end
    if player9.itemid > 0 then
        doTeleportThing(player9.uid, nppos9)
    end
end

function onStepIn(cid, item, pos)
    if isPlayer(cid) == 1 then
        isMoving = getPlayerStorageValue(cid,9500)
        if item.itemid == 5582 and isMoving == -1 then
            params = {cid = cid, pos = pos, startpos = pos, spawnDelay = 10}
            addEvent(addCarpet, 100, params)
            setPlayerStorageValue(cid,9500,1)
        end
    end
end