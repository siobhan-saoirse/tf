if SERVER then
	AddCSLuaFile( "shared.lua" )
	
function SWEP:SetMinigunEffect(i)
	if self.LastEffect==i then return end
	
	umsg.Start("SetMinigunEffect")
		umsg.Entity(self)
		umsg.Char(i)
	umsg.End()
	
	self.LastEffect = i
end

end


if CLIENT then

SWEP.PrintName			= "Minigun"
SWEP.Slot				= 0

function SWEP:SetMinigunEffect(i)
	if self.LastEffect==i then return end
	
	local effect
	
	if i==1 then
		effect = "muzzle_minigun_constant"
	end
	
	if self.Owner==LocalPlayer() and IsValid(self.Owner:GetViewModel()) and self.DrawingViewModel then
		local vm = self:GetViewModelEntity()
		vm:StopParticles()
		if effect then
			ParticleEffectAttach(effect, PATTACH_POINT_FOLLOW, vm, vm:LookupAttachment("muzzle"))
		end
	else
		local ent = self:GetWorldModelEntity()
		ent:StopParticles()
		if effect then
			ParticleEffectAttach(effect, PATTACH_POINT_FOLLOW, ent, ent:LookupAttachment("muzzle"))
		end
	end
	
	self.LastEffect = i
end

usermessage.Hook("SetMinigunEffect", function(msg)
	local w = msg:ReadEntity()
	local i = msg:ReadChar()
	if IsValid(w) and w.SetMinigunEffect then
		w:SetMinigunEffect(i)
	end
end)


SWEP.MinigunMaxSpinSpeed = 10
SWEP.MinigunSpinAcceleration = 0.07

function SWEP:InitializeCModel()
	self:CallBaseFunction("InitializeCModel")
	
	if IsValid(self.CModel) then
		if string.lower(self.CModel:GetModel()) == "models/weapons/c_models/c_leviathan/c_leviathan.mdl" then
			self.CModel.LeviathanBarrelFix = true
		end
	end
end


function SWEP:MinigunViewmodelReset()
	if self.Owner==LocalPlayer() then
		self:GetViewModelEntity():RemoveBuildBoneHook("MinigunSpin")
	end
end

end

PrecacheParticleSystem("eject_minigunbrass")

SWEP.Base				= "tf_weapon_gun_base"

SWEP.ViewModel			= "models/weapons/v_models/v_minigun_heavy.mdl"
SWEP.WorldModel			= "models/weapons/c_models/c_minigun/c_minigun.mdl"
SWEP.Crosshair = "tf_crosshair4"

SWEP.Spawnable = true
SWEP.AdminSpawnable = false
SWEP.Category = "Team Fortress 2"

SWEP.MuzzleEffect = "muzzle_minigun"
SWEP.MuzzleOffset = Vector(20, 3, -10)
SWEP.TracerEffect = "bullet_tracer01"
PrecacheParticleSystem("muzzle_minigun")
PrecacheParticleSystem("bullet_tracer01_red")
PrecacheParticleSystem("bullet_tracer01_red_crit")
PrecacheParticleSystem("bullet_tracer01_blue")
PrecacheParticleSystem("bullet_tracer01_blue_crit")
SWEP.barrelRotation 		= 0
SWEP.barrelSpeed 			= 1
SWEP.barrelValue1 			= 0
SWEP.BaseDamage = 5
SWEP.DamageRandomize = 0
SWEP.MaxDamageRampUp = 1
SWEP.MaxDamageFalloff = 0.2

SWEP.BulletsPerShot = 1
SWEP.BulletSpread = 0.1

SWEP.Primary.ClipSize		= -1
SWEP.Primary.Ammo			= TF_PRIMARY
SWEP.Primary.Delay          = 0.08

SWEP.Secondary.Delay          = 0.1

SWEP.IsRapidFire = true

SWEP.HoldType = "PRIMARY"
SWEP.HoldTypeHL2 = "crossbow"

SWEP.ReloadSound = Sound("Weapon_Minigun.Reload")
SWEP.EmptySound = Sound("Weapon_Minigun.ClipEmpty")
SWEP.ShootSound2 = Sound("Weapon_Minigun.Fire")
SWEP.SpecialSound1 = Sound("Weapon_Minigun.WindUp")
SWEP.SpecialSound2 = Sound("Weapon_Minigun.WindDown")
SWEP.SpecialSound3 = Sound("Weapon_Minigun.Spin")
SWEP.ShootCritSound = Sound("Weapon_Minigun.FireCrit")
SWEP.DeploySound = Sound("weapons/draw_default.wav")

