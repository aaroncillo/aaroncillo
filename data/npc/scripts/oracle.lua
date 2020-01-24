focus = 0
talk_start = 0
target = 0
following = false
attacking = false
talk_state = 0
cname = ''
vocation = 0
mainlevel = 10000

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Tchau.')
focus = 0
talk_start = 0
end
end


function onCreatureTurn(creature)

end

function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
cname = creatureGetName(cid)
msg = string.lower(msg)

if ((string.find(msg, '(%a*)hi(%a*)')) and (focus == 0)) and getDistanceToCreature(cid) < 4 then
selfSay('Hola ' .. cname .. '!esta preparado para encarar su destino?')
talk_state = 0
focus = cid
talk_start = os.clock()

elseif string.find(msg, '(%a*)hi(%a*)') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Sorry, ' .. cname .. '! I talk to you in a minute.')

elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
selfSay('Tchau, ' .. cname .. '!')
talk_state = 0
focus = 0
talk_start = 0 ***elseif focus == cid then
talk_start = os.clock() ***if talk_state == 0 then
if msgcontains(msg, 'si') then ***-- confirmando decisao
level = getPlayerLevel(cname)

if level >= mainlevel then
selfSay('Genia! Que es lo que quieres ser? Un knight, un paladin, un sorcerer o un druid??')
talk_state = 1
else
selfSay('Lamento, tu nesesitas level ' .. mainlevel .. ' para ir para mainland.')
talk_state = 0
end
else
selfSay('vuelve cuando estes preparado.')
talk_state = 0
end

elseif talk_state == 1 then ***-- telling vocation
talk_state = 2

if msgcontains(msg, 'sorcerer') then
selfSay('Un mistico sorcerer! Estas seguro?')
vocation = 1
elseif msgcontains(msg, 'druid') then
selfSay('Un misterioso druid! Estas seguro?')
vocation = 2
elseif msgcontains(msg, 'paladin') then
selfSay('Un archero paladin! Estas seguro?')
vocation = 3
elseif msgcontains(msg, 'knight') then
selfSay('Un increíble knight! Estas seguro?')
vocation = 4
else
selfSay('Sorry, there is no such vocation.')
vocation = 0
talk_state = 1
end

elseif talk_state == 2 then ***-- confirmando voc
if msgcontains(msg, 'si') then
selfSay('genial! Puedo mandarte para la city. Para donde quieres ir??')
talk_state = 3
else
selfSay('aaah')
talk_state = 1
end

elseif talk_state == 3 then ***-- telling city name
if msgcontains(msg, 'city') then
selfSay('Buena suerte, joven aventurero!')
setPlayerVocation(cid,vocation)
setPlayerMasterPos(cid,160,54,7)
selfSay('/send ' .. cname .. ', 160 54 7') <-- OJO modifiquen el templo

talk_state = 0
focus = 0
talk_start = 0
else
selfSay('Disculpe, no exite esa ciudad.')
talk_state = 3
end
end
end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
if (os.clock() - talk_start) > 45 then
if focus > 0 then
selfSay('Next Please...')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('Good bye then.')
focus = 0
end
end
end 

