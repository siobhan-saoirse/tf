	if SERVER then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.PrintName			= "Sandvich"
end

heavysandwichtaunt = { "scenes/player/heavy/low/sandwichtaunt01.vcd", "scenes/player/heavy/low/sandwichtaunt02.vcd", "scenes/player/heavy/low/sandwichtaunt03.vcd", "scenes/player/heavy/low/sandwichtaunt04.vcd", "scenes/player/heavy/low/sandwichtaunt05.vcd", "scenes/player/heavy/low/sandwichtaunt06.vcd",  "scenes/player/heavy/low/sandwichtaunt07.vcd", "scenes/player/heavy/low/sandwichtaunt08.vcd", "scenes/player/heavy/low/sandwichtaunt09.vcd", "scenes/player/heavy/low/sandwichtaunt10.vcd", "scenes/player/heavy/low/sandwichtaunt11.vcd", "scenes/player/heavy/low/sandwichtaunt12.vcd", "scenes/player/heavy/low/sandwichtaunt13.vcd", "scenes/player/heavy/low/sandwichtaunt14.vcd", "scenes/player/heavy/low/sandwichtaunt15.vcd", "scenes/player/heavy/low/sandwichtaunt16.vcd", "scenes/player/heavy/low/sandwichtaunt01.vcd", "scenes/player/heavy/low/sandwichtaunt17.vcd" }	

SWEP.Base				= "tf_weapon_gun_base"

SWEP.Slot				= 1
SWEP.ViewModel			= "models/weapons/c_models/c_heavy_arms.mdl"
SWEP.WorldModel			= "models/weapons/c_models/c_sandwich/c_sandwich.mdl"
SWEP.Crosshair = "tf_crosshair3"

SWEP.Swing = Sound("")
SWEP.SwingCrit = Sound("")
SWEP.HitFlesh = Sound("")
SWEP.HitWorld = Sound("")

SWEP.BaseDamage = 45
SWEP.DamageRandomize = 0.1
SWEP.MaxDamageRampUp = 0
SWEP.MaxDamageFalloff = 0

SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "none"
SWEP.Primary.Delay          = 30
SWEP.Secondary.Automatic		= true
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.Delay          = 30
SWEP.RangedMinHealing = 45
SWEP.RangedMaxHealing = 85

SWEP.Force = 80
SWEP.AddPitch = -4
SWEP.HoldType = "ITEM1"

SWEP.VM_DRAW = ACT_ITEM1_VM_DRAW
SWEP.VM_IDLE = ACT_ITEM1_VM_IDLE
SWEP.VM_PRIMARYATTACK = ACT_ITEM1_VM_RELOAD	
SWEP.VM_INSPECT_START = ACT_ITEM1_VM_INSPECT_START
SWEP.VM_INSPECT_IDLE = ACT_ITEM1_VM_INSPECT_IDLE
SWEP.VM_INSPECT_END = ACT_ITEM1_VM_INSPECT_END