function SWEP:CreateSounds()
	self.SpinUpSound = CreateSound(self, self.SpecialSound1)
	self.SpinDownSound = CreateSound(self, self.SpecialSound2)
	self.SpinSound = CreateSound(self, self.SpecialSound3)
	self.ShootSoundLoop = CreateSound(self, self.ShootSound2)
	self.ShootCritSoundLoop = CreateSound(self, self.ShootCritSound)
	
	self.SoundsCreated = true
end

if SERVER then

function SWEP:InitializeWModel2()
	self:CallBaseFunction("InitializeWModel2")
end

end

function SWEP:SpinUp()
	if SERVER then
		self.Owner.minigunfiretime = 0
		self.Owner:Speak("TLK_WINDMINIGUN", true)
	end
	
	--self.Owner:SetAnimation(10004)
	
	if SERVER then
		self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_PREFIRE, true)
	end
	
	if (self:GetItemData().model_player == "models/workshop/weapons/c_models/c_gatling_gun/c_gatling_gun.mdl") then
		self.Owner:GetViewModel():SetPlaybackRate(0.65)
	end
	self:SendWeaponAnim(self.VM_PREFIRE)
	
	if (self:GetItemData().model_player == "models/workshop/weapons/c_models/c_gatling_gun/c_gatling_gun.mdl") then
		self.Owner:GetViewModel():SetPlaybackRate(0.65)
	end
	self:SetNetworkedBool("Spinning", true)
	
	self.Spinning = true
	if (self:GetItemData().model_player == "models/workshop/weapons/c_models/c_gatling_gun/c_gatling_gun.mdl") then
		self.NextEndSpinUp = CurTime() + 1.15
		self.NextEndSpinUpSound = CurTime() + 1.15
	else
		self.NextEndSpinUp = CurTime() + 1.0
		self.NextEndSpinUpSound = CurTime() + 1.0
	end
	self.NextEndSpinDown = nil
	self.NextIdle = nil
	
	self:StopSound(self.SpecialSound2)
	self:StopSound(self.SpecialSound3)
	self:EmitSound(self.SpecialSound1)
	if self.Primary.Delay == 0.06 then
		self.SpinUpSound:ChangePitch(120)
	end
end

function SWEP:SpinDown()
	--self.Owner:SetAnimation(10005)
	timer.Stop("AttackAnim"..self.Owner:EntIndex())
	self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_POSTFIRE, true)
	self:SendWeaponAnim(self.VM_POSTFIRE)
	
	self.Ready = false
	self.NextEndSpinUp = nil
	self.NextEndSpinUpSound = nil
	self.NextEndSpinDown = CurTime() + self:SequenceDuration()
	self.NextIdle = CurTime() + self:SequenceDuration() 
	
	self.Owner:SetNWBool("MinigunReady", false)
	--self.Owner:DoAnimationEvent(ACT_MP_STAND_PRIMARY, true)
	self:SetNetworkedBool("Spinning", false)
	self.Spinning = false
	
	self:StopSound(self.ShootSound2)
	self:StopSound(self.SpecialSound1)
	self:StopSound(self.SpecialSound3)
	self:EmitSound(self.SpecialSound2)
	if SERVER then
		--self.WModel2:StopParticles()
	end
	if self.Primary.Delay == 0.06 then
		self.SpinDownSound:ChangePitch(120)
	end
end

function SWEP:ShootEffects()
end

function SWEP:StopFiring()
	if SERVER then
		self:SetMinigunEffect(0)
		self.Owner.minigunfiretime = 0
		self.StartTime = nil
		self.Owner:SetAnimation(PLAYER_IDLE)
	end
	timer.Stop("AttackAnim"..self.Owner:EntIndex())
	self:EmitSound(self.SpecialSound3)
	self:StopSound(self.ShootSound2)
	self:StopSound(self.ShootCritSound)
	if SERVER then
		--self.WModel2:StopParticles()
	end
	self.Firing = false
end

function SWEP:CanPrimaryAttack()
	if self.Owner:GetAmmoCount(self.Primary.Ammo) <= 0 then
	
		self:EmitSound("weapons/shotgun_empty.wav", 80, 100)
		self:SetNextPrimaryFire( CurTime() + 0.2 )
		self:Reload()
		return false
		
	end

	return true
end

