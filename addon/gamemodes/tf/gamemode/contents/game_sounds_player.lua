// Channels
//	CHAN_AUTO		= 0,
//	CHAN_WEAPON		= 1,
//	CHAN_VOICE		= 2,
//	CHAN_ITEM		= 3,
//	CHAN_BODY		= 4,
//	CHAN_STREAM		= 5,		// allocate stream channel from the static or dynamic area
//	CHAN_STATIC		= 6,		// allocate channel from the static area 
// these can be set with "channel" "2" or "channel" "chan_voice"

//-----------------------------------------------------------------------------
// common attenuation values
//-----------------------------------------------------------------------------

// DON'T USE THESE - USE SNDLVL_ INSTEAD!!!
//	ATTN_NONE		0.0f	
//	ATTN_NORM		0.8f
//	ATTN_IDLE		2.0f
//	ATTN_STATIC		1.25f 
//	ATTN_RICOCHET	1.5f
//	ATTN_GUNFIRE	0.27f

//	SNDLVL_NONE		= 0,
//	SNDLVL_25dB		= 25,
//	SNDLVL_30dB		= 30,
//	SNDLVL_35dB		= 35,
//	SNDLVL_40dB		= 40,
//	SNDLVL_45dB		= 45,
//	SNDLVL_50dB		= 50,	// 3.9
//	SNDLVL_55dB		= 55,	// 3.0
//	SNDLVL_IDLE		= 60,	// 2.0
//	SNDLVL_TALKING	= 60,	// 2.0
//	SNDLVL_60dB		= 60,	// 2.0
//	SNDLVL_65dB		= 65,	// 1.5
//	SNDLVL_STATIC	= 66,	// 1.25
//	SNDLVL_70dB		= 70,	// 1.0
//	SNDLVL_NORM		= 75,
//	SNDLVL_75dB		= 75,	// 0.8
//	SNDLVL_80dB		= 80,	// 0.7
//	SNDLVL_85dB		= 85,	// 0.6
//	SNDLVL_90dB		= 90,	// 0.5
//	SNDLVL_95dB		= 95,
//	SNDLVL_100dB	= 100,	// 0.4
//	SNDLVL_105dB	= 105,
//	SNDLVL_120dB	= 120,
//	SNDLVL_130dB	= 130,
//	SNDLVL_GUNFIRE	= 140,	// 0.27
//	SNDLVL_140dB	= 140,	// 0.2
//	SNDLVL_150dB	= 150,	// 0.2


"Scout.DodgeCanOpen"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1"
	"soundlevel"	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/pl_scout_dodge_can_open.wav"
}

"Scout.DodgeCanDrinkFast"
{
	"channel"		"CHAN_WEAPON"
	"volume"		".25"
	"soundlevel"	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/pl_scout_dodge_can_drink_fast.wav"
}

"Scout.DodgeCanDrink"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1"
	"soundlevel"	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/pl_scout_dodge_can_drink.wav"
}

"Scout.DodgeCanCrush"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1"
	"soundlevel"	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/pl_scout_dodge_can_crush.wav"
}

"Scout.DodgeCanPitch"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1"
	"soundlevel"	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/pl_scout_dodge_can_pitch.wav"
}


"Scout.DodgeTired"
{
	"channel"		"CHAN_VOICE"
	"volume"		"1"
	"soundlevel"	"SNDLVL_74dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/pl_scout_dodge_tired.wav"
}

"Player.Spawn"
{
	"channel"		"CHAN_BODY"
	"volume"		"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/null.wav"
}

"Player.UseDeny"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"soundlevel"	"SNDLVL_NORM"

	"wave"	"common/wpn_denyselect.wav"
}

"Player.WeaponSelected"
{
	"channel"	"CHAN_BODY"
	"volume"	"VOL_NORM"
	"soundlevel"  "SNDLVL_NONE"
	"pitch"	"PITCH_NORM"

	"wave"	"common/wpn_select.wav"
}

"Player.DenyWeaponSelection"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"soundlevel"	"SNDLVL_NORM"

	"wave"	"common/wpn_denyselect.wav"
}

"Player.WeaponSelectionOpen"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.32"
	"soundlevel"  "SNDLVL_NONE"
	"pitch"	"PITCH_NORM"

	"wave"	"common/null.wav"
}

"Player.WeaponSelectionClose"
{
	"channel"	"CHAN_BODY"
	"volume"	"VOL_NORM"
	"soundlevel"  "SNDLVL_NONE"
	"pitch"	"PITCH_NORM"

	"wave"	"common/null.wav"
}

"Player.WeaponSelectionMoveSlot"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.5"
	"soundlevel"  "SNDLVL_NONE"
	"pitch"	"PITCH_NORM"

	"wave"	"common/wpn_moveselect.wav"
}

"Player.FallGib"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"pitch"		"92,96"
	"soundlevel"	"SNDLVL_NORM"
	"wave"		"player/pl_fleshbreak.wav"
}

"Player.FallDamage"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_NORM"
	"wave"		"player/pl_fallpain.wav"
}

"Player.PlasmaDamage"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.5"
	"soundlevel"  "SNDLVL_75dB"

	"wave"		"player/general/flesh_burn.wav"
}

"Player.SonicDamage"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.7"
	"soundlevel"  "SNDLVL_75dB"
	"wave"	"player/pain.wav"
}

"Player.DrownStart"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"90,110"

	"wave"	"player/pl_drown1.wav"
}

"Player.DrownContinue"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"		"95,105"

	"rndwave"
	{
		"wave"	"player/pl_drown1.wav"
		"wave"	"player/pl_drown2.wav"
		"wave"	"player/pl_drown3.wav"
	}
}

"Player.AmbientUnderWater"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.22"
	"soundlevel"  "SNDLVL_75dB"

	"wave"	"ambient/water/underwater.wav"
}

"Player.PickupWeapon"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.8"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"	"95,105"
	"wave"	"items/ammo_pickup.wav"
}


"Geiger.BeepLow"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	"player/geiger1.wav"
		"wave"	"player/geiger2.wav"
	}
}

"Player.OnFire"
{
	"channel"	"CHAN_BODY"
	"volume"	"0.8"
	"soundlevel"  	"SNDLVL_75dB"	
	"pitch"		"PITCH_NORM"

	"rndwave"
	{
		"wave"	"ambient/fire/fire_small_loop1.wav"
		"wave"	"ambient/fire/fire_small_loop2.wav"
	}
}

"Player.ReceiveSouls"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"	
	"pitch"		"PITCH_NORM"

	"rndwave"
	{
		"wave"	"player/souls_receive1.wav"
		"wave"	"player/souls_receive2.wav"
		"wave"	"player/souls_receive3.wav"
	}
}

"Player.ResistanceLight"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"	
	"pitch"			"90, 110"

	"rndwave"
	{
		"wave"		")player/resistance_light1.wav"
		"wave"		")player/resistance_light2.wav"
		"wave"		")player/resistance_light3.wav"
		"wave"		")player/resistance_light4.wav"
	}
}

"Player.ResistanceMedium"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"	
	"pitch"			"90, 110"

	"rndwave"
	{
		"wave"		")player/resistance_medium1.wav"
		"wave"		")player/resistance_medium2.wav"
		"wave"		")player/resistance_medium3.wav"
		"wave"		")player/resistance_medium4.wav"
	}
}

"Player.ResistanceHeavy"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"	
	"pitch"			"90, 110"

	"rndwave"
	{
		"wave"		")player/resistance_heavy1.wav"
		"wave"		")player/resistance_heavy2.wav"
		"wave"		")player/resistance_heavy3.wav"
		"wave"		")player/resistance_heavy4.wav"
	}
}

//=========================================================================


"TFPlayer.Decapitated"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  "SNDLVL_85dB"
	"pitch"	"PITCH_NORM"
	"wave"	")player/flow.wav"
}

"TFPlayer.StunImpact"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  "SNDLVL_85dB"
	"pitch"	"PITCH_NORM"
	"wave"	"player/pl_impact_stun.wav"
}

"TFPlayer.StunImpactRange"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  "SNDLVL_105dB"
	"pitch"	"PITCH_NORM"
	"wave"	"player/pl_impact_stun_range.wav"
}

"TFPlayer.AirBlastImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"player/pl_impact_airblast1.wav"
		"wave"		"player/pl_impact_airblast2.wav"
		"wave"		"player/pl_impact_airblast3.wav"
		"wave"		"player/pl_impact_airblast4.wav"
	}
}

"TFPlayer.FlareImpact"
{
	"soundlevel"		"SNDLVL_75dB"
	"volume"		"0.7"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"player/pl_impact_flare1.wav"
		"wave"		"player/pl_impact_flare2.wav"
		"wave"		"player/pl_impact_flare3.wav"
	}
}

"TFPlayer.Drown"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,105"

	"rndwave"
	{
		"wave"	"player/drown1.wav"	
		"wave"	"player/drown2.wav"
		"wave"	"player/drown3.wav"	
	}
}

"TFPlayer.Pain"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"92,96"
	"wave"		"player/pain.wav"
}

"TFPlayer.FlameOut"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCh_NORM"
	"wave"		")player/flame_out.wav"
}


