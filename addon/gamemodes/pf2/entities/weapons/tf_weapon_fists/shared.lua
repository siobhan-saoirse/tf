
PrecacheParticleSystem("boomer_vomit_b")
PrecacheParticleSystem("boomer_vomit_c")
PrecacheParticleSystem("boomer_vomit_d")
PrecacheParticleSystem("boomer_vomit_e")
PrecacheParticleSystem("boomer_vomit_f")

if SERVER then
	AddCSLuaFile( "shared.lua" )
end


if CLIENT then
	SWEP.PrintName			= "Fists"
end
SWEP.ReadyToPounce		= true
SWEP.Base				= "tf_weapon_melee_base"
	SWEP.Slot				= 2
SWEP.ViewModel			= "models/weapons/v_models/v_fist_heavy.mdl"
SWEP.WorldModel			= "models/empty.mdl"
SWEP.Crosshair = "tf_crosshair3"

SWEP.Spawnable = true
SWEP.AdminSpawnable = false
SWEP.Category = "Team Fortress 2"

SWEP.Swing = Sound("Weapon_Fist.Miss")
SWEP.SwingCrit = Sound("Weapon_Fist.MissCrit")
SWEP.HitFlesh = Sound("Weapon_Fist.HitFlesh")
SWEP.HitWorld = Sound("Weapon_Fist.HitWorld")

SWEP.CritEnabled = Sound("Weapon_BoxingGloves.CritEnabled")
SWEP.CritHit = Sound("Weapon_BoxingGloves.CritHit")

SWEP.DropPrimaryWeaponInstead = true

SWEP.BaseDamage = 65
SWEP.DamageRandomize = 0.1
SWEP.MaxDamageRampUp = 0
SWEP.MaxDamageFalloff = 0

SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "none"
SWEP.Primary.Delay = 0.8
SWEP.ReloadTime = 0.8

SWEP.Secondary.Automatic		= true
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.Delay          = 0.8

SWEP.CritForceAddPitch = 45

SWEP.HoldType = "MELEE"
SWEP.HoldTypeHL2 = "fist"
SWEP.HasThirdpersonCritAnimation = true
SWEP.HasSecondaryFire = true

SWEP.ShouldOccurFists = true

SWEP.Force = 5000
SWEP.AddPitch = -2

function SWEP:OnCritBoostStarted()
	self.Owner:EmitSound(self.CritEnabled)
end

function SWEP:OnCritBoostAdded()
	self.Owner:EmitSound(self.CritHit)
end

function SWEP:Deploy() 
	if self:GetItemData().model_player == "models/weapons/c_models/c_breadmonster_gloves/c_breadmonster_gloves.mdl" then
	self.Owner:EmitSound("Weapon_bm_gloves.draw")
	end
	
	if self.Owner:GetPlayerClass() == "boomer" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 4
		self.CriticalChance = 0
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.ViewModel = "models/v_models/weapons/v_claw_boomer_l4d1.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_boomer_l4d1.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_boomer_l4d1.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_boomer_l4d1.mdl")
		else
			self.ViewModel = "models/v_models/weapons/v_claw_boomer.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_boomer.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_boomer.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_boomer.mdl")
		end
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "boomette" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 6
		self.CriticalChance = 0
		self.ViewModel = "models/v_models/weapons/v_claw_boomer.mdl"
		self:SetModel("models/v_models/weapons/v_claw_boomer.mdl")
		
		if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
			self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_boomer.mdl")
		end
		self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_boomer.mdl")
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "hunter" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.BaseDamage = 7
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.CriticalChance = 0
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.ViewModel = "models/v_models/weapons/v_claw_hunter_l4d1.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hunter_l4d1.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_hunter_l4d1.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hunter_l4d1.mdl")
		else
			self.ViewModel = "models/v_models/weapons/v_claw_hunter.mdl"
			self:SetModel("models/v_models/weapons/v_claw_hunter.mdl")
			
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hunter.mdl")
			end
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hunter.mdl")
		end
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "smoker" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 6
		self.CriticalChance = 0
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.ViewModel = "models/v_models/weapons/v_claw_smoker_l4d1.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_smoker_l4d1.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_smoker_l4d1.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_smoker_l4d1.mdl")
		else
			self.ViewModel = "models/v_models/weapons/v_claw_smoker.mdl"
			self:SetModel("models/v_models/weapons/v_claw_smoker.mdl")
			
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_smoker.mdl")
			end
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_smoker.mdl")
		end
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "spitter" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 6
		self.CriticalChance = 0
		self.ViewModel = "models/weapons/arms/v_spitter_arms.mdl"
		self:SetModel("models/weapons/arms/v_spitter_arms.mdl")
		
		if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
			self.Owner:GetViewModel():SetModel("models/weapons/arms/v_spitter_arms.mdl")
		end
		self.Owner:GetHands():SetModel("models/weapons/arms/v_spitter_arms.mdl")
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "jockey" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 6
		self.CriticalChance = 0
		self.ViewModel = "models/weapons/arms/v_jockey_arms.mdl"
		self:SetModel("models/weapons/arms/v_jockey_arms.mdl")
		
		if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
			self.Owner:GetViewModel():SetModel("models/weapons/arms/v_jockey_arms.mdl")
		end
		self.Owner:GetHands():SetModel("models/weapons/arms/v_jockey_arms.mdl")
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "charger" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/charger/hit/charger_punch"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		
		self.HasSecondaryFire = false
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.CriticalChance = 0
		self.ViewModel = "models/weapons/arms/v_charger_arms.mdl"
		self:SetModel("models/weapons/arms/v_charger_arms.mdl")
		if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
			self.Owner:GetViewModel():SetModel("models/weapons/arms/v_charger_arms.mdl")
		end
		self.Owner:GetHands():SetModel("models/weapons/arms/v_charger_arms.mdl")
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if (self.Owner:IsL4D()) then
		self.NameOverride = "hl_zombie"
	end
	if self.Owner:GetPlayerClass() == "L4D1_zombie" then
		self.Swing = "vj_l4d_com/attack_miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "vj_l4d_com/attack_miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "vj_l4d_com/attack_hit/punch_boxing_facehit"..math.random(4,6)..".wav"
		self.HitRobot = "vj_l4d_com/attack_hit/punch_boxing_facehit"..math.random(4,6)..".wav"
		self.HitWorld = "vj_l4d_com/attack_hit/hit_punch_0"..math.random(1,8)..".wav"
		self.HasSecondaryFire = false
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.25
		self.BaseDamage = 8
		self.CriticalChance = 0
	end
	
	if self.Owner:GetPlayerClass() == "tank" then
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.Swing = "L4D1_HulkZombie.Attack"
			self.SwingCrit = "L4D1_HulkZombie.Attack"
			self.HitFlesh = "L4D1_HulkZombie.Punch"
			self.HitWorld = "L4D1_HulkZombie.Punch"
		else
			self.Swing = "HulkZombie.Attack"
			self.SwingCrit = "HulkZombie.Attack"
			self.HitFlesh = "HulkZombie.Punch"
			self.HitWorld = "HulkZombie.Punch"
		end
		self.BaseDamage = 25
		self.Primary.Delay = 2
		self.MeleeAttackDelay = 0.4
		self.CriticalChance = 0
		
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.ViewModel = "models/v_models/weapons/v_claw_hulk_l4d1.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hulk_l4d1.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_hulk_l4d1.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hulk_l4d1.mdl")
		elseif (string.find(self.Owner:GetModel(),"dlc3")) then
			self.ViewModel = "models/v_models/weapons/v_claw_hulk_dlc3.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hulk_dlc3.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_hulk_dlc3.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hulk_dlc3.mdl")
		else
			self.ViewModel = "models/v_models/weapons/v_claw_hulk.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hulk.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_hulk.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hulk.mdl")
		end
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "charger" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DRAW
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "tank" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DRAW
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "hunter" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DRAW
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "boomer" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "smoker" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "spitter" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
		self.VM_HITRIGHT = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
		self.VM_PRIMARYATTACK = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
		self.VM_SWINGHARD = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
	elseif self.Owner:GetPlayerClass() == "jockey" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
		self.VM_HITRIGHT = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
		self.VM_PRIMARYATTACK = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
		self.VM_SWINGHARD = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
	elseif self.Owner:GetPlayerClass() == "boomette" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	end
	self:SetHoldType(self.HoldType)
	if self:GetItemData().image_inventory == "backpack/weapons/v_models/v_fist_heavy" then
		
		if self.Owner:GetPlayerClass() == "charger" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DRAW
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "tank" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("draw"))
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "hunter" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DRAW
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "boomer" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "smoker" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "spitter" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
			self.VM_HITRIGHT = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
			self.VM_PRIMARYATTACK = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
			self.VM_SWINGHARD = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
		elseif self.Owner:GetPlayerClass() == "jockey" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
			self.VM_HITRIGHT = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
			self.VM_PRIMARYATTACK = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
			self.VM_SWINGHARD = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("attack"))
		elseif self.Owner:GetPlayerClass() == "boomette" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		else
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = ACT_VM_HITLEFT
			self.VM_HITRIGHT = ACT_VM_HITRIGHT
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_SWINGHARD
		end
	end
	
	self.BaseClass.Deploy(self) 
end
 