function SWEP:PrimaryAttack(vampire)
	if not self.IsDeployed then return false end
	if self.Owner:IsBot() and GetConVar("tf_bot_melee_only"):GetBool() then
		self.Owner:SelectWeapon(self.Owner:GetWeapons()[3])
		return
	end
	if not self.Spinning then
		self.IsVampire = vampire
		self:SpinUp()
	end
	
	if not self.Ready then return end
	
	if not self:CanPrimaryAttack() then
		if self.Firing then self:StopFiring() end
		return
	end
	
	local Delay = self.Delay or -1
	
	if Delay>=0 and CurTime()<Delay then return end
	self.Delay = CurTime() + self.Primary.Delay
	
	if SERVER then
		if not self.StartTime then
			self.StartTime = CurTime()
			self.Owner:Speak("TLK_FIREMINIGUN", true)
		end
		
		self.Owner.minigunfiretime = CurTime() - self.StartTime
		
		if not self.NextPlayerTalk or CurTime()>self.NextPlayerTalk then
			self.Owner:Speak("TLK_MINIGUN_FIREWEAPON")
			self.NextPlayerTalk = CurTime() + 1
		end
	end
	
	if self:RollCritical() then
		if not self.Critting or not self.Firing then
			self:SetMinigunEffect(1)
			self:StopSound(self.SpecialSound3)
			self:StopSound(self.ShootSound2)
			self:EmitSound(self.ShootCritSound)
			
			if SERVER then
				ParticleEffectAttach("eject_minigunbrass", PATTACH_POINT_FOLLOW, self, self:LookupAttachment("eject_brass"))
			end
			if self.Primary.Delay == 0.06 then
				self.ShootCritSoundLoop:ChangePitch(120)
			end
			self.Owner:SetAnimation(PLAYER_ATTACK1)
			timer.Create("AttackAnim"..self.Owner:EntIndex(), self.Owner:SequenceDuration(self.Owner:LookupSequence("attackStand_PRIMARY")), 0,function()
				self.Owner:SetAnimation(PLAYER_ATTACK1)
				self:SendWeaponAnim(self.VM_PRIMARYATTACK)
			end)
			self.Firing = true
		end
		self.Critting = true
	else
		if self.Critting or not self.Firing then
			self:SetMinigunEffect(1)
			self:StopSound(self.SpecialSound3)
			self:StopSound(self.ShootCritSound)
			self:EmitSound(self.ShootSound2)
	
			if SERVER then
				ParticleEffectAttach("eject_minigunbrass", PATTACH_POINT_FOLLOW, self, self:LookupAttachment("eject_brass"))
			end
			if self.Primary.Delay == 0.06 then
				self.ShootSoundLoop:ChangePitch(120)
			end
			self.Owner:SetAnimation(PLAYER_ATTACK1)
			self:SendWeaponAnim(self.VM_PRIMARYATTACK)
			timer.Create("AttackAnim"..self.Owner:EntIndex(), self.Owner:SequenceDuration(self.Owner:LookupSequence("attackStand_PRIMARY")), 0,function()
				self.Owner:SetAnimation(PLAYER_ATTACK1)
				self:SendWeaponAnim(self.VM_PRIMARYATTACK)
			end)
			self.Firing = true
		end
		self.Critting = false
	end
	
	self:ShootProjectile(self.BulletsPerShot, self.BulletSpread)
	if CLIENT then
			----PrintTable(self.CModel:GetAttachments())
			local effectdata = EffectData()
			effectdata:SetEntity( self.Owner:GetViewModel() )
			effectdata:SetOrigin( self.CModel:GetAttachment(self.CModel:LookupAttachment("eject_brass")).Pos )
			effectdata:SetAngles( Angle(self.CModel:GetAttachment(self.CModel:LookupAttachment("eject_brass")).Ang.x,self.CModel:GetAttachment(self.CModel:LookupAttachment("eject_brass")).Ang.y,self.CModel:GetAttachment(self.CModel:LookupAttachment("eject_brass")).Ang.z) )
			util.Effect( "RifleShellEject", effectdata )
	end

	self:TakePrimaryAmmo(1)
	self:RustyBulletHole()
end

function SWEP:SecondaryAttack()
	if self.AltFireMode == 1 then
		return self:PrimaryAttack(true)
	end
	
	if not self.IsDeployed then return false end
	
	if not self.Spinning then
		self:SpinUp()
	end
end

function SWEP:Reload()
end