function SWEP:PrimaryAttack()
	self.VM_DRAW = ACT_ITEM1_VM_DRAW
	self.VM_IDLE = ACT_ITEM1_VM_IDLE
	self.VM_PRIMARYATTACK = ACT_ITEM1_VM_RELOAD	
	self.VM_INSPECT_START = ACT_ITEM1_VM_INSPECT_START
	self.VM_INSPECT_IDLE = ACT_ITEM1_VM_INSPECT_IDLE
	self.VM_INSPECT_END = ACT_ITEM1_VM_INSPECT_END
	if self.Owner:Health() <= self.Owner:GetMaxHealth() - 1 then
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	else
		self:SetNextPrimaryFire( CurTime() + 5 )
	end 
	if SERVER then
		net.Start("ActivateTauntCam")
		net.Send(self.Owner)
	end
	self.Owner:DoAnimationEvent(ACT_DOD_CROUCH_IDLE_PISTOL, true)
	self.Owner:SetNWBool("Taunting", true)
	
	if CLIENT then
		timer.Simple(1, function()	
			self.CModel:SetBodygroup(0, 1)
		end)
	end
	if SERVER then
	timer.Simple(1, function()
		--self.WModel2:SetBodygroup(0, 1)
		if self.Owner:GetInfoNum("tf_giant_robot",0) == 1 then
			return
		elseif self.Owner:GetInfoNum("tf_robot",0) == 1 then
			return
		else
			self.Owner:EmitSound("Heavy.SandwichEat")
			self:SetBodygroup(0, 1)
			GAMEMODE:HealPlayer(self.Owner, self.Owner, 35, true, false)
		end
	end)
	timer.Simple(2, function()
		GAMEMODE:HealPlayer(self.Owner, self.Owner, 35, true, false)
	end)
	timer.Simple(3, function()
		GAMEMODE:HealPlayer(self.Owner, self.Owner, 35, true, false)
	end)
	timer.Simple(4, function()
		GAMEMODE:HealPlayer(self.Owner, self.Owner, 35, true, false)
		net.Start("DeActivateTauntCam")
		net.Send(self.Owner)
		self.Owner:SetNWBool("Taunting", false)
		if self.Owner:Health() <= self.Owner:GetMaxHealth() - 1 then
			self.Owner:SelectWeapon(self.Owner:GetWeapons()[1])
		end
	end)
	timer.Simple(5, function()
		
		if (self.Owner:Health() <= self.Owner:GetMaxHealth() - 1) then
			
			timer.Simple(self.Primary.Delay, function()
				self:SetBodygroup(0, 0)
			end)
		else 
			self:SetBodygroup(0, 0)
		end
		if self.Owner:GetInfoNum("tf_giant_robot",0) == 1 then
			self.Owner:EmitSound("vo/mvm/mght/heavy_mvm_m_sandwichtaunt"..math.random(10,17)..".wav", 80, 100)
		elseif self.Owner:GetInfoNum("tf_robot",0) == 1 then
			self.Owner:EmitSound("vo/mvm/norm/heavy_mvm_sandwichtaunt"..math.random(10,17)..".wav", 80, 100)
		else
			self.Owner:PlayScene(table.Random(heavysandwichtaunt))
		end
	end)
	end
	if CLIENT then
		timer.Simple(4, function()
			if (self.Owner:Health() <= self.Owner:GetMaxHealth() - 1) then
				
				timer.Simple(self.Primary.Delay, function()
					self.CModel:SetBodygroup(0, 0)
				end)
			else 
				self.CModel:SetBodygroup(0, 0)
			end
		end)
	end
end

function SWEP:SecondaryAttack()
	self.VM_DRAW = ACT_ITEM1_VM_DRAW
	self.VM_IDLE = ACT_ITEM1_VM_IDLE
	self.VM_PRIMARYATTACK = ACT_ITEM1_VM_RELOAD	
	self.VM_INSPECT_START = ACT_ITEM1_VM_INSPECT_START
	self.VM_INSPECT_IDLE = ACT_ITEM1_VM_INSPECT_IDLE
	self.VM_INSPECT_END = ACT_ITEM1_VM_INSPECT_END
	self:SetNextSecondaryFire( CurTime() + 20 )
	if SERVER then
		local healthkit = ents.Create("item_healthkit_small")
		healthkit:SetPos(self.Owner:GetEyeTrace().StartPos)
		healthkit:SetOwner(self.Owner)
		healthkit.RespawnTime = -1
		healthkit:Spawn()  
		if self:GetItemData().model_player == "models/workshop/weapons/c_models/c_chocolate/c_chocolate.mdl" or self:GetItemData().model_player == "models/weapons/c_models/c_chocolate/c_chocolate.mdl" then
			healthkit:SetModel("models/workshop/weapons/c_models/c_chocolate/plate_chocolate.mdl")	
		elseif self:GetItemData().model_player == "models/workshop/weapons/c_models/c_chocolate/c_chocolate.mdl" or self:GetItemData().model_player == "models/weapons/c_models/c_chocolate/c_chocolate.mdl" then
			healthkit:SetModel("models/items/banana/plate_banana.mdl")
		elseif self:GetItemData().model_player == "models/weapons/c_models/c_sandwich/c_robo_sandwich.mdl" then
			healthkit:SetModel("models/items/plate_robo_sandwich.mdl")
		else
			healthkit:SetModel("models/items/plate.mdl")
		end
		local vel = self.Owner:GetAimVector():Angle()
		vel.p = vel.p + self.AddPitch
		vel = vel:Forward() * self.Force * 10
		
		healthkit:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)))
		healthkit:GetPhysicsObject():ApplyForceCenter(vel)
		healthkit.HealthPercentage = 40.5
		healthkit:DropWithGravity(vel)
		self.Owner:SelectWeapon(self.Owner:GetWeapons()[1])
	end
end
