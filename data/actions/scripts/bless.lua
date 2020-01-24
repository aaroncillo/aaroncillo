function onUse(cid, item) 
first = "" 
second = "" 
third = "" 
fourth = "" 
fifth = "" 
 
if getPlayerBlessing(cid, 1) then 
first = "First Bless" 
end 
if getPlayerBlessing(cid, 2) then 
second = "Second Bless" 
end 
if getPlayerBlessing(cid, 3) then 
third = "Third Bless" 
end 
if getPlayerBlessing(cid, 4) then 
fourth = "Fourth Bless" 
end 
if getPlayerBlessing(cid, 5) then 
fifth = "Fifth Bless" 
end 
 
doPlayerPopupFYI(cid,"#Blessing Informations#\n\nMinhas Blessings:\n\n*"..first.."\n*"..second.."\n*"..third.."\n*"..fourth.."\n*"..fifth.."") 
return TRUE 
end