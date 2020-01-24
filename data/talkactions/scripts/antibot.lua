local storages = {first_num = 20123, second_num = 20124, result = 20125, answer = 20126, prisioned = 20127, prisiontime = 20128, wrong_answers = 20129}
-- end local variables

function onSay(cid, words, param)
local first_num, second_num, result, answer, prisioned = getPlayerStorageValue(cid,storages.first_num), getPlayerStorageValue(cid,storages.second_num), getPlayerStorageValue(cid,storages.second_num), getPlayerStorageValue(cid,storages.result), getPlayerStorageValue(cid,storages.answer), getPlayerStorageValue(cid,storages.prisioned)


param = tonumber(param)

if (prisioned ~= 1 and answer ~= 1 and result > 0) then
if (param == result) then
if (getPlayerStorageValue(cid,storages.wrong_answers) <= 3) then
doPlayerSendTextMessage(cid, 20, "Yunie Anti Bot System: Right answer, thank you for answering.")
setPlayerStorageValue(cid,storages.wrong_answers,0)
setPlayerStorageValue(cid,storages.answer,1)
setPlayerStorageValue(cid,storages.first_num,0)
setPlayerStorageValue(cid,storages.second_num,0)
setPlayerStorageValue(cid,storages.result,0)
else
doPlayerSendTextMessage(cid, 20, "Yunie Anti Bot System: Right answer, but you had already answered more than 3 wrong times.")
end
else
doPlayerSendTextMessage(cid, 20, "Yunie Anti Bot System: Wrong answer!")
wrong_answers_now = getPlayerStorageValue(cid,storages.wrong_answers)
setPlayerStorageValue(cid,storages.wrong_answers,wrong_answers_now+1)
doPlayerSendTextMessage(cid, 20, "Yunie Anti Bot System: You had already got ".. getPlayerStorageValue(cid,storages.wrong_answers).." wrong answers! The limit is 3.")
end
end
end