"TFPlayer.AttackerPain"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_95dB"
	"pitch"		"92,96"
	"wave"		"player/death.wav"
}

"TFPlayer.FirePain"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_95dB"
	"pitch"		"92,96"
	"wave"		"player/fire.wav"
}

"TFPlayer.CritPain"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,105"
	
	"rndwave"
	{
		"wave"		"player/crit_received1.wav"
		"wave"		"player/crit_received2.wav"
		"wave"		"player/crit_received3.wav"

	}
}

"TFPlayer.CritDeath"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_95dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/death.wav"
}

"TFPlayer.MedicChargedDeath"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_95dB"
	"pitch"		"PITCH_NORM"
	"wave"		"player/medic_charged_death.wav"
}

"Player.Death"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"92,96"
	"wave"		"player/pain.wav"
}

"Player.MeleeDeath"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"92,96"
	"wave"		"player/death.wav"

}

"Player.ExplosionDeath"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"92,96"
	"wave"		"player/pain.wav"
}

"TFPlayer.GrenadeTimer"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/timer.wav"
}

"Player.Spy_Disguise"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_65dB"
	"wave"		"player/spy_disguise.wav"
}

"Player.Spy_Shield_Break"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/spy_shield_break.wav"
}

"Player.Spy_Cloak"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"		"player/spy_cloak.wav"
}

"Player.Spy_UnCloakReduced"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.5"
	"soundlevel"  	"SNDLVL_40dB"
	"wave"		"player/spy_uncloak.wav"
}

"Player.Spy_UnCloak"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"		"player/spy_uncloak.wav"
}

"Player.Spy_UnCloakFeignDeath"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/spy_uncloak_feigndeath.wav"
}

"Player.ScoutShove"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"	
	"rndwave"
	{
		"wave"		"player/shove1.wav"
		"wave"		"player/shove2.wav"
		"wave"		"player/shove3.wav"
		"wave"		"player/shove4.wav"
		"wave"		"player/shove5.wav"
		"wave"		"player/shove6.wav"	
		"wave"		"player/shove7.wav"
		"wave"		"player/shove8.wav"
		"wave"		"player/shove9.wav"
		"wave"		"player/shove10.wav"
	}
}

"TFPlayer.SaveMe"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_86dBM"

	"rndwave"
	{
		"wave"		"vo/medic1.mp3"
		"wave"		"vo/medic2.mp3"
	}
}

"TFPlayer.InvulnerableOn"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_86dB"
	"wave"		"player/invulnerable_on.wav"
}

"TFPlayer.QuickFixInvulnerableOn"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_86dB"
	"wave"		"player/quickfix_invulnerable_on.wav"
}

"TFPlayer.InvulnerableOff"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_86dB"
	"wave"		"player/invulnerable_off.wav"
}

"TFPlayer.MegaHealOn"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/weapon_crit_charged_on.wav"
}

"TFPlayer.MegaHealOff"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/weapon_crit_charged_off.wav"
}

"TFPlayer.CritHit"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"player/crit_hit.wav"
		"wave"		"player/crit_hit2.wav"
		"wave"		"player/crit_hit3.wav"
		"wave"		"player/crit_hit4.wav"
		"wave"		"player/crit_hit5.wav"
	}
}

"TFPlayer.CritHitMini"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"player/crit_hit_mini.wav"
		"wave"		"player/crit_hit_mini2.wav"
		"wave"		"player/crit_hit_mini3.wav"
		"wave"		"player/crit_hit_mini4.wav"
		"wave"		"player/crit_hit_mini5.wav"
	}
}

"TFPlayer.DoubleDonk"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"		")player\doubledonk.wav"
}

"TFPlayer.FreezeCam"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"misc/freeze_cam.wav"
}

"TFPlayer.ReCharged"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/recharged.wav"
}

"TFPlayer.Dissolve"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/dissolve.wav"
}

//-----------------------------------------------------------------------------
//Taunts and Selection Menu
//-----------------------------------------------------------------------------
"Taunt.EngineerGunSlinger"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")player/taunt_eng_gunslinger.wav"
}

"Taunt.EngineerSwoosh"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")player/taunt_eng_swoosh.wav"
}

"Taunt.EngineerSmash"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"
	"rndwave"
	{
		"wave"		")player/taunt_eng_smash1.wav"
		"wave"		")player/taunt_eng_smash2.wav"
		"wave"		")player/taunt_eng_smash3.wav"
	}
}

"Taunt.EngineerStrum"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")player/taunt_eng_strum.wav"
}

"Taunt.Engineer01HandClap"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_hand_clap.wav"
}

"Taunt.Engineer01HandClap2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_hand_clap2.wav"
}

"Taunt.Engineer01FootStomp"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_foot_stomp.wav"
}

"Taunt.Engineer01FootStompLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_foot_stomp_light.wav"
}

"Taunt.Engineer02PistolTwirl"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_pistol_twirl.wav"
}

"Taunt.Engineer_Western_Shoot1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1,0"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")player/taunt_western_shoot1.wav"
}

"Taunt.Engineer_Western_Shoot2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")player/taunt_western_shoot2.wav"
}

"Selection.EngineerWrenchShoulder"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_shotgun_shoulder.wav"
}

"Selection.EngineerFootStomp"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_foot_stomp.wav"
}

"Selection.EngineerClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_clothes_rustle.wav"
}

"Taunt.Demo01FootStompLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_foot_stomp_light.wav"
}

"Taunt.Demo01FootSpin"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_foot_spin.wav"
}

"Taunt.Demo01HandClap"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_hand_clap.wav"
}

"Taunt.Demo01HandClap2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_hand_clap2.wav"
}

"Taunt.Demo02EquipmentJingle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".45"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_equipment_jingle.wav"
}

"Taunt.Demo02EquipmentJingle2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".45"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_equipment_jingle2.wav"
}

"Taunt.Demo02EquipmentJingle3"
{
	"channel"	"CHAN_STATIC"
	"volume"	".45"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_equipment_jingle3.wav"
}

"Taunt.Demo02EquipmentJingle4"
{
	"channel"	"CHAN_STATIC"
	"volume"	".45"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_equipment_jingle4.wav"
}

"Taunt.Demo03BottleCatch"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_hand_clap.wav"
}

"Taunt.Demo03BottleSlosh"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_bottle_slosh.wav"
}

"Taunt.Demo03BottleAh"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_bottle_ah.wav"
}

"Selection.DemoEquipment1"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_equipment_gun2.wav"
}

"Selection.DemoEquipment2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_equipment_gun1.wav"
}

"Selection.DemoClipSpin"
{
	"channel"	"CHAN_WEAPON"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_clip_spin.wav"
}

"Selection.DemoClipSpinLong"
{
	"channel"	"CHAN_WEAPON"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_clip_spin_long.wav"
}

"Taunt.DemoShakeIt"
{
	"channel"	"CHAN_BODY"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"wave"		"player/taunt_shake_it.wav"
}

"Taunt.Demo_Burp"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"		")player/taunt_burp.wav"
}

"Taunt.MedicGloveStretch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	"player/taunt_rubberglove_stretch.wav"
}

"Taunt.MedicHardClap1"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	")player/taunt_hard_clap1.wav"
}

"Taunt.MedicHardClap2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	")player/taunt_hard_clap2.wav"
}

"Taunt.MedicHardClap3"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	")player/taunt_hard_clap3.wav"
}

"Taunt.MedicHardClap4"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	")player/taunt_hard_clap1.wav"
}

"Taunt.MedicHardClap5"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	")player/taunt_hard_clap2.wav"
}

"Taunt.MedicHardClap6"
{
	"channel"	"CHAN_STATIC"
	"volume"	".05"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	")player/taunt_hard_clap3.wav"
}

"Taunt.MedicGloveSnap"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	"player/taunt_rubberglove_snap.wav"
}

"Taunt.MedicViolin"
{
	"channel"	"CHAN_STATIC"
	"volume"	".35"
	"soundlevel"  	"SNDLVL_75dB"

	"rndwave"
	{	
		"wave"	"player/taunt_v01.wav"
		"wave"	"player/taunt_v02.wav"
		"wave"	"player/taunt_v03.wav"
		"wave"	"player/taunt_v04.wav"
		"wave"	"player/taunt_v05.wav"
		"wave"	"player/taunt_v06.wav"
		"wave"	"player/taunt_v07.wav"
	}
}
"Taunt.MedicViolinUber"
{
	"channel"	"CHAN_STATIC"
	"volume"	".35"
	"soundlevel"  	"SNDLVL_75dB"

	"rndwave"
	{	
		"wave"	"player/uberTaunt_v01.wav"
		"wave"	"player/uberTaunt_v02.wav"
		"wave"	"player/uberTaunt_v03.wav"
		"wave"	"player/uberTaunt_v04.wav"
		"wave"	"player/uberTaunt_v05.wav"
		"wave"	"player/uberTaunt_v06.wav"
		"wave"	"player/uberTaunt_v07.wav"
	}
}

"Taunt.MedicHeroic"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  "SNDLVL_95dB"

	"wave"		")player/taunt_medic_heroic.wav"
}

