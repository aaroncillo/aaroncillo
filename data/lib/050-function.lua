Rain = {ignoreIds = {4526}}
 
function Rain:new()
    local obj = {}
    setmetatable(obj, self)
    self.__index = self
	return obj
end
function Rain:getPositionInArea(fromPos, toPos)
	self.positions = {}
	for Y = fromPos.y, toPos.y do
		for X = fromPos.x, toPos.x do
			if (getTileThingByPos({x=X, y=Y, z=7, stackpos=0}).itemid ~= 0) then
				if not (string.match(string.lower(getItemNameById(getTileThingByPos({x=X, y=Y, z=7, stackpos=0}).itemid)), "water")) then
					table.insert(self.positions, {x=X, y=Y, z=Z})
				end
			end
		end
	end
	return true
end
 
function Rain:doRain(position, disteffect, effect)
	if (self.duraction ~= self.executed) then
		local chance = self.chance or 100
		if (math.random(0, 1000) <= chance) then
			for Z = 0, 7 do
				if (getTileThingByPos(({x = position.x, y = position.y, z = Z})).itemid ~= 0) then
					doSendDistanceShoot({x = position.x - 7, y = position.y - 5, z = Z}, {x = position.x, y = position.y, z = Z}, disteffect)
					doSendMagicEffect({x = position.x, y = position.y, z = Z}, effect)
					if (self.createItem) then
						if (math.random(0, 1000) <= self.createItem.chance) then
							if (isInArray(self.ignoreIds, getTileThingByPos({x=X, y=Y, z=Z, stackpos=0}).itemid) == FALSE) then
								local item = doCreateItem(self.createItem.item.itemid, self.createItem.item.type, {x=position.x, y=position.y, z=Z})
								doDecayItem(item)
							end
						end
					end
					break
				end
			end
		end
		return true
	else
		return false
	end
end
 
function Rain:start(positions, effects, duraction, delay, var)
	self:getPositionInArea(positions.fromPos, positions.toPos)
	if not (self.positions[1]) then
		return false
	end
	self.delay = delay
	self.var = var or self
	self.effects = effects
	self.duraction = duraction
	self.executed = 0
	addEvent(doCallback, self.delay, {var=self.var})
	return true
end
 
function doCallback(p)
	for _, v in pairs(p.var.positions) do
		if not (p.var:doRain(v, p.var.effects.disteffect, p.var.effects.effect)) then
			return true
		end
	end
	addEvent(doCallback, p.var.delay, {var=p.var})
	p.var.executed = p.var.executed+1
end