function SWEP:Think() 
	if self.Owner:GetPlayerClass() == "zombie" then
		
		self.Owner:SetPlayerColor(Vector(230,236,194)) 
		
	end
	self.BaseClass.Think(self)
	if self:GetItemData().image_inventory == "backpack/weapons/v_models/v_fist_heavy" then
		
			self.VM_IDLE = ACT_FISTS_VM_IDLE
			self.VM_DRAW = ACT_FISTS_VM_DRAW
			self.VM_HITLEFT = ACT_FISTS_VM_HITLEFT
			self.VM_HITRIGHT = ACT_FISTS_VM_HITRIGHT
			self.VM_SWINGHARD = ACT_FISTS_VM_SWINGHARD
			
	end
	if self.Owner:GetPlayerClass() == "charger" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DRAW
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "tank" then
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("draw"))
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "hunter" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "boomer" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "smoker" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "jockey" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	elseif self.Owner:GetPlayerClass() == "boomette" then
		self.VM_IDLE = ACT_VM_IDLE
		self.VM_DRAW = ACT_VM_DEPLOY
		self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
		self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
		self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
		self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
	end
	if self:GetItemData().image_inventory == "backpack/weapons/v_models/v_fist_heavy" then
		
		if self.Owner:GetPlayerClass() == "charger" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DRAW
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "tank" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("draw"))
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "hunter" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "boomer" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		elseif self.Owner:GetPlayerClass() == "boomette" then
			self.VM_IDLE = ACT_VM_IDLE
			self.VM_DRAW = ACT_VM_DEPLOY
			self.VM_HITLEFT = ACT_VM_PRIMARYATTACK
			self.VM_HITRIGHT = ACT_VM_PRIMARYATTACK
			self.VM_PRIMARYATTACK = ACT_VM_PRIMARYATTACK
			self.VM_SWINGHARD = ACT_VM_PRIMARYATTACK
		else
			self.VM_IDLE = ACT_FISTS_VM_IDLE
			self.VM_DRAW = ACT_FISTS_VM_DRAW
			self.VM_HITLEFT = ACT_FISTS_VM_HITLEFT
			self.VM_HITRIGHT = ACT_FISTS_VM_HITRIGHT
			self.VM_SWINGHARD = ACT_FISTS_VM_SWINGHARD
			self.WorldModel = "models/empty.mdl"
		end
		self:GetItemData().model_player = "models/empty.mdl"
	end
	if self:GetItemData().model_player == "models/weapons/c_models/c_breadmonster_gloves/c_breadmonster_gloves.mdl" then
		self.VM_IDLE = ACT_BREADGLOVES_VM_IDLE
		self.VM_DRAW = ACT_BREADGLOVES_VM_DRAW
		self.VM_HITLEFT = ACT_BREADGLOVES_VM_HITLEFT
		self.VM_HITRIGHT = ACT_BREADGLOVES_VM_HITRIGHT
		self.VM_SWINGHARD = ACT_BREADGLOVES_VM_SWINGHARD
		self.VM_INSPECT_START = ACT_MELEE_ALT2_VM_INSPECT_START
		self.VM_INSPECT_IDLE = ACT_MELEE_ALT2_VM_INSPECT_IDLE
		self.VM_INSPECT_END = ACT_MELEE_ALT2_VM_INSPECT_END
		self.SwingCrit = Sound("Weapon_bm_gloves.attack")
	end
		
	if self.Owner:GetPlayerClass() == "boomer" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 6
		self.CriticalChance = 0
		self.BaseDamage = 5
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.ViewModel = "models/v_models/weapons/v_claw_boomer_l4d1.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_boomer_l4d1.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_boomer_l4d1.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_boomer_l4d1.mdl")
		else
			self.ViewModel = "models/v_models/weapons/v_claw_boomer.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_boomer.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_boomer.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_boomer.mdl")
		end
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	
	if self.Owner:GetPlayerClass() == "spitter" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 6
		self.CriticalChance = 0
		self.ViewModel = "models/weapons/arms/v_spitter_arms.mdl"
		self:SetModel("models/weapons/arms/v_spitter_arms.mdl")
		
		if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
			self.Owner:GetViewModel():SetModel("models/weapons/arms/v_spitter_arms.mdl")
		end
		self.Owner:GetHands():SetModel("models/weapons/arms/v_spitter_arms.mdl")
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "boomette" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 6
		self.CriticalChance = 0
		self.BaseDamage = 5
		self.ViewModel = "models/v_models/weapons/v_claw_boomer.mdl"
		self:SetModel("models/v_models/weapons/v_claw_boomer.mdl")
		
		if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
			self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_boomer.mdl")
		end
		self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_boomer.mdl")
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "hunter" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.BaseDamage = 24
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.CriticalChance = 0
		self.BaseDamage = 7
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.ViewModel = "models/v_models/weapons/v_claw_hunter_l4d1.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hunter_l4d1.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_hunter_l4d1.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hunter_l4d1.mdl")
		else
			self.ViewModel = "models/v_models/weapons/v_claw_hunter.mdl"
			self:SetModel("models/v_models/weapons/v_claw_hunter.mdl")
			
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hunter.mdl")
			end
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hunter.mdl")
		end
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "smoker" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 6
		self.CriticalChance = 0
		self.BaseDamage = 6
		
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.ViewModel = "models/v_models/weapons/v_claw_smoker_l4d1.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_smoker_l4d1.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_smoker_l4d1.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_smoker_l4d1.mdl")
		else
			self.ViewModel = "models/v_models/weapons/v_claw_smoker.mdl"
			self:SetModel("models/v_models/weapons/v_claw_smoker.mdl")
			
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_smoker.mdl")
			end
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_smoker.mdl")
		end
		
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "jockey" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/pz/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.BaseDamage = 4
		if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
			self.Owner:GetViewModel():SetModel("models/weapons/arms/v_jockey_arms.mdl")
		end
		self.Owner:GetHands():SetModel("models/weapons/arms/v_jockey_arms.mdl")
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "charger" then
		self.Swing = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "player/pz/miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "player/charger/hit/charger_punch"..math.random(1,4)..".wav"
		self.HitWorld = "player/pz/hit/claw_scrape_"..math.random(1,6)..".wav"
		
		self.HasSecondaryFire = false
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.1
		self.CriticalChance = 0
		self.BaseDamage = 8
		self.ViewModel = "models/weapons/arms/v_charger_arms.mdl"
		self:SetModel("models/weapons/arms/v_charger_arms.mdl")
		if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
			self.Owner:GetViewModel():SetModel("models/weapons/arms/v_charger_arms.mdl")
		end
		self.Owner:GetHands():SetModel("models/weapons/arms/v_charger_arms.mdl")
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "L4D1_zombie" then
		self.Swing = "vj_l4d_com/attack_miss/claw_miss_"..math.random(1,2)..".wav"
		self.SwingCrit = "vj_l4d_com/attack_miss/claw_miss_"..math.random(1,2)..".wav"
		self.HitFlesh = "vj_l4d_com/attack_hit/punch_boxing_facehit"..math.random(4,6)..".wav"
		self.HitRobot = "vj_l4d_com/attack_hit/punch_boxing_facehit"..math.random(4,6)..".wav"
		self.HitWorld = "vj_l4d_com/attack_hit/hit_punch_0"..math.random(1,8)..".wav"
		self.HasSecondaryFire = false
		self.Primary.Delay = 1
		self.MeleeAttackDelay = 0.25
		self.BaseDamage = 10
		self.CriticalChance = 0
	end
	
	if self.Owner:GetPlayerClass() == "tank" then
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.Swing = "L4D1_HulkZombie.Attack"
			self.SwingCrit = "L4D1_HulkZombie.Attack"
			self.HitFlesh = "L4D1_HulkZombie.Punch"
			self.HitWorld = "L4D1_HulkZombie.Punch"
		else
			self.Swing = "HulkZombie.Attack"
			self.SwingCrit = "HulkZombie.Attack"
			self.HitFlesh = "HulkZombie.Punch"
			self.HitWorld = "HulkZombie.Punch"
		end
		self.BaseDamage = 24
		self.Primary.Delay = 2
		self.MeleeAttackDelay = 0.4
		self.CriticalChance = 0
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.ViewModel = "models/v_models/weapons/v_claw_hulk_l4d1.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hulk_l4d1.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_hulk_l4d1.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hulk_l4d1.mdl")
		elseif (string.find(self.Owner:GetModel(),"dlc3")) then
			self.ViewModel = "models/v_models/weapons/v_claw_hulk_dlc3.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hulk_dlc3.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_hulk_dlc3.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hulk_dlc3.mdl")
		else
			self.ViewModel = "models/v_models/weapons/v_claw_hulk.mdl"
		
			if (self.Owner:GetViewModel():GetModel() != self.ViewModel) then
				self.Owner:GetViewModel():SetModel("models/v_models/weapons/v_claw_hulk.mdl")
			end
			self:SetModel("models/v_models/weapons/v_claw_hulk.mdl")
			self.Owner:GetHands():SetModel("models/v_models/weapons/v_claw_hulk.mdl")
		end
		if SERVER and self.ForceReplayDeployAnim then
			self:SendWeaponAnim(self.VM_DRAW)
			self.ForceReplayDeployAnim = false
		end
	end
	if self.Owner:GetPlayerClass() == "witch" then
		self.Swing = "vj_l4d/witch/voice/mad/female_ls_d_madscream0"..math.random(1,3)..".wav"
		self.SwingCrit = "vj_l4d/witch/voice/die/headshot_death_3.wav"
		self.HitFlesh = "vj_l4d/hit/claw_hit_flesh_"..math.random(1,4)..".wav"
		self.HitWorld = "vj_l4d_com/attack_hit/hit_punch_0"..math.random(1,8)..".wav"
		self.BaseDamage = 70
		self.CriticalChance = 0
		self.Primary.Delay = 2
		self.MeleeAttackDelay = 0.8
	end
	if self.Owner:GetPlayerClass() == "zombie" then
		self.Swing = "Zombie.AttackMiss"
		self.SwingCrit = "Zombie.AttackMiss"
		self.HitFlesh = "Zombie.AttackHit"
		self.HitWorld = "Zombie.AttackHit"
		self.BaseDamage = 35
	end
	if self.Owner:GetPlayerClass() == "fastzombie" then
		self.Swing = ""
		self.SwingCrit = ""
		self.HitFlesh = "Zombie.AttackHit"
		self.HitWorld = "Zombie.AttackHit"
		self.BaseDamage = 75
	end
	if self.Owner:GetPlayerClass() == "poisonzombie" then
		self.Swing = ""
		self.SwingCrit = ""
		self.HitFlesh = "Zombie.AttackHit"
		self.HitWorld = "Zombie.AttackHit"
		self.BaseDamage = 105
	end
	if self.Owner:GetPlayerClass() == "zombine" then
		self.Swing = "Zombie.AttackMiss"
		self.SwingCrit = "Zombie.AttackMiss"
		self.HitFlesh = "Zombie.AttackHit"
		self.HitWorld = "Zombie.AttackHit"
		self.BaseDamage = 35
	end
	if self:GetItemData().model_player == "models/workshop/weapons/c_models/c_xms_gloves/c_xms_gloves.mdl" then
		self.SwingCrit = Sound("Weapon_mittens.CritHit")
		self.HitFlesh = Sound("Weapon_mittens.HitFlesh")
		self.HitWorld = Sound("Weapon_mittens.HitWorld")
	end

	if self:GetItemData().model_player == "models/weapons/c_models/c_breadmonster_gloves/c_breadmonster_gloves.mdl" and self.Owner:KeyDown(IN_ATTACK2) then

		self.Swing = Sound("Weapon_bm_gloves.attack")
		self.HitFlesh = Sound("Zombie.AttackHit")
	end
	if self:GetItemData().model_player == "models/weapons/c_models/c_breadmonster_gloves/c_breadmonster_gloves.mdl" and self:CriticalEffect() then

		self.Swing = Sound("Weapon_bm_gloves.attack")
		self.SwingCrit = Sound("Weapon_bm_gloves.attack")
		self.HitFlesh = Sound("Zombie.AttackHit")
	end
	if self:GetItemData().model_player == "models/weapons/c_models/c_breadmonster_gloves/c_breadmonster_gloves.mdl" and self.Owner:KeyDown(IN_ATTACK) and !self:CriticalEffect() then

		self.Swing = Sound("Weapon_BoxingGloves.Miss")
		self.HitFlesh = Sound("Weapon_BoxingGloves.HitFlesh")
	end
	if self.Owner:KeyDown(IN_ATTACK) or self.Owner:KeyDown(IN_ATTACK2) then
		if self.ShouldOccurFists == true then
			if SERVER then
				if self.Owner:GetPlayerClass() == "heavy" and self.Owner:GetInfoNum("jakey_antlionfbii", 0) != 1 and self.Owner:GetInfoNum("dylan_rageheavy", 0) != 1 and self.Owner:GetInfoNum("tf_robot", 0) != 1 then
					self.Owner:Speak("TLK_FIREWEAPON")
				elseif self.Owner:GetPlayerClass() == "heavy" and self.Owner:GetInfoNum("tf_robot", 0) == 1 then
					self.Owner:Speak("TLK_FIREWEAPON")
					self.ShouldOccurFists = false 
					timer.Simple(4, function()
						self.ShouldOccurFists = true
					end)
				elseif self.Owner:GetPlayerClass() == "merc_dm" then
					self.Owner:EmitSound("vo/taunts/spy_taunts1"..math.random(1,8)..".mp3", 80, 100)
					self.ShouldOccurFists = false
					timer.Simple(8, function()
						self.ShouldOccurFists = true
					end)
				elseif self.Owner:GetInfoNum("jakey_antlionfbii", 0) == 1 then
					self.Owner:EmitSound("NPC_AntlionGuard.Roar", 150, 100)
					self.ShouldOccurFists = false
					self.HitFlesh = Sound("npc/antlion_guard/shove1.wav", 120)
					self.HitWorld = Sound("npc/antlion_guard/shove1.wav", 120)
					self.BaseDamage = 180
					timer.Simple(0.8, function()
						self.ShouldOccurFists = true
					end) 
				elseif self.Owner:GetInfoNum("dylan_rageheavy", 0) == 1 then
					self.Owner:EmitSound("vo/heavy_paincrticialdeath0"..math.random(1,3)..".mp3", 150, math.random(70,150))
					self.ShouldOccurFists = false
					if self.Owner:GetInfoNum("tf_giant_robot", 0) == 1 then
						self.HitFlesh = Sound("ambient/explosions/explode_6.wav", 120)
						self.HitWorld = Sound("ambient/explosions/explode_6.wav", 120)
						self.DamageType = DMG_BLAST
					else
						self.HitFlesh = Sound("npc/antlion_guard/shove1.wav", 120)
						self.HitWorld = Sound("npc/antlion_guard/shove1.wav", 120)					
					end
					self.BaseDamage = 9999999999999999999999999999
					self.Primary.Delay          = 0.2
					timer.Simple(0.2, function()
						self.ShouldOccurFists = true
					end)
				end
			end
		end
	end