function SWEP:Think()

	if (string.find(self.Owner:GetModel(),"_boss") and string.find(self.WorldModel, "_minigun")) then
		self.ShootSound2 = Sound("MVM.GiantHeavyGunFire")
		self.SpecialSound1 = Sound("MVM.GiantHeavyGunWindUp")
		self.SpecialSound2 = Sound("MVM.GiantHeavyGunWindDown")
		self.SpecialSound3 = Sound("MVM.GiantHeavyGunSpin")
		self.ShootCritSound = Sound("MVM.GiantHeavyGunFire")
	end
	if (self.Owner:GetInfoNum("tf_giant_robot",0) == 1) then
		if (self.WorldModel == "models/weapons/c_models/c_minigun/c_minigun.mdl") then
			self.ShootSound2 = Sound("MVM.GiantHeavyGunFire")
			self.SpecialSound1 = Sound("MVM.GiantHeavyGunWindUp")
			self.SpecialSound2 = Sound("MVM.GiantHeavyGunWindDown")
			self.SpecialSound3 = Sound("MVM.GiantHeavyGunSpin")
			self.ShootCritSound = Sound("MVM.GiantHeavyGunFire")
		end
	end
	self:TFViewModelFOV()
	self:InspectAnimCheck()
	self:SetModel(self.ViewModel)
	if SERVER and self.NextReplayDeployAnim then
		if CurTime() > self.NextReplayDeployAnim then
			--MsgFN("Replaying deploy animation %d", self.VM_DRAW)
			timer.Simple(0.1, function() self:SendWeaponAnim(self.VM_DRAW) end)
			self.NextReplayDeployAnim = nil
		end
	end
	
	if not self.IsDeployed and self.NextDeployed and CurTime()>=self.NextDeployed then
		self.IsDeployed = true
	end
	 
	if SERVER then
		if self.Spinning then
			if self.Owner:GetInfoNum("tf_giant_robot",0) != 1 then
			self.Owner:SetClassSpeed(3 * 37 * (self.DeployMoveSpeedMultiplier or 1))
			self.Owner:SetCrouchedWalkSpeed(0)
			end
		else
			if self.Owner:GetInfoNum("tf_giant_robot",0) != 1 then
			self.Owner:ResetClassSpeed()
			end
		end
	end
	
	if not self.SoundsCreated then
		self:CreateSounds()
	end
	
	
	if self.NextIdle and CurTime()>=self.NextIdle then
		self:SendWeaponAnim(self.VM_IDLE)
		self.NextIdle = nil
	end
	
	if self.NextEndSpinUpSound and CurTime()>=self.NextEndSpinUpSound then
		self:StopSound(self.SpecialSound1)
		self:EmitSound(self.SpecialSound3)
		if self.Primary.Delay == 0.06 then
			self.SpinSound:ChangePitch(120)
		end
		self.NextEndSpinUpSound = nil
	end
	
	if self.NextEndSpinUp and CurTime()>=self.NextEndSpinUp then
		self.Ready = true
		self.Owner:SetNWBool("MinigunReady", true)
		----self.Owner:DoAnimationEvent(ACT_MP_DEPLOYED, true)
		self.NextEndSpinUp = nil
	end
	
	if self.NextEndSpinDown and CurTime()>=self.NextEndSpinDown then
		self.NextEndSpinDown = nil
	end
	
		if self.Spinning then
			--[[if self:GetItemData().attach_to_hands == 1 then
				return
			end]]
			
			if self.barrelSpeed <= 18 then
			
				self.barrelRotation = self.barrelRotation + self.barrelSpeed
				self.barrelSpeed = self.barrelSpeed + ( CurTime() - self.barrelValue1 ) * 22
					
			end
				
			if self.barrelSpeed > 18 then
				
				self.barrelSpeed = 18
					
			end
				
			if self.barrelRotation > 360 then
				
				self.barrelRotation = self.barrelRotation - 360
					
			end
				
		end
		
		if !self.Spinning then
		
			if self.barrelSpeed > 0 then
			
				self.barrelRotation = self.barrelRotation + self.barrelSpeed
				self.barrelSpeed = self.barrelSpeed - ( CurTime() - self.barrelValue1 ) * 8
				
			end
			
			if self.barrelSpeed < 0 then
			
				self.barrelSpeed = 0
				
			end
			
		end
	if self.Firing and not self.Owner:KeyDown(IN_ATTACK) and (self.AltFireMode ~= 1 or not self.Owner:KeyDown(IN_ATTACK2)) then
		self:StopFiring()
		self:SendWeaponAnim(self.VM_SECONDARYATTACK)
	end
	
	if self.Spinning and not self.NextEndSpinDown and not self.Owner:KeyDown(IN_ATTACK) and not self.Owner:KeyDown(IN_ATTACK2) then
		if not self.NextEndSpinUp or CurTime() > self.NextEndSpinUp then
			self:SpinDown()
		end
	end
	
	if self.barrelSpeed == 0 then
		if self:GetItemData().attach_to_hands == 1 then
			if CLIENT and IsValid(self.CModel) then
				self:StopSound(self.SpecialSound2) 
			end
		else
			bone = self.Owner:GetViewModel():LookupBone("v_minigun_barrel")
			if bone then
				if CLIENT then
					self:StopSound(self.SpecialSound2) 
				end
			end
		end
	end
	--self.Owner:GetViewModel():ManipulateBoneAngles( 2, Angle(0,0,0) )
	
	if ( CLIENT ) then
		if self:GetItemData().attach_to_hands == 1 and IsValid(self.CModel) then
			bone = self.CModel:LookupBone("v_minigun_barrel")
			if bone then
				self.CModel:ManipulateBoneAngles( bone, Angle(0,0,self.barrelRotation) )
			else
				return
			end
		else
			bone = self.Owner:GetViewModel():LookupBone("v_minigun_barrel")
			if bone then
				self.Owner:GetViewModel():ManipulateBoneAngles( bone, Angle(0,0,self.barrelRotation) )
			else
				return
			end
		end
		bone = self.Owner:GetViewModel():LookupBone("v_minigun_barrel")
		if bone then
			
			bone = self.Owner:GetViewModel():LookupBone("v_minigun_barrel")
			if self.barrelSpeed <= 1 then
				self.Owner:GetViewModel():ManipulateBoneAngles( bone, Angle(0,0,0) )
			end
		end
	end
	
	self.barrelValue1 = CurTime() 
	
	self:Inspect()
	