--[[
Script by drackter
]]
SNAKE = {
_VERSION="1.0 by drackter",
---Snake config
itemid=1739,
freeglobalstorage=28103,
itemFood=6394,
controlpos={x=607,y=14,z=7},
exitpos = {x=615,y=14,z=7},
centerpos={x=607,y=14,z=7},
timer = function(cid,n,pos_,time)
local pos_ = pos_ or {{SNAKE.centerpos}}
setGlobalStorageValue(SNAKE.freeglobalstorage,cid)
if not isPlayer(cid) then
SNAKE.clean()
return
end
for i,pos in pairs(pos_) do
SNAKE.find_and_delete(pos[1])
if i == 1 then
pos[2] = SNAKE.copypos(pos[1])
pos[1] = getPosByDir({x=pos[1].x,y=pos[1].y,z=pos[1].z,stackpos=255},getCreatureLookDir(cid))
else
pos[2] = SNAKE.copypos(pos[1])
pos[1] = pos_[i-1][2]
end
local ret,p,walk = SNAKE.check(pos[1])
if ret == 1 or ret == 3 then
addEvent(doTeleportThing,1000,cid,SNAKE.exitpos)
addEvent(doCreatureSay,1100,cid,'Points '..(#pos_-1)..'.')
SNAKE.clean()
setGlobalStorageValue(SNAKE.freeglobalstorage,0)
return
end
if ret == 2 then
doRemoveItem(p.uid,-1)
if p.itemid == SNAKE.itemFood then
pos_[#pos_+1] = {pos[2],pos[2]}
for i=1,5 do
addEvent(doSendMagicEffect,100*i,pos[1],29)
end
SNAKE.generateFood()
end
end
doCreateItem(SNAKE.itemid,1,pos[1])

end
local plpos = getCreaturePosition(cid)
local generated = {}
for i=0,3 do
generated[i] = getPosByDir({x=SNAKE.controlpos.x,y=SNAKE.controlpos.y,z=SNAKE.controlpos.z},i)
end
for i,pos in pairs(generated) do
if SNAKE.samepos(plpos,pos) then

doTeleportThing(cid,SNAKE.controlpos,false)
end
addEvent(doSendMagicEffect,100,pos,56,cid)
end
addEvent(SNAKE.timer,time,cid,n,pos_,time)
end,
copypos = function(p)
return {x=p.x,y=p.y,z=p.z,stackpos=p.stackpos}
end,
samepos = function(p1,p2)
if p1.x == p2.x and p2.y == p2.y then
return true
end
return false
end,
generateFood = function()
local pp = {x=SNAKE.centerpos.x+math.random(-6,6),y=SNAKE.centerpos.y+math.random(-4,4),z=SNAKE.centerpos.z}
for i=1,5 do
addEvent(doSendMagicEffect,100*i,pp,30)
end
doCreateItem(SNAKE.itemFood,1,pp)
end,
clean = function()
for y=-4,4 do
for x=-6,6 do
local pp = {x=SNAKE.centerpos.x+x,y=SNAKE.centerpos.y+y,z=SNAKE.centerpos.z}
for i=250,255 do
pp.stackpos = i
local p = getThingFromPos(pp)
if p.itemid ~= 0 then
doRemoveItem(p.uid,-1)
doSendMagicEffect(pp,15)
end
end
end
end
end,
check = function(pos)
for i=1,10 do
pos.stackpos = i
local p = getThingFromPos(pos)
if p.itemid == SNAKE.itemid then
return 1,p,true
elseif not SNAKE.isWalkable(pos) then
return 3,p,false
elseif p.itemid ~= 0 then
return 2,p
end
end
return false
end,
find_and_delete = function(pos)
for i=0,255 do
pos.stackpos = 255-i
local p = getThingFromPos(pos)
if p.itemid == SNAKE.itemid then
return doRemoveItem(p.uid,1)
end
end
end,
isWalkable = function(pos, creature, proj, pz)-- by Nord
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
if getTopCreature(pos).uid > 0 and creature then return false end
if getTileInfo(pos).protection and pz then return false, true end
local n = not proj and 3 or 2
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos(pos)
if tile.itemid ~= 0 and not isCreature(tile.uid) then
if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
return false
end
end
end
return true
end,
}

function doPlayerGiveItem(cid, itemid, amount, subType)
	local item = 0
	if(isItemStackable(itemid)) then
		item = doCreateItemEx(itemid, amount)
		if(doPlayerAddItemEx(cid, item, true) ~= RETURNVALUE_NOERROR) then
			return false
		end
	else
		for i = 1, amount do
			item = doCreateItemEx(itemid, subType)
			if(doPlayerAddItemEx(cid, item, true) ~= RETURNVALUE_NOERROR) then
				return false
			end
		end
	end

	return true
end

function doPlayerGiveItemContainer(cid, containerid, itemid, amount, subType)
	for i = 1, amount do
		local container = doCreateItemEx(containerid, 1)
		for x = 1, getContainerCapById(containerid) do
			doAddContainerItem(container, itemid, subType)
		end

		if(doPlayerAddItemEx(cid, container, true) ~= RETURNVALUE_NOERROR) then
			return false
		end
	end

	return true
end

function doPlayerTakeItem(cid, itemid, amount)
	return getPlayerItemCount(cid, itemid) >= amount and doPlayerRemoveItem(cid, itemid, amount)
end

function doPlayerBuyItem(cid, itemid, count, cost, charges)
	return doPlayerRemoveMoney(cid, cost) and doPlayerGiveItem(cid, itemid, count, charges)
end

function doPlayerBuyItemContainer(cid, containerid, itemid, count, cost, charges)
	return doPlayerRemoveMoney(cid, cost) and doPlayerGiveItemContainer(cid, containerid, itemid, count, charges)
end

function doPlayerSellItem(cid, itemid, count, cost)
	if(not doPlayerTakeItem(cid, itemid, count)) then
		return false
	end

	if(not doPlayerAddMoney(cid, cost)) then
		error('[doPlayerSellItem] Could not add money to: ' .. getPlayerName(cid) .. ' (' .. cost .. 'gp).')
	end

	return true
end

function doPlayerWithdrawMoney(cid, amount)
	if(not getBooleanFromString(getConfigInfo('bankSystem'))) then
		return false
	end

	local balance = getPlayerBalance(cid)
	if(amount > balance or not doPlayerAddMoney(cid, amount)) then
		return false
	end

	doPlayerSetBalance(cid, balance - amount)
	return true
end

function doPlayerDepositMoney(cid, amount)
	if(not getBooleanFromString(getConfigInfo('bankSystem'))) then
		return false
	end

	if(not doPlayerRemoveMoney(cid, amount)) then
		return false
	end

	doPlayerSetBalance(cid, getPlayerBalance(cid) + amount)
	return true
end

function isPremium(cid)
	return (isPlayer(cid) and (getPlayerPremiumDays(cid) > 0 or getBooleanFromString(getConfigInfo('freePremium'))))
end

function getMonthDayEnding(day)
	if(day == "01" or day == "21" or day == "31") then
		return "st"
	elseif(day == "02" or day == "22") then
		return "nd"
	elseif(day == "03" or day == "23") then
		return "rd"
	end

	return "th"
end

function getMonthString(m)
	return os.date("%B", os.time{year = 1970, month = m, day = 1})
end

function getArticle(str)
	return str:find("[AaEeIiOoUuYy]") == 1 and "an" or "a"
end

function isNumber(str)
	return tonumber(str) ~= nil
end

function doPlayerAddAddons(cid, addon)
	for i = 0, table.maxn(maleOutfits) do
		doPlayerAddOutfit(cid, maleOutfits[i], addon)
	end

	for i = 0, table.maxn(femaleOutfits) do
		doPlayerAddOutfit(cid, femaleOutfits[i], addon)
	end
end

function doPlayerWithdrawAllMoney(cid)
	return doPlayerWithdrawMoney(cid, getPlayerBalance(cid))
end

function doPlayerDepositAllMoney(cid)
	return doPlayerDepositMoney(cid, getPlayerMoney(cid))
end

function doPlayerTransferAllMoneyTo(cid, target)
	return doPlayerTransferMoneyTo(cid, target, getPlayerBalance(cid))
end

function playerExists(name)
	return getPlayerGUIDByName(name) ~= 0
end

function getTibiaTime()
	local minutes = getWorldTime()
	local hours = 0
	while (minutes > 60) do
		hours = hours + 1
		minutes = minutes - 60
	end

	return {hours = hours, minutes = minutes}
end

function doWriteLogFile(file, text)
	local f = io.open(file, "a+")
	if(not f) then
		return false
	end

	f:write("[" .. os.date("%d/%m/%Y %H:%M:%S") .. "] " .. text .. "\n")
	f:close()
	return true
end

function getExperienceForLevel(lv)
	lv = lv - 1
	return ((50 * lv * lv * lv) - (150 * lv * lv) + (400 * lv)) / 3
end

function doMutePlayer(cid, time)
	local condition = createConditionObject(CONDITION_MUTED)
	setConditionParam(condition, CONDITION_PARAM_TICKS, time * 1000)
	return doAddCondition(cid, condition)
end

function getPlayerGroupName(cid)
	return getGroupInfo(getPlayerGroupId(cid)).name
end

function getPlayerVocationName(cid)
	return getVocationInfo(getPlayerVocation(cid)).name
end

function getPromotedVocation(vid)
	return getVocationInfo(vid).promotedVocation
end

function doPlayerRemovePremiumDays(cid, days)
	return doPlayerAddPremiumDays(cid, -days)
end

function getPlayerMasterPos(cid)
	return getTownTemplePosition(getPlayerTown(cid))
end

function getHouseOwner(houseId)
	return getHouseInfo(houseId).owner
end

function getHouseName(houseId)
	return getHouseInfo(houseId).name
end

function getHouseEntry(houseId)
	return getHouseInfo(houseId).entry
end

function getHouseRent(houseId)
	return getHouseInfo(houseId).rent
end

function getHousePrice(houseId)
	return getHouseInfo(houseId).price
end

function getHouseTown(houseId)
	return getHouseInfo(houseId).town
end

function getHouseTilesCount(houseId)
	return getHouseInfo(houseId).tiles
end

function getItemNameById(itemid)
	return getItemDescriptionsById(itemid).name
end

function getItemPluralNameById(itemid)
	return getItemDescriptionsById(itemid).plural
end

function getItemArticleById(itemid)
	return getItemDescriptionsById(itemid).article
end

function getItemName(uid)
	return getItemDescriptions(uid).name
end

function getItemPluralName(uid)
	return getItemDescriptions(uid).plural
end

function getItemArticle(uid)
	return getItemDescriptions(uid).article
end

function getItemText(uid)
	return getItemDescriptions(uid).text
end

function getItemSpecialDescription(uid)
	return getItemDescriptions(uid).special
end

function getItemWriter(uid)
	return getItemDescriptions(uid).writer
end

function getItemDate(uid)
	return getItemDescriptions(uid).date
end

function getTilePzInfo(pos)
	return getTileInfo(pos).protection
end

function getTileZoneInfo(pos)
	local tmp = getTileInfo(pos)
	if(tmp.pvp) then
		return 2
	end

	if(tmp.nopvp) then
		return 1
	end

	return 0
end

function doShutdown()
	return doSetGameState(GAMESTATE_SHUTDOWN)
end

function doSummonCreature(name, pos, displayError)
	local displayError, cid = displayError or true, doCreateMonster(name, pos, displayError)
	if(not cid) then
		cid = doCreateNpc(name, pos, displayError)
	end

	return cid
end

function getOnlinePlayers()
	local tmp = getPlayersOnline()
	local players = {}
	for i, cid in ipairs(tmp) do
		table.insert(players, getCreatureName(cid))
	end

	return players
end

function getPlayerByName(name)
	local cid = getCreatureByName(name)
	return isPlayer(cid) and cid or nil
end

function isPlayer(cid)
	return isCreature(cid) and cid >= AUTOID_PLAYERS and cid < AUTOID_MONSTERS
end

function isPlayerGhost(cid)
	if(not isPlayer(cid)) then
		return false
	end

	return getCreatureCondition(cid, CONDITION_GAMEMASTER, GAMEMASTER_INVISIBLE) or getPlayerFlagValue(cid, PLAYERFLAG_CANNOTBESEEN)
end

function isMonster(cid)
	return isCreature(cid) and cid >= AUTOID_MONSTERS and cid < AUTOID_NPCS
end

function isNpc(cid)
	return isCreature(cid) and cid >= AUTOID_NPCS
end

function doPlayerSetExperienceRate(cid, value)
	return doPlayerSetRate(cid, SKILL__LEVEL, value)
end

function doPlayerSetMagicRate(cid, value)
	return doPlayerSetRate(cid, SKILL__MAGLEVEL, value)
end

function doPlayerAddLevel(cid, amount, round)
	local experience, level = 0, getPlayerLevel(cid)
	if(amount > 0) then
		experience = getExperienceForLevel(level + amount) - (round and getPlayerExperience(cid) or getExperienceForLevel(level))
	else
		experience = -((round and getPlayerExperience(cid) or getExperienceForLevel(level)) - getExperienceForLevel(level + amount))
	end

	return doPlayerAddExperience(cid, experience)
end

function doPlayerAddMagLevel(cid, amount)
	for i = 1, amount do
		doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid, getPlayerMagLevel(cid, true) + 1) - getPlayerSpentMana(cid)) / getConfigInfo('rateMagic'))
	end
	return true
