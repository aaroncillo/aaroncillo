-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat0_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-200,(150000)*-600 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_SMALLHOLY,0,-1,1,0,-1,0,0,1}

-- Areas/Combat for 5700ms
local combat57_Brush = createCombatObject()
setCombatParam(combat57_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat57_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat57_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat57_Brush,createCombatArea({{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 3, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat57_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat57_Brush = {CONST_ANI_SMALLHOLY,0,-5,1,-4,2,-3,3,-2,4,-1,5,0,4,1,3,2,2,3,1,4,0,5,-1,4,-2,3,-3,2,-4,1,-5,0,-4,-1,-3,-2,-2,-3,-1,-4}

-- Areas/Combat for 5300ms
local combat53_Brush = createCombatObject()
setCombatParam(combat53_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat53_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat53_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat53_Brush,createCombatArea({{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 3, 0, 0, 1, 0},
{0, 1, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat53_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat53_Brush = {CONST_ANI_SMALLHOLY,0,-4,1,-3,2,-2,3,-1,4,0,3,1,2,2,1,3,0,4,-1,3,-2,2,-3,2,-3,1,-4,0,-3,-1,-2,-2,-1,-3}

-- Areas/Combat for 4700ms
local combat47_Brush = createCombatObject()
setCombatParam(combat47_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat47_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat47_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat47_Brush,createCombatArea({{0, 0, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0},
{1, 0, 1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 1, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat47_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat47_Brush = {CONST_ANI_SMALLHOLY,1,-2,2,-1,3,0,2,1,1,2,0,3,-1,2,-2,1,-3,0,-2,-1,-1,-2,-2,-2,-5,0}

-- Areas/Combat for 4600ms
local combat46_Brush = createCombatObject()
setCombatParam(combat46_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat46_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat46_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat46_Brush,createCombatArea({{1},
{0},
{0},
{2}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat46_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat46_Brush = {CONST_ANI_SMALLHOLY,0,-3}

-- Areas/Combat for 4400ms
local combat44_Brush = createCombatObject()
setCombatParam(combat44_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat44_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat44_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat44_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 0, 1, 0},
{1, 0, 3, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat44_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat44_Brush = {CONST_ANI_SMALLHOLY,0,-2,1,-1,2,0,1,1,0,2,-1,1,-2,0,-1,-1}

-- Areas/Combat for 500ms
local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat5_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 0, 1, 0},
{1, 0, 1, 0, 1},
{0, 1, 2, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat5_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat5_Brush = {CONST_ANI_SMALLHOLY,0,-2,1,-1,2,0,1,1,0,2,-1,1,-2,0,-1,-1}

-- Areas/Combat for 900ms
local combat9_Brush = createCombatObject()
setCombatParam(combat9_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat9_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat9_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat9_Brush,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 3, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat9_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat9_Brush = {CONST_ANI_SMALLHOLY,0,-3,1,-2,2,-1,3,0,2,1,1,2,0,3,-1,2,-2,1,-3,0,-2,-1,-1,-2}

-- Areas/Combat for 1500ms
local combat15_Brush = createCombatObject()
setCombatParam(combat15_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat15_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat15_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat15_Brush,createCombatArea({{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 3, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat15_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat15_Brush = {CONST_ANI_SMALLHOLY,0,-4,1,-3,2,-2,3,-1,4,0,3,1,2,2,-1,3,1,3,0,4,-2,2,-3,1,-4,0,-3,-1,-2,-2,-1,-3}

-- Areas/Combat for 2000ms
local combat20_Brush = createCombatObject()
setCombatParam(combat20_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat20_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat20_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat20_Brush,createCombatArea({{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 3, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat20_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat20_Brush = {CONST_ANI_SMALLHOLY,0,-5,1,-4,2,-3,3,-2,4,-1,5,0,4,1,3,2,2,3,1,4,0,5,-1,4,-2,3,-3,2,-4,1,-5,0,-4,-1,-3,-2,-2,-3,-1,-4}

-- Areas/Combat for 2600ms
local combat26_Brush = createCombatObject()
setCombatParam(combat26_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat26_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat26_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat26_Brush,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat26_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat26_Brush = {CONST_ANI_SMALLHOLY,0,2}

-- Areas/Combat for 2700ms
local combat27_Brush = createCombatObject()
setCombatParam(combat27_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat27_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat27_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat27_Brush,createCombatArea({{2, 0, 0},
{0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat27_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat27_Brush = {CONST_ANI_SMALLHOLY,2,1}

-- Areas/Combat for 2900ms
local combat29_Brush = createCombatObject()
setCombatParam(combat29_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat29_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat29_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat29_Brush,createCombatArea({{2, 0},
{0, 0},
{0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat29_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat29_Brush = {CONST_ANI_SMALLHOLY,1,2}

-- Areas/Combat for 2800ms
local combat28_Brush = createCombatObject()
setCombatParam(combat28_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat28_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat28_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat28_Brush,createCombatArea({{0, 2},
{0, 0},
{1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat28_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat28_Brush = {CONST_ANI_SMALLHOLY,-1,2}

-- Areas/Combat for 3000ms
local combat30_Brush = createCombatObject()
setCombatParam(combat30_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat30_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat30_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat30_Brush,createCombatArea({{2, 0, 0},
{0, 0, 0},
{0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat30_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat30_Brush = {CONST_ANI_SMALLHOLY,2,2}

-- Areas/Combat for 3100ms
local combat31_Brush = createCombatObject()
setCombatParam(combat31_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat31_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat31_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat31_Brush,createCombatArea({{0, 2},
{1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat31_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat31_Brush = {CONST_ANI_SMALLHOLY,-1,1}

-- Areas/Combat for 3200ms
local combat32_Brush = createCombatObject()
setCombatParam(combat32_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat32_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat32_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat32_Brush,createCombatArea({{2, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat32_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat32_Brush = {CONST_ANI_SMALLHOLY,2,0}

-- Areas/Combat for 3300ms
local combat33_Brush = createCombatObject()
setCombatParam(combat33_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat33_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat33_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat33_Brush,createCombatArea({{0, 0, 1},
{2, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat33_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat33_Brush = {CONST_ANI_SMALLHOLY,2,-1}

-- Areas/Combat for 3500ms
local combat35_Brush = createCombatObject()
setCombatParam(combat35_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat35_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat35_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat35_Brush,createCombatArea({{0, 1},
{2, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat35_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat35_Brush = {CONST_ANI_SMALLHOLY,1,-1}

-- Areas/Combat for 3600ms
local combat36_Brush = createCombatObject()
setCombatParam(combat36_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat36_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat36_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat36_Brush,createCombatArea({{1},
{2}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat36_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat36_Brush = {CONST_ANI_SMALLHOLY,0,-1}

-- Areas/Combat for 3700ms
local combat37_Brush = createCombatObject()
setCombatParam(combat37_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat37_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat37_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat37_Brush,createCombatArea({{1, 0},
{0, 2}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat37_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat37_Brush = {CONST_ANI_SMALLHOLY,-1,-1}

-- Areas/Combat for 3800ms
local combat38_Brush = createCombatObject()
setCombatParam(combat38_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat38_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat38_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat38_Brush,createCombatArea({{1, 2}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat38_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat38_Brush = {CONST_ANI_SMALLHOLY,-1,0}

-- Areas/Combat for 4000ms
local combat40_Brush = createCombatObject()
setCombatParam(combat40_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat40_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(combat40_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat40_Brush,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (90000)*-1,(150000)*-1 
end
setCombatCallback(combat40_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat40_Brush = {CONST_ANI_SMALLHOLY,0,-1,1,0,0,1,-1,0}

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
	addEvent(RunPart,5700,combat57_Brush,cid,var,dfcombat57_Brush,startPos)
	addEvent(RunPart,5300,combat53_Brush,cid,var,dfcombat53_Brush,startPos)
	addEvent(RunPart,4700,combat47_Brush,cid,var,dfcombat47_Brush,startPos)
	addEvent(RunPart,4600,combat46_Brush,cid,var,dfcombat46_Brush,startPos)
	addEvent(RunPart,4400,combat44_Brush,cid,var,dfcombat44_Brush,startPos)
	addEvent(RunPart,500,combat5_Brush,cid,var,dfcombat5_Brush,startPos)
	addEvent(RunPart,900,combat9_Brush,cid,var,dfcombat9_Brush,startPos)
	addEvent(RunPart,1500,combat15_Brush,cid,var,dfcombat15_Brush,startPos)
	addEvent(RunPart,2000,combat20_Brush,cid,var,dfcombat20_Brush,startPos)
	addEvent(RunPart,2600,combat26_Brush,cid,var,dfcombat26_Brush,startPos)
	addEvent(RunPart,2700,combat27_Brush,cid,var,dfcombat27_Brush,startPos)
	addEvent(RunPart,2900,combat29_Brush,cid,var,dfcombat29_Brush,startPos)
	addEvent(RunPart,2800,combat28_Brush,cid,var,dfcombat28_Brush,startPos)
	addEvent(RunPart,3000,combat30_Brush,cid,var,dfcombat30_Brush,startPos)
	addEvent(RunPart,3100,combat31_Brush,cid,var,dfcombat31_Brush,startPos)
	addEvent(RunPart,3200,combat32_Brush,cid,var,dfcombat32_Brush,startPos)
	addEvent(RunPart,3300,combat33_Brush,cid,var,dfcombat33_Brush,startPos)
	addEvent(RunPart,3500,combat35_Brush,cid,var,dfcombat35_Brush,startPos)
	addEvent(RunPart,3600,combat36_Brush,cid,var,dfcombat36_Brush,startPos)
	addEvent(RunPart,3700,combat37_Brush,cid,var,dfcombat37_Brush,startPos)
	addEvent(RunPart,3800,combat38_Brush,cid,var,dfcombat38_Brush,startPos)
	addEvent(RunPart,4000,combat40_Brush,cid,var,dfcombat40_Brush,startPos)
	return true
end