"Taunt.GuitarRiff"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  "SNDLVL_95dB"

	"wave"		")player\brutal_legend_taunt.wav"
}

"Taunt.WormsHHG"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"

	"rndwave"
	{	
		"wave"	"player/taunt_wormsHHG.wav"
	}
}

"Selection.MedicHeelClick"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"

	"wave"	"player/taunt_heel_click.wav"
}

"Selection.MedicFootStomp"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"

	"wave"	"player/taunt_foot_stomp.wav"
}

"Selection.MedicFootSlide"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"

	"wave"	"player/taunt_foot_spin.wav"
}

"Taunt.Scout01Run"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.Scout01HandSmack"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"

		"wave"	"player/taunt_hand_clap.wav"
}

"Taunt.Scout02Run"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.Scout03Run"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_stomp.wav"
}

"Selection.ScoutShotgunShoulder"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_shotgun_shoulder.wav"
}

"Selection.ScoutShotgunTwirl"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/taunt_shotgun_twirl.wav"
}

"Taunt.Sniper02HealClick"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.Sniper02FootStomp"
{
	"channel"	"CHAN_STATIC"
	"volume"	".50"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.Sniper02FootSlide"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_spin.wav"
}

"Taunt.Sniper03MacheteUnsheath"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_machete_draw.wav"
}

"Taunt.Sniper03MacheteCatch"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_machete_catch.wav"
}

"Selection.SniperHatTip"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_clothes_swipe.wav"
}

"Taunt.Spy01TieFix"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_tie_fix.wav"
}

"Taunt.Spy03FootStomp"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.Spy03KnifeCatch"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_grenade_catch.wav"
}

"Taunt.Spy04CigFlick"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_cig_flick.wav"
}

"Taunt.SpyCigCaseClose"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_cig_case_close.wav"
}

"Selection.SpyClothesRustle1"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_clothes_swipe.wav"
}

"Selection.SpyClothesRustle2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_clothes_swipe2.wav"
}

"Taunt.SoldierClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_NORM"
	"wave"	"player/taunt_clothes_swipe2.wav"
}

"Selection.SpyPuff"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_puff.wav"
}

"Selection.SpyPuffAh"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_puff_ah.wav"
}

"Taunt.Soldier01HeelClick"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.Soldier01ClothesSwipe"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_clothes_swipe.wav"
}

"Taunt.Soldier01ClothesRustle"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Taunt.Soldier01HelmetJostle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_equipment_jingle3.wav"
}

"Taunt.SoldierKnuckleCrack"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.25"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"player/taunt_knuckle_crack.wav"
}

"Taunt.TauntChestThumpYell"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"vo/soldier_DirectHitTaunt02.mp3"
}

"Taunt.SoldierChestThump"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.25"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"player/taunt_chest_thump.wav"
}

"Taunt.SoldierChestThumpAlt"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.25"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"player/taunt_chest_thump_alt.wav"
}

"Taunt.SoldierChestThumpLow"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.1"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"player/taunt_chest_thump.wav"
}


"Taunt.SoldierGrenadePull"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"player/taunt_equipment_jingle3.wav"
}

"Taunt.SoldierShotgunFire"
{
	"channel"	"CHAN_ITEM"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"weapons/shotgun_shoot.wav"
}

"Taunt.SoldierShotgunCockBack"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"weapons/shotgun_cock_back.wav"
}

"Taunt.SoldierShotgunCockForward"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"weapons/shotgun_cock_forward.wav"
}

"Taunt.SoldierSaluteSwish"
{
	"channel"	"CHAN_BODY"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_NORM"		
	"wave"	"player/taunt_clothes_swipe2.wav"
}

"Taunt.SoldierTaps"
{
            "channel"          "CHAN_STATIC"
            "volume"           "1.0"
            "soundlevel"      "SNDLVL_NORM"
             "wave"              ")misc/taps_02.wav"
}

"Taunt.Soldier02GrenadeCatch"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_grenade_catch.wav"
}

"Taunt.Soldier02ClothesRustle"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Taunt.Soldier02ShovelCatch"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_hand_clap.wav"
}

"Taunt.Soldier03FootStomp"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.Soldier03HelmetHit"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_helmet_hit.wav"
}

"Taunt.Soldier03ClothesSwipe"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_clothes_swipe.wav"
}

"Taunt.Soldier03ClothesRustle"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Taunt.Soldier03HelmetJostle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_equipment_jingle3.wav"
}

"Selection.SoldierLauncherGrab"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_grenade_catch.wav"
}

"Selection.SoldierClothesRustle"
{
	"channel"	"CHAN_ITEM"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Selection.SoldierEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_equipment_jingle3.wav"
}

"Selection.SoldierLauncherSetStart"
{
	"channel"	"CHAN_STATIC"
	"volume"	".55"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_equipment_gun2.wav"
}

"Selection.SoldierLauncherHitGround"
{
	"channel"	"CHAN_BODY"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_launcher_hit.wav"
}

"Selection.SoldierLauncherSetStop"
{
	"channel"	"CHAN_STATIC"
	"volume"	".55"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_equipment_gun1.wav"
}

"Taunt.HeavyUpperCut"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_heavy_upper_cut.wav"
}

"Taunt.HeavyBell"
{
	"channel"	"CHAN_ITEM"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_bell.wav"
}

"Taunt.Heavy01HoldGun"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_grenade_catch.wav"
}

"Taunt.Heavy01HoldGunLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_hand_clap2.wav"
}

"Taunt.Heavy01ClothesRustle"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Taunt.Heavy01EquipmentGun"
{
	"channel"	"CHAN_ITEM"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_equipment_gun1.wav"
}

"Taunt.Heavy01EquipmentGun2"
{
	"channel"	"CHAN_ITEM"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_equipment_gun2.wav"
}

"Taunt.Heavy01EquipmentRustleHeavy"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_equipment_jingle2.wav"
}

"Taunt.Heavy02ShotgunSpin"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_shotgun_spin.wav"
}


"Taunt.Heavy02ShotgunGrab"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_hand_clap.wav"
}

"Taunt.Heavy02EquipmentJingle"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_equipment_jingle3.wav"
}

"Taunt.Heavy03ClothesRustle"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Taunt.Heavy03ClothesSwipe"
{
	"channel"	"CHAN_ITEM"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_clothes_swipe.wav"
}

"Taunt.Heavy03EquipmentJingle"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_equipment_jingle3.wav"
}

"Taunt.Heavy03EquipmentJingleShort"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_equipment_jingle3short.wav"
}

"Selection.HeavyFootStomp"
{
	"channel"	"CHAN_ITEM"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_foot_stomp.wav"
}

"Selection.HeavyEquipment1"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_equipment_gun2.wav"
}

"Selection.HeavyEquipment2"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_equipment_gun1.wav"
}

"Selection.HeavyClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Taunt.Pyro01FootStomp"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.Pyro01Equipment1"
{
	"channel"	"CHAN_STATIC"
	"volume"	".20"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_equipment_gun2.wav"
}

"Taunt.Pyro01Equipment2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".35"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"player/taunt_equipment_gun1.wav"
}

"Taunt.Pyro02Fire"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_fire.wav"
}

"Taunt.Pyro03RockStar"
{
	"channel"	"CHAN_VOICE"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_rockstar.wav"
}

"Taunt.Pyro03RockStarEnd"
{
	"channel"	"CHAN_VOICE"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_rockstar_end.wav"
}

"Selection.PyroClothesRustle"
{
	"channel"	"CHAN_BODY"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Selection.PyroEquipment1"
{
	"channel"	"CHAN_ITEM"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_equipment_jingle3.wav"
}

"Selection.PyroEquipment2"
{
	"channel"	"CHAN_ITEM"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_equipment_jingle2.wav"
}


"Selection.PyroFootStomp"
{
	"channel"	"CHAN_ITEM"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"	"player/taunt_foot_stomp.wav"
}
"Taunt.PyroBalloonicorn"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_pyro_balloonicorn.wav"

}
"Taunt.PyroHellicorn"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_75dB"		
	"wave"	"player/taunt_pyro_hellicorn.wav"
}



"Taunt.SpringRiderSit"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_85dB"		
	"wave"	")player/taunt_springrider_sit.wav"
}

"Taunt.Taunt.SpringRiderSqueak1"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_85dB"		
	"wave"	")player/taunt_springrider_squeak1.wav"
}

"Taunt.Taunt.SpringRiderSqueak2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_85dB"		
	"wave"	")player/taunt_springrider_squeak2.wav"
}

"Taunt.Taunt.SpringRiderSqueak3"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_85dB"		
	"wave"	")player/taunt_springrider_squeak3.wav"
}

"Taunt.Taunt.SpringRiderSqueak4"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_85dB"		
	"wave"	")player/taunt_springrider_squeak4.wav"
}

"Taunt.Taunt.SpringRiderSqueak5"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_85dB"		
	"wave"	")player/taunt_springrider_squeak5.wav"
}

"Taunt.Taunt.SpringRiderGetUp"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_85dB"		
	"wave"	")player/taunt_springrider_getup.wav"
}

//-----------------------------------------------------------------------------
//End Taunts
//-----------------------------------------------------------------------------