end  

function doPlayerAddSkill(cid, skill, amount, round)
	if(skill == SKILL__LEVEL) then
		return doPlayerAddLevel(cid, amount, round)
	elseif(skill == SKILL__MAGLEVEL) then
		return doPlayerAddMagLevel(cid, amount)
	end

	return doPlayerAddSkillTry(cid, skill, (getPlayerRequiredSkillTries(cid, skill, getPlayerSkillLevel(cid, skill) + 1) - getPlayerSkillTries(cid, skill)) / getConfigInfo('rateSkill'))
end

function getPartyLeader(cid)
	local party = getPartyMembers(cid)
	if(type(party) ~= 'table') then
		return 0
	end

	return party[1]
end

function isInParty(cid)
	return type(getPartyMembers(cid)) == 'table'
end

function isPrivateChannel(channelId)
	return channelId >= CHANNEL_PRIVATE
end

function doPlayerResetIdleTime(cid)
	return doPlayerSetIdleTime(cid, 0)
end

function doBroadcastMessage(text, class)
	local class = class or MESSAGE_STATUS_WARNING
	if(type(class) == 'string') then
		local className = MESSAGE_TYPES[class]
		if(className == nil) then
			return false
		end

		class = className
	elseif(class < MESSAGE_FIRST or class > MESSAGE_LAST) then
		return false
	end

	local players = getPlayersOnline()
	for _, pid in ipairs(players) do
		doPlayerSendTextMessage(pid, class, text)
	end

	print("> Broadcasted message: \"" .. text .. "\".")
	return true
