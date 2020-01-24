local config = {
velocidade = 1000,
Efeito_normal = 47,
Efeito_block = 31,
BombEfect = 1,
Allow_funnyTalks = TRUE,
funnyTalks = {"lol","Hello","o0"},
Allow_Bombs = TRUE,
exclusoes = {6500,9999,2092},
allowFloorChange = TRUE,
stairs_up_ids = {1386,1385,1389,3687},
stairs_down_ids = {459,4834,3219},
sqms_de_distancia_do_centro = 5,
}
function isWalkable2(pos)
 local wall0 = getThingfromPos({x=pos.x, y=pos.y, z=pos.z, 

stackpos=0})
 local wall1 = getThingfromPos({x=pos.x, y=pos.y, z=pos.z, 

stackpos=1})
 local wall2 = getThingfromPos({x=pos.x, y=pos.y, z=pos.z, 

stackpos=2})
 local creature = getThingfromPos({x=pos.x, y=pos.y, 

z=pos.z, stackpos=255})
 if isCreature(creature.uid) == FALSE then
 if wall0.uid ~= 0 and hasProperty(wall0.uid, 3) == FALSE 

and hasProperty(wall0.uid, 7) == FALSE then
  if wall1.uid == 0 or (hasProperty(wall1.uid, 3) == FALSE 

and hasProperty(wall1.uid, 7) == FALSE) then
   if wall2.uid == 0 or (hasProperty(wall2.uid, 3) == FALSE 

and hasProperty(wall2.uid, 7) == FALSE) then
     return TRUE
    end
   end
  end
 end
 return FALSE
end
local function doCleanArea(pos, exclusaos,config)
      pos1 = {x=pos.x-1,y=pos.y-1,z=pos.z}
      pos2 = {x=pos.x+1,y=pos.y+1,z=pos.z}
      for x = 0, math.abs(pos1.x-pos2.x) do
          for y = 0, math.abs(pos1.y-pos2.y) do
              pos3 = {x = pos1.x+x, y = pos1.y+y, z = pos1.z, 

stackpos = 255}
              local coisa = getThingfromPos(pos3)
              pos3 = {x = pos1.x+x, y = pos1.y+y, z = pos1.z, 

stackpos = 0}
              local coisa2 = getThingfromPos(pos3)
              doSendMagicEffect(pos3,config.BombEfect)
              if coisa.itemid ~= 0 then
                 if isInArray(exclusaos, coisa.itemid) == FALSE and 

getTileHouseInfo(pos3) == 0 and coisa2.actionid ~= 500 and 

isWalkable2(pos3) == TRUE then
                    doRemoveItem(coisa.uid, -1)
                    doSendAnimatedText(pos3,"Deleted", 

math.random(1,255))
                 end
              end
          end
      end
end
--- Thanks jovial for tihs function :P
--- 

Networks 
function isInArea(center, pos2,radius)
 if ((math.abs(center.x - pos2.x) <= radius) and 

(math.abs(center.y - pos2.y) <= radius)) then
  return TRUE
 else
  return FALSE
 end
end
local function andar(topos,cento,config)

      if math.random(1,12) > 8 and config.Allow_funnyTalks == 

TRUE then
         

doSendAnimatedText(topos,config.funnyTalks[math.random(

1,#config.funnyTalks)],math.random(1,255))
      end
      
      local maspos = {x = topos.x, y = topos.y ,z = 

topos.z,stackpos=255}
      local oldpos = topos
      local changed = FALSE
      local getdir = math.random(0,3)
      maspos = getPosByDir(maspos, getdir)
      Items = getThingfromPos(maspos)
      items2 = getThingfromPos({x = maspos.x, y = maspos.y 

,z = maspos.z,stackpos=1})
      Itempost = maspos
      Itempost.stackpos = 0
      gnr = getThingfromPos(Itempost)
      ----                                                                                               

                  --  or isInArea(cento, 

topos,config.sqms_de_distancia_do_centro,config)
 
      val = getThingfromPos(Itempost)
      if val.actionid == 500 or getTileHouseInfo(maspos) ~= 0 

or isWalkable2(maspos) == FALSE or isCreature(Items.uid) 

== TRUE or isInArea(cento, 

maspos,config.sqms_de_distancia_do_centro) == FALSE 

then
         if config.allowFloorChange == TRUE then
                 items2 = getThingfromPos({x = maspos.x, y = 

maspos.y ,z = maspos.z,stackpos=1})
                 items3 = getThingfromPos({x = maspos.x, y = 

maspos.y ,z = maspos.z,stackpos=0})
                 if isInArray(config.stairs_up_ids, items2.itemid) == 

TRUE then
                    doSendAnimatedText(maspos,"UP!", 

math.random(1,255))
                    maspos.z = maspos.z-1
                    local changed = TRUE
                 elseif isInArray(config.stairs_down_ids, 

items3.itemid) == TRUE then
                    doSendAnimatedText(maspos,"DOWN!", 

math.random(1,255))
                    maspos.z = maspos.z+1
                    local changed = TRUE
                 end        
         end
         if changed == FALSE then        
         doSendAnimatedText(maspos,"Block", 

math.random(1,255))
         end
         if getdir == 1 then
         getdir = 3
         elseif getdir == 3 then
         getdir = 1
         elseif getdir == 0 then
         getdir = 2
         elseif getdir == 2 then
         getdir = 0
         end
         topos = getPosByDir(maspos, getdir)
         doSendMagicEffect(maspos,config.Efeito_block)
      else
          if Items.itemid ~= 0 then
             if isInArray(config.exclusoes, Items.itemid) == FALSE 

then
                doSendMagicEffect(maspos,config.Efeito_normal)
                local cor = math.random(1,255)
                addEvent(doSendAnimatedText, 

200,maspos,"Deleted",cor)
                doRemoveItem(Items.uid, -1)
                topos = maspos
             else
                topos = maspos
                doSendAnimatedText(maspos,"Ignore", 

math.random(1,255)) 
             end
          else
              if config.allowFloorChange == TRUE then
                 items2 = getThingfromPos({x = maspos.x, y = 

maspos.y ,z = maspos.z,stackpos=1})
                 items3 = getThingfromPos({x = maspos.x, y = 

maspos.y ,z = maspos.z,stackpos=0})
                 if isInArray(config.stairs_up_ids, items2.itemid) == 

TRUE then
                    doSendAnimatedText(maspos,"UP!", 

math.random(1,255))
                    maspos.z = maspos.z-1
                    local changed = TRUE
                 elseif isInArray(config.stairs_down_ids, 

items3.itemid) == TRUE then
                    doSendAnimatedText(maspos,"DOWN!", 

math.random(1,255))
                    maspos.z = maspos.z+1
                    local changed = TRUE
                 end        
              end
              topos = maspos
          end
      end
      if math.random(1,2) == 1 and config.Allow_Bombs == 

TRUE then
         doCleanArea(topos, config.exclusoes,config)
      end
      doSendMagicEffect(maspos,config.Efeito_normal)
      addEvent(andar,  config.velocidade, topos,cento,config)
end
function onUse(cid, item, frompos, item2, topos)
         if getPlayerGroupId(cid) > 3 then
            local cento = topos
            addEvent(andar,  config.velocidade, 

topos,cento,config)
            return true
         else
             return false
         end
end