end
		

function SWEP:SecondaryAttack()
	if SERVER then
		self.Owner:Speak("TLK_FIREWEAPON")
	end
	if (!self.Owner:IsBot() && self.Owner:GetPlayerClass() != "tank") then
		--self.NextMeleeAttack = CurTime() + self.MeleeAttackDelay
		if not self.NextMeleeAttack then
			self.NextMeleeAttack = {}
		end
		self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
		if (self.Owner:GetPlayerClass() != "boomer" and self.Owner:GetPlayerClass() != "spitter") then
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		end
		self.NextIdle = CurTime() + self:SequenceDuration() 
		table.insert(self.NextMeleeAttack, CurTime() + self.MeleeAttackDelay)
		if self.HasCustomMeleeBehaviour then return true end
			
		local vm = self.Owner:GetViewModel()	
		if self:CriticalEffect() then
			self:EmitSound(self.SwingCrit, 100, 100)
			self:SendWeaponAnimEx(self.VM_SWINGHARD)
			if self.HasThirdpersonCritAnimation then
				self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_SECONDARYFIRE, true)
			else
				self.Owner:SetAnimation(PLAYER_ATTACK1)
			end
		else
			self:EmitSound(self.Swing, 100, 100)
		end
		self:SendWeaponAnim(self.VM_HITLEFT)
		self.Owner:SetAnimation(PLAYER_ATTACK1)
		if self.Owner:GetPlayerClass() == "tank" or self.Owner:GetPlayerClass() == "boomer"or self.Owner:GetPlayerClass() == "spitter"or self.Owner:GetPlayerClass() == "boomette"  or self.Owner:GetPlayerClass() == "smoker" or self.Owner:GetPlayerClass() ==  "hunter" or self.Owner:GetPlayerClass() ==  "jockey" or self.Owner:GetPlayerClass() ==  "witch" then
			timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
			self.Owner:DoAnimationEvent(ACT_MELEE_ATTACK1)
			self.MeleeRange = 100
		elseif self.Owner:GetPlayerClass() == "charger" then
			self.Owner:DoAnimationEvent(ACT_GESTURE_TURN_LEFT90)
		elseif self.Owner:GetPlayerClass() == "L4D1_zombie" then
			self.Owner:DoAnimationEvent(ACT_MELEE_ATTACK2)
		end
		self.NextIdle = CurTime() + self:SequenceDuration() 
		if (self.Owner:GetPlayerClass() == "tank") then
			if SERVER then
				vm:RestartGesture(vm:GetSequenceActivity(vm:LookupSequence("claw_melee_layer")))
			end
		elseif (self.Owner:GetPlayerClass() == "hunter") then
			self:SendWeaponAnim(vm:GetSequenceActivity(table.Random({vm:LookupSequence("claw_melee_layer"),vm:LookupSequence("claw_melee_layer2"),vm:LookupSequence("claw_melee_layer3")})))
		end
		if self.Owner:GetPlayerClass() == "boomer" then
			if (game.IsDedicated()) then
				local time = 0.23
				if (self.Owner:KeyDown(IN_ATTACK2)) then
					if (string.find(self.Owner:GetModel(),"l4d1")) then
						self.Owner:EmitSound("L4D1_BoomerZombie.Attack")
					else
						self.Owner:EmitSound("BoomerZombie.Attack")
					end
				end
				timer.Create("Growl"..self.Owner:EntIndex(), time, 0, function()
	
					if (self.Owner:KeyDown(IN_ATTACK2)) then
						if (string.find(self.Owner:GetModel(),"l4d1")) then
							self.Owner:EmitSound("L4D1_BoomerZombie.Attack")
						else
							self.Owner:EmitSound("BoomerZombie.Attack")
						end
					end
				end)
			else
				timer.Stop("Growl"..self.Owner:EntIndex())
			end
			if (math.random(1,3) == 1) then
				timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
				if (string.find(self.Owner:GetModel(),"l4d1")) then
					self.Owner:EmitSound("L4D1_BoomerZombie.Attack")
				else
					self.Owner:EmitSound("BoomerZombie.Attack")
				end
			end
		end
		if self.Owner:GetPlayerClass() == "smoker" then
			if (math.random(1,3) == 1) then
				timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
				if (string.find(self.Owner:GetModel(),"l4d1")) then
					self.Owner:EmitSound("L4D1_SmokerZombie.Attack")
				else
					self.Owner:EmitSound("SmokerZombie.Attack")
				end
			end
		end
		if self.Owner:GetPlayerClass() == "hunter" then
			if (game.IsDedicated()) then
				local time = 0.23
				if (self.Owner:KeyDown(IN_ATTACK2)) then
					self.Owner:EmitSound("PlayerZombie.Attack")
				end
				timer.Create("Growl"..self.Owner:EntIndex(), time, 0, function()
	
					if (self.Owner:KeyDown(IN_ATTACK2)) then
						self.Owner:EmitSound("PlayerZombie.Attack")
					end
				end)
			else
				timer.Stop("Growl"..self.Owner:EntIndex())
			end
			if (math.random(1,3) == 1) then
				timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
				self.Owner:EmitSound("PlayerZombie.Attack")
			end
		end
		if self.Owner:GetPlayerClass() == "tank" or self.Owner:GetPlayerClass() == "boomer"or self.Owner:GetPlayerClass() == "spitter"or self.Owner:GetPlayerClass() == "boomette"  or self.Owner:GetPlayerClass() == "smoker" or self.Owner:GetPlayerClass() ==  "hunter" or self.Owner:GetPlayerClass() ==  "jockey" or self.Owner:GetPlayerClass() ==  "witch" then
			timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
			self.Owner:DoAnimationEvent(ACT_MELEE_ATTACK1)
			self.MeleeRange = 100
		elseif self.Owner:GetPlayerClass() == "charger" then
			self.Owner:DoAnimationEvent(ACT_GESTURE_TURN_LEFT90)
		elseif self.Owner:GetPlayerClass() == "L4D1_zombie" then
			self.Owner:DoAnimationEvent(ACT_MELEE_ATTACK2)
		end
	end
	if self.Owner:GetPlayerClass() == "poisonzombie" then
	
		local pos = self.Owner:GetShootPos()
			self:SetNextSecondaryFire(CurTime() + 3)
		if SERVER then
			self.Owner:EmitSound("NPC_PoisonZombie.ThrowWarn", 125)
			self.Owner:SetClassSpeed(1)
			self.Owner:DoAnimationEvent(ACT_VM_FIDGET, true)
		end
		timer.Simple(1, function()
			self.Owner:DoAnimationEvent(ACT_RANGE_ATTACK2)
		end)
		timer.Simple(2.3, function()
			if SERVER then
			local animent2 = ents.Create( 'npc_headcrab_black' ) -- The entity used for the death animation	
				self.Owner:EmitSound("NPC_PoisonZombie.Throw", 125)
                local headcrab = ents.Create("pill_jumper_headcrab")
                local angs = self.Owner:EyeAngles()
                angs.p = 0
                headcrab:SetPos(self.Owner:EyePos() + angs:Forward() * 100)
                headcrab:SetAngles(angs)
                headcrab:Spawn()
				headcrab:EmitSound("NPC_BlackHeadcrab.Attack")
                headcrab:GetPhysicsObject():SetVelocity(angs:Forward() * 500 + Vector(0, 0, 200))
				self.Owner:ResetClassSpeed()
				timer.Create("BlackHeadcrabFriendlyizer", 0.1, 80, function()
					for k,v in ipairs(ents.FindInSphere(self.Owner:GetPos(), 1800)) do
						if v:GetClass() == "npc_headcrab_black" then
							v:AddEntityRelationship(self.Owner, D_LI, 99)
							v:SetNWInt("Team", self.Owner:Team())
							for _,teamply in ipairs(team.GetPlayers(self.Owner:Team())) do
								v:AddEntityRelationship(teamply, D_LI, 99)
							end
						end
					end
				end)
			end
		end)
	elseif self.Owner:GetPlayerClass() == "spitter" and self.Owner:IsBot() then
		self.Owner:DoAnimationEvent(self.Owner:GetSequenceActivity(self.Owner:LookupSequence("spitter_spitting")))
		self.Owner:SetWalkSpeed(1)
		self.Owner:SetRunSpeed(1)
		self:SendWeaponAnim(self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("spit")))
		if SERVER then
			timer.Simple(0.5, function()
				local grenade = ents.Create("obj_vj_l4d_spit")
				grenade:SetPos(self.Owner:GetShootPos())
				grenade:SetAngles(self.Owner:EyeAngles())
				if self:Critical() then
					grenade.critical = true
				end
				
				grenade:SetOwner(self.Owner)
				
				grenade:Spawn()
				
				local vel = self.Owner:GetAimVector():Angle()
				vel.p = vel.p + self.AddPitch
				vel = vel:Forward() * self.Force * 30 
				grenade:GetPhysicsObject():ApplyForceCenter(vel)
			end)
			self.Owner:EmitSound("SpitterZombie.Spit")
			timer.Simple(1.0, function()
				self.Owner:ResetClassSpeed()
			end)
		end
		self:SetNextSecondaryFire(CurTime() + 30)
		self:SetNextPrimaryFire(CurTime() + 1.5)
	elseif self.Owner:GetPlayerClass() == "hunter" and self.Owner:IsBot() then
		if !self.Owner:Crouching() then
			return
		end
		if self.Owner:IsBot() and !self.ReadyToPounce then
			return
		end
		local vm = self.Owner:GetViewModel()
		self:SetNextSecondaryFire(CurTime() + 0.6)
		
		local function PhysCallback( ent, data ) -- Function that will be called whenever collision happends
			local effect = EffectData() -- Create effect data
			effect:SetOrigin( data.HitPos ) -- Set origin where collision point is
			util.Effect( "cball_bounce", effect ) -- Spawn small sparky effect
		end
		self.Owner:AddCallback( "PhysicsCollide", PhysCallback ) -- Add Callback
		if (self.Owner:IsOnGround()) then
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("lunge")))
			self.Owner:SetPos(self.Owner:GetPos() + Vector(0,0,30))
			timer.Create("Pounce"..self.Owner:EntIndex(), 0, 2, function()
				self.Owner:SetVelocity( self.Owner:GetAimVector() * 300 * 3.1 )
			end)
			self.Owner:DoAnimationEvent(self.Owner:GetSequenceActivity(self.Owner:LookupSequence("Pounce_01")))
			timer.Simple(self.Owner:SequenceDuration(self.Owner:LookupSequence("Pounce_01")) , function()
				/*
				if (self.Owner:GetAngles():Up():Length() > 0.7) then
					self.Owner:AddVCDSequenceToGestureSlot(GESTURE_SLOT_JUMP, self.Owner:LookupSequence("pounce_idle_high"),0,true)
					timer.Create("LoopHunterAnim"..self.Owner:EntIndex(), self.Owner:SequenceDuration(self.Owner:LookupSequence("pounce_idle_high")), 0, function()
						print(self.Owner:GetAimVector():LengthSqr())
						self.Owner:AddVCDSequenceToGestureSlot(GESTURE_SLOT_JUMP, self.Owner:LookupSequence("pounce_idle_high"),0,true)
					end)
				else*/
					
					self.Owner:DoAnimationEvent(self.Owner:GetSequenceActivity(self.Owner:LookupSequence("pounce_idle_low")))
					timer.Create("LoopHunterAnim"..self.Owner:EntIndex(), self.Owner:SequenceDuration(self.Owner:LookupSequence("pounce_idle_low")) , 0, function()
						//print(self.Owner:GetAimVector():LengthSqr())
						self.Owner:DoAnimationEvent(self.Owner:GetSequenceActivity(self.Owner:LookupSequence("Pounce_idle_low")))
					end)
				//end
			end)
		end
		if self.Owner:GetPlayerClass() == "hunter" and self.Owner:IsOnGround() then
			if SERVER then
				self.Owner:EmitSound( "HunterZombie.Pounce" )
			end
		end
		
 		self:TakePrimaryAmmo(1)
		
		self.NextIdle = CurTime() + self:SequenceDuration() 
		timer.Simple(0.55, function()
			timer.Create("CheckIfOnGround", 0.001, 0, function()
				if self.Owner:OnGround() then
					timer.Stop("LoopHunterAnim"..self.Owner:EntIndex())
					if SERVER then 
						if (self.Owner:IsBot()) then
							self.Owner:RemoveFlags(FL_DUCKING)
						end
						if self.Owner:GetPlayerClass() == "hunter" then
							for k,v in pairs(ents.FindInSphere(self.Owner:GetPos(), 95 )) do
								if v:IsTFPlayer() and v:Health() > 1 then
									if v:IsTFPlayer() and v:EntIndex() != self.Owner:EntIndex() and not v:IsFriendly(self.Owner) then
										if (self.Owner:IsBot()) then
											self.ReadyToPounce = false
										end
										v:TakeDamage(4, self.Owner, self)
										self.Owner:DoAnimationEvent(ACT_DOD_PRONE_DEPLOYED)
										if not self.Owner:IsOnGround() then return end
										if self.Owner:WaterLevel() ~= 0 then return end
										self.Owner:DoAnimationEvent(ACT_DOD_HS_CROUCH_KNIFE, true)
										self.Owner:SetNWBool("Taunting", true)
										self.Owner:SetNWBool("NoWeapon", true)
										net.Start("ActivateTauntCam")
										net.Send(self.Owner)
										net.Start("ActivateTauntCam")
										net.Send(v)
										v:SetPos(self.Owner:GetPos())
										self.Owner:SetMoveType(MOVETYPE_NONE)
										v:SetMoveType(MOVETYPE_NONE)
										v:SetNWBool("Taunting", true)
										self.Owner:EmitSound("HunterZombie.Pounce.Hit")
										local ply = v
										local ent = v
										ent:SetPos(ent:GetPos() + Vector(0,0,30))
										ent:SetMoveType(MOVETYPE_FLYGRAVITY)
										ent:SetNoDraw(true)
										local animent = ents.Create( 'base_gmodentity' ) -- The entity used for the death animation	
										animent:SetModel("models/cpthazama/l4d2/shared/anim_survivor.mdl")
										animent:SetSkin(self.Owner:GetSkin())
										animent:SetPos(self.Owner:GetPos())
										animent:SetAngles(self.Owner:GetAngles() + Angle(0,180,0))
										animent:Spawn()
										animent:Activate()
										ply.RagdollEntity = animent
										animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
										animent:PhysicsInit( SOLID_OBB )
										animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
										animent:SetSequence( "Idle_Incap_Pounced" )
										animent:SetPlaybackRate( 1 )
										local animent2 = ents.Create( 'prop_dynamic_override' ) -- The entity used for the death animation	
										animent2:SetModel(ply:GetModel())
										animent2:SetSkin(ply:GetSkin())
										animent2:SetPos(ply:GetPos())
										animent2:SetAngles(ply:GetAngles())
										animent2:SetParent(animent)
										animent2:AddEffects(EF_BONEMERGE)
										function animent:Think() -- This makes the animation work
											if (self:GetCycle() == 1) then
												self:SetCycle(0)
											end
											self:NextThink( CurTime() )
											return true
										end
										ply.RagdollEntity2 = animent2
										animent.AutomaticFrameAdvance = true
										timer.Simple(0.1, function()
											net.Start("ActivateTauntCam")
											net.Send(v)
										end)
										timer.Create("LoopHunterAnim"..self.Owner:EntIndex(), self.Owner:SequenceDuration(self.Owner:LookupSequence("Melee_Pounce")), 0, function()
											self.Owner:DoAnimationEvent(ACT_DOD_PRONE_DEPLOYED, true)
										end)
										timer.Create("RIPTHATASSHOLEAPART"..self.Owner:EntIndex(), 0.1, 0, function()
											if v:Health() <= 1 then 
												self.Owner:DoAnimationEvent(ACT_DOD_RELOAD_DEPLOYED_FG42)
												timer.Stop("LoopHunterAnim"..self.Owner:EntIndex())
												timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
												self.Owner:SetNWBool("Taunting", false)
												self.Owner:SetNWBool("NoWeapon", false)
												--v:SetParent()
												self.Owner:SetMoveType(MOVETYPE_WALK)
												v:SetMoveType(MOVETYPE_WALK)
												self.Owner:ResetClassSpeed()
												self.Owner:SetPos(v:GetPos() + Vector(40, 40, 40))
												net.Start("DeActivateTauntCam")
												net.Send(self.Owner)
												net.Start("DeActivateTauntCam")
												net.Send(v)
												ent:SetNoDraw(false)
												if (IsValid(animent)) then
													animent:Remove()
												end
												if (IsValid(animent2)) then
													animent2:Remove()
												end
												
												timer.Simple(20, function()
													if (IsValid(self)) then
														self.ReadyToPounce = true
													end
												end)
											end
											if self.Owner:Health() <= 1 then 
												self.Owner:DoAnimationEvent(ACT_DOD_RELOAD_DEPLOYED_FG42)
												timer.Stop("LoopHunterAnim"..self.Owner:EntIndex())
												timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
												self.Owner:SetNWBool("Taunting", false)
												self.Owner:SetNWBool("NoWeapon", false)
												--v:SetParent()
												v:ResetClassSpeed()												
												self.Owner:SetMoveType(MOVETYPE_WALK)
												v:SetMoveType(MOVETYPE_WALK)
												v:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
												net.Start("DeActivateTauntCam")
												net.Send(self.Owner)
												net.Start("DeActivateTauntCam")
												net.Send(v)
												ent:SetNoDraw(false)
												if (IsValid(animent)) then
													animent:Remove()
												end
												if (IsValid(animent2)) then
													animent2:Remove()
												end
											end
											v:TakeDamage(2, self.Owner, self)
										end)
									end  
								else
									self.Owner:EmitSound("HunterZombie.Pounce.Miss")
								end
							end
							elseif self.Owner:GetPlayerClass() == "jockey" then

								for k,v in pairs(ents.FindInSphere(self.Owner:GetPos(), 110)) do
									if v:Health() >= 0 then
										if v:IsPlayer() and v:Nick() != self.Owner:Nick() and not v:IsFriendly(self.Owner) then
											v:TakeDamage(15, self.Owner, self)
											self.Owner:DoAnimationEvent(ACT_DOD_PRONE_DEPLOYED)
											if not self.Owner:IsOnGround() then return end
											if self.Owner:WaterLevel() ~= 0 then return end
											self.Owner:DoAnimationEvent(ACT_DOD_HS_CROUCH_KNIFE, true)
											self.Owner:SetNWBool("Taunting", true)
											self.Owner:SetNWBool("NoWeapon", true)
											net.Start("ActivateTauntCam")
											net.Send(self.Owner)
											self.Owner:SetParent(v, v:LookupAttachment("head"))
											v:EmitSound("player/charger/hit/charger_punch"..math.random(1,4)..".wav", 85, 100)
											v:EmitSound("Jockey.Music")
											v:EmitSound("music/tags/exenterationhit.wav")
											self.Owner:EmitSound("jockey/voice/attack/jockey_attackloop01.wav")
											timer.Create("RIPTHATASSHOLEAPART"..self.Owner:EntIndex(), 1, 0, function()
												if v:Health() <= 1 then 
													timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
													v:StopSound("Jockey.Music")
													self.Owner:SetNWBool("Taunting", false)
													self.Owner:SetNWBool("NoWeapon", false)
													self.Owner:SetParent()
													self.Owner:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
													net.Start("DeActivateTauntCam")
													net.Send(self.Owner)
													return 
												end
												if !self.Owner:Alive() then 
													timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
													v:StopSound("Jockey.Music")
													self.Owner:SetNWBool("Taunting", false)
													self.Owner:SetNWBool("NoWeapon", false)
													self.Owner:SetParent()
													self.Owner:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
													net.Start("DeActivateTauntCam")
													net.Send(self.Owner)
													return 
												end
												v:TakeDamage(15, self.Owner, self)
												v:EmitSound("player/charger/hit/charger_punch"..math.random(1,4)..".wav", 85, 100)
											end)
										end
										if v:IsNPC() and not v:IsFriendly(self.Owner) then
											v:TakeDamage(15, self.Owner, self)
											self.Owner:DoAnimationEvent(ACT_DOD_PRONE_DEPLOYED)
											if not self.Owner:IsOnGround() then return end
											if self.Owner:WaterLevel() ~= 0 then return end
											self.Owner:DoAnimationEvent(ACT_DOD_HS_CROUCH_KNIFE, true)
											self.Owner:SetNWBool("Taunting", true)
											self.Owner:SetNWBool("NoWeapon", true)
											net.Start("ActivateTauntCam")
											net.Send(self.Owner)
											self.Owner:SetParent(v)
											v:EmitSound("player/charger/hit/charger_punch"..math.random(1,4)..".wav", 85, 100)
											v:EmitSound("music/tags/exenterationhit.wav")
											self.Owner:EmitSound("jockey/voice/attack/jockey_attackloop01.wav")
											timer.Create("RIPTHATASSHOLEAPART"..self.Owner:EntIndex(), 1, 0, function()
												if v:Health() <= 1 then 
													timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
													self.Owner:SetNWBool("Taunting", false)
													self.Owner:SetNWBool("NoWeapon", false)
													self.Owner:SetParent()
													self.Owner:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
													net.Start("DeActivateTauntCam")
													net.Send(self.Owner)
													return 
												end
												if !self.Owner:Alive() then 
													timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
													self.Owner:SetNWBool("Taunting", false)
													self.Owner:SetNWBool("NoWeapon", false)
													self.Owner:SetParent()
													self.Owner:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
													net.Start("DeActivateTauntCam")
													net.Send(self.Owner)
													return 
												end
												v:TakeDamage(15, self.Owner, self)
												v:EmitSound("player/charger/hit/charger_punch"..math.random(1,4)..".wav", 85, 100)
											end)
										end
									end
							end
						end
					end
					timer.Stop("CheckIfOnGround")
				end
			end)
		end) 
	elseif self.Owner:GetPlayerClass() == "tank" then
		if (!self.Owner:IsOnGround()) then
			self.Owner:EmitSound("HulkZombie.Throw.Fail")
			self:SetNextSecondaryFire(CurTime() + 0.8)
			return
		end
		local pos = self.Owner:GetShootPos()
		self:SetNextPrimaryFire(CurTime() + 1.5)
		self.Owner:DoAnimationEvent(ACT_RANGE_ATTACK1)
		if SERVER then
			self.Owner:EmitSound("HulkZombie.Throw.Pickup", 125)
			self:SetNextSecondaryFire(CurTime() + 5.0)
			self.Owner:SetNWBool("Taunting",true)
			net.Start("ActivateTauntCam")
			net.Send(self.Owner)
			timer.Simple(0.5, function()
				local animent2 = ents.Create( 'base_gmodentity' ) -- The entity used for the death animation	
				animent2:SetModel("models/props_debris/concrete_chunk01a.mdl") 
				animent2:SetPos(self.Owner:GetAttachment(self.Owner:LookupAttachment("debris")).Pos)
				animent2:SetAngles(self.Owner:GetAttachment(self.Owner:LookupAttachment("debris")).Ang)
				animent2:Spawn()
				animent2:Activate()
				animent2:SetParent(self.Owner)
				animent2:SetName("DebrisModel"..self.Owner:EntIndex())
				animent2:Fire("SetParentAttachment","debris",0)
				local owner = self.Owner
				function animent2:Think()
					self:SetPos(owner:GetAttachment(owner:LookupAttachment("debris")).Pos)
					self:SetAngles(owner:GetAttachment(owner:LookupAttachment("debris")).Ang)
					self:NextThink(CurTime())
					return true
				end
			end)
		end
		timer.Simple(2.1, function()
			if SERVER then
				for k,v in ipairs(ents.FindByName("DebrisModel"..self.Owner:EntIndex())) do
					v:Remove()
				end
				if (!self.Owner:IsOnGround()) then
					self.Owner:EmitSound("HulkZombie.Throw.Fail")
					self:SetNextSecondaryFire(CurTime() + 0.8)
					self.Owner:SetNWBool("Taunting",false)
					net.Start("DeActivateTauntCam")
					net.Send(self.Owner)
					return
				else
					self.Owner:SetNWBool("Taunting",false)
					net.Start("DeActivateTauntCam")
					net.Send(self.Owner)
					self.Owner:EmitSound("HulkZombie.Throw", 125)
					local grenade = ents.Create("base_anim")
					grenade:SetModel("models/props_debris/concrete_chunk01a.mdl") 
					grenade:SetPos(self.Owner:GetShootPos())
					grenade:SetAngles(self.Owner:EyeAngles())
					grenade:PhysicsInit(SOLID_VPHYSICS)
					grenade:SetPhysicsAttacker(self.Owner)
					if self:Critical() then
						grenade.critical = true
					end
					
					grenade:SetOwner(self.Owner)
					
					grenade:Spawn()
					
					local vel = self.Owner:GetAimVector():Angle()
					vel.p = vel.p + self.AddPitch
					vel = vel:Forward() * self.Force * 100 
					
					grenade:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-80,80),math.random(-80,80),math.random(-2000,2000)))
					grenade:GetPhysicsObject():ApplyForceCenter(vel)
					
					function grenade:PhysicsCollide( data, phys )
						if ( data.Speed > 90 ) then 
							if (IsValid(data.HitEntity)) then
								self:Remove()
								timer.Simple(0.01, function()	
									local grenade = ents.Create("base_anim")
									grenade:SetModel("models/props_debris/concrete_chunk03a.mdl") 
									grenade:SetPos(pos)
									grenade:SetAngles(self.Owner:EyeAngles())
									grenade:PhysicsInit(SOLID_VPHYSICS)
									grenade:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
									
									grenade:Spawn()
									
									local vel = self:GetAngles()
									vel = vel:Forward() * 1800 * 100 
									
									grenade:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)))
									grenade:GetPhysicsObject():ApplyForceCenter(vel)
									local grenade2 = ents.Create("base_anim")
									grenade2:SetModel("models/props_debris/concrete_chunk04a.mdl") 
									grenade2:SetPos(pos)
									grenade2:SetAngles(self.Owner:EyeAngles())
									grenade2:PhysicsInit(SOLID_VPHYSICS)
									grenade2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
									
									grenade2:Spawn()
									
									grenade2:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)))
									grenade2:GetPhysicsObject():ApplyForceCenter(vel)
									local grenade3 = ents.Create("base_anim")
									grenade3:SetModel("models/props_debris/concrete_chunk05g.mdl") 
									grenade3:SetPos(pos)
									grenade3:SetAngles(self.Owner:EyeAngles())
									grenade3:PhysicsInit(SOLID_VPHYSICS)
									grenade3:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
									
									grenade3:Spawn()
									
									grenade3:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)))
									grenade3:GetPhysicsObject():ApplyForceCenter(vel)
									timer.Simple(5, function()
										grenade:Remove()
										grenade2:Remove()
										grenade3:Remove()
									end)
								end)
								self:EmitSound("player/tank/hit/thrown_projectile_hit_01.wav",95)
							else
								
								self:Remove()
								local effectdata = EffectData()
								effectdata:SetOrigin( self:GetPos() )
								timer.Simple(0.01, function()	
									local grenade = ents.Create("base_anim")
									grenade:SetModel("models/props_debris/concrete_chunk03a.mdl") 
									grenade:SetPos(self:GetPos())
									grenade:SetAngles(self:GetAngles())
									grenade:PhysicsInit(SOLID_VPHYSICS)
									
									grenade:Spawn()
									
									local vel = self:GetAngles()
									vel = vel:Forward() * 1000 * 100 
									
									grenade:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)))
									grenade:GetPhysicsObject():ApplyForceCenter(vel)
									local grenade2 = ents.Create("base_anim")
									grenade2:SetModel("models/props_debris/concrete_chunk04a.mdl") 
									grenade2:SetPos(self:GetPos())
									grenade2:SetAngles(self:GetAngles())
									grenade2:PhysicsInit(SOLID_VPHYSICS)
									
									grenade2:Spawn()
									
									grenade2:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)))
									grenade2:GetPhysicsObject():ApplyForceCenter(vel)
									local grenade3 = ents.Create("base_anim")
									grenade3:SetModel("models/props_debris/concrete_chunk05g.mdl") 
									grenade3:SetPos(self:GetPos())
									grenade3:SetAngles(self:GetAngles())
									grenade3:PhysicsInit(SOLID_VPHYSICS)
									
									grenade3:Spawn()
									
									grenade3:GetPhysicsObject():AddAngleVelocity(Vector(math.random(-2000,2000),math.random(-2000,2000),math.random(-2000,2000)))
									grenade3:GetPhysicsObject():ApplyForceCenter(vel)
									timer.Simple(5, function()
										grenade:Remove()
										grenade2:Remove()
										grenade3:Remove()
									end)
								end)
								self:EmitSound("player/tank/hit/thrown_projectile_hit_01.wav",95)
							end
							
						end
					end	
				end	
			end
		end)
	elseif self.Owner:GetPlayerClass() == "boomer" and self.Owner:IsBot() then
		self.Owner:SetWalkSpeed(1)
		self.Owner:SetRunSpeed(1)
		if (string.find(self.Owner:GetModel(),"l4d1")) then
			self.Owner:EmitSound("L4D1_BoomerZombie.Warn")
		else
			self.Owner:EmitSound("BoomerZombie.Warn")
		end
		self:SetNextPrimaryFire(CurTime() + 2.5) 
		self:SetNextSecondaryFire(CurTime() + 30.0) 
		timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 3.0)
		timer.Stop("BoomerVomit"..self.Owner:EntIndex())
		timer.Create("BoomerVomit"..self.Owner:EntIndex(), 1.0, 1, function()
		
			local vm = self.Owner:GetViewModel()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("vomit")))
			self.Owner:DoAnimationEvent(ACT_RANGE_ATTACK1)
			if SERVER then
				
				if (string.find(self.Owner:GetModel(),"l4d1")) then
					self.Owner:EmitSound("L4D1_Vomit.Use")
				else
					self.Owner:EmitSound("Vomit.Use")
				end
			end
			ParticleEffectAttach( "boomer_vomit_b", PATTACH_POINT_FOLLOW, self.Owner, 1 )
			ParticleEffectAttach( "boomer_vomit_c", PATTACH_POINT_FOLLOW, self.Owner, 1 )
			ParticleEffectAttach( "boomer_vomit_d", PATTACH_POINT_FOLLOW, self.Owner, 1 )
			ParticleEffectAttach( "boomer_vomit_e", PATTACH_POINT_FOLLOW, self.Owner, 1 )
			for k,v in ipairs(ents.FindInSphere(self.Owner:GetPos(), 300)) do
				if v:IsTFPlayer() and !v:IsFriendly(self.Owner) and v:EntIndex() != self.Owner:EntIndex() then
					
					if (!v:HasPlayerState(PLAYERSTATE_PUKEDON)) then
						if (v:IsPlayer()) then
							if SERVER then
								v:SendLua("LocalPlayer():EmitSound('Event.VomitInTheFace')")
							end
						end
						v:EmitSound("Event.BoomerHit")
						v:AddPlayerState(PLAYERSTATE_PUKEDON, true)	
					end
					timer.Simple(10, function()
						if (v:HasPlayerState(PLAYERSTATE_PUKEDON)) then
							v:RemovePlayerState(PLAYERSTATE_PUKEDON, false)	
						end
					end)
					local ent = v
					if not (ent:IsTFPlayer() and self.Owner:CanDamage(ent) and not ent:IsBuilding()) then return end
					
					local InflictorClass = gamemode.Call("GetInflictorClass", ent, self.Owner, self)
					if v:IsPlayer() then
						if SERVER then
							v:Speak("TLK_JARATE_HIT")	
						end
					end
					if SERVER then
						umsg.Start("Notice_EntityHumiliationCounter")
							umsg.String(GAMEMODE:EntityName(ent))
							umsg.Short(GAMEMODE:EntityTeam(ent))
							umsg.Short(GAMEMODE:EntityID(ent))
							
							umsg.String("deflect_acidball")
							
							umsg.String(GAMEMODE:EntityName(self.Owner))
							umsg.Short(GAMEMODE:EntityTeam(self.Owner))
							umsg.Short(GAMEMODE:EntityID(self.Owner))
							
							--[[
							umsg.String(GAMEMODE:EntityName(cooperator))
							umsg.Short(GAMEMODE:EntityTeam(cooperator))
							umsg.Short(GAMEMODE:EntityID(cooperator))]]
							
							umsg.Bool(self.CurrentShotIsCrit)
						umsg.End()
					end
					if  (v:IsPlayer()) then
						if  v:GetPlayerClass() == "francis" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/biker/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
						--v:EmitSound("music/terror/pukricide.wav", 55)
						if  v:GetPlayerClass() == "zoey" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/teenangst/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
						if  v:GetPlayerClass() == "louis" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/manager/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
		
						if  v:GetPlayerClass() == "coach" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/coach/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
							
						if v:GetPlayerClass() == "bill" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/namvet/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
					end
				end
			end
			timer.Simple(1.0, function()
				timer.Simple(0.5, function()
					self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
				end)
				self.Owner:ResetClassSpeed()
			end)
		end)
	elseif self.Owner:GetPlayerClass() == "headcrab" then
		
			local pos = self.Owner:GetShootPos()
			self:SetNextSecondaryFire(CurTime() + 1.5)					
			local angs = self.Owner:EyeAngles()
			angs.p = 0
			self.Owner:DoAnimationEvent(ACT_JUMP)
			self.Owner:EmitSound("NPC_Headcrab.Attack")
			self.Owner:SetRunSpeed(100)
			self.NameOverride = "hl_headcrab"
			self.Owner:SetLocalVelocity( self.Owner:GetAimVector() + Vector( 0, 0, 280 ) + self.Owner:GetVelocity() * 1 )
			timer.Create("HeadCrabEat"..self.Owner:EntIndex(), 0.01, 0, function()
				if self.Owner:OnGround() then timer.Stop("HeadCrabEat"..self.Owner:EntIndex()) return end
				for k,v in ipairs(ents.FindInSphere(self.Owner:GetPos(), 80)) do
					if v:IsTFPlayer() and v != self.Owner and v:Health() >= 20 then
						v:TakeDamage(40, self.Owner, self)
						self.Owner:EmitSound("NPC_HeadCrab.Bite")
						timer.Stop("HeadCrabEat"..self.Owner:EntIndex())
					elseif v:IsTFPlayer() and v != self.Owner and v:Health() <= 20 then
						self.Owner:SetPlayerClass("zombie")
						v:TakeDamage(v:Health(), self.Owner, self)
						self.Owner:EmitSound("NPC_HeadCrab.Bite")
						self:EmitSound("Zombie.Alert")
						timer.Stop("HeadCrabEat"..self.Owner:EntIndex())
					end
				end
			end)

	elseif self.Owner:GetPlayerClass() == "zombie" then
		self:SetNextSecondaryFire(CurTime() + 2)
		self.Owner:EmitSound("Zombie.Pain")
		self.Owner:DoAnimationEvent(ACT_SIGNAL_HALT, true)
		self.Owner:SetClassSpeed(0.01)
		timer.Simple(1, function()			
			local angs = self.Owner:EyeAngles()
			angs.p = 0
			self.Owner:EmitSound("NPC_Headcrab.Attack")
			self.Owner:SetLocalVelocity( self.Owner:GetAimVector() + Vector( 0, 0, 280 ) + self.Owner:GetVelocity() * 4 )
			self.Owner:SetPlayerClass("headcrab")
		end)
	elseif self.Owner:GetPlayerClass() == "zombine" then
			self:SetNextSecondaryFire(CurTime() + 3)


		timer.Simple(0.6, function()
			self.Owner:EmitSound("Zombine.ReadyGrenade")
			self:SetHoldType("GRENADE")
			if SERVER then
				local nade=ents.Create("npc_grenade_frag")
				nade:SetPos(self.Owner:GetPos())
				nade:SetParent(self.Owner)
				nade:Spawn() 
				nade:Fire("setparentattachment","grenade_attachment", 0)
				nade:Fire("SetTimer","5",0)
				nade:CallOnRemove("NadeSplodeKillPlayer",function()
					if IsValid(ent) then self.Owner:Kill() end
				end)
				timer.Simple(5, function()
					self:SetHoldType("MELEE")
				end)
			end
		end)
	else
		if self.HasSecondaryFire == true then
			if self.HasCustomMeleeBehaviour then return true end
			
			if self:CriticalEffect() then
				self:EmitSound(self.SwingCrit, 100, 100)
				--[[if SERVER then
					self:EmitSound(self.SwingCrit, 100, 100)
					umsg.Start("DoMeleeSwing",self.Owner)
						umsg.Entity(self)
						umsg.Bool(true)
					umsg.End()
				end]]
				self:SendWeaponAnimEx(self.VM_SWINGHARD)
				if self.HasThirdpersonCritAnimation then
					self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_SECONDARYFIRE, true)
				else
					self.Owner:SetAnimation(PLAYER_ATTACK1)
				end
			else
				self:EmitSound(self.Swing, 100, 100)
				--[[if SERVER then
					self:EmitSound(self.Swing, 100, 100)
					umsg.Start("DoMeleeSwing",self.Owner)
						umsg.Entity(self)
						umsg.Bool(false)
					umsg.End()
				end]]
				
				self:SendWeaponAnim(self.VM_HITRIGHT)
				self.Owner:SetAnimation(PLAYER_ATTACK1)
			end
			
			--self.NextMeleeAttack = CurTime() + self.MeleeAttackDelay
			if not self.NextMeleeAttack then
				self.NextMeleeAttack = {}
			end
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
			self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
			table.insert(self.NextMeleeAttack, CurTime() + self.MeleeAttackDelay)
		end
	end
	self.NextIdle = CurTime() + self:SequenceDuration() 