end

function SWEP:Holster()
	if IsValid(self.Owner) and self:GetNetworkedBool("Spinning") then
		self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_POSTFIRE, true)
	end
	
	if not self.Removed and (self.Spinning or (self.NextEndSpinDown and CurTime() < self.NextEndSpinDown)) then
		return false
	end
	
	self.Owner:GetViewModel():ManipulateBoneAngles( 3, Angle(0,0,0) )
	timer.Stop("AttackAnim"..self.Owner:EntIndex())
	if self.SoundsCreated then
		self.SpinUpSound:Stop()
		self.SpinDownSound:Stop()
		self.SpinSound:Stop()
		self.ShootSoundLoop:Stop()
		self.ShootCritSoundLoop:Stop()
	end
	
	self:StopSound(self.ShootSound2)
	self:StopSound(self.SpecialSound1)
	self:StopSound(self.SpecialSound3)
	self:StopSound(self.SpecialSound2)
	self:StopSound(self.SpecialSound3)
	self:StopSound(self.SpecialSound1)
	self.Spinning = nil
	self.Ready = nil
	self.NextEndSpinUp = nil
	self.NextEndSpinDown = nil
	
	if SERVER and IsValid(self.Owner) then
		self.Owner:SetNWBool("MinigunReady", false)
		--self.Owner:DoAnimationEvent(ACT_MP_STAND_PRIMARY, true)
		self.Owner:ResetClassSpeed()
	end
	
	if CLIENT then
		if self.Owner==LocalPlayer() then
			self.ViewmodelInitialized = false
			self:MinigunViewmodelReset()
		end
	end
	
	if self:GetItemData().attach_to_hands == 1 then

	elseif self.Owner and IsValid(self.Owner:GetViewModel()) then
		--self.Owner:GetViewModel():ManipulateBoneAngles( 2, Angle(0,0,0) )
	end
	
	return self:CallBaseFunction("Holster")
end

function SWEP:OnRemove()
	self.Owner = self.CurrentOwner
	self.Removed = true
	self:Holster()
end

if SERVER then

hook.Add("PreScaleDamage", "MinigunVampirePreDamage", function(ent, hitgroup, dmginfo)
	local inf = dmginfo:GetInflictor()
	local att = dmginfo:GetAttacker()
	
	if inf.IsVampire and ent ~= att and ent:IsTFPlayer() and ent:Health()>0 and not ent:IsBuilding() then
		if not att.LastHealthBuffTime or CurTime() ~= att.LastHealthBuffTime then
			GAMEMODE:HealPlayer(att, att, 3, true, false)
			att.LastHealthBuffTime = CurTime()
		end
	end
end)

hook.Add("PostScaleDamage", "MinigunVampirePostDamage", function(ent, hitgroup, dmginfo)
	local inf = dmginfo:GetInflictor()
	
	if inf.IsVampire then
		dmginfo:ScaleDamage(0.25)
	end
end)

end