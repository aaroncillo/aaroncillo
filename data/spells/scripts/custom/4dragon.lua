-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 100ms
local combat1_Brush_2 = createCombatObject()
setCombatParam(combat1_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_TUTORIALARROW)
setCombatParam(combat1_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_2,createCombatArea({{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 2, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat1_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_TUTORIALSQUARE)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 2, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_EXPLOSION,0,4,4,0,-4,0,0,-4}

-- Areas/Combat for 200ms
local combat2_Brush_5 = createCombatObject()
setCombatParam(combat2_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat2_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_5,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat2_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")

-- Areas/Combat for 300ms
local combat3_Brush_3 = createCombatObject()
setCombatParam(combat3_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_WATERSPLASH)
setCombatParam(combat3_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_3,createCombatArea({{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 2, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat3_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")local combat3_Brush_5 = createCombatObject()
setCombatParam(combat3_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat3_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_5,createCombatArea({{0, 1, 0, 1, 0},
{1, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat3_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")

-- Areas/Combat for 400ms
local combat4_Brush_5 = createCombatObject()
setCombatParam(combat4_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat4_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_5,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 0, 1, 0},
{1, 0, 2, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat4_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")

-- Areas/Combat for 500ms
local combat5_Brush_5 = createCombatObject()
setCombatParam(combat5_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat5_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_5,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat5_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")

-- Areas/Combat for 600ms
local combat6_Brush_4 = createCombatObject()
setCombatParam(combat6_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_WATERCREATURE)
setCombatParam(combat6_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_4,createCombatArea({{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 2, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat6_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")local combat6_Brush_6 = createCombatObject()
setCombatParam(combat6_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
setCombatParam(combat6_Brush_6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_6,createCombatArea({{3}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat6_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

-- Areas/Combat for 1000ms
local combat10_Brush_8 = createCombatObject()
setCombatParam(combat10_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat10_Brush_8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush_8,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 1, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat10_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")

-- Areas/Combat for 1200ms
local combat12_Brush_8 = createCombatObject()
setCombatParam(combat12_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat12_Brush_8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush_8,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 0, 1, 0},
{1, 0, 2, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat12_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")

-- Areas/Combat for 1400ms
local combat14_Brush_8 = createCombatObject()
setCombatParam(combat14_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat14_Brush_8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush_8,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat14_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")

-- Areas/Combat for 1600ms
local combat16_Brush_9 = createCombatObject()
setCombatParam(combat16_Brush_9, COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
setCombatParam(combat16_Brush_9, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat16_Brush_9,createCombatArea({{3}}))
function getDmg_Brush_9(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat16_Brush_9, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_9")

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
	addEvent(RunPart,100,combat1_Brush_2,cid,var)
	RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
	addEvent(RunPart,200,combat2_Brush_5,cid,var)
	addEvent(RunPart,300,combat3_Brush_3,cid,var)
	addEvent(RunPart,300,combat3_Brush_5,cid,var)
	addEvent(RunPart,400,combat4_Brush_5,cid,var)
	addEvent(RunPart,500,combat5_Brush_5,cid,var)
	addEvent(RunPart,600,combat6_Brush_4,cid,var)
	addEvent(RunPart,600,combat6_Brush_6,cid,var)
	addEvent(RunPart,1000,combat10_Brush_8,cid,var)
	addEvent(RunPart,1200,combat12_Brush_8,cid,var)
	addEvent(RunPart,1400,combat14_Brush_8,cid,var)
	addEvent(RunPart,1600,combat16_Brush_9,cid,var)
	return true
end