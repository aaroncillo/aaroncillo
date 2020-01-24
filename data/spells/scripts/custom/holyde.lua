local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 49)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -0.4, -0, -0.5, -0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 39)
setCombatParam(combat2, COMBAT_PARAM_AGGRESSIVE, TRUE)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 34)
-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat0_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 5600ms
local combat56_Brush = createCombatObject()
setCombatParam(combat56_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat56_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat56_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat56_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000
end
setCombatCallback(combat56_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat56_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 5300ms
local combat53_Brush = createCombatObject()
setCombatParam(combat53_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat53_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat53_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat53_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000
end
setCombatCallback(combat53_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat53_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 4800ms
local combat48_Brush = createCombatObject()
setCombatParam(combat48_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat48_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat48_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat48_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat48_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat48_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 4400ms
local combat44_Brush = createCombatObject()
setCombatParam(combat44_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat44_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat44_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat44_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat44_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat44_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat4_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat4_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 600ms
local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat6_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat6_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat6_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 1000ms
local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat10_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat10_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat10_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 1400ms
local combat14_Brush = createCombatObject()
setCombatParam(combat14_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat14_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat14_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat14_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat14_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat14_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 1900ms
local combat19_Brush = createCombatObject()
setCombatParam(combat19_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat19_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat19_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat19_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat19_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat19_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 2300ms
local combat23_Brush = createCombatObject()
setCombatParam(combat23_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat23_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat23_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat23_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat23_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat23_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 2700ms
local combat27_Brush = createCombatObject()
setCombatParam(combat27_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat27_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat27_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat27_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat27_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat27_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 3200ms
local combat32_Brush = createCombatObject()
setCombatParam(combat32_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat32_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat32_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat32_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat32_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat32_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 3600ms
local combat36_Brush = createCombatObject()
setCombatParam(combat36_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat36_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat36_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat36_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat36_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat36_Brush = {CONST_ANI_HOLY,0,2}

-- Areas/Combat for 4000ms
local combat40_Brush = createCombatObject()
setCombatParam(combat40_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat40_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat40_Brush, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat40_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (30)*-2000,(40)*-3000 
end
setCombatCallback(combat40_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat40_Brush = {CONST_ANI_HOLY,0,2}

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
	addEvent(RunPart,5600,combat56_Brush,cid,var,dfcombat56_Brush,startPos)
	addEvent(RunPart,5300,combat53_Brush,cid,var,dfcombat53_Brush,startPos)
	addEvent(RunPart,4800,combat48_Brush,cid,var,dfcombat48_Brush,startPos)
	addEvent(RunPart,4400,combat44_Brush,cid,var,dfcombat44_Brush,startPos)
	addEvent(RunPart,400,combat4_Brush,cid,var,dfcombat4_Brush,startPos)
	addEvent(RunPart,600,combat6_Brush,cid,var,dfcombat6_Brush,startPos)
	addEvent(RunPart,1000,combat10_Brush,cid,var,dfcombat10_Brush,startPos)
	addEvent(RunPart,1400,combat14_Brush,cid,var,dfcombat14_Brush,startPos)
	addEvent(RunPart,1900,combat19_Brush,cid,var,dfcombat19_Brush,startPos)
	addEvent(RunPart,2300,combat23_Brush,cid,var,dfcombat23_Brush,startPos)
	addEvent(RunPart,2700,combat27_Brush,cid,var,dfcombat27_Brush,startPos)
	addEvent(RunPart,3200,combat32_Brush,cid,var,dfcombat32_Brush,startPos)
	addEvent(RunPart,3600,combat36_Brush,cid,var,dfcombat36_Brush,startPos)
	addEvent(RunPart,4000,combat40_Brush,cid,var,dfcombat40_Brush,startPos)
	return true
end