"Medic.AutoCallerAnnounce"
{
	"channel"	"CHAN_VOICE"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_86dBM"
	"wave"		")ui/medic_alert.wav"
}

"Halloween.CrazyLaugh"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"items/halloween/crazy01.wav"
		"wave"		"items/halloween/crazy02.wav"
		"wave"		"items/halloween/crazy03.wav"
	}
}
"Halloween.BlackCat"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"items/halloween/cat01.wav"
		"wave"		"items/halloween/cat02.wav"
		"wave"		"items/halloween/cat03.wav"
	}
}
"Halloween.Gremlin"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"items/halloween/gremlin01.wav"
		"wave"		"items/halloween/gremlin02.wav"
		"wave"		"items/halloween/gremlin03.wav"
	}
}
"Halloween.Werewolf"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"items/halloween/werewolf01.wav"
		"wave"		"items/halloween/werewolf02.wav"
		"wave"		"items/halloween/werewolf03.wav"
	}
}
"Halloween.Banshee"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_95dB"
	"rndwave"
	{
		"wave"		"items/halloween/banshee01.wav"
		"wave"		"items/halloween/banshee02.wav"
		"wave"		"items/halloween/banshee03.wav"
	}
}
"Halloween.SFX"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"items/halloween/spooky01.wav"
		"wave"		"items/halloween/spooky02.wav"
		"wave"		"items/halloween/spooky03.wav"
	}
}
"Halloween.Stabby"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_90dB"
	"wave"		"items/halloween/stabby.wav"
}
"Halloween.Witch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"items/halloween/witch01.wav"
		"wave"		"items/halloween/witch02.wav"
		"wave"		"items/halloween/witch03.wav"
	}
}

"Player.YouAreIt"
{
	"channel"		"CHAN_STATIC"
	"volume"		"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/halloween_boss_chosen_it.wav"
}

"Player.TaggedOtherIT"
{
	"channel"		"CHAN_STATIC"
	"volume"		"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/halloween_boss_tagged_other_it.wav"
}

"Player.IsNowIT"
{
	"channel"		"CHAN_STATIC"
	"volume"		"VOL_NORM"
	"soundlevel"	"SNDLVL_95dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/halloween_boss_player_becomes_it.wav"
}

"Samurai.Exaltation"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"90, 110"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		")items\samurai\TF_samurai_noisemaker_setA_01.wav"
		"wave"		")items\samurai\TF_samurai_noisemaker_setA_02.wav"
		"wave"		")items\samurai\TF_samurai_noisemaker_setA_03.wav"
	}
}

"Samurai.Koto"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		")items\samurai\TF_samurai_noisemaker_setB_01.wav"
		"wave"		")items\samurai\TF_samurai_noisemaker_setB_02.wav"
		"wave"		")items\samurai\TF_samurai_noisemaker_setB_03.wav"
	}
}

"Samurai.Conch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_140dB"
	"wave"			")items\samurai\TF_conch.wav"
}

"Fundraiser.Bell"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		")items\japan_fundraiser\TF_zen_bell_01.wav"
		"wave"		")items\japan_fundraiser\TF_zen_bell_02.wav"
		"wave"		")items\japan_fundraiser\TF_zen_bell_03.wav"
		"wave"		")items\japan_fundraiser\TF_zen_bell_04.wav"
		"wave"		")items\japan_fundraiser\TF_zen_bell_05.wav"
	}
}

"Fundraiser.Tingsha"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_95dB"
	"rndwave"
	{
		"wave"		")items\japan_fundraiser\TF_zen_tingsha_01.wav"
		"wave"		")items\japan_fundraiser\TF_zen_tingsha_01.wav"
		"wave"		")items\japan_fundraiser\TF_zen_tingsha_01.wav"
		"wave"		")items\japan_fundraiser\TF_zen_tingsha_01.wav"
		"wave"		")items\japan_fundraiser\TF_zen_tingsha_01.wav"
		"wave"		")items\japan_fundraiser\TF_zen_tingsha_01.wav"
	}
}

"Fundraiser.PrayerBowl"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_130dB"
	"rndwave"
	{
		"wave"		")items\japan_fundraiser\TF_zen_prayer_bowl_01.wav"
		"wave"		")items\japan_fundraiser\TF_zen_prayer_bowl_02.wav"
		"wave"		")items\japan_fundraiser\TF_zen_prayer_bowl_03.wav"
	}
}

"Summer.Fireworks"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_100dB"
	"rndwave"
	{
		"wave"		")items/summer/summer_fireworks1.wav"
		"wave"		")items/summer/summer_fireworks2.wav"
		"wave"		")items/summer/summer_fireworks3.wav"
		"wave"		")items/summer/summer_fireworks4.wav"
	}
}

"TFPlayer.HighFive"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_100dB"
	"wave"			")misc\high_five.wav"
}

"soccer.vuvezela"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		")items\football_manager\vuvezela_01.wav"
		"wave"		")items\football_manager\vuvezela_02.wav"
		"wave"		")items\football_manager\vuvezela_03.wav"
		"wave"		")items\football_manager\vuvezela_04.wav"
		"wave"		")items\football_manager\vuvezela_05.wav"
		"wave"		")items\football_manager\vuvezela_06.wav"
		"wave"		")items\football_manager\vuvezela_07.wav"
		"wave"		")items\football_manager\vuvezela_08.wav"
		"wave"		")items\football_manager\vuvezela_09.wav"
		"wave"		")items\football_manager\vuvezela_10.wav"
		"wave"		")items\football_manager\vuvezela_11.wav"
		"wave"		")items\football_manager\vuvezela_12.wav"
		"wave"		")items\football_manager\vuvezela_13.wav"
		"wave"		")items\football_manager\vuvezela_14.wav"
		"wave"		")items\football_manager\vuvezela_15.wav"
		"wave"		")items\football_manager\vuvezela_16.wav"
		"wave"		")items\football_manager\vuvezela_17.wav"
	}
}

"halloween.wolf_01"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"wave"		")misc\wolf_howl_01.wav"
}

"halloween.wolf_02"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"wave"		")misc\wolf_howl_02.wav"
}

"halloween.wolf_03"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"wave"		")misc\wolf_howl_03.wav"
}

"xmas.jingle"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_01.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_02.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_03.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_04.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_05.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_06.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_07.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_08.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_09.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_10.wav"
	}
}

"xmas.jingle_higher"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"pitch"	"115"
	"rndwave"
	{
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_11.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_12.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_13.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_14.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_15.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_16.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_17.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_18.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_19.wav"
		"wave"		")player\sleigh_bells\tf_xmas_sleigh_bells_20.wav"
	}
}

"pyro.guitar_shred_01"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"wave"		"items\pyro_guitar_solo_no_verb.wav"
}

"pyro.guitar_shred_02"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"wave"		")items\pyro_guitar_solo_with_verb.wav"
}

"xmas.jingle_noisemaker"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"pitch"		"100,105"
	"rndwave"
	{
		"wave"		"misc\jingle_bells\jingle_bells_nm_01.wav"
		"wave"		"misc\jingle_bells\jingle_bells_nm_02.wav"
		"wave"		"misc\jingle_bells\jingle_bells_nm_03.wav"
		"wave"		"misc\jingle_bells\jingle_bells_nm_04.wav"
		"wave"		"misc\jingle_bells\jingle_bells_nm_05.wav"
	}
}

"scout.boombox"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"		"items\scout_boombox_02.wav"
		"wave"		"items\scout_boombox_03.wav"
		"wave"		"items\scout_boombox_04.wav"
		"wave"		"items\scout_boombox_05.wav"
	}
}

"BlastJump.Whistle"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_85dB"
	"volume"		"0.8"
	"wave"			"misc/grenade_jump_lp_01.wav"
}

// ------------------------------------------------------------------------------------ //
// Ready Sounds
// ------------------------------------------------------------------------------------ //
"Demoman.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/demoman_Go01.mp3"
		"wave"	"vo/demoman_Go02.mp3"
		"wave"	"vo/demoman_Go03.mp3"
	}
}

"Engineer.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/engineer_mvm_ask_ready01.mp3"
		"wave"	"vo/engineer_mvm_ask_ready02.mp3"
		"wave"	"vo/engineer_mvm_say_ready01.mp3"
		"wave"	"vo/engineer_mvm_say_ready02.mp3"
	}
}

"Heavy.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/heavy_mvm_ask_ready01.mp3"
		"wave"	"vo/heavy_mvm_ask_ready02.mp3"
		"wave"	"vo/heavy_mvm_ask_ready03.mp3"
		"wave"	"vo/heavy_mvm_ask_ready04.mp3"
		"wave"	"vo/heavy_mvm_say_ready01.mp3"
		"wave"	"vo/heavy_mvm_say_ready02.mp3"
		"wave"	"vo/heavy_mvm_say_ready04.mp3"
	}
}

"Medic.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/medic_mvm_ask_ready01.mp3"
		"wave"	"vo/medic_mvm_say_ready01.mp3"
		"wave"	"vo/medic_mvm_say_ready02.mp3"
	}
}