end

function doPlayerBroadcastMessage(cid, text, class, checkFlag, ghost)
	local checkFlag, ghost, class = checkFlag or true, ghost or false, class or TALKTYPE_BROADCAST
	if(checkFlag and not getPlayerFlagValue(cid, PLAYERFLAG_CANBROADCAST)) then
		return false
	end

	if(type(class) == 'string') then
		local className = TALKTYPE_TYPES[class]
		if(className == nil) then
			return false
		end

		class = className
	elseif(class < TALKTYPE_FIRST or class > TALKTYPE_LAST) then
		return false
	end

	local players = getPlayersOnline()
	for _, pid in ipairs(players) do
		doCreatureSay(cid, text, class, ghost, pid)
	end

	print("> " .. getCreatureName(cid) .. " broadcasted message: \"" .. text .. "\".")
	return true
end

function getBooleanFromString(str)
	local str = string.lower(tostring(str))
	return (str == "yes" or str == "true" or (tonumber(str) ~= nil and tonumber(str) > 0))
end

function doCopyItem(item, attributes)
	local attributes = attributes or false

	local ret = doCreateItemEx(item.itemid, item.type)
	if(attributes) then
		if(item.actionid > 0) then
			doItemSetAttribute(ret, "aid", item.actionid)
		end
	end

	if(isContainer(item.uid)) then
		for i = (getContainerSize(item.uid) - 1), 0, -1 do
			local tmp = getContainerItem(item.uid, i)
			if(tmp.itemid > 0) then
				doAddContainerItemEx(ret, doCopyItem(tmp, true).uid)
			end
		end
	end

	return getThing(ret)
