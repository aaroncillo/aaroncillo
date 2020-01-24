local config = {
    [0] = { msg="+Fist", efex=38},
    [1] = { msg="+Mace", efex=26},
    [2] = { msg="+Swrd", efex=24},
    [3] = { msg="+Axe", efex=25},
    [4] = { msg="+Dist", efex=2},
    [5] = { msg="+Def", efex=11},
    [6] = { msg="+Fish", efex=12},
    [7] = { msg="+ML", efex=35},
    [8] = { msg="+LvL", efex=37} }
 
function onAdvance(cid, skill, oldlevel, newlevel)
    if skill == SKILL__LEVEL then
        doCreatureAddHealth(cid, getCreatureMaxHealth(cid))
        doCreatureAddMana(cid, getCreatureMaxMana(cid) - getCreatureMana(cid))
    end
 
local p = getPlayerPosition(cid)
local positions = {
        [1] = { pos= {x=p.x+1,y=p.y,z=p.z}, delay = 100, delay2 = 900},
        [2] = { pos= {x=p.x+1,y=p.y+1,z=p.z}, delay = 200, delay2 = 980},
        [3] = { pos= {x=p.x,y=p.y+1,z=p.z}, delay = 300, delay2 = 1060},
        [4] = { pos= {x=p.x-1,y=p.y+1,z=p.z}, delay = 400, delay2 = 1140},
        [5] = { pos= {x=p.x-1,y=p.y,z=p.z}, delay = 500, delay2 = 1220},
        [6] = { pos= {x=p.x-1,y=p.y-1,z=p.z}, delay = 600, delay2 = 1300},
        [7] = { pos= {x=p.x,y=p.y-1,z=p.z}, delay = 700, delay2 = 1380},
        [8] = { pos= {x=p.x+1,y=p.y-1,z=p.z}, delay = 800, delay2 = 1460} }
 
    for i = 1, 8 do
        addEvent(doSendDistanceShoot, positions[i].delay, positions[i].pos, p, config[skill].efex)
        addEvent(doSendDistanceShoot, positions[i].delay2, positions[i].pos, p, config[skill].efex)
    end
       addEvent(doSendMagicEffect, 900, p, 49)
    doSendAnimatedText(p, config[skill].msg.."["..newlevel.."]", math.random(255))
    doPlayerSave(cid, true)    
return true
end