"Pyro.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"wave"			"vo/pyro_Go01.mp3"
}

"Scout.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/scout_Go01.mp3"
		"wave"	"vo/scout_Go02.mp3"
		"wave"	"vo/scout_Go03.mp3"
	}
}

"Sniper.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/sniper_Go01.mp3"
		"wave"	"vo/sniper_Go02.mp3"
		"wave"	"vo/sniper_Go03.mp3"
	}
}

"Soldier.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/soldier_mvm_ask_ready01.mp3"
		"wave"	"vo/soldier_mvm_ask_ready02.mp3"
		"wave"	"vo/soldier_mvm_ask_ready03.mp3"
		"wave"	"vo/soldier_mvm_say_ready01.mp3"
		"wave"	"vo/soldier_mvm_say_ready02.mp3"
	}
}

"Spy.Ready"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/spy_Go01.mp3"
		"wave"	"vo/spy_Go02.mp3"
		"wave"	"vo/spy_Go03.mp3"
	}
}

// ------------------------------------------------------------------------------------ //
// MvM Ready Sounds
// ------------------------------------------------------------------------------------ //
"Demoman.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/demoman_Go01.mp3"
		"wave"	"vo/demoman_Go02.mp3"
		"wave"	"vo/demoman_Go03.mp3"
	}
}

"Engineer.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/engineer_mvm_ask_ready01.mp3"
		"wave"	"vo/engineer_mvm_ask_ready02.mp3"
		"wave"	"vo/engineer_mvm_say_ready01.mp3"
		"wave"	"vo/engineer_mvm_say_ready02.mp3"
	}
}

"Heavy.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/heavy_mvm_ask_ready01.mp3"
		"wave"	"vo/heavy_mvm_ask_ready02.mp3"
		"wave"	"vo/heavy_mvm_ask_ready03.mp3"
		"wave"	"vo/heavy_mvm_ask_ready04.mp3"
		"wave"	"vo/heavy_mvm_say_ready01.mp3"
		"wave"	"vo/heavy_mvm_say_ready02.mp3"
		"wave"	"vo/heavy_mvm_say_ready03.mp3"
		"wave"	"vo/heavy_mvm_say_ready04.mp3"
		"wave"	"vo/heavy_mvm_say_ready05.mp3"
	}
}

"Medic.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/medic_mvm_ask_ready01.mp3"
		"wave"	"vo/medic_mvm_say_ready01.mp3"
		"wave"	"vo/medic_mvm_say_ready02.mp3"
	}
}

"Pyro.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"wave"			"vo/pyro_Go01.mp3"
}

"Scout.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/scout_Go01.mp3"
		"wave"	"vo/scout_Go02.mp3"
		"wave"	"vo/scout_Go03.mp3"
	}
}

"Sniper.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/sniper_Go01.mp3"
		"wave"	"vo/sniper_Go02.mp3"
		"wave"	"vo/sniper_Go03.mp3"
	}
}

"Soldier.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/soldier_mvm_ask_ready01.mp3"
		"wave"	"vo/soldier_mvm_ask_ready02.mp3"
		"wave"	"vo/soldier_mvm_ask_ready03.mp3"
		"wave"	"vo/soldier_mvm_say_ready01.mp3"
		"wave"	"vo/soldier_mvm_say_ready02.mp3"
	}
}

"Spy.ReadyMvM"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/spy_Go01.mp3"
		"wave"	"vo/spy_Go02.mp3"
		"wave"	"vo/spy_Go03.mp3"
	}
}

// ------------------------------------------------------------------------------------ //
// Comp Ready Sounds
// ------------------------------------------------------------------------------------ //
"Demoman.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/demoman_Go01.mp3"
		"wave"	"vo/demoman_Go02.mp3"
		"wave"	"vo/demoman_Go03.mp3"
	}
}

"Engineer.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/engineer_mvm_ask_ready01.mp3"
		"wave"	"vo/engineer_mvm_ask_ready02.mp3"
		"wave"	"vo/engineer_mvm_say_ready01.mp3"
		"wave"	"vo/engineer_mvm_say_ready02.mp3"
	}
}

"Heavy.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/heavy_mvm_ask_ready01.mp3"
		"wave"	"vo/heavy_mvm_ask_ready02.mp3"
		"wave"	"vo/heavy_mvm_ask_ready03.mp3"
		"wave"	"vo/heavy_mvm_ask_ready04.mp3"
		"wave"	"vo/heavy_mvm_say_ready01.mp3"
		"wave"	"vo/heavy_mvm_say_ready02.mp3"
		"wave"	"vo/heavy_mvm_say_ready04.mp3"
	}
}

"Medic.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/medic_mvm_ask_ready01.mp3"
		"wave"	"vo/medic_mvm_say_ready01.mp3"
		"wave"	"vo/medic_mvm_say_ready02.mp3"
	}
}

"Pyro.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"wave"			"vo/pyro_Go01.mp3"
}

"Scout.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/scout_Go01.mp3"
		"wave"	"vo/scout_Go02.mp3"
		"wave"	"vo/scout_Go03.mp3"
	}
}

"Sniper.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/sniper_Go01.mp3"
		"wave"	"vo/sniper_Go02.mp3"
		"wave"	"vo/sniper_Go03.mp3"
	}
}

"Soldier.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/soldier_mvm_ask_ready01.mp3"
		"wave"	"vo/soldier_mvm_ask_ready02.mp3"
		"wave"	"vo/soldier_mvm_ask_ready03.mp3"
		"wave"	"vo/soldier_mvm_say_ready01.mp3"
		"wave"	"vo/soldier_mvm_say_ready02.mp3"
	}
}

"Spy.ReadyComp"
{
	"channel"	"CHAN_VOICE"
	"volume"	"VOL_NORM"
	"pitch"		"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"rndwave"
	{
		"wave"	"vo/spy_Go01.mp3"
		"wave"	"vo/spy_Go02.mp3"
		"wave"	"vo/spy_Go03.mp3"
	}
}

// ------------------------------------------------------------------------------------ //
// 
// ------------------------------------------------------------------------------------ //

"pyro.music_backpack"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_85dB"
	"wave"		")items/pyro_music_tube.wav"
}

"Taunt.PyroAnnihilator"
{
	"channel"	"CHAN_STATIC"
	"volume"	".35"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"	"player/sign_bass_solo.wav"
}

// ------------------------------------------------------------------------------------ //
// Halloween 2012
// ------------------------------------------------------------------------------------ //

"Player.bomb_attach"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_bomb_attach.wav"
}

"Player.bomb_fuse"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.5"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_bomb_fuse.wav"
}

"Player.bomb_flash"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.2"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_bomb_flash.wav"
}

// ------------------------------------------------------------------------------------ //
// SFX for new taunt update 2014
// ------------------------------------------------------------------------------------ //

"Player.taunt_flipFX"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"pitch"			"PITCH_NORM"
	"wave"			"player/taunt_sfx_flip_01.wav"
}

"taunt.single_bell"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"pitch"			"PITCH_NORM"
	"wave"			"player/taunt_sfx_bell_single.wav"
}

"taunt.dbl_bell"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"pitch"			"PITCH_NORM"
	"wave"			"player/taunt_bell.wav"
}

"taunt.hawk"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"pitch"			"PITCH_NORM"
	"wave"			"player/sniper_taunt_hawk.wav"
}

"taunt.broomfly"
{
	"channel"		"CHAN_BODY"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			"player/taunt_broom_fly.wav"
}

"taunt.broomflyfade"
{
	"channel"		"CHAN_BODY"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			"player/taunt_broom_fly_fade.wav"
}

"taunt.disco"
{
	"channel"		"CHAN_BODY"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			"player/taunt_disco.wav"
}

"Taunt.BumperCarSpawn"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")player/taunt_bumper_car_spawn.wav"
}

"Taunt.BumperCarGoLoop"
{
	"channel"	"CHAN_BODY"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")player/taunt_bumper_car_go_loop.wav"
}

"Taunt.BumperCarHorn"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")player/taunt_bumper_car_horn.wav"
}

"Taunt.BumperCarQuit"
{
	"channel"	"CHAN_BODY"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")player/taunt_bumper_car_quit.wav"
}

"Taunt.secondrate_sorcery_spell_fail"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_sorcery_fail.wav"
}

"Taunt.secondrate_sorcery_spell_staff_drop"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_sorcery_staff_drop.wav"
}

"Taunt.secondrate_sorcery_spell_fail_staff_break"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_sorcery_staff_break.wav"
}

"Taunt.Party_Trick"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_party_trick.wav"
}

"Taunt.Party_Trick_Pyro_Vision"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_party_trick_pyro_vision.wav"
}

"Player.FallDamageIndicator"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"
	
	"wave"			")player/fall_damage_indicator.wav"
}

"Player.FallDamageDealt"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/fall_damage_dealt.wav"
}

"Taunt.TableFlipBubblyPotWater"
{
	"channel"		"CHAN_BODY"
	"volume"		".75"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_table_flip_bubbly_pot_water.wav"
}

"Taunt.TableFlipNotification"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_table_flip_notification.wav"
}

"Taunt.TableFlipFlippingTable"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_table_flip_flipping_table.wav"
}