end

function doRemoveThing(uid)
	if(isCreature(uid)) then
		return doRemoveCreature(uid)
	end

	return doRemoveItem(uid)
end

function setAttackFormula(combat, type, minl, maxl, minm, maxm, min, max)
	local min, max = min or 0, max or 0
	return setCombatFormula(combat, type, -1, 0, -1, 0, minl, maxl, minm, maxm, min, max)
end

function setHealingFormula(combat, type, minl, maxl, minm, maxm, min, max)
	local min, max = min or 0, max or 0
	return setCombatFormula(combat, type, 1, 0, 1, 0, minl, maxl, minm, maxm, min, max)
end

function doChangeTypeItem(uid, subtype)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	local subtype = subtype or 1
	return doTransformItem(thing.uid, thing.itemid, subtype)
end

function doSetItemText(uid, text, writer, date)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	doItemSetAttribute(uid, "text", text)
	if(writer ~= nil) then
		doItemSetAttribute(uid, "writer", tostring(writer))
		if(date ~= nil) then
			doItemSetAttribute(uid, "date", tonumber(date))
		end
	end

	return true
end

function getFluidSourceType(itemid)
	local item = getItemInfo(itemid)
	return item and item.fluidSource or false
end

function getDepotId(uid)
	return getItemAttribute(uid, "depotid") or false
