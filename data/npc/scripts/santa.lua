random_items = { 
{5,2112,1}, --  0.5% to get teddy bear 
{20,6512,1}, -- 2% to get santa doll 
{40,2114,1}, -- 4% to get piggy bank 
{80,8880,1}, -- 8% to get razgos sec armor
{80,2141,1}, -- 8% to get holy falcon 
{80,7633,5}, -- 8% to get vip stone 
{400,2674,15}, -- 40% to get 15 red apples 
{450,2675,10}, -- 45% to get 10 oranges 
{1000,2687,8} -- 100% to get 8 cookies 
} 
PRESENT_STORAGE = 54163 -- storage ID 



local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 


function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end 
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end 
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end 
function onThink()                             npcHandler:onThink()                         end 

function santaNPC(cid, message, keywords, parameters, node) 
    if(not npcHandler:isFocused(cid)) then 
        return false 
    end 
    if (parameters.present == true) then 
        if (getPlayerStorageValue(cid, PRESENT_STORAGE) < 1) then 
            local item = {} 
            local reward = 0 
            local count = "" 
            for i = 1, #random_items do 
                item = random_items[i] 
                if (math.random(0,999) < item[1]) then 
                    reward = item[2] 
                    subType = item[3] 
                    if subType > 1 then 
                        count = subType .. " " 
                    end 
                    break 
                end 
            end 
            doPlayerAddItem(cid, reward, subType) 
            setPlayerStorageValue(cid, PRESENT_STORAGE, 1) 
            npcHandler:say('jo jo jo jo! Eres bueno como un enano en este año! y obtubiste ' .. count .. getItemNameById(reward) .. ' para ti.', cid) 
        else 
            npcHandler:say('ya te di un regalo ya awueonao te crei vivo ctm!.', cid) 
        end 
    else 
        npcHandler:say('Regresa cuando empieces a comportarte bien ctm!.', cid) 
    end 
    npcHandler:resetNpc() 
    return true 
end 
  
npcHandler:setMessage(MESSAGE_GREET, "feliz navidad ctm |PLAYERNAME|. yo soy el Viejo pajero. Tengo regalos para los weones que se portan bien.") 

local noNode = KeywordNode:new({'no'}, santaNPC, {present = false}) 
local yesNode = KeywordNode:new({'yes'}, santaNPC, {present = true}) 

local node = keywordHandler:addKeyword({'pre'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'te portaste bien este año wn?'}) 
    node:addChildKeywordNode(yesNode) 
    node:addChildKeywordNode(noNode) 
npcHandler:addModule(FocusModule:new())  