"Taunt.DidgeridooStart"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_68dB"

	"wave"			")player/taunt_didgeridoo_start.wav"
}

"Taunt.DidgeridooStop"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_68dB"

	"wave"			")player/taunt_didgeridoo_stop.wav"
}

"Taunt.DidgeridooSitDown"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_68dB"

	"wave"			")player/taunt_didgeridoo_sit_down.wav"
}

"Taunt.DidgeridooStandUp"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_68dB"

	"wave"			")player/taunt_didgeridoo_stand_up.wav"
}

"Taunt.DemoStaggerSlosh1"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_demo_stagger_slosh1.wav"
}

"Taunt.DemoStaggerSlosh2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_demo_stagger_slosh2.wav"
}

"Taunt.DemoStaggerSlosh3"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_demo_stagger_slosh3.wav"
}

"Taunt.DemoStaggerSlosh4"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_demo_stagger_slosh4.wav"
}

"Taunt.GasBlast"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_gas_blast.wav"
}

"Taunt.GasBlastPyrovision"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_gas_blast_pyrovision.wav"
}

"Taunt.TankForward"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_tank_forward.wav"
}

"Taunt.TankIdle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_tank_idle.wav"
}

"Taunt.TankReverse"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_tank_reverse.wav"
}

"Taunt.TankShoot"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_tank_shoot.wav"
}

"Taunt.TankEnd"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_tank_end.wav"
}

"Taunt.TankEndEngineStop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_tank_end_engine_stop.wav"
}

"Taunt.TankStartClothesRustle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		"player/taunt_tank_start_clothes_rustle.wav"
}

"Taunt.TankHeelClick"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		"player/taunt_tank_heel_click.wav"
}

"Taunt.TankDrop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		"player/taunt_tank_drop.wav"
}

"Taunt.TankAppear"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_tank_appear.wav"
}

"Taunt.RunnersRhythmBongoSlide"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_runners_rhythm_bongo_slide.wav"
}

"Taunt.SkatingScorcherStride"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
		"rndwave"
		{
			"wave"	")player/taunt_skating_scorcher_stride1.wav"
			"wave"	")player/taunt_skating_scorcher_stride2.wav"
			"wave"	")player/taunt_skating_scorcher_stride3.wav"
			"wave"	")player/taunt_skating_scorcher_stride4.wav"
			"wave"	")player/taunt_skating_scorcher_stride5.wav"
			"wave"	")player/taunt_skating_scorcher_stride6.wav"
			"wave"	")player/taunt_skating_scorcher_stride7.wav"
			"wave"	")player/taunt_skating_scorcher_stride8.wav"
			"wave"	")player/taunt_skating_scorcher_stride9.wav"
		}
}
	
"Taunt.SkatingScorcherLand"
{
	"channel"		"CHAN_STATIC"
	"volume"		".35"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"

	"wave"	")player/taunt_skating_scorcher_land.wav"

}

"Taunt.BunnyHopperHop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
		"rndwave"
		{
			"wave"	")player/taunt_bunnyhopper_hop1.wav"
			"wave"	")player/taunt_bunnyhopper_hop2.wav"
			"wave"	")player/taunt_bunnyhopper_hop3.wav"
			"wave"	")player/taunt_bunnyhopper_hop4.wav"
			"wave"	")player/taunt_bunnyhopper_hop5.wav"
			"wave"	")player/taunt_bunnyhopper_hop6.wav"
			"wave"	")player/taunt_bunnyhopper_hop7.wav"
		}
}

"Taunt.BunnyHopperCatch"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"

	"wave"	")player/taunt_bunnyhopper_catch.wav"

}

"Taunt.BunnyHopperStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_74dB"
	"pitch"			"100,110"
	
	"wave"	"player/taunt_bunnyhopper_step.wav"

}

"Taunt.BunnyHopperDiscard"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_74dB"
	
	"wave"	")player/taunt_bunnyhopper_discard.wav"
}

"Taunt.MopedStartHandleGrab"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_moped_start_handle_grab.wav"
}

"Taunt.MopedStartShake"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_moped_start_shake.wav"
}

"Taunt.MopedStartLand"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_moped_start_land.wav"
}

"Taunt.MopedStartSwoosh1"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_moped_start_swoosh1.wav"
}

"Taunt.MopedStartSwoosh2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_moped_start_swoosh2.wav"
}

"Taunt.MopedForward"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_moped_forward.wav"
}

"Taunt.MopedEndEngineOff"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_moped_end_engine_off.wav"
}

"Taunt.MopedEndScoutFoot1"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_moped_end_scout_foot1.wav"
}

"Taunt.MopedEndScoutFoot2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_moped_end_scout_foot2.wav"
}

"Taunt.MopedEndShake"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_moped_end_shake.wav"
}

"Taunt.MopedWheelieEngineRev"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_moped_wheelie_engine_rev.wav"
}

"Taunt.MopedWheelieLand1"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_moped_wheelie_land1.wav"
}

"Taunt.MopedWheelieLand2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_moped_wheelie_land2.wav"
}


"Taunt.LuxuryLoungeChairAppear"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_chair_appear.wav"
}

"Taunt.LuxuryLoungeChairLand"
{
	"channel"		"CHAN_STATIC"
	"volume"		".4"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_chair_land.wav"
}

"Taunt.LuxuryLoungeChairCreak"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_chair_creak.wav"
}

"Taunt.LuxuryLoungeSit"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_sit.wav"
}

"Taunt.LuxuryLoungeGetUp"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_get_up.wav"
}

"Taunt.LuxuryLoungeBookOpen"
{
	"channel"		"CHAN_STATIC"
	"volume"		".75"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_book_open.wav"
}

"Taunt.LuxuryLoungeBookClose"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_book_close.wav"
}

"Taunt.LuxuryLoungeBookPageTurn"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_book_page_turn.wav"
}

"Taunt.LuxuryLoungeSip"
{
	"channel"		"CHAN_VOICE"
	"volume"		".75"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_luxury_lounge_sip.wav"
}

"Taunt.SurgeonsSqueezeboxMusic"
{
	"channel"		"CHAN_STATIC"
	"volume"		".75"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_surgeons_squeezebox_music.wav"
}

"Taunt.SurgeonsSqueezeboxDrawClothes"
{
	"channel"		"CHAN_STATIC"
	"volume"		".75"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			"player/taunt_surgeons_squeezebox_draw_clothes.wav"
}

"Taunt.SurgeonsSqueezeboxDrawAccordion"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			"player/taunt_surgeons_squeezebox_draw_accordion.wav"
}

"Taunt.SurgeonsSqueezeboxStep"
{
	"channel"		"CHAN_STATIC"
	"volume"		".2"
	"pitch"			"90,110"

	"soundlevel"	"SNDLVL_74dB"

	"rndwave"
	{
		"wave"	")player/taunt_surgeons_squeezebox_step1.wav"
		"wave"	")player/taunt_surgeons_squeezebox_step2.wav"
	}
}

"Taunt.SovietStrongArmRoll"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_soviet_strongarm_roll.wav"
}

"Taunt.SovietStrongArmCatch"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_soviet_strongarm_roll_catch.wav"
}

"Taunt.SovietStrongArmRep"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"rndwave"
	{
		"wave"	")player/taunt_soviet_strongarm_rep1.wav"
		"wave"	")player/taunt_soviet_strongarm_rep2.wav"
		"wave"	")player/taunt_soviet_strongarm_rep3.wav"
		"wave"	")player/taunt_soviet_strongarm_rep4.wav"
	}
}

"Taunt.SovietStrongArmRepLight"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"rndwave"
	{
		"wave"	")player/taunt_soviet_strongarm_rep_light1.wav"
		"wave"	")player/taunt_soviet_strongarm_rep_light2.wav"
		"wave"	")player/taunt_soviet_strongarm_rep_light3.wav"
		"wave"	")player/taunt_soviet_strongarm_rep_light4.wav"
	}
}

"Taunt.SovietStrongArmRepStretch"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"

	"wave"	"player/taunt_soviet_strongarm_rep_stretch.wav"
}

"Taunt.SovietStrongArmRepStretchDone"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"

	"wave"	")player/taunt_soviet_strongarm_rep_stretch_done.wav"
}

"Taunt.SovietStrongArmDrop1"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_soviet_strongarm_drop1.wav"
}

"Taunt.SovietStrongArmDrop2"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_74dB"

	"wave"			")player/taunt_soviet_strongarm_drop2.wav"
}

"Taunt.MediumClap"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"95,105"
	"soundlevel"	"SNDLVL_74dB"
	
	"rndwave"
		{
			"wave"	")player/taunt_medium_clap1.wav"
			"wave"	")player/taunt_medium_clap2.wav"
			"wave"	")player/taunt_medium_clap3.wav"
			"wave"	")player/taunt_medium_clap4.wav"
		}
}

"Taunt.PyroTwirl"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_pyro_twirl.wav"
}

"Taunt.YetiAppearSnow"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_94dB"
	
	"wave"		")player/taunt_yeti_appear_snow.wav"
}

"Taunt.YetiLand"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_110dB"
	
	"wave"		")player/taunt_yeti_land.wav"
}

