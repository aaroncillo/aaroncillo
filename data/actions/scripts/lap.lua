local breakWithItem = 7428 -- Item ktorego uzywa sie do lapania monsterka
local setActionId = 1000 -- Action id na ktore sie zmienia przy uzyciu Itemka
local breakChanse = 500 -- Szansa na zlapanie. Dla przykladu: jezeli Szansa = 500 Wygloda to tak ((AktualneHP/monsterMaxHp)*monsterMaxHp)/500).
local playerLevel = 50 -- Level potrzebny do lapania
local monsterStatus = "convinced" -- Nie zmieniac
local avalibleMonsters = {"Butterfly", "Dragon", "Rat", "Demon"} -- Monsterki jakie mozna lapac

local breakEffect = CONST_ME_POFF -- Efekt Przy zniszczeniu
local usedEffect = CONST_ME_POFF -- Efekt przy uzywaniu
local successEffect = CONST_ME_MAGIC_GREEN -- Efekt przy udanym zlapaniu Monsterka

local emptyDesc = "Jest Pusty." --Wiadomosc wysylana do gracza po nieudanym uzyciu itemka

local messageColor = TALKTYPE_ORANGE_1
local successMessages = {"Zlapales Monstera!!", "Gratulacje!!"} -- Wiadomosc kiedy uda sie zlapac.
local failureMessages = {"Nie udalo ci sie zlapac Monsterka", "Uciekl."} -- Wiadomosc przy nie udanej prubie lapania.
local usedMessages = {"Wlasnie uzywasz tego itemu", "Uzywasz tego."} -- Wiadomosc wysylana przy uzywaniu itemka.
local abortMessages = {"Nie zlapales Monsterka.", "Jest za silny"} -- Wysyla ta wiadomosc jezeli monsterka niema na liscie.
local notOnGroundMessage = {"Poloz ten item na ziemi.", "Musisz wywalic to z BP"} -- Wiadomosc kiedy item nie jest na ziemi
local inOnInvalidGround = {"Item uzywany na polu PZ", "Nie mozesz tu wystawic tego Monsterka"} -- Wiadomosc wysylana przy probie wyjecia monsterka w PZ TOOL

function onUse(cid, item, fromPosition, itemEx, toPosition)
    if item.itemid == breakWithItem then
        if itemEx.actionid == setActionId then
            for i = 1, #avalibleMonsters do
                desc = getItemDescriptions(itemEx.uid).special
                local fromS, toS = desc:find(avalibleMonsters[i])
                if toS ~= nil then
                    if toPosition.x ~= CONTAINER_POSITION then
                        if getTilePzInfo(getThingPos(itemEx.uid)) ~= TRUE then
                            monsPar = doCreateMonster(desc:sub(fromS, toS), toPosition)
                            if monsterStatus == "convinced" then
                                doConvinceCreature(cid, monsPar)
                            end
                            doSetItemActionId(itemEx.uid, nil)
                            doSetItemSpecialDescription(itemEx.uid, emptyDesc)
                        else
                            sendMessage(cid, inOnInvalidGround, messageColor)
                            doSendMagicEffect(getCreaturePosition(cid), breakEffect)
                        end
                    else
                        sendMessage(cid, notOnGroundMessage, messageColor)
                        doSendMagicEffect(getCreaturePosition(cid), breakEffect)
                    end
                    break
                end
            end
            return TRUE
        end
    end
    if item.actionid > 100 then
        if item.actionid ~= setActionId then
            doSetItemActionId(item.uid, setActionId)
        end
        sendMessage(cid, usedMessages, messageColor)
        doSendMagicEffect(getCreaturePosition(cid), usedEffect)
        return TRUE
    end
    if isMonster(itemEx.uid) == TRUE then
        monsterFullHp, monsterHp = getCreatureMaxHealth(itemEx.uid), getCreatureHealth(itemEx.uid)
        formula = (monsterHp/monsterFullHp)*monsterFullHp
        chanse, bchanse = math.random(1, formula), math.floor(formula)
        if (chanse+breakChanse) >= bchanse then
            s = 0
            for i = 1, #avalibleMonsters do
                if getCreatureName(itemEx.uid) ~= avalibleMonsters[i] then
                    s = s + 1
                end
            end
            if s == #avalibleMonsters then
                sendMessage(cid, abortMessages, messageColor)
                doSendMagicEffect(getCreaturePosition(cid), breakEffect)
                return TRUE
            end
            doSetItemSpecialDescription(item.uid, "Jest tam:".. getCreatureName(itemEx.uid) ..".")
            doSetItemActionId(item.uid, setActionId)
            doRemoveCreature(itemEx.uid)
            sendMessage(cid, successMessages, messageColor)
            doSendMagicEffect(toPosition, successEffect)
        else
            doRemoveItem(item.uid, 1)
            doSendMagicEffect(getCreaturePosition(cid), breakEffect)
            sendMessage(cid, failureMessages, messageColor)
        end
    else
        doSendMagicEffect(getCreaturePosition(cid), breakEffect)
    end
return TRUE
end

function sendMessage(cid, table, color)
    if table[1] == nil then
        return nil
    end
    messageId = math.random(1, #table)
    doCreatureSay(cid, table[messageId], color)
end