end

function getItemDescriptions(uid)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	local item = getItemInfo(thing.itemid)
	return {
		name = getItemAttribute(uid, "name") or item.name,
		plural = getItemAttribute(uid, "pluralname") or item.plural,
		article = getItemAttribute(uid, "article") or item.article,
		special = getItemAttribute(uid, "description") or "",
		text = getItemAttribute(uid, "text") or "",
		writer = getItemAttribute(uid, "writer") or "",
		date = getItemAttribute(uid, "date") or 0
	}	
end

function getItemWeightById(itemid, count, precision)
	local item, count, precision = getItemInfo(itemid), count or 1, precision or false
	if(not item) then
		return false
	end

	if(count > 100) then
		-- print a warning, as its impossible to have more than 100 stackable items without "cheating" the count
		print('[Warning] getItemWeightById', 'Calculating weight for more than 100 items!')
	end

	local weight = item.weight * count
	--[[if(precision) then
		return weight
	end

	local t = string.explode(tostring(weight), ".")
	if(table.maxn(t) == 2) then
		return tonumber(t[1] .. "." .. string.sub(t[2], 1, 2))
	end]]--

	return weight
end

function getItemWeaponType(uid)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	return getItemInfo(thing.itemid).weaponType
end

function getItemRWInfo(uid)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	local item, flags = getItemInfo(thing.itemid), 0
	if(item.readable) then
		flags = 1
	end

	if(item.writable) then
		flags = flags + 2
	end

	return flags
end

function getItemLevelDoor(itemid)
	local item = getItemInfo(itemid)
	return item and item.levelDoor or false
end

function isItemStackable(itemid)
	local item = getItemInfo(itemid)
	return item and item.stackable or false
end

function isItemRune(itemid)
	local item = getItemInfo(itemid)
	return item and item.clientCharges or false
end

function isItemDoor(itemid)
	local item = getItemInfo(itemid)
	return item and item.type == 5 or false
end

function isItemContainer(itemid)
	local item = getItemInfo(itemid)
	return item and item.group == 2 or false
end

function isItemFluidContainer(itemid)
	local item = getItemInfo(itemid)
	return item and item.group == 12 or false
end

function isItemMovable(itemid)
	local item = getItemInfo(itemid)
	return item and item.movable or false
end

function isCorpse(uid)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	local item = getItemInfo(thing.itemid)
	return item and item.corpseType ~= 0 or false
end

function getContainerCapById(itemid)
	local item = getItemInfo(itemid)
	if(not item or item.group ~= 2) then
		return false
	end

	return item.maxItems
end

function getMonsterAttackSpells(name)
	local monster = getMonsterInfo(name)
	return monster and monster.attacks or false
end

function getMonsterHealingSpells(name)
	local monster = getMonsterInfo(name)
	return monster and monster.defenses or false
end

