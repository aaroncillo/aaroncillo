function onSay(cid, words, param)
         shake = math.random(0, 4)
         if shake == 4 then
         chock = getPlayerLookDir(cid)
         chicken = getPlayerPosition(cid)
         chocken = getPlayerPosition(cid)
         chak = getPlayerPosition(cid)
         chek = getPlayerPosition(cid)
         chicken.y = (chicken.y-1)
         chocken.x = (chocken.x+1)
         chak.y = (chak.y+1)
         chek.x = (chek.x-1)
         if chock == 0 then
         splash = doCreateItem(2025, 6, chicken)
         elseif chock == 1 then
         splash = doCreateItem(2025, 6, chocken)
         elseif chock == 2 then
         splash = doCreateItem(2025, 6, chak)
         elseif chock == 3 then
         splash = doCreateItem(2025, 6, chek)
         end
         if getPlayerSex(cid) == 1 then
         doSendAnimatedText(getPlayerPosition(cid), "Mea paja!!", TEXTCOLOR_RED)
         else
         doSendAnimatedText(getPlayerPosition(cid), "Que ricooo!!", TEXTCOLOR_RED)
         end
         doDecayItem(splash)
         else
         if getPlayerSex(cid) == 1 then
         doSendAnimatedText(getPlayerPosition(cid), "Que ricoo!", TEXTCOLOR_RED)
         else
         doSendAnimatedText(getPlayerPosition(cid), "Oooh!", TEXTCOLOR_RED)
         end
         doSendAnimatedText(getPlayerPosition(cid), "Sii CTM!", TEXTCOLOR_RED)
         return 0
         end
         return 0
         end