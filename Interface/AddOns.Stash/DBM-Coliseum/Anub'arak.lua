local mod	= DBM:NewMod("Anub'arak_Coliseum", "DBM-Coliseum")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 34 $"):sub(12, -3))
mod:SetCreatureID(34564)
mod:SetModelID(29268) 

mod:RegisterCombat("yell", L.YellPull)

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REFRESH",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_START",
	"RAID_BOSS_EMOTE"
)

mod:SetUsedIcons(3, 4, 5, 6, 7, 8)

local warnAdds				= mod:NewAnnounce("warnAdds", 3, 45419)
local preWarnShadowStrike	= mod:NewSoonAnnounce(66134, 3)
local warnShadowStrike		= mod:NewSpellAnnounce(66134, 4)
local warnPursue			= mod:NewTargetAnnounce(67574, 4)
local warnFreezingSlash		= mod:NewTargetAnnounce(66012, 2, nil, mod:IsHealer() or mod:IsTank())
local warnHoP				= mod:NewTargetAnnounce(1022, 2, nil, false)--Heroic strat revolves around kiting pursue and using Hand of Protection.
local warnEmerge			= mod:NewAnnounce("WarnEmerge", 3, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warnEmergeSoon		= mod:NewAnnounce("WarnEmergeSoon", 1, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warnSubmerge			= mod:NewAnnounce("WarnSubmerge", 3, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local warnSubmergeSoon		= mod:NewAnnounce("WarnSubmergeSoon", 2, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local warnPhase3			= mod:NewPhaseAnnounce(3)

local specWarnPursue		= mod:NewSpecialWarning("SpecWarnPursue")
local specWarnSubmergeSoon	= mod:NewSpecialWarning("specWarnSubmergeSoon", mod:IsTank())
local specWarnShadowStrike	= mod:NewSpecialWarning("SpecWarnShadowStrike", mod:IsTank())
local specWarnPCold			= mod:NewSpecialWarningYou(66013, false)

local timerAdds				= mod:NewTimer(45, "timerAdds", 45419)
local timerSubmerge			= mod:NewTimer(75, "TimerSubmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local timerEmerge			= mod:NewTimer(65, "TimerEmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local timerFreezingSlash	= mod:NewCDTimer(20, 66012, nil, mod:IsHealer() or mod:IsTank())
local timerPCold			= mod:NewBuffActiveTimer(15, 66013)
local timerShadowStrike		= mod:NewNextTimer(30.5, 66134)
local timerHoP				= mod:NewBuffActiveTimer(10, 1022, nil, false)--So we will track bops to make this easier.

local enrageTimer			= mod:NewBerserkTimer(570)	-- 9:30 ? hmpf (no enrage while submerged... this sucks)

local soundPursue			= mod:NewSound(67574)

mod:AddBoolOption("PursueIcon")
mod:AddBoolOption("SetIconsOnPCold", true)
mod:AddBoolOption("AnnouncePColdIcons", false)
mod:AddBoolOption("AnnouncePColdIconsRemoved", false)

local PColdTargets = {}
local Burrowed = false 

function mod:OnCombatStart(delay)
	Burrowed = false 
	timerAdds:Start(10-delay) 
	warnAdds:Schedule(10-delay) 
	self:ScheduleMethod(10-delay, "Adds")
	warnSubmergeSoon:Schedule(70-delay)
	specWarnSubmergeSoon:Schedule(70-delay)
	timerSubmerge:Start(80-delay)
	enrageTimer:Start(-delay)
	timerFreezingSlash:Start(-delay)
	table.wipe(PColdTargets)
	if self:IsDifficulty("heroic10", "heroic25") then
		timerShadowStrike:Start()
		preWarnShadowStrike:Schedule(25.5-delay)
		self:ScheduleMethod(30.5-delay, "ShadowStrike")
	end
end

function mod:Adds() 
	if self:IsInCombat() then 
		if not Burrowed then 
			timerAdds:Start() 
			warnAdds:Schedule(45) 
			self:ScheduleMethod(45, "Adds") 
		end 
	end 
end

function mod:ShadowStrike()
	if self:IsInCombat() then
		timerShadowStrike:Start()
		preWarnShadowStrike:Cancel()
		preWarnShadowStrike:Schedule(25.5)
		self:UnscheduleMethod("ShadowStrike")
		self:ScheduleMethod(30.5, "ShadowStrike")
	end
end

local function ClearPcoldTargets()
	table.wipe(PColdTargets)
end

do
	local function sort_by_group(v1, v2)
		return DBM:GetRaidSubgroup(DBM:GetUnitFullName(v1)) < DBM:GetRaidSubgroup(DBM:GetUnitFullName(v2))
	end
	function mod:SetPcoldIcons()
		table.sort(PColdTargets, sort_by_group)
		local PColdIcon = 7
		for i, v in ipairs(PColdTargets) do
			if self.Options.AnnouncePColdIcons and DBM:GetRaidRank() > 1 then
				SendChatMessage(L.PcoldIconSet:format(PColdIcon, DBM:GetUnitFullName(v)), "RAID")
			end
			self:SetIcon(v, PColdIcon)
			PColdIcon = PColdIcon - 1
		end
		self:Schedule(5, ClearPcoldTargets)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 67574 then			-- Pursue
		if args:IsPlayer() then
			specWarnPursue:Show()
			soundPursue:Play()
		end
		if self.Options.PursueIcon then
			self:SetIcon(args.destName, 8, 15)
		end
		warnPursue:Show(args.destName)
	elseif args.spellId == 66013 then		-- Penetrating Cold
		timerPCold:Show()
		if args:IsPlayer() then
			specWarnPCold:Show()
		end
		if self.Options.SetIconsOnPCold then
			table.insert(PColdTargets, DBM:GetRaidUnitId(args.destName))
			self:UnscheduleMethod("SetPcoldIcons")
			if (self:IsDifficulty("normal25", "heroic25") and #PColdTargets >= 5) or (self:IsDifficulty("normal10", "heroic10") and #PColdTargets >= 2) then
				self:SetPcoldIcons()--Sort and fire as early as possible once we have all targets.
			else
				if self:LatencyCheck() then
					self:ScheduleMethod(0.3, "SetPcoldIcons")
				end
			end
		end
	elseif args.spellId == 66012 then							-- Freezing Slash
		warnFreezingSlash:Show(args.destName)
		timerFreezingSlash:Start()
	elseif args.spellId == 1022 and self:IsInCombat() then		-- Hand of Protection
		warnHoP:Show(args.destName)
		timerHoP:Start(args.destName)
	end
end
mod.SPELL_AURA_REFRESH = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 66013 then			-- Penetrating Cold
		if self.Options.SetIconsOnPCold then
			self:SetIcon(args.destName, 0)
			if self.Options.AnnouncePColdIconsRemoved and DBM:GetRaidRank() > 0 then
				SendChatMessage(L.PcoldIconRemoved:format(args.destName), "RAID")
			end
		end
	elseif args.spellId == 1022 and self:IsInCombat() then		-- Hand of Protection
		timerHoP:Cancel(args.destName)
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 66118 then			-- Swarm (start p3)
		warnPhase3:Show()
		warnEmergeSoon:Cancel()
		warnSubmergeSoon:Cancel()
		specWarnSubmergeSoon:Cancel()
		timerEmerge:Stop()
		timerSubmerge:Stop()
		if self:IsDifficulty("normal10", "normal25") then
			timerAdds:Cancel() 
			warnAdds:Cancel() 
			self:UnscheduleMethod("Adds")
		end
	elseif args.spellId == 66134 then							-- Shadow Strike
		self:ShadowStrike()
		specWarnShadowStrike:Show()
		warnShadowStrike:Show()
	end
end

function mod:RAID_BOSS_EMOTE(msg)
	if msg and msg:find(L.Burrow) then
		Burrowed = true
		timerAdds:Cancel()
		warnAdds:Cancel()
		warnSubmerge:Show()
		warnEmergeSoon:Schedule(55)
		timerEmerge:Start()
		timerFreezingSlash:Stop()
	elseif msg and msg:find(L.Emerge) then
		Burrowed = false
		timerAdds:Start(5)
		warnAdds:Schedule(5)
		self:ScheduleMethod(5, "Adds")
		warnEmerge:Show()
		warnSubmergeSoon:Schedule(65)
		specWarnSubmergeSoon:Schedule(65)
		timerSubmerge:Start()
		if self:IsDifficulty("heroic10", "heroic25") then
			timerShadowStrike:Stop()
			preWarnShadowStrike:Cancel()
			self:UnscheduleMethod("ShadowStrike")
			self:ScheduleMethod(5.5, "ShadowStrike")  -- 35-36sec after Emerge next ShadowStrike
		end
	end
end
