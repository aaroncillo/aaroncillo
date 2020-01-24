--Shrine Script, 100% Made by mfk0sjk

function onUse(cid, item, frompos, item2, topos)    local switchUniqueID = 10005  
-- uniqueID of switch. 

--Items that can be enchanted   
local weps = 
{
spike = 2383,
relic = 7383,
mystic = 7384,
blacksteel = 7406,
dragon = 7402,
clerrical = 2423,
crystal = 2445,
cranial = 7415,
orcish = 7392,
warhammer = 2391,
baraxe = 2429,
knight = 2430,
heroic = 7389,
head = 7380,
war = 2454,
arr = 2544,
}
--Items to enchant a weapoan

local fus =
{
energy = 8303,
fire = 8299,
earth = 8298,
ice = 8302,
}
 local switchID = 1945 -- switch 1 id.   
 local switch2ID = 1946 -- switch 2 id.   
 local itempos = {x=481, y=119,  z=7, stackpos=255}
 local itempos1 = {x=483, y=119,  z=7, stackpos=255}
 local itempos2 = {x=482, y=120,  z=7, stackpos=255}
 local getitem = getThingfromPos(itempos) 
 local getitem1 = getThingfromPos(itempos1)
 local getitem2 = getThingfromPos(itempos2)     

--Spike sword enchant Script
 --Earth
 
 if item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.spike then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7854, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.spike then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7763, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.spike then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7744, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.spike then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7869, 100, itempos2)
 
 
 
  --Relic sword enchant Script
 --Earth
 
 elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.relic then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7855, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.relic then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7764, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.relic then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7745, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.relic then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7870, 100, itempos2)
 
 
 
 
 
  --Mystic sword enchant Script
 --Earth
 
 elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.mystic then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7856, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.mystic then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7765, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.mystic then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7746, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.mystic then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7871, 100, itempos2)
 
 
 
   --Blacksteel sword enchant Script
 --Earth
 
 elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.blacksteel then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7857, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.blacksteel then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7766, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.blacksteel then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7747, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.blacksteel then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7872, 100, itempos2)
 
 
 
 
 
    --Dragon Slayer enchant Script
 --Earth
 
 elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.dragon then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7858, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.dragon then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7767, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.dragon then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7748, 100, itempos2)
 
 
 
 
 
 
     --Clercial mace enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.clerrical then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7864, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.clerrical then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7773, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.clerrical then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7754, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.clerrical then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7879, 100, itempos2)
 
 
 
     --Crystal mace enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.crystal then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7865, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.crystal then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7774, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.crystal then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7755, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.crystal then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7880, 100, itempos2)
 
 
 
      --Cranial mace enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.cranial then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7866, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.cranial then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7775, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.cranial then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7756, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.cranial then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7881, 100, itempos2)
 
 
 
       --Orcish mace enchant Script
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.orcish then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7776, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.orcish then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7757, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.orcish then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7882, 100, itempos2)
 
 
       --War Hammer enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.warhammer then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7868, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.warhammer then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7777, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.warhammer then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7758, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.warhammer then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7883, 100, itempos2)
 
 
 
 
  
       --Babaian axe enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.baraxe then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7859, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.baraxe then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7768, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.baraxe then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7749, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.baraxe then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7874, 100, itempos2)
 
 
 
        --knight axe enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.knight then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7860, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.knight then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7769, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.knight then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7750, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.knight then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7875, 100, itempos2)
 
 
  
        --Heroic axe enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.heroic then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7861, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.heroic then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7770, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.heroic then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7751, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.heroic then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7876, 100, itempos2)
 
   
        --Headchopper enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.head then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7862, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.head then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7771, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.head then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7752, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.head then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7877, 100, itempos2)
 
 
  --Headchopper enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.war then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7863, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.war then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7753, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.war then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,1)  
 doCreateItem(7878, 100, itempos2)
 
 
  
 
  --Arrow enchant Script
 --Earth
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.earth and getitem1.itemid == weps.arr then          
 doSendMagicEffect(itempos, 54)
 doSendMagicEffect(itempos1 , 54)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,100)  
 doCreateItem(7850, 100, itempos2)
 --Fire
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.ice and getitem1.itemid == weps.arr then          
 doSendMagicEffect(itempos, 52)
 doSendMagicEffect(itempos1 ,52)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,100)  
 doCreateItem(7839, 100, itempos2)
 --Energy
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.fire and getitem1.itemid == weps.arr then          
 doSendMagicEffect(itempos, 36)
 doSendMagicEffect(itempos1 ,36)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,100)  
 doCreateItem(7840, 100, itempos2)
 --Ice
  elseif item.uid == 20159 and item.itemid == switchID and getitem.itemid == fus.energy and getitem1.itemid == weps.arr then          
 doSendMagicEffect(itempos, 37)
 doSendMagicEffect(itempos1 ,37)  
 doSendMagicEffect(itempos2 , 29)
 doRemoveItem(getitem.uid,1)
 doRemoveItem(getitem1.uid,100)  
 doCreateItem(7838, 100, itempos2)
 
 elseif item.uid == 20159 and item.itemid == switch2ID then   
 doTransformItem(item.uid,item.itemid-1)  
 else         
 doPlayerSendCancel(cid,"You need to put in a item to enchant youre item!")
 end   
 return 1
 end