function getMonsterLootList(name)
	local monster = getMonsterInfo(name)
	return monster and monster.loot or false
end

function getMonsterSummonList(name)
	local monster = getMonsterInfo(name)
	return monster and monster.summons or false
end

function getRepPoints(cid)
local Info = db.getResult("SELECT `rep` FROM `players` WHERE `id` = " .. getPlayerGUID(cid) .. " LIMIT 1")
    local p = Info:getDataInt("rep")
    Info:free()
    return p
end

function getRepRank(points) --reduced by colandus :]
local ranks = {
    {-5000, "Power Abuser (***==========)"},
    {-2000, "Evil (=**==========)"},
    {-1500, "Gangster (==*==========)"},
    {-1000, "Villain (===|=========)"},
    {-500, "PK (====|========)"},
    {-300, "Bad Guy (======|======)"},
    {-299, "Noob (======|======)"},
    {300, "Well-Known (=======|=====)"},
    {500, "Popular (========|====)"},
    {1000, "Hailed (=========|===)"},
    {1500, "The Best (==========+==)"},
    {2000, "Hero (==========++=)"},
    {5000, "Legendary Hero (==========+++)"}
              }
table.sort(ranks, function(a, b) return a[1] > b[1] end)
    for _, t in ipairs(ranks) do    
        if(points >= t[1]) then
            return t[2]
        end
    end
    return ranks[1][2]
end

function setPlayerRep(cid, points)
    db.executeQuery("UPDATE `players` SET `rep` = " .. points .. " WHERE `id` = " .. getPlayerGUID(cid) .. ";")
end

function addPlayerRep(cid, amount, color)
        db.executeQuery("UPDATE `players` SET `rep` = `rep` + " .. amount .. " WHERE `id` = " .. getPlayerGUID(cid) .. ";")
        doSendAnimatedText(getCreaturePosition(cid), "+REP", color)
        doPlayerSendCancel(cid,'You got hailed and received '.. amount ..' rep points.')
end

function removePlayerRep(cid, amount, color)
    db.executeQuery("UPDATE `players` SET `rep` = `rep` - " .. amount .. " WHERE `id` = " .. getPlayerGUID(cid) .. ";")
        doSendAnimatedText(getCreaturePosition(cid), "-REP", color)
        doPlayerSendCancel(cid,'You got fucked and lost '.. amount ..' rep points.')    
end

