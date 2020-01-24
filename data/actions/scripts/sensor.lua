local ACTIONID_EMPTY = 5000 -- Actionid livre para utilização.
local STORAGE_EMPTY = 5000 -- Storage para o jogador livre para utilização.
local PLANTING_DELAY = 5 -- Tempo de duração para instalar o sensor no solo em segundos.
local SENSOR_DELAY_MINUTES = 5 -- Minutos de duração do sensor.
local SENSOR_DELAY_SECONDS = 0 -- Segundos de duração do sensor (Lembre-se Minutos:Segundos).

local function doSendAlert(cid,creature)
   if isCreature(creature) == TRUE then
          if isPlayer(creature) == TRUE then
          doPlayerSendTextMessage(creature,20,"You was localized by "..getPlayerName(cid)..".")
          end   
   doSendMagicEffect(getThingPos(creature),13)    
          if getPlayerStorageValue(cid,STORAGE_EMPTY) == 2 then
          setPlayerStorageValue(cid,STORAGE_EMPTY,1)
          end
   end
end   

local function doVerifySensor(cid,pos)
   if isPlayer(cid) == TRUE then
   creature = getThingfromPos(pos)
          if isPlayer(creature.uid) == TRUE and getPlayerStorageValue(cid,STORAGE_EMPTY) == 1 then
          setPlayerStorageValue(cid,STORAGE_EMPTY,2)
          doPlayerSendTextMessage(cid,22,"Sensor has localized "..getPlayerName(creature.uid).." a "..getPlayerVocationName(creature.uid).." Level "..getPlayerLevel(creature.uid)..".")
          addEvent(doSendAlert,2000,cid,creature.uid)
          elseif isCreature(creature.uid) == TRUE and getPlayerStorageValue(cid,STORAGE_EMPTY) == 1 then
          setPlayerStorageValue(cid,STORAGE_EMPTY,2)
          doPlayerSendTextMessage(cid,22,"Sensor has localized a "..getCreatureName(creature.uid)..".")
          addEvent(doSendAlert,2000,cid,creature.uid)
          end
          if getTileThingByPos({x=pos.x,y=pos.y,z=pos.z,stackpos=0}).actionid == ACTIONID_EMPTY then
          addEvent(doVerifySensor,100,cid,pos)    
          end
   end
end

local function doSendDuration(cid,pos,minutes,seconds)
   if isPlayer(cid) == TRUE then
          if seconds > 0 then
                 if minutes < 10 and seconds < 10 then
                 doPlayerSendTextMessage(cid,25,"Duration of Sensor: 0"..minutes..":0"..seconds.." minutes.")
                 elseif minutes < 10 then
                 doPlayerSendTextMessage(cid,25,"Duration of Sensor: 0"..minutes..":"..seconds.." minutes.")
                 else
                 doPlayerSendTextMessage(cid,25,"Duration of Sensor: "..minutes..":"..seconds.." minutes.")
                 end
          seconds = (seconds-1)
          addEvent(doSendDuration,1000,cid,pos,minutes,seconds)
          else
                 if minutes > 0 then
                 doPlayerSendTextMessage(cid,25,"Duration of Sensor: "..minutes..":0"..seconds.." minutes.")
                 minutes = (minutes-1)
                 seconds = 59
                 addEvent(doSendDuration,1000,cid,pos,minutes,seconds)
                 else
                 doPlayerSendTextMessage(cid,25,"Duration of sensor has finished.")
                 doSendMagicEffect(pos,4)
                 doSetItemActionId(getThingfromPos({x=pos.x,y=pos.y,z=pos.z,stackpos=0}).uid,100)
                 setPlayerStorageValue(cid,STORAGE_EMPTY,0)
                 end
          end
   else
   doSetItemActionId(getThingfromPos({x=pos.x,y=pos.y,z=pos.z,stackpos=0}).uid,100)
   end
end

local function doAddSensor(cid,time,tilepos)
   if time > 0 then
   doPlayerSendTextMessage(cid,24,"Planting sensor in "..time.." seconds.")
   time = (time-1)
   addEvent(doAddSensor,1000,cid,time)
   else
   pos = getThingPos(cid)
   doPlayerSendTextMessage(cid,24,"Sensor was successful planted.")
   doSendMagicEffect(pos,3)
   doPlayerSetNoMove(cid,0)
   doSendDuration(cid,pos,SENSOR_DELAY_MINUTES,SENSOR_DELAY_SECONDS)
   addEvent(doVerifySensor,3000,cid,pos)
   end
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
local pos = getThingPos(cid)
   if getTileThingByPos({x=pos.x,y=pos.y,z=pos.z,stackpos=0}).actionid <= 100 and getPlayerStorageValue(cid,STORAGE_EMPTY) < 1 then
   doSetItemActionId(getThingfromPos({x=pos.x,y=pos.y,z=pos.z,stackpos=0}).uid,ACTIONID_EMPTY)
   setPlayerStorageValue(cid,STORAGE_EMPTY,1)
   addEvent(doAddSensor,0,cid,PLANTING_DELAY,tilepos)   
   doPlayerRemoveItem(cid,5809,1)
   doPlayerSetNoMove(cid,1)
   return TRUE
   else
   return FALSE
   end    
end