local monsters = {"zombie", "ghoul", "ghost", "spectre"} --MONSTERS QUE QUIERES EN QUE SE TRANSFORME EL PLAYER AL MORIR
local storage = 325

function onDeath(cid, corpse, deathList)
---PLAYER INFO--
   local outfit = getCreatureOutfit(cid)
   local health = getCreatureMaxHealth(cid)
   local pos = getThingPos(cid)
   local name = getCreatureName(cid)
   local sex = getPlayerSex(cid)
   local voc = getPlayerVocationName(cid)
---PLAYER INFO--

   doRemoveItem(corpse.uid)
   x = doCreateMonster(monsters[math.random(#monsters)], pos)
   doPlayerSetStorageValue(x, storage, name.."'s "..getCreatureName(x)..". "..(sex == 0 and "She" or "He").." was a "..voc)
   setCreatureMaxHealth(x, health)
   doCreatureAddHealth(x, health - getCreatureHealth(x))
   doSendMagicEffect(pos, CONST_ME_SMALLCLOUDS)
   doCreatureChangeOutfit(x, outfit)
      
   return false
end

function onLook(cid, thing, position, lookDistance)
   
   if (isMonster(thing.uid) and getPlayerStorageValue(thing.uid, storage)  ~= -1) then
      doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You see "..getPlayerStorageValue(thing.uid, storage))
              return false
   end
   
   return true
end