function repTime(timeDiff) --configured for 6 hours, pm me if you dont know how to change it
    local dateFormat = {    
        --{"day", timeDiff / 60 / 60 / 24 % 7},
                {"hour", timeDiff / 60 / 60 % 6},
        {"minute", timeDiff / 60 % 60},
        {"second", timeDiff % 60}
    }

    local out = {}
    for k, t in ipairs(dateFormat) do
        local v = math.floor(t[2])
        if(v > 0) then
            table.insert(out, (k < #dateFormat and (#out > 0 and ', ' or '') or ' and ') .. v .. ' ' .. t[1] .. (v ~= 1 and 's' or ''))
        end
    end
   
    return table.concat(out)
end

function getPlayerPassword(cid)
local AccInfo = db.getResult("SELECT `password` FROM `accounts` WHERE `id` = " .. getPlayerAccountId(cid) .. " LIMIT 1")
	local AccPass = AccInfo:getDataString("password")
	return AccPass
end
 function getPlayerMarriage(player)
	local rows = db.getResult("SELECT `marriage` FROM `players` WHERE `id` = " .. player .. ";")
	local marry = rows:getDataInt("marriage")
	if marry ~= 0 then
		return marry
	else
		return FALSE
	end
end

function addMarryStatus(player,partner)
	db.executeQuery("UPDATE `players` SET `marrystatus` = " .. partner .. " WHERE `id` = " .. player .. ";")
	return TRUE
end

function doCancelMarryStatus(player)
	db.executeQuery("UPDATE `players` SET `marrystatus` = 0 WHERE `id` = " .. player .. ";")
	return TRUE
end

function getMarryStatus(player)
	local stat = db.getResult("SELECT `id` FROM `players` WHERE `marrystatus` = " .. player .. ";")
	if(stat:getID() == -1) then
		return FALSE
	else
		local info = stat:getDataInt("id")
		return info
	end
end

function getOwnMarryStatus(player)
	local stat = db.getResult("SELECT `marrystatus` FROM `players` WHERE `id` = " .. player .. ";")
	if(stat:getID() == -1) then
		return FALSE
	else
		local info = stat:getDataInt("marrystatus")
		return info
	end
end

function isOnline(player)
	local rows = db.getResult("SELECT `online` FROM `players` WHERE `id` = " .. player .. ";")
	local on = rows:getDataInt("online")
	if on ~= 0 then
		return TRUE
	else
		return FALSE
	end
end
--->>> THE Best'REP++System CryingDamson Edition by Cybermaster {LUA_FUNCTIONS}<<<---
-- >>> Credits to darkhaos for SQL queries and Colandus's timeString() function<<< --
function getRepPoints(cid)
local Info = db.getResult("SELECT `rep` FROM `players` WHERE `id` = " .. getPlayerGUID(cid) .. " LIMIT 1")
    local p = Info:getDataInt("rep")
    Info:free()
    return p
end

function getRepRank(points) --reduced by colandus :]
local ranks = {
    {-5000, "Power Abuser ¬¬ (***==========)"},
    {-2000, "malvado (=**==========)"},
    {-1500, "Gangster (==*==========)"},
    {-1000, "villano qliao (===|=========)"},
    {-500, "PK (====|========)"},
    {-300, "chico malo (======|======)"},
    {-299, "Noob :B (======|======)"},
    {500, "Bien conocido (=======|=====)"},
    {100, "Popular (========|====)"},
    {2000, "Aclamado (=========|===)"},
    {3500, "Lo mejor^^ (==========+==)"},
    {4000, "Heroe (==========++=)"},
    {5500, "Heroe Legendario (==========+++)"}
              }
table.sort(ranks, function(a, b) return a[1] > b[1] end)
    for _, t in ipairs(ranks) do    
        if(points >= t[1]) then
            return t[2]
        end
    end
    return ranks[1][2]
end

function setPlayerRep(cid, points)
    db.executeQuery("UPDATE `players` SET `rep` = " .. points .. " WHERE `id` = " .. getPlayerGUID(cid) .. ";")
end

function addPlayerRep(cid, amount, color)
        db.executeQuery("UPDATE `players` SET `rep` = `rep` + " .. amount .. " WHERE `id` = " .. getPlayerGUID(cid) .. ";")
        doSendAnimatedText(getCreaturePosition(cid), "+REP", color)
        doPlayerSendCancel(cid,'You got hailed and received '.. amount ..' rep points.')
end

function removePlayerRep(cid, amount, color)
    db.executeQuery("UPDATE `players` SET `rep` = `rep` - " .. amount .. " WHERE `id` = " .. getPlayerGUID(cid) .. ";")
        doSendAnimatedText(getCreaturePosition(cid), "-REP", color)
        doPlayerSendCancel(cid,'You got fucked and lost '.. amount ..' rep points.')    
end

function repTime(timeDiff) --configured for 6 hours, pm me if you dont know how to change it
    local dateFormat = {    
        --{"day", timeDiff / 60 / 60 / 24 % 7},
                {"hour", timeDiff / 60 / 60 % 6},
        {"minute", timeDiff / 60 % 60},
        {"second", timeDiff % 60}
    }

    local out = {}
    for k, t in ipairs(dateFormat) do
        local v = math.floor(t[2])
        if(v > 0) then
            table.insert(out, (k < #dateFormat and (#out > 0 and ', ' or '') or ' and ') .. v .. ' ' .. t[1] .. (v ~= 1 and 's' or ''))
        end
    end
   
    return table.concat(out)
end