"Taunt.YetiRoarBeginning"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_110dB"
	
	"wave"		")player/taunt_yeti_roar_beginning.wav"
}

"Taunt.YetiRoarFirst"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_110dB"
	
	"wave"		")player/taunt_yeti_roar_first.wav"
}

"Taunt.YetiRoarSecond"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_110dB"
	
	"wave"		")player/taunt_yeti_roar_second.wav"
}

"Taunt.YetiChestHit"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"rndwave"
		{
			"wave"	")player/taunt_yeti_chest_hit1.wav"
			"wave"	")player/taunt_yeti_chest_hit2.wav"
			"wave"	")player/taunt_yeti_chest_hit3.wav"
			"wave"	")player/taunt_yeti_chest_hit4.wav"
			"wave"	")player/taunt_yeti_chest_hit5.wav"
			"wave"	")player/taunt_yeti_chest_hit6.wav"
			"wave"	")player/taunt_yeti_chest_hit7.wav"
			"wave"	")player/taunt_yeti_chest_hit8.wav"
			"wave"	")player/taunt_yeti_chest_hit9.wav"
		}
}

"Taunt.YetiGroundPound"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_110dB"
	
	"wave"		")player/taunt_yeti_ground_pound.wav"
}

"Taunt.YetiStandeeSniperHands1"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_sniper_hands1.wav"
}

"Taunt.YetiStandeeSniperHands2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_sniper_hands2.wav"
}

"Taunt.YetiStandeeSniperHands3"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_sniper_hands3.wav"
}

"Taunt.YetiStandeeSniperHands4"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_sniper_hands4.wav"
}

"Taunt.YetiStandeeSniperHands"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
		"rndwave"
		{
						"wave"		")player/taunt_yeti_standee_sniper_hands1.wav"
						"wave"		")player/taunt_yeti_standee_sniper_hands2.wav"
						"wave"		")player/taunt_yeti_standee_sniper_hands3.wav"
						"wave"		")player/taunt_yeti_standee_sniper_hands4.wav"
		}
}

"Taunt.YetiStandeeBreak"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_break.wav"
}

"Taunt.YetiStandeeSpeakerGrowl"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_speaker_growl.wav"
}

"Taunt.YetiStandeeSpeakerGrowlBroken"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_speaker_growl_broken.wav"
}

"Taunt.YetiStandeeSwoosh"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_swoosh.wav"
}

"Taunt.YetiStandeeLand"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_land.wav"
}

"Taunt.YetiStandeeLand2"
{
	"channel"		"CHAN_STATIC"
	"volume"		".75"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_land2.wav"
}

"Taunt.YetiStandeeScoutStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"100,110"
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.YetiStandeeScoutEquipmentJingle"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
		"rndwave"
		{
						"wave"		"player/taunt_yeti_standee_equipment_jingle.wav"
						"wave"		"player/taunt_yeti_standee_equipment_jingle2.wav"
						"wave"		"player/taunt_yeti_standee_equipment_jingle3.wav"
						"wave"		"player/taunt_yeti_standee_equipment_jingle4.wav"
		}
}

"Taunt.YetiStandeeScoutSwing"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_74dB"
	"pitch"		"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_scout_swing.wav"
}

"Taunt.YetiStandeeScoutHit"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_74dB"
	"wave"	")player/taunt_yeti_standee_scout_hit.wav"
}

"Taunt.YetiStandeeDemoStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	
	"rndwave"
	{
					"wave"	"player/taunt_yeti_standee_demo_step1.wav"
					"wave"	"player/taunt_yeti_standee_demo_step2.wav"
					"wave"	"player/taunt_yeti_standee_demo_step3.wav"
					"wave"	"player/taunt_yeti_standee_demo_step4.wav"
	}
}

"Taunt.YetiStandeeDemoSwing"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_74dB"
	"pitch"		"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_demo_swing.wav"
}


"Taunt.YetiStandeeDemoEquipmentJingle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		"player/taunt_yeti_standee_demo_equipment_jingle.wav"
}

"Taunt.YetiStandeeDemoClothesRustle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		"player/taunt_yeti_standee_demo_clothes_rustle.wav"
}

"Taunt.YetiStandeeHeavyClap"
{
	"channel"		"CHAN_STATIC"
	"volume"		".8"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		"player/taunt_yeti_standee_heavy_clap.wav"
}

"Taunt.YetiStandeeLandHeavy"
{
	"channel"		"CHAN_STATIC"
	"volume"		".65"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_land.wav"
}

"Taunt.YetiStandeeHeavyStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"90,100"
	
	"rndwave"
	{
					"wave"	"player/taunt_yeti_standee_heavy_step1.wav"
					"wave"	"player/taunt_yeti_standee_heavy_step2.wav"
					"wave"	"player/taunt_yeti_standee_heavy_step3.wav"
					"wave"	"player/taunt_yeti_standee_heavy_step4.wav"
	}
}

"Taunt.YetiStandeeHeavyEquipment"
{
	"channel"		"CHAN_STATIC"
	"volume"		".3"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_heavy_equipment.wav"
}

"Taunt.YetiStandeeHeavyEquipmentLight1"
{
	"channel"		"CHAN_STATIC"
	"volume"		".65"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_heavy_equipment_light1.wav"
}

"Taunt.YetiStandeeHeavyEquipmentLight2"
{
	"channel"		"CHAN_STATIC"
	"volume"		".65"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	
	"wave"		")player/taunt_yeti_standee_heavy_equipment_light2.wav"
}

"Taunt.YetiStandeeSpyStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/taunt_foot_stomp.wav"
}

"Taunt.YetiStandeeSpySwing1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_spy_swing1.wav"
}

"Taunt.YetiStandeeSpySwing2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_spy_swing2.wav"
}

"Taunt.YetiStandeeSpySwing"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_spy_swing.wav"
}

"Taunt.YetiStandeeSpyClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_spy_clothes_rustle.wav"
}

"Taunt.YetiStandeeMedicSwing1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_medic_swing1.wav"
}

"Taunt.YetiStandeeMedicSwing2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_medic_swing2.wav"
}

"Taunt.YetiStandeeMedicStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".7"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/taunt_yeti_standee_medic_step.wav"
}

"Taunt.YetiStandeeMedicClothesRustleSwing"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_medic_clothes_rustle_swing.wav"
}

"Taunt.YetiStandeeMedicGloveStretch"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_medic_glove_stretch.wav"
}

"Taunt.YetiStandeeMedicGloveSnap"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_medic_glove_snap.wav"
}

"Taunt.YetiStandeePyroSwing1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_pyro_swing1.wav"
}

"Taunt.YetiStandeePyroStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".7"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/taunt_yeti_standee_pyro_step.wav"
}

"Taunt.YetiStandeePyroEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_pyro_equipment.wav"
}

"Taunt.YetiStandeePyroClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_pyro_clothes_rustle.wav"
}

"Taunt.YetiStandeeEngineerHopStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".7"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_engineer_step.wav"
}

"Taunt.YetiStandeeEngineerDanceStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"rndwave"
	{   
					"wave"	"player/taunt_yeti_standee_engineer_step_dance1.wav"
					"wave"	"player/taunt_yeti_standee_engineer_step_dance2.wav"
					"wave"	"player/taunt_yeti_standee_engineer_step_dance3.wav"
					"wave"	"player/taunt_yeti_standee_engineer_step_dance4.wav"
	}
}

"Taunt.YetiStandeeEngineerBootSlap"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_74dB"
	"wave"			")player/taunt_yeti_standee_engineer_boot_slap.wav"

}


"Taunt.YetiStandeeEngineerKick"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"
	"wave"	")player/taunt_yeti_standee_engineer_kick.wav"
}

"Taunt.YetiStandeeEngineerEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_engineer_equipment.wav"
}

"Taunt.YetiStandeeEngineerClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_engineer_clothes_rustle.wav"
}

"Taunt.YetiStandeeEngineerMusic"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"

	"wave"	")player/taunt_yeti_standee_engineer_music.wav"

}

"Taunt.YetiStandeeSniperStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_sniper_step.wav"
}

"Taunt.YetiStandeeSniperClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_sniper_clothes_rustle.wav"
}

"Taunt.YetiStandeeSoldierStep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	
	"rndwave"
	{
					"wave"	"player/taunt_yeti_standee_soldier_step1.wav"
					"wave"	"player/taunt_yeti_standee_soldier_step2.wav"
					"wave"	"player/taunt_yeti_standee_soldier_step3.wav"
					"wave"	"player/taunt_yeti_standee_soldier_step4.wav"
	}
}

"Taunt.YetiStandeeSoldierEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_soldier_equipment.wav"
}

"Taunt.YetiStandeeSoldierEquipmentLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_soldier_equipment.wav"
}

"Taunt.YetiStandeeSoldierClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_soldier_clothes_rustle.wav"
}

"Taunt.YetiStandeeSoldierClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_soldier_clothes_rustle_light.wav"
}

"Taunt.YetiStandeeSoldierStandeeGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_yeti_standee_soldier_standee_grab.wav"
}