end

SWEP.Special_HumiliationCount = "#Humiliation_Count"
SWEP.Special_HumiliationKill = "LAUGH KILL!"

-- Open the area portal linked to this door entity


function SWEP:PrimaryAttack()
	if self.Owner:KeyDown(IN_ATTACK2) then return end
	if SERVER then
		self.Owner:Speak("TLK_FIREWEAPON")
	end
	if self.Owner:GetPlayerClass() == "headcrab" then return end
	if self.Owner:GetPlayerClass() == "charger" and !self.Owner:IsBot() then return end
	if self.Owner:GetPlayerClass() == "spitter" and !self.Owner:IsBot() then
		self.Owner:DoAnimationEvent(self.Owner:GetSequenceActivity(self.Owner:LookupSequence("spitter_spitting")))
		self.Owner:SetWalkSpeed(1)
		self.Owner:SetRunSpeed(1)
		self:SendWeaponAnim(self.Owner:GetViewModel():GetSequenceActivity(self.Owner:GetViewModel():LookupSequence("spit")))
		if SERVER then
			timer.Simple(0.5, function()
				local grenade = ents.Create("obj_vj_l4d_spit")
				grenade:SetPos(self.Owner:GetShootPos())
				grenade:SetAngles(self.Owner:EyeAngles())
				if self:Critical() then
					grenade.critical = true
				end
				
				grenade:SetOwner(self.Owner)
				
				grenade:Spawn()
				
				local vel = self.Owner:GetAimVector():Angle()
				vel.p = vel.p + self.AddPitch
				vel = vel:Forward() * self.Force * 30 
				grenade:GetPhysicsObject():ApplyForceCenter(vel)
			end)
			self.Owner:EmitSound("SpitterZombie.Spit")
			timer.Simple(1.0, function()
				self.Owner:ResetClassSpeed()
			end)
		end
		self:SetNextPrimaryFire(CurTime() + 30)
		self:SetNextSecondaryFire(CurTime() + 1.5)
	elseif self.Owner:GetPlayerClass() == "boomer" and !self.Owner:IsBot() then
		self.Owner:SetWalkSpeed(1)
		self.Owner:SetRunSpeed(1)
		self:SetNextSecondaryFire(CurTime() + 1.5) 
		self:SetNextPrimaryFire(CurTime() + 30.0) 
		timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 2.5)
		timer.Stop("BoomerVomit"..self.Owner:EntIndex())
			local vm = self.Owner:GetViewModel()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("vomit")))
			self.Owner:DoAnimationEvent(ACT_RANGE_ATTACK1)
			if SERVER then
				
				if (string.find(self.Owner:GetModel(),"l4d1")) then
					self.Owner:EmitSound("L4D1_Vomit.Use")
				else
					self.Owner:EmitSound("Vomit.Use")
				end
			end
			ParticleEffectAttach( "boomer_vomit_b", PATTACH_POINT_FOLLOW, self.Owner, 1 )
			ParticleEffectAttach( "boomer_vomit_c", PATTACH_POINT_FOLLOW, self.Owner, 1 )
			ParticleEffectAttach( "boomer_vomit_d", PATTACH_POINT_FOLLOW, self.Owner, 1 )
			ParticleEffectAttach( "boomer_vomit_e", PATTACH_POINT_FOLLOW, self.Owner, 1 )
			for k,v in ipairs(ents.FindInSphere(self.Owner:GetPos(), 300)) do
				if v:IsTFPlayer() and !v:IsFriendly(self.Owner) and v:EntIndex() != self.Owner:EntIndex() then
					
					if (!v:HasPlayerState(PLAYERSTATE_PUKEDON)) then
						if (v:IsPlayer()) then
							if SERVER then
								v:SendLua("LocalPlayer():EmitSound('Event.VomitInTheFace')")
							end
						end
						v:EmitSound("Event.BoomerHit")
						v:AddPlayerState(PLAYERSTATE_PUKEDON, true)	
					end
					timer.Simple(10, function()
						if (v:HasPlayerState(PLAYERSTATE_PUKEDON)) then
							v:RemovePlayerState(PLAYERSTATE_PUKEDON, false)	
						end
					end)
					local ent = v
					if not (ent:IsTFPlayer() and self.Owner:CanDamage(ent) and not ent:IsBuilding()) then return end
					
					local InflictorClass = gamemode.Call("GetInflictorClass", ent, self.Owner, self)
					if v:IsPlayer() then
						if SERVER then
							v:Speak("TLK_JARATE_HIT")	
						end
					end
					if SERVER then
						umsg.Start("Notice_EntityHumiliationCounter")
							umsg.String(GAMEMODE:EntityName(ent))
							umsg.Short(GAMEMODE:EntityTeam(ent))
							umsg.Short(GAMEMODE:EntityID(ent))
							
							umsg.String("deflect_acidball")
							
							umsg.String(GAMEMODE:EntityName(self.Owner))
							umsg.Short(GAMEMODE:EntityTeam(self.Owner))
							umsg.Short(GAMEMODE:EntityID(self.Owner))
							
							--[[
							umsg.String(GAMEMODE:EntityName(cooperator))
							umsg.Short(GAMEMODE:EntityTeam(cooperator))
							umsg.Short(GAMEMODE:EntityID(cooperator))]]
							
							umsg.Bool(self.CurrentShotIsCrit)
						umsg.End()
					end
					if  (v:IsPlayer()) then
						if  v:GetPlayerClass() == "francis" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/biker/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
						--v:EmitSound("music/terror/pukricide.wav", 55)
						if  v:GetPlayerClass() == "zoey" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/teenangst/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
						if  v:GetPlayerClass() == "louis" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/manager/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
		
						if  v:GetPlayerClass() == "coach" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/coach/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
							
						if v:GetPlayerClass() == "bill" and  v:IsPlayer() then
							v:EmitSound("player/survivor/voice/namvet/boomerreaction0"..math.random(1,9)..".wav", 85)
						end
					end
				end
			end
			timer.Simple(1.0, function()
				timer.Simple(0.5, function()
					self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
				end)
				self.Owner:ResetClassSpeed()
			end)
	elseif self.Owner:GetPlayerClass() == "hunter" and !self.Owner:IsBot() then
		if !self.Owner:Crouching() then
			return
		end
		if self.Owner:IsBot() and !self.ReadyToPounce then
			return
		end
		local vm = self.Owner:GetViewModel()
		self:SetNextSecondaryFire(CurTime() + 0.6)
		
		local function PhysCallback( ent, data ) -- Function that will be called whenever collision happends
			local effect = EffectData() -- Create effect data
			effect:SetOrigin( data.HitPos ) -- Set origin where collision point is
			util.Effect( "cball_bounce", effect ) -- Spawn small sparky effect
		end
		self.Owner:AddCallback( "PhysicsCollide", PhysCallback ) -- Add Callback
		if (self.Owner:IsOnGround()) then
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("lunge")))
			self.Owner:SetPos(self.Owner:GetPos() + Vector(0,0,30))
			timer.Create("Pounce"..self.Owner:EntIndex(), 0, 2, function()
				self.Owner:SetVelocity( self.Owner:GetAimVector() * 300 * 3.1 )
			end)
			self.Owner:DoAnimationEvent(self.Owner:GetSequenceActivity(self.Owner:LookupSequence("Pounce_01")))
			timer.Simple(self.Owner:SequenceDuration(self.Owner:LookupSequence("Pounce_01")) , function()
				/*
				if (self.Owner:GetAngles():Up():Length() > 0.7) then
					self.Owner:AddVCDSequenceToGestureSlot(GESTURE_SLOT_JUMP, self.Owner:LookupSequence("pounce_idle_high"),0,true)
					timer.Create("LoopHunterAnim"..self.Owner:EntIndex(), self.Owner:SequenceDuration(self.Owner:LookupSequence("pounce_idle_high")), 0, function()
						print(self.Owner:GetAimVector():LengthSqr())
						self.Owner:AddVCDSequenceToGestureSlot(GESTURE_SLOT_JUMP, self.Owner:LookupSequence("pounce_idle_high"),0,true)
					end)
				else*/
					
					self.Owner:DoAnimationEvent(self.Owner:GetSequenceActivity(self.Owner:LookupSequence("pounce_idle_low")))
					timer.Create("LoopHunterAnim"..self.Owner:EntIndex(), self.Owner:SequenceDuration(self.Owner:LookupSequence("pounce_idle_low")) , 0, function()
						//print(self.Owner:GetAimVector():LengthSqr())
						self.Owner:DoAnimationEvent(self.Owner:GetSequenceActivity(self.Owner:LookupSequence("Pounce_idle_low")))
					end)
				//end
			end)
		end
		if self.Owner:GetPlayerClass() == "hunter" and self.Owner:IsOnGround() then
			if SERVER then
				self.Owner:EmitSound( "HunterZombie.Pounce" )
			end
		end
		
 		self:TakePrimaryAmmo(1)
		
		self.NextIdle = CurTime() + self:SequenceDuration() 
		timer.Simple(0.55, function()
			timer.Create("CheckIfOnGround", 0.001, 0, function()
				if self.Owner:OnGround() then
					timer.Stop("LoopHunterAnim"..self.Owner:EntIndex())
					if SERVER then 
						if (self.Owner:IsBot()) then
							self.Owner:RemoveFlags(FL_DUCKING)
						end
						if self.Owner:GetPlayerClass() == "hunter" then
							for k,v in pairs(ents.FindInSphere(self.Owner:GetPos(), 95 )) do
								if v:IsTFPlayer() and v:Health() > 1 then
									if v:IsTFPlayer() and v:EntIndex() != self.Owner:EntIndex() and not v:IsFriendly(self.Owner) then
										if (self.Owner:IsBot()) then
											self.ReadyToPounce = false
										end
										v:TakeDamage(4, self.Owner, self)
										self.Owner:DoAnimationEvent(ACT_DOD_PRONE_DEPLOYED)
										if not self.Owner:IsOnGround() then return end
										if self.Owner:WaterLevel() ~= 0 then return end
										self.Owner:DoAnimationEvent(ACT_DOD_HS_CROUCH_KNIFE, true)
										self.Owner:SetNWBool("Taunting", true)
										self.Owner:SetNWBool("NoWeapon", true)
										net.Start("ActivateTauntCam")
										net.Send(self.Owner)
										net.Start("ActivateTauntCam")
										net.Send(v)
										v:SetPos(self.Owner:GetPos())
										self.Owner:SetMoveType(MOVETYPE_NONE)
										v:SetMoveType(MOVETYPE_NONE)
										v:SetNWBool("Taunting", true)
										self.Owner:EmitSound("HunterZombie.Pounce.Hit")
										local ply = v
										local ent = v
										ent:SetPos(ent:GetPos() + Vector(0,0,30))
										ent:SetMoveType(MOVETYPE_FLYGRAVITY)
										ent:SetNoDraw(true)
										local animent = ents.Create( 'base_gmodentity' ) -- The entity used for the death animation	
										animent:SetModel("models/cpthazama/l4d2/shared/anim_survivor.mdl")
										animent:SetSkin(self.Owner:GetSkin())
										animent:SetPos(self.Owner:GetPos())
										animent:SetAngles(self.Owner:GetAngles() + Angle(0,180,0))
										animent:Spawn()
										animent:Activate()
										ply.RagdollEntity = animent
										animent:SetSolid( SOLID_OBB ) -- This stuff isn't really needed, but just for physics
										animent:PhysicsInit( SOLID_OBB )
										animent:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
										animent:SetSequence( "Idle_Incap_Pounced" )
										animent:SetPlaybackRate( 1 )
										local animent2 = ents.Create( 'prop_dynamic_override' ) -- The entity used for the death animation	
										animent2:SetModel(ply:GetModel())
										animent2:SetSkin(ply:GetSkin())
										animent2:SetPos(ply:GetPos())
										animent2:SetAngles(ply:GetAngles())
										animent2:SetParent(animent)
										animent2:AddEffects(EF_BONEMERGE)
										function animent:Think() -- This makes the animation work
											if (self:GetCycle() == 1) then
												self:SetCycle(0)
											end
											self:NextThink( CurTime() )
											return true
										end
										ply.RagdollEntity2 = animent2
										animent.AutomaticFrameAdvance = true
										timer.Simple(0.1, function()
											net.Start("ActivateTauntCam")
											net.Send(v)
										end)
										timer.Create("LoopHunterAnim"..self.Owner:EntIndex(), self.Owner:SequenceDuration(self.Owner:LookupSequence("Melee_Pounce")), 0, function()
											self.Owner:DoAnimationEvent(ACT_DOD_PRONE_DEPLOYED, true)
										end)
										timer.Create("RIPTHATASSHOLEAPART"..self.Owner:EntIndex(), 0.1, 0, function()
											if v:Health() <= 1 then 
												self.Owner:DoAnimationEvent(ACT_DOD_RELOAD_DEPLOYED_FG42)
												timer.Stop("LoopHunterAnim"..self.Owner:EntIndex())
												timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
												self.Owner:SetNWBool("Taunting", false)
												self.Owner:SetNWBool("NoWeapon", false)
												--v:SetParent()
												self.Owner:SetMoveType(MOVETYPE_WALK)
												v:SetMoveType(MOVETYPE_WALK)
												self.Owner:ResetClassSpeed()
												self.Owner:SetPos(v:GetPos() + Vector(40, 40, 40))
												net.Start("DeActivateTauntCam")
												net.Send(self.Owner)
												net.Start("DeActivateTauntCam")
												net.Send(v)
												ent:SetNoDraw(false)
												if (IsValid(animent)) then
													animent:Remove()
												end
												if (IsValid(animent2)) then
													animent2:Remove()
												end
												
												timer.Simple(20, function()
													if (IsValid(self)) then
														self.ReadyToPounce = true
													end
												end)
											end
											if self.Owner:Health() <= 1 then 
												self.Owner:DoAnimationEvent(ACT_DOD_RELOAD_DEPLOYED_FG42)
												timer.Stop("LoopHunterAnim"..self.Owner:EntIndex())
												timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
												self.Owner:SetNWBool("Taunting", false)
												self.Owner:SetNWBool("NoWeapon", false)
												--v:SetParent()
												v:ResetClassSpeed()												
												self.Owner:SetMoveType(MOVETYPE_WALK)
												v:SetMoveType(MOVETYPE_WALK)
												v:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
												net.Start("DeActivateTauntCam")
												net.Send(self.Owner)
												net.Start("DeActivateTauntCam")
												net.Send(v)
												ent:SetNoDraw(false)
												if (IsValid(animent)) then
													animent:Remove()
												end
												if (IsValid(animent2)) then
													animent2:Remove()
												end
											end
											v:TakeDamage(2, self.Owner, self)
										end)
									end  
								else
									self.Owner:EmitSound("HunterZombie.Pounce.Miss")
								end
							end
							elseif self.Owner:GetPlayerClass() == "jockey" then

								for k,v in pairs(ents.FindInSphere(self.Owner:GetPos(), 110)) do
									if v:Health() >= 0 then
										if v:IsPlayer() and v:Nick() != self.Owner:Nick() and not v:IsFriendly(self.Owner) then
											v:TakeDamage(15, self.Owner, self)
											self.Owner:DoAnimationEvent(ACT_DOD_PRONE_DEPLOYED)
											if not self.Owner:IsOnGround() then return end
											if self.Owner:WaterLevel() ~= 0 then return end
											self.Owner:DoAnimationEvent(ACT_DOD_HS_CROUCH_KNIFE, true)
											self.Owner:SetNWBool("Taunting", true)
											self.Owner:SetNWBool("NoWeapon", true)
											net.Start("ActivateTauntCam")
											net.Send(self.Owner)
											self.Owner:SetParent(v, v:LookupAttachment("head"))
											v:EmitSound("player/charger/hit/charger_punch"..math.random(1,4)..".wav", 85, 100)
											v:EmitSound("Jockey.Music")
											v:EmitSound("music/tags/exenterationhit.wav")
											self.Owner:EmitSound("jockey/voice/attack/jockey_attackloop01.wav")
											timer.Create("RIPTHATASSHOLEAPART"..self.Owner:EntIndex(), 1, 0, function()
												if v:Health() <= 1 then 
													timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
													v:StopSound("Jockey.Music")
													self.Owner:SetNWBool("Taunting", false)
													self.Owner:SetNWBool("NoWeapon", false)
													self.Owner:SetParent()
													self.Owner:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
													net.Start("DeActivateTauntCam")
													net.Send(self.Owner)
													return 
												end
												if !self.Owner:Alive() then 
													timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
													v:StopSound("Jockey.Music")
													self.Owner:SetNWBool("Taunting", false)
													self.Owner:SetNWBool("NoWeapon", false)
													self.Owner:SetParent()
													self.Owner:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
													net.Start("DeActivateTauntCam")
													net.Send(self.Owner)
													return 
												end
												v:TakeDamage(15, self.Owner, self)
												v:EmitSound("player/charger/hit/charger_punch"..math.random(1,4)..".wav", 85, 100)
											end)
										end
										if v:IsNPC() and not v:IsFriendly(self.Owner) then
											v:TakeDamage(15, self.Owner, self)
											self.Owner:DoAnimationEvent(ACT_DOD_PRONE_DEPLOYED)
											if not self.Owner:IsOnGround() then return end
											if self.Owner:WaterLevel() ~= 0 then return end
											self.Owner:DoAnimationEvent(ACT_DOD_HS_CROUCH_KNIFE, true)
											self.Owner:SetNWBool("Taunting", true)
											self.Owner:SetNWBool("NoWeapon", true)
											net.Start("ActivateTauntCam")
											net.Send(self.Owner)
											self.Owner:SetParent(v)
											v:EmitSound("player/charger/hit/charger_punch"..math.random(1,4)..".wav", 85, 100)
											v:EmitSound("music/tags/exenterationhit.wav")
											self.Owner:EmitSound("jockey/voice/attack/jockey_attackloop01.wav")
											timer.Create("RIPTHATASSHOLEAPART"..self.Owner:EntIndex(), 1, 0, function()
												if v:Health() <= 1 then 
													timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
													self.Owner:SetNWBool("Taunting", false)
													self.Owner:SetNWBool("NoWeapon", false)
													self.Owner:SetParent()
													self.Owner:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
													net.Start("DeActivateTauntCam")
													net.Send(self.Owner)
													return 
												end
												if !self.Owner:Alive() then 
													timer.Stop("RIPTHATASSHOLEAPART"..self.Owner:EntIndex()) 
													self.Owner:SetNWBool("Taunting", false)
													self.Owner:SetNWBool("NoWeapon", false)
													self.Owner:SetParent()
													self.Owner:SetPos(self.Owner:GetPos() + Vector(40, 40, 40))
													net.Start("DeActivateTauntCam")
													net.Send(self.Owner)
													return 
												end
												v:TakeDamage(15, self.Owner, self)
												v:EmitSound("player/charger/hit/charger_punch"..math.random(1,4)..".wav", 85, 100)
											end)
										end
									end
							end
						end
					end
					timer.Stop("CheckIfOnGround")
				end
			end)
		end)
		if (self.Owner:GetPlayerClass() == "tank") then
			if SERVER then
				vm:RestartGesture(vm:GetSequenceActivity(vm:LookupSequence("claw_melee_layer")))
			end
		elseif (self.Owner:GetPlayerClass() == "hunter") then
			self:SendWeaponAnim(vm:GetSequenceActivity(table.Random({vm:LookupSequence("claw_melee_layer"),vm:LookupSequence("claw_melee_layer2"),vm:LookupSequence("claw_melee_layer3")})))
		end
	elseif (self.Owner:IsBot() or self.Owner:GetPlayerClass() == "tank") then
		
		
		if self.Owner:GetPlayerClass() == "boomer" then
			if (game.IsDedicated()) then
				local time = 0.23
				if (self.Owner:KeyDown(IN_ATTACK2)) then
					if (string.find(self.Owner:GetModel(),"l4d1")) then
						self.Owner:EmitSound("L4D1_BoomerZombie.Attack")
					else
						self.Owner:EmitSound("BoomerZombie.Attack")
					end
				end
				timer.Create("Growl"..self.Owner:EntIndex(), time, 0, function()
	
					if (self.Owner:KeyDown(IN_ATTACK2)) then
						if (string.find(self.Owner:GetModel(),"l4d1")) then
							self.Owner:EmitSound("L4D1_BoomerZombie.Attack")
						else
							self.Owner:EmitSound("BoomerZombie.Attack")
						end
					end
				end)
			else
				timer.Stop("Growl"..self.Owner:EntIndex())
			end
			if (math.random(1,3) == 1) then
				timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
				if (string.find(self.Owner:GetModel(),"l4d1")) then
					self.Owner:EmitSound("L4D1_BoomerZombie.Attack")
				else
					self.Owner:EmitSound("BoomerZombie.Attack")
				end
			end
		end
		if self.Owner:GetPlayerClass() == "smoker" then
			if (math.random(1,3) == 1) then
				timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
				if (string.find(self.Owner:GetModel(),"l4d1")) then
					self.Owner:EmitSound("L4D1_SmokerZombie.Attack")
				else
					self.Owner:EmitSound("SmokerZombie.Attack")
				end
			end
		end
		if self.Owner:GetPlayerClass() == "hunter" then
			if (game.IsDedicated()) then
				local time = 0.25
				if (self.Owner:KeyDown(IN_ATTACK2)) then
					self.Owner:EmitSound("PlayerZombie.Attack")
				end
				timer.Create("Growl"..self.Owner:EntIndex(), time, 0, function()
	
					if (self.Owner:KeyDown(IN_ATTACK2)) then
						self.Owner:EmitSound("PlayerZombie.Attack")
					end
				end)
			else
				timer.Stop("Growl"..self.Owner:EntIndex())
			end
			if (math.random(1,3) == 1) then
				timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
				self.Owner:EmitSound("PlayerZombie.Attack")
			end
		end
		--self.NextMeleeAttack = CurTime() + self.MeleeAttackDelay
		if not self.NextMeleeAttack then
			self.NextMeleeAttack = {}
		end
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		if (self.Owner:GetPlayerClass() != "boomer" && self.Owner:GetPlayerClass() != "spitter") then
			self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
		end
		self.NextIdle = CurTime() + self:SequenceDuration() 
		table.insert(self.NextMeleeAttack, CurTime() + self.MeleeAttackDelay)
		if self.HasCustomMeleeBehaviour then return true end
			
		local vm = self.Owner:GetViewModel()	
		if self:CriticalEffect() then
			self:EmitSound(self.SwingCrit, 100, 100)
			self:SendWeaponAnimEx(self.VM_SWINGHARD)
			if self.HasThirdpersonCritAnimation then
				self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_SECONDARYFIRE, true)
			else
				self.Owner:SetAnimation(PLAYER_ATTACK1)
			end
		else
			self:EmitSound(self.Swing, 100, 100)
		end
		self:SendWeaponAnim(self.VM_HITLEFT)
		self.Owner:SetAnimation(PLAYER_ATTACK1)
		if self.Owner:GetPlayerClass() == "tank" or self.Owner:GetPlayerClass() == "boomer"or self.Owner:GetPlayerClass() == "spitter"or self.Owner:GetPlayerClass() == "boomette"  or self.Owner:GetPlayerClass() == "smoker" or self.Owner:GetPlayerClass() ==  "hunter" or self.Owner:GetPlayerClass() ==  "jockey" or self.Owner:GetPlayerClass() ==  "witch" then
			timer.Adjust("VoiceL4d"..self.Owner:EntIndex(), 1.5)
			self.Owner:DoAnimationEvent(ACT_MELEE_ATTACK1)
			self.MeleeRange = 100
		elseif self.Owner:GetPlayerClass() == "charger" then
			self.Owner:DoAnimationEvent(ACT_GESTURE_TURN_LEFT90)
		elseif self.Owner:GetPlayerClass() == "L4D1_zombie" then
			self.Owner:DoAnimationEvent(ACT_MELEE_ATTACK2)
		end
		self.NextIdle = CurTime() + self:SequenceDuration() 
		if (self.Owner:GetPlayerClass() == "tank") then
			if SERVER then
				vm:RestartGesture(vm:GetSequenceActivity(vm:LookupSequence("claw_melee_layer")))
			end
		elseif (self.Owner:GetPlayerClass() == "hunter") then
			self:SendWeaponAnim(vm:GetSequenceActivity(table.Random({vm:LookupSequence("claw_melee_layer"),vm:LookupSequence("claw_melee_layer2"),vm:LookupSequence("claw_melee_layer3")})))
		end
	else
		self:SendWeaponAnim(self.VM_HITLEFT)
		self.Owner:SetAnimation(PLAYER_ATTACK1)
		
		if self.Owner:GetPlayerClass() == "zombie" then
			self.Owner:DoAnimationEvent(ACT_MELEE_ATTACK1)
			self.Owner:EmitSound("Zombie.Attack")
			self.MeleeAttackDelay = 0.75
			self.Owner:SetBodygroup(1,1)
			self.Primary.Delay = 1.6
			self.NameOverride = "hl_zombie"
		end
		if self.Owner:GetPlayerClass() == "fastzombie" then
			self.Owner:DoAnimationEvent(ACT_GMOD_GESTURE_RANGE_ZOMBIE_SPECIAL)
			self.Owner:EmitSound("NPC_FastZombie.Attack")
			self.MeleeAttackDelay = 0.5
			self.Owner:SetBodygroup(1,1)
			self.Primary.Delay = 1
			self.NameOverride = "hl_zombie"
		end
		if self.Owner:GetPlayerClass() == "poisonzombie" then
			self.Owner:DoAnimationEvent(ACT_MELEE_ATTACK1)
			self.Owner:EmitSound("NPC_PoisonZombie.Attack")
			self.MeleeAttackDelay = 1
			self.Owner:SetBodygroup(1,1)
			self.Owner:SetBodygroup(2,1)
			self.Owner:SetBodygroup(3,1)
			self.Owner:SetBodygroup(4,1)
			self.Primary.Delay = 2
			self.NameOverride = "hl_zombie"
		end
		if self.Owner:GetPlayerClass() == "zombine" then
			self.Owner:EmitSound("Zombine.Alert")
			self.Owner:DoAnimationEvent(ACT_VM_UNLOAD, true) 
			self.MeleeAttackDelay = 0.2
			self.Owner:SetBodygroup(1,1)
			self.Primary.Delay = 0.7
			self.NameOverride = "hl_zombie"
		end	
		--self.NextMeleeAttack = CurTime() + self.MeleeAttackDelay
		if not self.NextMeleeAttack then
			self.NextMeleeAttack = {}
		end
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		if (self.Owner:GetPlayerClass() != "boomer") then
			self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
		end
		self.NextIdle = CurTime() + self:SequenceDuration() 
		table.insert(self.NextMeleeAttack, CurTime() + self.MeleeAttackDelay)
		if self.HasCustomMeleeBehaviour then return true end
				
		if self:CriticalEffect() then
			self:EmitSound(self.SwingCrit, 100, 100)
			self:SendWeaponAnimEx(self.VM_SWINGHARD)
			if self.HasThirdpersonCritAnimation then
				self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_SECONDARYFIRE, true)
			else
				self.Owner:SetAnimation(PLAYER_ATTACK1)
			end
		else
			self:EmitSound(self.Swing, 100, 100)
		end
	end
end