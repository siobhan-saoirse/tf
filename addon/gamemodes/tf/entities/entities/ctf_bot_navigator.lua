-- taken from https://gmod.facepunch.com/f/gmodaddon/jgtl/Nextbot-Pathfinding-for-Players/1/

if SERVER then AddCSLuaFile() end

ENT.Base = "base_nextbot"
ENT.Type = "nextbot"

function ENT:Initialize()
	self:SetModel("models/gman.mdl")
	self:SetNoDraw(true)
	self:SetSolid( SOLID_NONE )
	self.PosGen = nil
	self.NextJump = -1
	self.NextDuck = 0
	self.cur_segment = 2
	self.Target = nil
	self.LastSegmented = 0
	self.ForgetTarget = 0
	self.NextCenter = 0
	self.LookAt = Angle(0, 0, 0)
	self.LookAtTime = 0
	self.goalPos = Vector(0, 0, 0)
	self.strafeAngle = 0
	self.nextStuckJump = 0
end

function ENT:ChasePos( options )
	self.P = Path("Follow")
	self.P:SetMinLookAheadDistance(300)
	self.P:SetGoalTolerance(20)
	self.P:Compute(self, self.PosGen)
	
	if !self.P:IsValid() then return end
	while self.P:IsValid() do
		
		if self.P:GetAge() > 0.3 then
			self.P:Compute(self, self.PosGen)
		end
		if GetConVar("developer"):GetFloat() > 0 then
			self.P:Draw()
		end
		
		if self.loco:IsStuck() then
			self:HandleStuck()
			return
		end
		
		coroutine.yield()
	end
end

function ENT:OnInjured()
	return false
end

function ENT:OnKilled()
	return false
end

function ENT:RunBehaviour()
	while (true) do
		if self.PosGen then
			self:ChasePos({})
		end
		coroutine.wait(1)
		
		coroutine.yield()
	end
end