"PDA.SoldierDrop1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_soldier_drop1.wav"
}

"PDA.SoldierDrop2"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_soldier_drop2.wav"
}

"PDA.SoldierEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_equipment.wav"
}

"PDA.SoldierClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.SoldierClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle.wav"
}

"PDA.SoldierGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.SoldierShake"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/cyoa_pda_shake.wav"
}

"PDA.SoldierHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster_light.wav"
}

"PDA.MedicClothesRustleLong"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_long.wav"
}

"PDA.MedicClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.Swipe"
{
	"channel"	"CHAN_STATIC"
	"volume"	".3"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/cyoa_pda_swipe.wav"
}

"PDA.MedicGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.MedicGrabLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.MedicHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster_light.wav"
}


"PDA.HeavyEquipment"

{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_equipment.wav"
}

"PDA.HeavyGrabLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.HeavyClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.HeavyDraw"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_draw.wav"
}

"PDA.HeavyBeep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	
	"rndwave"
	{
					"wave"	")player/cyoa_pda_beep2.wav"
					"wave"	")player/cyoa_pda_beep3.wav"
					"wave"	")player/cyoa_pda_beep4.wav"
					"wave"	")player/cyoa_pda_beep5.wav"
					"wave"	")player/cyoa_pda_beep6.wav"
					"wave"	")player/cyoa_pda_beep7.wav"
					"wave"	")player/cyoa_pda_beep8.wav"
	}
}

"PDA.HeavyGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.HeavySpin"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_spin.wav"
}

"PDA.HeavyHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster.wav"
}

"PDA.EngineerEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_equipment.wav"
}

"PDA.EngineerClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.EngineerUnHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_unholster.wav"
}

"PDA.EngineerGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.EngineerEquipmentLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_equipment_light.wav"
}

"PDA.EngineerHit"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.EngineerHitEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_equipment_light.wav"
}

"PDA.EngineerHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster.wav"
}

"PDA.EngineerGrabLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"95,105"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.SniperGrabLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.SniperClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.SniperEquipmentLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_equipment_light.wav"
}

"PDA.SniperClothesRustle"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle.wav"
}

"PDA.SniperBeep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	
	"rndwave"
	{
					"wave"	")player/cyoa_pda_beep2.wav"
					"wave"	")player/cyoa_pda_beep3.wav"
					"wave"	")player/cyoa_pda_beep4.wav"
					"wave"	")player/cyoa_pda_beep5.wav"
					"wave"	")player/cyoa_pda_beep6.wav"
					"wave"	")player/cyoa_pda_beep7.wav"
					"wave"	")player/cyoa_pda_beep8.wav"
	}
}

"PDA.SniperSpin"
{
	"channel"	"CHAN_STATIC"
	"volume"	".1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_spin.wav"
}

"PDA.SniperHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster.wav"
}

"PDA.PyroClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".45"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.PyroEquipmentLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_equipment_light.wav"
}

"PDA.PyroSpin"
{
	"channel"	"CHAN_STATIC"
	"volume"	".2"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_spin.wav"
}

"PDA.PyroGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.PyroBeep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	
	"rndwave"
	{
					"wave"	")player/cyoa_pda_beep2.wav"
					"wave"	")player/cyoa_pda_beep3.wav"
					"wave"	")player/cyoa_pda_beep4.wav"
					"wave"	")player/cyoa_pda_beep5.wav"
					"wave"	")player/cyoa_pda_beep6.wav"
					"wave"	")player/cyoa_pda_beep7.wav"
					"wave"	")player/cyoa_pda_beep8.wav"
	}
}

"PDA.PyroHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster.wav"
}

"PDA.SpyGrabLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.SpyGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.SpyClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".45"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.SpySpin"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_spin.wav"
}

"PDA.SpyBeep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	
	"rndwave"
	{
					"wave"	")player/cyoa_pda_beep2.wav"
					"wave"	")player/cyoa_pda_beep3.wav"
					"wave"	")player/cyoa_pda_beep4.wav"
					"wave"	")player/cyoa_pda_beep5.wav"
					"wave"	")player/cyoa_pda_beep6.wav"
					"wave"	")player/cyoa_pda_beep7.wav"
					"wave"	")player/cyoa_pda_beep8.wav"
	}
}

"PDA.SpyDial"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	
	"rndwave"
	{
					"wave"	")player/cyoa_pda_dial1.wav"
					"wave"	")player/cyoa_pda_dial2.wav"
					"wave"	")player/cyoa_pda_dial3.wav"
					"wave"	")player/cyoa_pda_dial4.wav"
					"wave"	")player/cyoa_pda_dial5.wav"
	}
}

"PDA.SpyHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster.wav"
}	

"PDA.DemoHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster.wav"
}

"PDA.DemoClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".45"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.DemoEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_equipment.wav"
}

"PDA.DemoFlySwoosh"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_fly_swoosh.wav"
}

"PDA.DemoGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.DemoBeep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	
	"rndwave"
	{
					"wave"	")player/cyoa_pda_beep2.wav"
					"wave"	")player/cyoa_pda_beep3.wav"
					"wave"	")player/cyoa_pda_beep4.wav"
					"wave"	")player/cyoa_pda_beep5.wav"
					"wave"	")player/cyoa_pda_beep6.wav"
					"wave"	")player/cyoa_pda_beep7.wav"
					"wave"	")player/cyoa_pda_beep8.wav"
	}
}

"PDA.DemoClothesRustleLightItch"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.ScoutGrab"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_grab.wav"
}

"PDA.ScoutHolster"
{
	"channel"	"CHAN_STATIC"
	"volume"	".35"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/cyoa_pda_holster.wav"
}

"PDA.ScoutClothesRustleLight"
{
	"channel"	"CHAN_STATIC"
	"volume"	".45"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/cyoa_pda_clothes_rustle_light.wav"
}

"PDA.ScoutBeep"
{
	"channel"	"CHAN_STATIC"
	"volume"	".15"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	
	"rndwave"
	{
					"wave"	")player/cyoa_pda_beep2.wav"
					"wave"	")player/cyoa_pda_beep3.wav"
					"wave"	")player/cyoa_pda_beep4.wav"
					"wave"	")player/cyoa_pda_beep5.wav"
					"wave"	")player/cyoa_pda_beep6.wav"
					"wave"	")player/cyoa_pda_beep7.wav"
					"wave"	")player/cyoa_pda_beep8.wav"
	}
}

"Taunt.BumpkinsBanjoSitEquipment"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_equipment_gun1.wav"
}

"Taunt.BumpkinsBanjoSitClothes"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	"player/taunt_clothes_rustle.wav"
}

"Taunt.BumpkinsBanjoMusic"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_bumpkins_banjo_music.wav"
}

"Taunt.BumpkinsBanjoMusicFast"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_bumpkins_banjo_music_fast.wav"
}

"Taunt.BumpkinsBanjoMusicStop"
{
	"channel"	"CHAN_BODY"
	"volume"	".85"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"
	"wave"	")player/taunt_bumpkins_banjo_music_stop.wav"
}

"Taunt.RocketHoverStart"
{
	"channel"		"CHAN_STATIC"
	"volume"		".35"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_rocket_hover_start.wav"
}

"Taunt.RocketHoverLoop"
{
	"channel"		"CHAN_BODY"
	"volume"		".35"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_rocket_hover_loop.wav"
}

"Taunt.RocketHoverStop"
{
	"channel"		"CHAN_STATIC"
	"volume"		".35"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_rocket_hover_stop.wav"
}

"Taunt.RocketHoverStopThruster"
{
	"channel"		"CHAN_BODY"
	"volume"		".35"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"			")player/taunt_rocket_hover_stop_thruster.wav"
}

"Croc.SwimBurst"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_115dB"
	
	"wave"			")ambient/lair/crocs_swim_burst.wav"
}

"Crocs.Growl"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_88dB"
	
		"rndwave"
	{
					"wave"	")ambient_mp3/lair/crocs_growl1.mp3"
					//"wave"	")ambient_mp3/lair/crocs_growl2.mp3"
					//"wave"	")ambient_mp3/lair/crocs_growl3.mp3"
					//"wave"	")ambient_mp3/lair/crocs_growl4.mp3"
					"wave"	")ambient_mp3/lair/crocs_growl5.mp3"
					"wave"	"common/null.wav"
	}
}

"Crocs.Hiss"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_80dB"
	
		"rndwave"
	{
					"wave"	")ambient_mp3/lair/crocs_hiss1.mp3"
					//"wave"	")ambient_mp3/lair/crocs_hiss2.mp3"
					"wave"	")ambient_mp3/lair/crocs_hiss3.mp3"
					//"wave"	")ambient_mp3/lair/crocs_hiss4.mp3"
					"wave"	"common/null.wav"
	}
}

"Crocs.JumpOut"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_88dB"
	
	"wave"			")ambient/lair/crocs_jump_out.wav"
}

"Crocs.JumpIn"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_88dB"
	
	"wave"			")ambient/lair/crocs_jump_in.wav"
}

"Crocs.JumpBite"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_88dB"
	
	"wave"			")ambient/lair/crocs_jump_bite.wav"
}