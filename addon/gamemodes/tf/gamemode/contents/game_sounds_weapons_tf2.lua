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

// ------------------------------------------------------------------------------------ //
//CRITPOWER
// ------------------------------------------------------------------------------------ //
"Weapon_General.CritPower"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/crit_power.wav"
}

// ------------------------------------------------------------------------------------ //
// RICOCHET
// ------------------------------------------------------------------------------------ //
"FX_RicochetSound.Ricochet"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_96dB"
	"pitch"		"90, 110"

	"rndwave"
	{
		"wave"	"weapons/fx/rics/ric1.wav"
		"wave"	"weapons/fx/rics/ric2.wav"
		"wave"	"weapons/fx/rics/ric3.wav"
		"wave"	"weapons/fx/rics/ric4.wav"
		"wave"	"weapons/fx/rics/ric5.wav"
	}
}


// ------------------------------------------------------------------------------------ //
// NEARMISS
// ------------------------------------------------------------------------------------ //

"Bullets.DefaultNearmiss"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_80dB"
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	">weapons/fx/nearmiss/bulletLtoR08.wav"
		"wave"	">weapons/fx/nearmiss/bulletLtoR09.wav"
		"wave"	">weapons/fx/nearmiss/bulletLtoR10.wav"
		"wave"	">weapons/fx/nearmiss/bulletLtoR11.wav"
		"wave"	">weapons/fx/nearmiss/bulletLtoR13.wav"
		"wave"	">weapons/fx/nearmiss/bulletLtoR14.wav"
	}
}

// ------------------------------------------------------------------------------------ //
//BUILDER
// ------------------------------------------------------------------------------------ //
"Weapon_Builder.SwitchEngineer"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".74"
	"wave"		"weapons/draw_sapper_switch.wav"
}

// ------------------------------------------------------------------------------------ //
// BUMPER CAR
// ------------------------------------------------------------------------------------ //
"BumperCar.Bump"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"  	"SNDLVL_76dB"
	"pitch"		"90, 110"

	"rndwave"
	{
		"wave"	"weapons/bumper_car_hit1.wav"
		"wave"	"weapons/bumper_car_hit2.wav"
		"wave"	"weapons/bumper_car_hit3.wav"
		"wave"	"weapons/bumper_car_hit4.wav"
		"wave"	"weapons/bumper_car_hit5.wav"
		"wave"	"weapons/bumper_car_hit6.wav"
		"wave"	"weapons/bumper_car_hit7.wav"
		"wave"	"weapons/bumper_car_hit8.wav"

	}
}

"BumperCar.Accelerate"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")weapons/bumper_car_accelerate.wav"
}

"BumperCar.GoLoop"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")weapons/bumper_car_go_loop.wav"
}

"BumperCar.Decelerate"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")weapons/bumper_car_decelerate.wav"
}

"BumperCar.DecelerateQuick"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")weapons/bumper_car_decelerate_quick.wav"
}

"BumperCar.Spawn"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		")weapons/bumper_car_spawn.wav"
}

"BumperCar.SpawnFromLava"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		")weapons/bumper_car_spawn_from_lava.wav"
}

"BumperCar.SpeedBoostStart"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".75"
	"wave"		")weapons/bumper_car_speed_boost_start.wav"
}

"BumperCar.SpeedBoostStop"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".75"
	"wave"		")weapons/bumper_car_speed_boost_stop.wav"
}

"BumperCar.Screech"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")weapons/bumper_car_screech.wav"
}

"BumperCar.BumpIntoAir"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/bumper_car_hit_into_air.wav"
}

"BumperCar.BumpHard"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/bumper_car_hit_hard.wav"
}

"BumperCar.Jump"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".35"
	"wave"		")weapons/bumper_car_jump.wav"
}

"BumperCar.JumpLand"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		")weapons/bumper_car_jump_land.wav"
}

"BumperCar.HitBall"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_120dB"
	"volume"	"1"
	"wave"		")weapons/bumper_car_hit_ball.wav"
}

"BumperCar.HitGhost"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/bumper_car_hit_ghost.wav"
}


// ------------------------------------------------------------------------------------ //
//WEAPON CHARGED
// ------------------------------------------------------------------------------------ //
"TFPlayer.CritBoostOn"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/weapon_crit_charged_on.wav"
}

"TFPlayer.CritBoostOff"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/weapon_crit_charged_off.wav"
}

// ------------------------------------------------------------------------------------ //
//PDA
// ------------------------------------------------------------------------------------ //

"Weapon_PDA.DrawSpy"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		"weapons/draw_pda_spy.wav"
}


"Weapon_PDA.DrawEngineer"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		"weapons/draw_pda_engineer.wav"
}

"Weapon_PDA.AntennaeEngineer"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		"weapons/draw_pda_antennae.wav"
}

// ------------------------------------------------------------------------------------ //
//DEAD RINGER
// ------------------------------------------------------------------------------------ //

"Weapon_DeadRinger.DrawSpy"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		"weapons/draw_dead_ringer_spy.wav"
}

// ------------------------------------------------------------------------------------ //
// HOLY MACKEREL
// ------------------------------------------------------------------------------------ //

"Weapon_HolyMackerel.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/holy_mackerel1.wav"
		"wave"		"weapons/holy_mackerel2.wav"
		"wave"		"weapons/holy_mackerel3.wav"
	}

}

"Weapon_HolyMackerel.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/holy_mackerel1.wav"
		"wave"		"weapons/holy_mackerel2.wav"
		"wave"		"weapons/holy_mackerel3.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// BASEBALL BAT
// ------------------------------------------------------------------------------------ //

"Weapon_BaseballBat.HitBall"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/bat_baseball_hit1.wav"
		"wave"		")weapons/bat_baseball_hit2.wav"
	}

}

"Weapon_BaseballBat.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/bat_baseball_hit_flesh.wav"

}

"Weapon_BaseballBat.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bat_baseball_hit_world1.wav"
		"wave"		"weapons/bat_baseball_hit_world2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// BASEBALL
// ------------------------------------------------------------------------------------ //
"Weapon_Baseball.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_74dB"
	"rndwave"
	{
		"wave"		"weapons/baseball_hitworld1.wav"
		"wave"		"weapons/baseball_hitworld2.wav"
		"wave"		"weapons/baseball_hitworld3.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// BAT
// ------------------------------------------------------------------------------------ //

"Weapon_Bat.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".5"
	"wave"		"weapons/bat_draw.wav"
}

"Weapon_Bat.DrawSwoosh1"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".45"
	"wave"		"weapons/bat_draw_swoosh1.wav"
}

"Weapon_Bat.DrawSwoosh2"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".45"
	"wave"		"weapons/bat_draw_swoosh2.wav"
}


"Weapon_Bat.DrawCatch"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"wave"		"weapons/metal_hit_hand1.wav"
}

"Weapon_Ball.DrawCatch"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".25"
	"wave"		"weapons/metal_hit_hand1.wav"
}

"Weapon_Bat.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_Bat.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1_crit.wav"
}

"Weapon_Bat.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/bat_hit.wav"

}

"Weapon_Bat.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// BOTTLE
// ------------------------------------------------------------------------------------ //

"Weapon_Bottle.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_Bottle.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}

"Weapon_Bottle.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1_crit.wav"
}

"Weapon_Bottle.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bottle_hit_flesh1.wav"
		"wave"		"weapons/bottle_hit_flesh2.wav"
		"wave"		"weapons/bottle_hit_flesh3.wav"
	}
}

"Weapon_Bottle.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bottle_hit1.wav"
		"wave"		"weapons/bottle_hit2.wav"
		"wave"		"weapons/bottle_hit3.wav"
	}
}

"Weapon_Bottle.IntactHitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bottle_intact_hit_world1.wav"
		"wave"		"weapons/bottle_intact_hit_world2.wav"
	}
}

"Weapon_Bottle.BrokenHitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bottle_broken_hit_world1.wav"
		"wave"		"weapons/bottle_broken_hit_world2.wav"
		"wave"		"weapons/bottle_broken_hit_world3.wav"
	}
}

"Weapon_Bottle.IntactHitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bottle_intact_hit_flesh1.wav"
		"wave"		"weapons/bottle_intact_hit_flesh2.wav"
		"wave"		"weapons/bottle_intact_hit_flesh3.wav"
	}
}

"Weapon_Bottle.BrokenHitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bottle_broken_hit_flesh1.wav"
		"wave"		"weapons/bottle_broken_hit_flesh2.wav"
		"wave"		"weapons/bottle_broken_hit_flesh3.wav"
	}
}

"Weapon_Bottle.Break"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/bottle_break.wav"
}


// ------------------------------------------------------------------------------------ //
// Machete
// ------------------------------------------------------------------------------------ //

"Weapon_Machete.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/machete_swing.wav"
}

"Weapon_Machete.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/machete_swing_crit.wav"
}

"Weapon_Machete.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_Machete.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

"Weapon_Machete.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/draw_machete_sniper.wav"
}

// ------------------------------------------------------------------------------------ //
// Fist
// ------------------------------------------------------------------------------------ //

"Weapon_Fist.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bat_draw_swoosh1.wav"
		"wave"		"weapons/bat_draw_swoosh2.wav"
	}
}

"Weapon_Fist.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/fist_swing_crit.wav"
}

"Weapon_Fist.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_Fist.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/fist_hit_world1.wav"
		"wave"		"weapons/fist_hit_world2.wav"
	}
}


"Weapon_Fist.HitHand"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"rndwave"
	{
		"wave"		"weapons/metal_hit_hand1.wav"
		"wave"		"weapons/metal_hit_hand2.wav"
		"wave"		"weapons/metal_hit_hand3.wav"
	}
}

"Weapon_Fist.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_melee.wav"
}

// ------------------------------------------------------------------------------------ //
// Metal Gloves
// ------------------------------------------------------------------------------------ //

"Weapon_MetalGloves.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/boxing_gloves_swing1.wav"
		"wave"		"weapons/boxing_gloves_swing2.wav"
		"wave"		"weapons/boxing_gloves_swing4.wav"
	}
}

"Weapon_MetalGloves.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/fist_swing_crit.wav"
}

"Weapon_MetalGloves.CritHit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/metal_gloves_hit_crit1.wav"
		"wave"		")weapons/metal_gloves_hit_crit2.wav"
		"wave"		")weapons/metal_gloves_hit_crit3.wav"
		"wave"		")weapons/metal_gloves_hit_crit4.wav"
	}
}

"Weapon_MetalGloves.CritEnabled"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/boxing_gloves_crit_enabled.wav"
}

"Weapon_MetalGloves.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/metal_gloves_hit_flesh1.wav"
		"wave"		")weapons/metal_gloves_hit_flesh2.wav"
		"wave"		")weapons/metal_gloves_hit_flesh3.wav"
		"wave"		")weapons/metal_gloves_hit_flesh4.wav"
	}
}

"Weapon_MetalGloves.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/metal_gloves_hit_world1.wav"
		"wave"		")weapons/metal_gloves_hit_world2.wav"
		"wave"		")weapons/metal_gloves_hit_world3.wav"
		"wave"		")weapons/metal_gloves_hit_world4.wav"
	}
}


"Weapon_MetalGloves.HitGlove"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"wave"		"weapons/metal_gloves_hit.wav"

}

"Weapon_MetalGloves.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_melee.wav"
}

// ------------------------------------------------------------------------------------ //
// Boxing Gloves
// ------------------------------------------------------------------------------------ //

"Weapon_BoxingGloves.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"pitch"		"95, 105"
	"rndwave"
	{
		"wave"		"weapons/boxing_gloves_swing1.wav"
		"wave"		"weapons/boxing_gloves_swing2.wav"
		"wave"		"weapons/boxing_gloves_swing4.wav"
	}
}

"Weapon_BoxingGloves.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/fist_swing_crit.wav"
}

"Weapon_BoxingGloves.CritHit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/boxing_gloves_hit_crit1.wav"
		"wave"		"weapons/boxing_gloves_hit_crit2.wav"
		"wave"		"weapons/boxing_gloves_hit_crit3.wav"
	}
}

"Weapon_BoxingGloves.CritEnabled"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/boxing_gloves_crit_enabled.wav"
}

"Weapon_BoxingGloves.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/boxing_gloves_hit1.wav"
		"wave"		"weapons/boxing_gloves_hit2.wav"
		"wave"		"weapons/boxing_gloves_hit3.wav"
		"wave"		"weapons/boxing_gloves_hit4.wav"
	}
}

"Weapon_BoxingGloves.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/fist_hit_world1.wav"
		"wave"		"weapons/fist_hit_world2.wav"
	}
}


"Weapon_BoxingGloves.HitGlove"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"wave"		"weapons/boxing_gloves_hit.wav"

}

"Weapon_BoxingGloves.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_melee.wav"
}

// ------------------------------------------------------------------------------------ //
// BRANDING IRON
// ------------------------------------------------------------------------------------ //

"Weapon_FireAxe.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_FireAxe.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1_crit.wav"
}

"Weapon_FireAxe.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/axe_hit_flesh1.wav"
		"wave"		")weapons/axe_hit_flesh2.wav"
		"wave"		")weapons/axe_hit_flesh3.wav"
	}
}

"Weapon_FireAxe.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

"Weapon_FireAxe.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_melee.wav"
}

// called from model?
"Weapon_BrandingIron.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_melee.wav"
}

// ------------------------------------------------------------------------------------ //
// UBERSAW
// ------------------------------------------------------------------------------------ //

"Weapon_BoneSaw.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_BoneSaw.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1_crit.wav"
}

"Weapon_UberSaw.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/ubersaw_hit1.wav"
		"wave"		"weapons/ubersaw_hit2.wav"
		"wave"		"weapons/ubersaw_hit3.wav"
		"wave"		"weapons/ubersaw_hit4.wav"
	}
}

"Weapon_BoneSaw.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// BONESAW
// ------------------------------------------------------------------------------------ //

"Weapon_BoneSaw.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_BoneSaw.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1_crit.wav"
}

"Weapon_BoneSaw.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_BoneSaw.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// CLUB
// ------------------------------------------------------------------------------------ //

"Weapon_Club.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_Club.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1_crit.wav"
}

"Weapon_Club.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_Club.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// CROWBAR
// ------------------------------------------------------------------------------------ //

"Weapon_Crowbar.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_Crowbar.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_Crowbar.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

"Weapon_Crowbar.Melee_HitWorld"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"90,120"

	"rndwave"
	{
		"wave"		"weapons/crowbar/crowbar_impact1.wav"
		"wave"		"weapons/crowbar/crowbar_impact2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// FLAG
// ------------------------------------------------------------------------------------ //

"Weapon_Flag.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_Flag.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_Flag.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/bottle_hit1.wav"
		"wave"		"weapons/bottle_hit2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// FLAME THROWER
// ------------------------------------------------------------------------------------ //

"Weapon_FlameThrower.FireStart"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_start.wav"
}

"Weapon_FlameThrower.FireLoop"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_loop.wav"
}

"Weapon_FlameThrower.FireLoopCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_loop_crit.wav"
}

"Weapon_FlameThrower.FireEnd"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_end.wav"
}

"Weapon_FlameThrower.FireHit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_fire_hit.wav"
}

"Weapon_FlameThrower.FireHitHard"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		"weapons/flame_thrower_fire_hitloop.wav"
}

"Weapon_FlameThrower.PilotLoop"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		"weapons/flame_thrower_pilot.wav"
}

"Weapon_FlameThrower.FireRocket"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		"misc/null.wav"
}

"Weapon_FlameThrower.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

"Weapon_FlameThrower.Fire"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_start.wav"
}

"Weapon_FlameThrower.WindDown"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_end.wav"
}

"Weapon_FlameThrower.AirBurstAttack"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"pitch"		"95,105"
	"soundlevel"	"SNDLVL_90db"
	"wave"		")weapons/flame_thrower_airblast.wav"
}

"Weapon_FlameThrower.AirBurstAttackDeflect"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"pitch"		"95,105"
	"soundlevel"	"SNDLVL_84db"
	"wave"		")weapons/flame_thrower_airblast_rocket_redirect.wav"
}

// ------------------------------------------------------------------------------------ //
// DEGREASER
// ------------------------------------------------------------------------------------ //

"Weapon_Degreaser.FireStart"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_104dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_dg_start.wav"
}

"Weapon_Degreaser.FireLoop"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_104dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_dg_loop.wav"
}

"Weapon_Degreaser.FireLoopCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_104dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_dg_loop_crit.wav"
}

"Weapon_Degreaser.FireEnd"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_104dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_dg_end.wav"
}

// ------------------------------------------------------------------------------------ //
// BACK BURNER 
// ------------------------------------------------------------------------------------ //

"Weapon_BackBurner.FireStart"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_bb_start.wav"
}

"Weapon_BackBurner.FireLoop"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_bb_loop.wav"
}

"Weapon_BackBurner.FireLoopCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_bb_loop_crit.wav"
}

"Weapon_BackBurner.FireEnd"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_bb_end.wav"
}

"Weapon_BackBurner.FireHit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_fire_hit.wav"
}

"Weapon_BackBurner.PilotLoop"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		"weapons/flame_thrower_pilot.wav"
}

"Weapon_BackBurner.FireRocket"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		"misc/null.wav"
}

"Weapon_BackBurner.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

"Weapon_BackBurner.Fire"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_bb_start.wav"
}

"Weapon_BackBurner.WindDown"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flame_thrower_bb_end.wav"
}

// ------------------------------------------------------------------------------------ //
// Flare Gun
// ------------------------------------------------------------------------------------ //
"Weapon_FlareGun.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flaregun_shoot.wav"
}

"Weapon_FlareGun.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/flaregun_shoot_crit.wav"
}

"Weapon_FlareGun.ModeSwitch"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/stickybomblauncher_det.wav"
}

"Weapon_FlareGun.BoltBack"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	".65"
	"wave"		"weapons/flaregun_boltback.wav"
}

"Weapon_FlareGun.BoltForward"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	".65"
	"wave"		"weapons/flaregun_boltforward.wav"
}

"Weapon_FlareGun.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".45"
	"wave"		"weapons/flaregun_worldreload.wav"
}

"Weapon_FlareGun.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

"Weapon_FlareGun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}

"Weapon_FlareGun.Grab"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".74"
	"rndwave"
	{
		"wave"		"weapons/metal_hit_hand1.wav"
		"wave"		"weapons/metal_hit_hand2.wav"
		"wave"		"weapons/metal_hit_hand3.wav"
	}
}

"Weapon_FlareGun.TubeOpen"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/grenade_launcher_drum_open.wav"
}

"Weapon_FlareGun.Reload"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"wave"		"weapons/grenade_launcher_drum_load.wav"
}

"Weapon_FlareGun.TubeCloseStart"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"wave"		"weapons/flaregun_tube_closestart.wav"
}

"Weapon_FlareGun.TubeCloseFinish"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"wave"		"weapons/flaregun_tube_closefinish.wav"
}

// ------------------------------------------------------------------------------------ //
// STICKY BOMB LAUNCHER
// ------------------------------------------------------------------------------------ //
"Weapon_StickyBombLauncher.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/stickybomblauncher_shoot.wav"
}

"Weapon_StickyBombLauncher.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/stickybomblauncher_shoot_crit.wav"
}

"Weapon_StickyBombLauncher.ModeSwitch"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/stickybomblauncher_det.wav"
}

"Weapon_StickyBombLauncher.BoltBack"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	".45"
	"wave"		"weapons/stickybomblauncher_boltback.wav"
}

"Weapon_StickyBombLauncher.BoltForward"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	".45"
	"wave"		"weapons/stickybomblauncher_boltforward.wav"
}

"Weapon_StickyBombLauncher.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".35"
	"wave"		"weapons/stickybomblauncher_worldreload.wav"
}

"Weapon_StickyBombLauncher.ChargeUp"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"wave"		"weapons/stickybomblauncher_charge_up.wav"
}

// ------------------------------------------------------------------------------------ //
// GRENADE LAUNCHER
// ------------------------------------------------------------------------------------ //
"Weapon_GrenadeLauncher.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/grenade_launcher_shoot.wav"
}

"Weapon_GrenadeLauncher.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/grenade_launcher_shoot_crit.wav"
}

"Weapon_GrenadeLauncher.DrumStart"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".4"
	"wave"		"weapons/grenade_launcher_drum_start.wav"
}

"Weapon_GrenadeLauncher.DrumStop"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".4"
	"wave"		"weapons/grenade_launcher_drum_stop.wav"
}

"Weapon_GrenadeLauncher.DrumOpen"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"wave"		"weapons/grenade_launcher_drum_open.wav"
}

"Weapon_GrenadeLauncher.DrumLoad"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"wave"		"weapons/grenade_launcher_drum_load.wav"
}

"Weapon_GrenadeLauncher.DrumClose"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"wave"		"weapons/grenade_launcher_drum_close.wav"
}

"Weapon_GrenadeLauncher.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/grenade_launcher_worldreload.wav"
}

"Weapon_GrenadeLauncher.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}	

"Weapon_GrenadeLauncher.ModeSwitch"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/stickybomblauncher_det.wav"
}

"Weapon_GrenadeLauncher.ChargeUp"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".45"
	"wave"		"weapons/stickybomblauncher_charge_up.wav"
}

// ------------------------------------------------------------------------------------ //
// LOCH N LOAD
// ------------------------------------------------------------------------------------ //
"Weapon_LocknLoad.Dud"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/loch_n_load_dud.wav"
}

"Weapon_LochnLoad.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/loch_n_load_shoot.wav"
}

"Weapon_LochnLoad.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/loch_n_load_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// TACKY GRENADIER
// ------------------------------------------------------------------------------------ //
"Weapon_TackyGrenadier.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tacky_grenadier_shoot.wav"
}

"Weapon_TackyGrenadier.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tacky_grenadier_shoot_crit.wav"
}

"Weapon_TackyGrendadier.Explode"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"		")weapons/tacky_grenadier_explode1.wav"
		"wave"		")weapons/tacky_grenadier_explode2.wav"
		"wave"		")weapons/tacky_grenadier_explode3.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// AIR BURSTER
// ------------------------------------------------------------------------------------ //
"Weapon_AirBurster.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/air_burster_shoot.wav"
}

"Weapon_AirBurster.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/air_burster_shoot_crit.wav"
}

"Weapon_AirBurster.Explode"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"		")weapons/air_burster_explode1.wav"
		"wave"		")weapons/air_burster_explode2.wav"
		"wave"		")weapons/air_burster_explode3.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// KNIFE
// ------------------------------------------------------------------------------------ //

"Weapon_Knife.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/knife_swing.wav"
}

"Weapon_Knife.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/knife_swing_crit.wav"
}

"Weapon_Knife.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/blade_hit1.wav"
		"wave"		")weapons/blade_hit2.wav"
		"wave"		")weapons/blade_hit3.wav"
	}
}

"Weapon_Knife.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/blade_hitworld.wav"

}

"Weapon_Knife.Open1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons/knife_open1.wav"
}

"Weapon_Knife.Open2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons/knife_open2.wav"
}

"Weapon_Knife.Open3"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons/knife_open3.wav"
}

"Weapon_Knife.Open4"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons/knife_open4.wav"
}

"Weapon_Knife.Open5"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons/knife_open5.wav"
}

"Weapon_Knife.Open6"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons/knife_open6.wav"
}


"Weapon_Knife.Open7"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons/knife_open7.wav"
}

"Weapon_Knife.Open8"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons/knife_open8.wav"
}

"Weapon_Knife.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_melee.wav"
}

// ------------------------------------------------------------------------------------ //
// QUICK FIX
// ------------------------------------------------------------------------------------ //
"Weapon_Quick_Fix.Healing"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/quick_fix_heal.wav"
}

// ------------------------------------------------------------------------------------ //
// MEDIGUN
// ------------------------------------------------------------------------------------ //
"WeaponMedigun.HealingHealer"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/medigun_heal.wav"
}

"WeaponMedigun.HealingTarget"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")weapons/medigun_heal.wav"
}

"WeaponMedigun.HealingWorld"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".75"
	"wave"		")weapons/medigun_heal.wav"
}

"WeaponMedigun.HealingDisrupt"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/medigun_heal_disrupt.wav"
}

"WeaponMedigun.HealingDetachHealer"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".75"
	"wave"		")weapons/medigun_heal_detach.wav"
}

"WeaponMedigun.HealingDetachTarget"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/medigun_heal_detach.wav"
}

"WeaponMedigun.HealingDetachWorld"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".75"
	"wave"		")weapons/medigun_heal_detach.wav"
}

"WeaponMedigun.Charged"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		"1"
	"wave"		"weapons/medigun_charged.wav"
}

"WeaponMedigun.NoTarget"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74Db"
	"volume"	"1.0"
	"wave"		")weapons/medigun_no_target.wav"
}

"Weapon_Medikit.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_Medikit.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

"Weapon_Medigun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}


// ------------------------------------------------------------------------------------ //
// OVERDOSE
// ------------------------------------------------------------------------------------ //
"Weapon_Overdose.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons/tf_medic_syringe_overdose.wav"
}

"Weapon_Overdose.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons/tf_medic_syringe_overdose_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// SYRINGEGUN
// ------------------------------------------------------------------------------------ //
"Weapon_SyringeGun.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons/syringegun_shoot.wav"
}

"Weapon_SyringeGun.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons/syringegun_shoot_crit.wav"
}

"Weapon_SyringeGun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

"Weapon_SyringeGun.Reload1"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".75"
	"wave"		"weapons/syringegun_reload_air1.wav"
}

"Weapon_SyringeGun.Reload2"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".5"
	"wave"		"weapons/syringegun_reload_glass2.wav"
}


"Weapon_SyringeGun.Reload3"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".75"
	"wave"		"weapons/syringegun_reload_air2.wav"
}

"Weapon_SyringeGun.WorldReload"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".75"
	"wave"		"weapons/syringegun_worldreload.wav"
}

"Weapon_SyringeGun.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

// ------------------------------------------------------------------------------------ //
// GATLING
// ------------------------------------------------------------------------------------ //

"Weapon_Gatling.Reload"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/default_reload.wav"
}

"Weapon_Gatling.ClipEmpty"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/gatling_empty.wav"
}

"Weapon_Gatling.Spin"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/gatling_spin.wav"
}

"Weapon_Gatling.WindUp"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/gatling_wind_up.wav"
}


"Weapon_Gatling.Fire"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/gatling_shoot.wav"
}

"Weapon_Gatling.FireCrit"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/gatling_shoot_crit.wav"
}

"Weapon_Gatling.WindDown"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/gatling_wind_down.wav"
}

"Weapon_Gatling.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_minigun_heavy.wav"
}

// ------------------------------------------------------------------------------------ //
// TOMISLAV
// ------------------------------------------------------------------------------------ //

"Weapon_Tomislav.Fire"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tomislav_shoot.wav"
}

"Weapon_Tomislav.FireCrit"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tomislav_shoot_crit.wav"
}

"Weapon_Tomislav.WindDown"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tomislav_wind_down.wav"
}

"Weapon_Tomislav.WindUp"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		"weapons/tomislav_wind_up.wav"
}

// ------------------------------------------------------------------------------------ //
// MINIGUN
// ------------------------------------------------------------------------------------ //
"Weapon_Minigun.Reload"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/default_reload.wav"
}

"Weapon_Minigun.ClipEmpty"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/minigun_empty.wav"
}

"Weapon_Minigun.Spin"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/minigun_spin.wav"
}

"Weapon_Minigun.WindUp"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/minigun_wind_up.wav"
}


"Weapon_Minigun.Fire"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/minigun_shoot.wav"
}

"Weapon_Minigun.FireCrit"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/minigun_shoot_crit.wav"
}

"Weapon_Minigun.WindDown"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/minigun_wind_down.wav"
}

"Weapon_Minigun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_minigun_heavy.wav"
}

// ------------------------------------------------------------------------------------ //
// MINIfun
// ------------------------------------------------------------------------------------ //
"Weapon_Minifun.Reload"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/default_reload.wav"
}

"Weapon_Minifun.ClipEmpty"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/minifun_empty.wav"
}

"Weapon_Minifun.Spin"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/minifun_spin.wav"
}

"Weapon_Minifun.WindUp"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/minifun_wind_up.wav"
}


"Weapon_Minifun.Fire"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/minifun_shoot.wav"
}

"Weapon_Minifun.FireCrit"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/minifun_shoot_crit.wav"
}

"Weapon_Minifun.WindDown"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/minifun_wind_down.wav"
}

"Weapon_Minifun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_minigun_heavy.wav"
}

// ------------------------------------------------------------------------------------ //
// PIPE
// ------------------------------------------------------------------------------------ //

"Weapon_Pipe.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/cbar_miss1.wav"
}

"Weapon_Pipe.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_Pipe.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}


// ------------------------------------------------------------------------------------ //
// ENFORCER
// ------------------------------------------------------------------------------------ //
"Weapon_Enforcer.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/tf_spy_enforcer_revolver_01.wav"
		"wave"		")weapons/tf_spy_enforcer_revolver_02.wav"
		"wave"		")weapons/tf_spy_enforcer_revolver_03.wav"
		"wave"		")weapons/tf_spy_enforcer_revolver_04.wav"
		"wave"		")weapons/tf_spy_enforcer_revolver_05.wav"
		"wave"		")weapons/tf_spy_enforcer_revolver_06.wav"
	}
}

"Weapon_Enforcer.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tf_spy_enforcer_revolver_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// PISTOL
// ------------------------------------------------------------------------------------ //
"Weapon_Pistol.TF_Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/pistol_shoot.wav"
}

"Weapon_Pistol.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/pistol_shoot_crit.wav"
}

"Weapon_Pistol.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

"Weapon_Pistol.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}

"Weapon_Pistol.Draw2"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/draw_pistol_engineer.wav"
}

"Weapon_Pistol.ClipIn"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.35"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol_clipin.wav"
}

"Weapon_Pistol.ReloadScout"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/pistol_reload_scout.wav"
}

"Weapon_Pistol.WorldReload"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".5"
	"wave"		"weapons/pistol_worldreload.wav"
}

"Weapon_Pistol.WorldReloadEngineer"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.35"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol_clipin.wav"
}

// ------------------------------------------------------------------------------------ //
// REVOLVER
// ------------------------------------------------------------------------------------ //

"Weapon_Revolver.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/revolver_shoot.wav"
}

"Weapon_Revolver.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/revolver_shoot_crit.wav"
}

"Weapon_Revolver.Reload1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/revolver_reload_cylinder_open.wav"
}

"Weapon_Revolver.Reload2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/revolver_reload_cylinder_arm.wav"
}

"Weapon_Revolver.Reload3"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/revolver_reload_cylinder_close.wav"
}

"Weapon_Revolver.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/revolver_worldreload.wav"
}

"Weapon_Revolver.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

"Weapon_Revolver.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}

// ------------------------------------------------------------------------------------ //
// LETRANGER
// ------------------------------------------------------------------------------------ //

"Weapon_Letranger.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	".85"
	"wave"		")weapons/letranger_shoot.wav"
}

"Weapon_Letranger.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	".85"
	"wave"		")weapons/letranger_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// AMBASSADOR
// ------------------------------------------------------------------------------------ //

"Weapon_Ambassador.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/ambassador_shoot.wav"
}

"Weapon_Ambassador.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/ambassador_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// SHORT STOP
// ------------------------------------------------------------------------------------ //

"Weapon_Short_Stop.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1.0"
	"wave"		")weapons/short_stop_shoot.wav"
}

"Weapon_Short_Stop.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1.0"
	"wave"		")weapons/short_stop_shoot_crit.wav"
}

"Weapon_Short_Stop.Reload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1.0"
	"wave"		"weapons/short_stop_reload.wav"
}

// ------------------------------------------------------------------------------------ //
// SODA POPPER
// ------------------------------------------------------------------------------------ //

"Weapon_Soda_Popper.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/scatter_gun_double_bonk_shoot.wav"
}

"Weapon_Soda_Popper.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/scatter_gun_double_bonk_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// SCATTER GUN DOUBLE
// ------------------------------------------------------------------------------------ //

"Weapon_Scatter_Gun_Double.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/scatter_gun_double_shoot.wav"
}

"Weapon_Scatter_Gun_Double.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/scatter_gun_double_shoot_crit.wav"
}

"Weapon_DoubleBarrel.TubeOpen"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/scatter_gun_double_tube_open.wav"
}

"Weapon_DoubleBarrel.ShellsOut"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/scatter_gun_double_shells_out.wav"
}

"Weapon_DoubleBarrel.ShellsIn"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/scatter_gun_double_shells_in.wav"
}

"Weapon_DoubleBarrel.TubeClose"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/scatter_gun_double_tube_close.wav"
}

// ------------------------------------------------------------------------------------ //
// BackShot Shotty
// ------------------------------------------------------------------------------------ //

"Weapon_BackShot_Shotty.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tf2_backshot_shotty.wav"
}

"Weapon_BackShot_Shotty.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tf2_backshot_shotty_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// Back Scatter
// ------------------------------------------------------------------------------------ //

"Weapon_Back_Scatter.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tf2_back_scatter.wav"
}

"Weapon_Back_Scatter.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/tf2_back_scatter_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// SCATTER GUN
// ------------------------------------------------------------------------------------ //

"Weapon_Scatter_Gun.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/scatter_gun_shoot.wav"
}

"Weapon_Scatter_Gun.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/scatter_gun_shoot_crit.wav"
}

"Weapon_Scatter_Gun.Empty"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/shotgun_empty.wav"
}

"Weapon_Scatter_Gun.Reload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/scatter_gun_reload.wav"
}

"Weapon_Scatter_Gun.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/scatter_gun_worldreload.wav"
}

"Weapon_Scatter_Gun.Pump"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/scatter_gun_worldreload.wav"
}

"Weapon_Scatter_Gun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}

// ------------------------------------------------------------------------------------ //
// SHOTGUN
// ------------------------------------------------------------------------------------ //
"Weapon_Shotgun.TF_Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/shotgun_shoot.wav"
}

"Weapon_Shotgun.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/shotgun_shoot_crit.wav"
}

"Weapon_Shotgun.Empty"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/shotgun_empty.wav"
}

"Weapon_Shotgun.Reload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/shotgun_reload.wav"
}

"Weapon_Shotgun.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/shotgun_worldreload.wav"
}

"Weapon_Shotgun.Pump"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/shotgun_cock.wav"
}

"Weapon_Shotgun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}

"Weapon_ShotgunPyro.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_shotgun_pyro.wav"
}

"Weapon_ShotgunEngineer.Cock_Back"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/shotgun_cock_back.wav"
}

"Weapon_ShotgunEngineer.Cock_Forward"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/shotgun_cock_forward.wav"
}

// ------------------------------------------------------------------------------------ //
// SHOVEL
// ------------------------------------------------------------------------------------ //

"Weapon_Shovel.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/shovel_swing.wav"
}

"Weapon_Shovel.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/shovel_swing_crit.wav"
}

"Weapon_Shovel.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/axe_hit_flesh1.wav"
		"wave"		")weapons/axe_hit_flesh2.wav"
		"wave"		")weapons/axe_hit_flesh3.wav"
	}
}

"Weapon_Shovel.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hit1.wav"
		"wave"		")weapons/cbar_hit2.wav"
	}
}

"Weapon_Shovel.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/draw_shovel_soldier.wav"
}

// ------------------------------------------------------------------------------------ //
// Nail Gun
// ------------------------------------------------------------------------------------ //
"Weapon_NailGun.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/nail_gun_shoot.wav"
}

"Weapon_NailGun.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/nail_gun_shoot_crit.wav"
}

"Weapon_NailGun.Reload"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/smg1/smg1_reload.wav"
}

"Weapon_NailGun.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

"Weapon_NailGun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

// ------------------------------------------------------------------------------------ //
// SMG
// ------------------------------------------------------------------------------------ //
"Weapon_SMG.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/smg_shoot.wav"
}

"Weapon_SMG.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/smg_shoot_crit.wav"
}

"Weapon_SMG.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.35"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/smg_worldreload.wav"
}

"Weapon_SMG.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

"Weapon_SMG.ClipOut"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.35"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/smg_clip_out.wav"
}

"Weapon_SMG.ClipIn"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.35"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/smg_clip_in.wav"
}


"Weapon_SMG.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}

// ------------------------------------------------------------------------------------ //
// SUPER SMG
// ------------------------------------------------------------------------------------ //
"Weapon_SuperSMG.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/smg_shoot.wav"
}

"Weapon_SuperSMG.Reload"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/smg1/smg1_reload.wav"
}

"Weapon_SuperSMG.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

// ------------------------------------------------------------------------------------ //
// BAZAAR BARGAIN
// ------------------------------------------------------------------------------------ //
"Weapon_Bazaar_Bargain.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/tf_sniper_bazaar_bargain_01.wav"
		"wave"		")weapons/tf_sniper_bazaar_bargain_02.wav"
		"wave"		")weapons/tf_sniper_bazaar_bargain_03.wav"
		"wave"		")weapons/tf_sniper_bazaar_bargain_04.wav"
		"wave"		")weapons/tf_sniper_bazaar_bargain_05.wav"
	}
}

"Weapon_Bazaar_Bargain.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\tf_sniper_bazaar_bargain_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// SYDNEY SLEEPER
// ------------------------------------------------------------------------------------ //
"Weapon_SydneySleeper.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sniper_sydneysleeper_shoot.wav"
}

"Weapon_SydneySleeper.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sniper_sydneysleeper_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// CLASSIC SNIPER RIFLE
// ------------------------------------------------------------------------------------ //
"Weapon_ClassicSniperRifle.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sniper_rifle_classic_shoot.wav"
}

"Weapon_ClassicSniperRifle.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sniper_rifle_classic_shoot_crit.wav"
}


// ------------------------------------------------------------------------------------ //
// SNIPER RIFLE
// ------------------------------------------------------------------------------------ //
"Weapon_SniperRifle.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sniper_shoot.wav"
}

"Weapon_SniperRifle.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sniper_shoot_crit.wav"
}

"Weapon_SniperRifle.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.35"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/sniper_worldreload.wav"
}

"Weapon_SniperRifle.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

"Weapon_SniperRifle.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

"Weapon_SniperRifle.BoltForward"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".45"
	"wave"		"weapons/sniper_bolt_back.wav"
}

"Weapon_SniperRifle.BoltBack"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".45"
	"wave"		"weapons/sniper_bolt_forward.wav"
}

// ------------------------------------------------------------------------------------ //
// TRANQUILIZER GUN
// ------------------------------------------------------------------------------------ //
"Weapon_Tranq.Single"
{
	"channel"	"CHAN_WEAPON"	
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		"misc/null.wav"
}

"Weapon_Tranq.Reload"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/smg1/smg1_reload.wav"
}

"Weapon_Tranq.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}

"Weapon_Tranq.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

// ------------------------------------------------------------------------------------ //
// WRANGLER
// ------------------------------------------------------------------------------------ //

"Weapon_Wrangler.Ouch"
{
	"channel"	"CHAN_VOICE"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".25"
	"rndwave"
	{
		"wave"		"vo/engineer_negativevocalization07.mp3"
		"wave"		"vo/engineer_negativevocalization08.mp3"
		"wave"		"vo/engineer_negativevocalization09.mp3"
	}
}

// ------------------------------------------------------------------------------------ //
// WRENCH
// ------------------------------------------------------------------------------------ //

"Weapon_Wrench.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		"weapons/wrench_swing.wav"
}

"Weapon_Wrench.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/wrench_swing_crit.wav"
}

"Weapon_Wrench.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/cbar_hitbod1.wav"
		"wave"		")weapons/cbar_hitbod2.wav"
		"wave"		")weapons/cbar_hitbod3.wav"
	}
}

"Weapon_Wrench.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".5"
	"pitch"		"95, 105"
	"wave"		"weapons/wrench_hit_world.wav"

}

"Weapon_Wrench.HitBuilding_Success"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".5"
	"rndwave"
	{
		"wave"		"weapons/wrench_hit_build_success1.wav"
		"wave"		"weapons/wrench_hit_build_success2.wav"
	}
}

"Weapon_Wrench.HitBuilding_Failure"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".5"
	"wave"		"weapons/wrench_hit_build_fail.wav"
}

"Weapon_Wrench.HitHand"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".1"
	"rndwave"
	{
		"wave"		"weapons/metal_hit_hand1.wav"
		"wave"		"weapons/metal_hit_hand2.wav"
		"wave"		"weapons/metal_hit_hand3.wav"
	}
}

"Weapon_Wrench.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}


"Weapon_Wrench.Draw2"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/draw_wrench_engineer.wav"
}

// ------------------------------------------------------------------------------------ //
// LIBERY LAUNCHER
// ------------------------------------------------------------------------------------ //
"Weapon_Liberty_Launcher.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_ll_shoot.wav"
}

"Weapon_Liberty_Launcher.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_ll_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// RPG
// ------------------------------------------------------------------------------------ //
"TF_Weapon_RPG.Single"
{ 
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_shoot.wav"
}

"Weapon_RPG.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_shoot_crit.wav"
}

"Weapon_RPG.Draw"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

"Weapon_RPG.Reload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/rocket_reload.wav"
}

"Weapon_RPG.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/rocket_reload.wav"
}


// ------------------------------------------------------------------------------------ //
// RPG Direct Hit
// ------------------------------------------------------------------------------------ //

"Weapon_RPG_DirectHit.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_directhit_shoot.wav"
}

"Weapon_RPG_DirectHit.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_directhit_shoot_crit.wav"
}

"Weapon_RPG_DirectHit.Explode"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"		")weapons/rocket_directhit_explode1.wav"
		"wave"		")weapons/rocket_directhit_explode2.wav"
		"wave"		")weapons/rocket_directhit_explode3.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// RPG Black Box
// ------------------------------------------------------------------------------------ //

"Weapon_RPG_BlackBox.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_blackbox_shoot.wav"
}

"Weapon_RPG_BlackBox.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_blackbox_shoot_crit.wav"
}

"Weapon_RPG_BlackBox.Explode"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"		")weapons/rocket_blackbox_explode1.wav"
		"wave"		")weapons/rocket_blackbox_explode2.wav"
		"wave"		")weapons/rocket_blackbox_explode3.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// RPG Cow Mangler
// ------------------------------------------------------------------------------------ //
"Weapon_CowMangler.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/cow_mangler_main_shot.wav"
}

"Weapon_CowMangler.SingleCharged"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"wave"		")weapons/cow_mangler_over_charge_shot.wav"
}

"Weapon_CowMangler.Charging"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/cow_mangler_over_charge.wav"
}

"Weapon_CowMangler.Explode"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.95,1.0"
	"soundlevel"	"SNDLVL_115dB"
	"pitch"		"95, 100"
	"rndwave"
	{
		"wave"	")weapons\cow_mangler_explosion_normal_01.wav"
		"wave"	")weapons\cow_mangler_explosion_normal_02.wav"
		"wave"	")weapons\cow_mangler_explosion_normal_03.wav"
	}
}

"Weapon_CowMangler.ExplodeCharged"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.95,1.0"
	"soundlevel"	"SNDLVL_115dB"
	"pitch"		"95, 100"
	"rndwave"
	{
		"wave"	")weapons\cow_mangler_explosion_charge_01.wav"
		"wave"	")weapons\cow_mangler_explosion_charge_02.wav"
		"wave"	")weapons\cow_mangler_explosion_charge_03.wav"
	}
}

"Weapon_CowMangler.Idle"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"wave"		")weapons/cow_mangler_idle.wav"
}

"Weapon_CowMangler.Reload"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".25"
	"rndwave"
	{
		"wave"	"weapons\cow_mangler_reload.wav"
		"wave"	"weapons\cow_mangler_reload_02.wav"
		"wave"	"weapons\cow_mangler_reload_03.wav"
		"wave"	"weapons\cow_mangler_reload_04.wav"
	}
}

"Weapon_CowMangler.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".25"
	"rndwave"
	{
		"wave"	")weapons\cow_mangler_reload.wav"
		"wave"	")weapons\cow_mangler_reload_02.wav"
		"wave"	")weapons\cow_mangler_reload_03.wav"
		"wave"	")weapons\cow_mangler_reload_04.wav"
	}
}

"Weapon_CowMangler.ReloadFinal"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".65"
	"wave"	"weapons\cow_mangler_reload_final.wav"
}

"Weapon_CowMangler.WorldReloadFinal"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".25"
	"wave"	")weapons\cow_mangler_reload_final.wav"
}

// ------------------------------------------------------------------------------------ //
// Righteous Bison
// ------------------------------------------------------------------------------------ //
"Weapon_Bison.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"rndwave"
	{
		"wave"	")weapons\bison_main_shot_01.wav"
		"wave"	")weapons\bison_main_shot_02.wav"
	}
}

"Weapon_Bison.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"wave"	")weapons\bison_main_shot_crit.wav"
}

"Weapon_Bison.Reload"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"pitch"		"110"
	"wave"		"weapons/bison_reload.wav"
}

"Weapon_Bison.ProjectileImpactWorld"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/fx/rics/bison_projectile_impact_world.wav"
}

"Weapon_Bison.ProjectileImpactFlesh"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/fx/rics/bison_projectile_impact_flesh.wav"
}
// ------------------------------------------------------------------------------------ //
// MAD MILK
// ------------------------------------------------------------------------------------ //

"Weapon_MadMilk.Draw"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	
	"wave"	"weapons/draw_madmilk.wav"
}

// ------------------------------------------------------------------------------------ //
// JARATE
// ------------------------------------------------------------------------------------ //
"Jar.Explode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_95dB"
	
	"wave"	")weapons/jar_explode.wav"
}

"Weapon_Jarate.Draw"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	
	"wave"	"weapons/draw_jarate.wav"
}

"Weapon_Jarate.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"wave"		"weapons/jar_single.wav"
}

//
// ------------------------------------------------------------------------------------ //
// Grenades
//
// Grenade Sounds
//
// ------------------------------------------------------------------------------------ //

// ------------------------------------------------------------------------------------ //
// BASE GRENADE
// ------------------------------------------------------------------------------------ //
"BaseGrenade.Explode"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_76dB"

	"rndwave"
	{
		"wave"	"weapons/debris1.wav"
		"wave"	"weapons/debris2.wav"
	}
}

"BaseGrenade.BounceSound"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_74dB"
	"rndwave"
	{
		"wave"		"weapons/grenade_impact.wav"
		"wave"		"weapons/grenade_impact2.wav"
		"wave"		"weapons/grenade_impact3.wav"
	}
}

"BaseExplosionEffect.Sound"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_95dB"
	"pitch"		"PITCH_NORM"

	"rndwave"
	{
			"wave"	")weapons/explode2.wav"
			"wave"	")weapons/explode3.wav"
			"wave"	")weapons/explode1.wav"
	}
}

"Weapon_Grenade_Normal.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_95dB"
	"wave"		"weapons/grenade_throw.wav"
}

// ------------------------------------------------------------------------------------ //
// PIPEBOMB GRENADE
// ------------------------------------------------------------------------------------ //
"Weapon_Grenade_Pipebomb.Explode"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"		")weapons/pipe_bomb1.wav"
		"wave"		")weapons/pipe_bomb2.wav"
		"wave"		")weapons/pipe_bomb3.wav"
	}
}

"Weapon_Grenade_Pipebomb.Bounce"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"pitch" 		"96,100"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/grenade_impact.wav"
}

"Weapon_Grenade_Pipebomb.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

// ------------------------------------------------------------------------------------ //
// DET PACK GRENADE
// ------------------------------------------------------------------------------------ //
"Weapon_Grenade_Det_Pack.Plant"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/det_pack_plant.wav"
}

"Weapon_Grenade_Det_Pack.Explode"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"pitch"		"PITCH_NORM"
	"volume"	"1.0"
	"wave"		")weapons/det_pack_explode.wav"
}

"Weapon_Grenade_Det_Pack.Timer"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/det_pack_timer.wav"
}

// ------------------------------------------------------------------------------------ //
// SAPPER
// ------------------------------------------------------------------------------------ //
"Weapon_Sapper.Plant"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sapper_plant.wav"
}

"Weapon_Sapper.Timer"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sapper_timer.wav"
}

"Weapon_Sapper_xmas.Timer"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sapper_timer.wav"
}

"Weapon_Sapper.Draw"
{
	"channel"	"CHAN_AUTO"
	"volume"	".5"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/draw_primary.wav"
}

"Weapon_Sapper.DrawSwitch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/draw_sapper_switch.wav"
}

"Weapon_Sapper.Removed"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_84dB"
	"wave"		"weapons/sapper_removed.wav"
}


// ------------------------------------------------------------------------------------ //
// ToolBox
// ------------------------------------------------------------------------------------ //


"Weapon_ToolBox.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".5"
	"wave"		"weapons/draw_secondary.wav"
}

"Weapon_ToolBox.Draw2"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".5"
	"wave"		"weapons/draw_toolbox_engineer.wav"
}

// ------------------------------------------------------------------------------------ //
// Gunslinger
// ------------------------------------------------------------------------------------ //


"Weapon_Gunslinger.Draw"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".75"
	"wave"		"weapons/gunslinger_draw.wav"
}

"Weapon_Gunslinger.Swing"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".5"
	"wave"		"weapons/gunslinger_swing.wav"
}


"Weapon_Gunslinger.ThreeHit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".5"
	"wave"		"weapons/gunslinger_three_hit.wav"
}

"Weapon_Gunslinger.InspectFingerMove"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".2"
	"rndwave"
	{
		"wave"		"weapons/gunslinger_inspect_finger_move1.wav"
		"wave"		"weapons/gunslinger_inspect_finger_move2.wav"
		"wave"		"weapons/gunslinger_inspect_finger_move3.wav"
		"wave"		"weapons/gunslinger_inspect_finger_move4.wav"
	}
}



"Weapon_Gunslinger.InspectFingerClick"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		"1"
	"rndwave"
	{
		"wave"		"weapons/gunslinger_inspect_finger_click1.wav"
		"wave"		"weapons/gunslinger_inspect_finger_click2.wav"
		"wave"		"weapons/gunslinger_inspect_finger_click3.wav"
		"wave"		"weapons/gunslinger_inspect_finger_click4.wav"
		"wave"		"weapons/gunslinger_inspect_finger_click5.wav"
		"wave"		"weapons/gunslinger_inspect_finger_click6.wav"
		"wave"		"weapons/gunslinger_inspect_finger_click7.wav"
		"wave"		"weapons/gunslinger_inspect_finger_click8.wav"
	}
}

"Weapon_Gunslinger.InspectFinish"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".3"
	"wave"		"weapons/gunslinger_draw.wav"
}


// ------------------------------------------------------------------------------------ //
// Dispenser
// ------------------------------------------------------------------------------------ //

"Building_Dispenser.Build1"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading5.wav"
}

"Building_Dispenser.Build1a"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam3.wav"
}

"Building_Dispenser.Build1b"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading1.wav"
}

"Building_Dispenser.Build2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_short1.wav"
}

"Building_Dispenser.Build3"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_short2.wav"
}

"Building_Dispenser.Build4"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam4.wav"
}

"Building_Dispenser.Build5"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_short1.wav"
}

"Building_Dispenser.Build6"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_short2.wav"
}

"Building_Dispenser.Build7"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam1.wav"
}

"Building_Dispenser.Build8"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_short2.wav"
}

"Building_Dispenser.Build9"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam2.wav"
}

"Building_Dispenser.Build10"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_short1.wav"
}

"Building_Dispenser.Build11"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading5.wav"
}

"Building_Dispenser.Build12"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam1.wav"
}

"Building_Dispenser.Build13"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam1.wav"
}

"Building_Dispenser.Build14"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam2.wav"
}

"Building_Dispenser.Build15"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_medium3.wav"
}

"Building_Dispenser.Build16"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading4.wav"
}

"Building_Dispenser.Build17"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_medium2.wav"
}

"Building_Dispenser.Build18"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/dispenser_bullet_chain.wav"
}

"Building_Dispenser.Build18a"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading1.wav"
}

"Building_Dispenser.Build19"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam4.wav"
}

"Building_Dispenser.Build20"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/dispenser_bullet_chain2.wav"
}

"Building_Dispenser.Build21"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_empty.wav"
}

"Building_Dispenser.Build22"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam5.wav"
}

"Building_Dispenser.Build23"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam5.wav"
}

"Building_Dispenser.Build24"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam5.wav"
}

"Building_Dispenser.Build24a"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading2.wav"
}

"Building_Dispenser.Build24b"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam5.wav"
}

"Building_Dispenser.Build24c"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam5.wav"
}

"Building_Dispenser.Build24d"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam5.wav"
}


"Building_Dispenser.Build25"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading2.wav"
}

"Building_Dispenser.Explode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/dispenser_explode.wav"
}

"Building_Dispenser.Idle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/dispenser_idle.wav"
}

"Building_Dispenser.GenerateMetal"
{
	"channel"		"CHAN_VOICE"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/dispenser_generate_metal.wav"
}

"Building_Dispenser.Heal"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/dispenser_heal.wav"
}

// ------------------------------------------------------------------------------------ //
// Sentry Gun
// ------------------------------------------------------------------------------------ //

// Played when the gun acquired a new target
"Building_Sentrygun.Alert"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_88dB"
	"wave"			"weapons/sentry_spot.wav"
}

"Building_Sentrygun.AlertTarget"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_88dB"
	"wave"			"weapons/sentry_spot_client.wav"
}


// random played while the sentry it turning, without a target
"Building_Sentrygun.Idle"
{
	"channel"		"CHAN_ITEM"
	"volume"		".75"
	"soundlevel"		"SNDLVL_84dB"
	"wave"			"weapons/sentry_scan.wav"
}

"Building_Sentrygun.Idle2"
{
	"channel"		"CHAN_ITEM"
	"volume"		".75"
	"soundlevel"		"SNDLVL_84dB"
	"wave"			"weapons/sentry_scan2.wav"
}

"Building_Sentrygun.Idle3"
{
	"channel"		"CHAN_ITEM"
	"volume"		".75"
	"soundlevel"		"SNDLVL_84dB"
	"wave"			"weapons/sentry_scan3.wav"
}

//played while the sentry is reloading rockets
"Building_SentryGun.RocketSteam1"	
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1.0"
	"wave"		"weapons/sentry_upgrading_steam4.wav"
}

"Building_SentryGun.RocketSteam2"	
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1.0"
	"wave"		"weapons/sentry_upgrading_steam1.wav"
}

"Building_SentryGun.RocketMove1"	
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1.0"
	"wave"		"weapons/sentry_move_short2.wav"
}

"Building_SentryGun.RocketMove2"	
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1.0"
	"wave"		"weapons/sentry_move_short1.wav"
}

"Building_SentryGun.RocketClunk1"	
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/sentry_upgrading4.wav"
}

"Building_SentryGun.RocketClunk2"	
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/sentry_upgrading5.wav"
}

// played when the sentry completes building, or is upgrade
"Building_Sentrygun.Built"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			")weapons/sentry_finish.wav"
}

"Building_Sentrygun.Fire"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sentry_shoot.wav"
}

"Building_Sentrygun.Fire2"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sentry_shoot2.wav"
}

"Building_Sentrygun.Fire3"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sentry_shoot3.wav"
}

"Building_Sentrygun.Empty"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		"weapons/sentry_empty.wav"
}

"Building_Sentrygun.FireRocket"
{
	"channel"	"CHAN_ITEM"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"

	"wave"		")weapons/sentry_rocket.wav"
}

"Building_Sentrygun.ShaftFire"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sentry_shaft_shoot.wav"
}

"Building_Sentrygun.ShaftFire2"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sentry_shaft_shoot2.wav"
}

"Building_Sentrygun.ShaftFire3"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sentry_shaft_shoot3.wav"
}

"Building_Sentrygun.ShaftLaserPass"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sentry_shaft_laser_pass.wav"
}

"Building_Sentrygun.Build1"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading1.wav"
}

"Building_Sentrygun.BuildSteam1"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam1.wav"
}

"Building_Sentrygun.Build1A"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading4.wav"
} 

"Building_Sentrygun.Build1B"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading7.wav"
}


"Building_Sentrygun.Build2"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_short2.wav"
}

"Building_Sentrygun.BuildSteam2"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam2.wav"
}

"Building_Sentrygun.Build3"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading2.wav"
}

"Building_Sentrygun.BuildSteam3"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam3.wav"
}


"Building_Sentrygun.Build4"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading4.wav"
}

"Building_Sentrygun.Build5"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_medium3.wav"
}

"Building_Sentrygun.Build6"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading5.wav"
}

"Building_Sentrygun.BuildSteam4"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam4.wav"
}

"Building_Sentrygun.Build7"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_long2.wav"
}

"Building_Sentrygun.Build7A"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading7.wav"
}

"Building_Sentrygun.BuildSteam5"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading_steam5.wav"
}

"Building_Sentrygun.Build8"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading3.wav"
}

"Building_Sentrygun.Build9"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading6.wav"
}

"Building_Sentrygun.Build10"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_short2.wav"
}

"Building_Sentrygun.Build11"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_upgrading8.wav"
}

"Building_Sentrygun.Build12"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_move_long1.wav"
}

"Building_Sentrygun.Build13"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_wire_connect.wav"
}

"Building_Sentry.Explode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/sentry_explode.wav"
}

"Building_Sentry.Damage"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_94dB"
	"rndwave"
	{
		"wave"		"weapons/sentry_damage1.wav"
		"wave"		"weapons/sentry_damage2.wav"
		"wave"		"weapons/sentry_damage3.wav"
		"wave"		"weapons/sentry_damage4.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// MINI SENTRY
// ------------------------------------------------------------------------------------ //

"Building_MiniSentrygun.Fire"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/sentry_shoot_mini.wav"
}



// ------------------------------------------------------------------------------------ //
// TELEPORTER
// ------------------------------------------------------------------------------------ //
"Building_Teleporter.Ready"
{
	"channel"	"CHAN_ITEM"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		")weapons/teleporter_ready.wav"
}

"Building_Teleporter.Send"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"pitch"		"PITCH_NORM"
	"volume"	"1.0"
	"wave"		")weapons/teleporter_send.wav"
}

"Building_Teleporter.Receive"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		")weapons/teleporter_receive.wav"
}

"Building_Teleporter.Build1"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_upgrading2.wav"
}

"Building_Teleporter.Build1a"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_upgrading1.wav"
}

"Building_Teleporter.Build2"
{
	"channel"		"CHAN_ITEM"
	"volume"		".25"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_upgrading_steam2.wav"	
}

"Building_Teleporter.Build2a"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_upgrading_steam5.wav"	
}


"Building_Teleporter.Build2b"
{
	"channel"		"CHAN_WEAPON"
	"volume"		".25"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_move_medium2.wav"	
}


"Building_Teleporter.Build2c"
{
	"channel"		"CHAN_ITEM"
	"volume"		"1"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_move_medium3.wav"
}

"Building_Teleporter.Build3"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_upgrading_steam1.wav"
}


"Building_Teleporter.Build3a"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_upgrading_steam2.wav"
}

"Building_Teleporter.Build3b"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_upgrading_steam3.wav"
}

"Building_Teleporter.Build4"
{
	"channel"		"CHAN_WEAPON"
	"volume"		".25"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/teleporter_build_open2.wav"
}

"Building_Teleporter.Build4a"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_upgrading_steam2.wav"
}

"Building_Teleporter.Build5"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sentry_move_short2.wav"
}


"Building_Teleporter.SpinLevel1"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"pitch"		"PITCH_NORM"
	"volume"		"1.0"
	"wave"		"weapons/teleporter_spin.wav"
}

"Building_Teleporter.SpinLevel2"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"pitch"		"PITCH_NORM"
	"volume"		"1.0"
	"wave"		"weapons/teleporter_spin2.wav"
}


"Building_Teleporter.SpinLevel3"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"pitch"		"PITCH_NORM"
	"volume"		"1.0"
	"wave"		"weapons/teleporter_spin3.wav"
}

"Building_Teleporter.Explode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_74dB"
	"wave"			"weapons/teleporter_explode.wav"
}

// ------------------------------------------------------------------------------------ //
// BOW
// ------------------------------------------------------------------------------------ //
"Weapon_CompoundBow.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1.0"
	"wave"		")weapons/bow_shoot.wav"
}

"Weapon_CompoundBow.SinglePull"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	"1.0"
	"wave"		")weapons/bow_shoot_pull.wav"
}

"Weapon_CompoundBow.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1.0"
	"wave"		")weapons/bow_shoot_crit.wav"
}

"Weapon_CompoundBow.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		"weapons/pistol/pistol_empty.wav"
}



"Weapon_CompoundBow.WorldReload"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		".5"
	"wave"		"weapons/pistol_worldreload.wav"
}

"Weapon_Bow.Draw"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"	"SNDLVL_75dB"
	
	"wave"	"weapons/draw_bow.wav"
}

"Weapon_Bow.PullShort"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	
	"wave"	")weapons/bow_shoot_pull_short.wav"
}

"Weapon_Bow.PullReverse"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"	"SNDLVL_75dB"
	
	"wave"	")weapons/bow_shoot_pull_reverse.wav"
}

"Weapon_Bow.ArrowSlide"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"	"SNDLVL_75dB"
	
	"wave"	"weapons/bow_arrow_slide.wav"
}

// ------------------------------------------------------------------------------------ //
// CRUSADERS CROSSBOW
// ------------------------------------------------------------------------------------ //
"Weapon_CrusadersCrossbow.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/crusaders_crossbow_shoot.wav"
}

"Weapon_CrusadersCrossbow.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons/crusaders_crossbow_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// ARROW EFFECTS
// ------------------------------------------------------------------------------------ //

"Weapon_Arrow.ImpactFlesh"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	"weapons/fx/rics/arrow_impact_flesh.wav"
		"wave"	"weapons/fx/rics/arrow_impact_flesh2.wav"
		"wave"	"weapons/fx/rics/arrow_impact_flesh3.wav"
		"wave"	"weapons/fx/rics/arrow_impact_flesh4.wav"
	}
}

"Weapon_Arrow.ImpactConcrete"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_81dB"
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	"weapons/fx/rics/arrow_impact_concrete.wav"
		"wave"	"weapons/fx/rics/arrow_impact_concrete2.wav"
		"wave"	"weapons/fx/rics/arrow_impact_concrete4.wav"
	}
}


"Weapon_Arrow.ImpactMetal"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_81dB"
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	"weapons/fx/rics/arrow_impact_metal.wav"
		"wave"	"weapons/fx/rics/arrow_impact_metal2.wav"
		"wave"	"weapons/fx/rics/arrow_impact_metal4.wav"
	}
}


"Weapon_Arrow.ImpactWood"
{
	"channel"	"CHAN_STATIC"
	"volume"	".75"
	"soundlevel"  	"SNDLVL_81dB"
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	"weapons/fx/rics/arrow_impact_wood.wav"
		"wave"	"weapons/fx/rics/arrow_impact_wood2.wav"
		"wave"	"weapons/fx/rics/arrow_impact_wood4.wav"
	}
}

"Weapon_Arrow.Nearmiss"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_106dB"
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	"weapons/fx/nearmiss/arrow_nearmiss.wav"
		"wave"	"weapons/fx/nearmiss/arrow_nearmiss2.wav"
		"wave"	"weapons/fx/nearmiss/arrow_nearmiss3.wav"
		"wave"	"weapons/fx/nearmiss/arrow_nearmiss4.wav"
	}
}

"Weapon_Arrow.ImpactFleshCrossbowHeal"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_86dB"

	"wave"	")weapons/fx/rics/arrow_impact_crossbow_heal.wav"
}

// ------------------------------------------------------------------------------------ //
// PICKAXE - THE EQUALIZER
// ------------------------------------------------------------------------------------ //

"Weapon_PickAxe.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"pitch"		"95, 105"
	"rndwave"
	{
		"wave"		"weapons/blade_slice_2.wav"
		"wave"		"weapons/blade_slice_3.wav"
		"wave"		"weapons/blade_slice_4.wav"
	}
}


"Weapon_PickAxe.Swing"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	".25"
	"pitch"		"95, 105"
	"rndwave"
	{
		"wave"		")weapons/pickaxe_swing1.wav"
		"wave"		")weapons/pickaxe_swing2.wav"
		"wave"		")weapons/pickaxe_swing3.wav"
	}
}

"Weapon_Pickaxe.SwingCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	".25"
	"wave"		")weapons/pickaxe_swing_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// BATTALIONS BACKUP
// ------------------------------------------------------------------------------------ //

"Weapon_BattalionsBackup.HornRed"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NONE"
	"volume"	"1.0"
	"wave"		"weapons/battalions_backup_red.wav"

}

"Weapon_BattalionsBackup.HornBlue"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NONE"
	"volume"	"1.0"
	"wave"		"weapons/battalions_backup_blue.wav"

}

// ------------------------------------------------------------------------------------ //
// BUFF BANNER
// ------------------------------------------------------------------------------------ //

"Weapon_BuffBanner.HornRed"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NONE"
	"volume"	"1.0"
	"wave"		"weapons/buff_banner_horn_red.wav"

}

"Weapon_BuffBanner.HornBlue"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NONE"
	"volume"	"1.0"
	"wave"		"weapons/buff_banner_horn_blue.wav"

}
"Weapon_BuffBanner.Flag"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/buff_banner_flag.wav"

}

"Weapon_BuffBanner.BuffOn"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/buff_on.wav"

}

"Weapon_BuffBanner.BuffOff"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/buff_off.wav"
}

// ------------------------------------------------------------------------------------ //
// DEMO CHARGE
// ------------------------------------------------------------------------------------ //

"DemoCharge.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/demo_charge_hit_world1.wav"
		"wave"		"weapons/demo_charge_hit_world2.wav"
		"wave"		"weapons/demo_charge_hit_world3.wav"
	}
}

"DemoCharge.HitFleshRange"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/demo_charge_hit_flesh_range1.wav"
		"wave"		"weapons/demo_charge_hit_flesh_range2.wav"
		"wave"		"weapons/demo_charge_hit_flesh_range3.wav"
	}
}

"DemoCharge.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/demo_charge_hit_flesh1.wav"
		"wave"		"weapons/demo_charge_hit_flesh2.wav"
		"wave"		"weapons/demo_charge_hit_flesh3.wav"
	}
}

"DemoCharge.Charging"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/demo_charge_windup1.wav"
		"wave"		"weapons/demo_charge_windup2.wav"
		"wave"		"weapons/demo_charge_windup3.wav"
	}
}

"DemoCharge.ChargeCritOn"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"0.25"
	"wave"		")weapons/weapon_crit_charged_on.wav"
}

"DemoCharge.ChargeCritOff"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"0.25"
	"wave"		")weapons/weapon_crit_charged_off.wav"
}

// ------------------------------------------------------------------------------------ //
// DEMO SWORD
// ------------------------------------------------------------------------------------ //

"Weapon_Sword.Swing"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".25"
	"pitch"		"95, 105"
	"wave"		")weapons/demo_sword_swing1.wav"

}

"Weapon_Sword.SwingCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".25"
	"wave"		")weapons/demo_sword_swing_crit.wav"
}

"Weapon_Sword.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/blade_slice_2.wav"
		"wave"		"weapons/blade_slice_3.wav"
		"wave"		"weapons/blade_slice_4.wav"
	}
}

"Weapon_Sword.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/demo_sword_hit_world1.wav"
		"wave"		")weapons/demo_sword_hit_world2.wav"
	}
}

"Weapon_Sword.Draw"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/draw_sword.wav"
}

// ------------------------------------------------------------------------------------ //
// RECON 
// ------------------------------------------------------------------------------------ //

"Recon.Ping"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons/recon_ping.wav"
}

// ------------------------------------------------------------------------------------ //
// GUITAR
// ------------------------------------------------------------------------------------ //

"Weapon_Guitar.Strum"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons/guitar_strum.wav"
}

"Weapon_Guitar.Impact"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"rndwave"
	{
		"wave"		")weapons/guitar_impact1.wav"
		"wave"		")weapons/guitar_impact2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// FRYING PAN
// ------------------------------------------------------------------------------------ //

"FryingPan.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/pan/melee_frying_pan_01.wav"
		"wave"		"weapons/pan/melee_frying_pan_02.wav"
		"wave"		"weapons/pan/melee_frying_pan_03.wav"
		"wave"		"weapons/pan/melee_frying_pan_04.wav"
	}
}

"FryingPan.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons/pan/pan_impact_world1.wav"
		"wave"		"weapons/pan/pan_impact_world2.wav"
		"wave"		"weapons/pan/pan_impact_world3.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// HALLOWEEN BOSS AXE
// ------------------------------------------------------------------------------------ //

"Halloween.HeadlessBossAxeHitFlesh"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"wave"			")weapons/halloween_boss/knight_axe_hit.wav"
}

"Halloween.HeadlessBossAxeHitWorld"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"wave"			")weapons/halloween_boss/knight_axe_miss.wav"
}

"Halloween.HeadlessBossFootfalls"
{
	"channel"		"CHAN_BODY"
	"soundlevel"	"SNDLVL_150dB"
	"pitch"			"95,105"
	"volume"		"1.0"
	"rndwave"
	{
		"wave"		")player/footsteps/giant1.wav"
		"wave"		")player/footsteps/giant2.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// Samurai Katana
// ------------------------------------------------------------------------------------ //


"Weapon_Katana.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_65dB"
	"volume"	".6"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")weapons/samurai/TF_Katana_01.wav"
		"wave"		")weapons/samurai/TF_Katana_02.wav"
		"wave"		")weapons/samurai/TF_Katana_03.wav"
		"wave"		")weapons/samurai/TF_Katana_04.wav"
		"wave"		")weapons/samurai/TF_Katana_05.wav"
		"wave"		")weapons/samurai/TF_Katana_06.wav"
	}
}

"Weapon_Katana.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_65dB"
	"volume"	".6"
	"wave"		")weapons/samurai/TF_katana_crit_miss_01.wav"
}

"Weapon_Katana.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")weapons/samurai/TF_katana_slice_01.wav"
		"wave"		")weapons/samurai/TF_katana_slice_02.wav"
		"wave"		")weapons/samurai/TF_katana_slice_03.wav"
	}
}

"Weapon_Katana.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"pitch"			"95,105"
	"rndwave"
	{
		"wave"		")weapons/samurai/TF_katana_impact_object_01.wav"
		"wave"		")weapons/samurai/TF_katana_impact_object_02.wav"
		"wave"		")weapons/samurai/TF_katana_impact_object_03.wav"
	}
}

"Weapon_Katana.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_70dB"
	"volume"	".7"
	"rndwave"
	{
		"wave"		")weapons/samurai/TF_katana_draw_01.wav"
		"wave"		")weapons/samurai/TF_katana_draw_02.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// Marked for Death
// ------------------------------------------------------------------------------------ //

"Weapon_Marked_for_Death.Initial"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"95,105"
	"volume"	"0.95, 1.0"
	"rndwave"
	{
		"wave"		")weapons\samurai\TF_marked_for_death_impact_01.wav"
		"wave"		")weapons\samurai\TF_marked_for_death_impact_02.wav"
		"wave"		")weapons\samurai\TF_marked_for_death_impact_03.wav"
	}
}

"Weapon_Marked_for_Death.Indicator"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_100dB"
	"volume"	"1.0"
	"wave"		"weapons\samurai\TF_marked_for_death_indicator.wav"
}

// ------------------------------------------------------------------------------------ //
// DETONATOR
// ------------------------------------------------------------------------------------ //

"Weapon_Detonator.Fire"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"		"95,105"
	"volume"	"0.75, 0.8"
		"wave"		")weapons\flare_detonator_launch.wav"
}

"Weapon_Detonator.Detonate"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_100dB"
	"volume"	"1.0"
	"wave"		")weapons\flare_detonator_explode.wav"
}

"Weapon_Detonator.DetonateWorld"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_100dB"
	"volume"	"1.0"
	"wave"		")weapons\flare_detonator_explode_world.wav"
}



// ------------------------------------------------------------------------------------ //
// SAXXY
// ------------------------------------------------------------------------------------ //

"Saxxy.TurnGold"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_100dB"
	"pitch"		"PITCH_NORM"
	"volume"	"1.0"
	"wave"		")weapons/saxxy_impact_gen_06.wav"
}

"Saxxy.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"  	"weapons\saxxy_impact_gen_01.wav"
}

// ------------------------------------------------------------------------------------ //
// DISCIPLINE DEVICE
// ------------------------------------------------------------------------------------ //

"DisciplineDevice.Impact"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\discipline_device_impact_01.wav"
		"wave"		")weapons\discipline_device_impact_02.wav"
	}
}

"DisciplineDevice.ImpactCrit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\discipline_device_impact_crit_01.wav"
		"wave"		")weapons\discipline_device_impact_crit_02.wav"
	}
}

"DisciplineDevice.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"0.9"
	"wave"		")weapons\discipline_device_hit_world.wav"
}

"DisciplineDevice.Swing"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\discipline_device_woosh_01.wav"
		"wave"		")weapons\discipline_device_woosh_02.wav"
	}
}

"DisciplineDevice.PowerUp"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons\discipline_device_power_up.wav"
}

"DisciplineDevice.PowerDown"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons\discipline_device_power_down.wav"
}

// ------------------------------------------------------------------------------------ //
// EVICTION NOTICE
// ------------------------------------------------------------------------------------ //

"EvictionNotice.Impact"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\eviction_notice_01.wav"
		"wave"		")weapons\eviction_notice_02.wav"
		"wave"		")weapons\eviction_notice_03.wav"
		"wave"		")weapons\eviction_notice_04.wav"
	}
}

"EvictionNotice.ImpactCrit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\eviction_notice_01_crit.wav"
		"wave"		")weapons\eviction_notice_02_crit.wav"
		"wave"		")weapons\eviction_notice_03_crit.wav"
		"wave"		")weapons\eviction_notice_04_crit.wav"
	}
}

"EvictionNotice.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\demo_sword_hit_world1.wav"
		"wave"		")weapons\demo_sword_hit_world2.wav"
	}
}

"EvictionNotice.Swing"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons\boxing_gloves_swing1.wav"
		"wave"		"weapons\boxing_gloves_swing2.wav"
		"wave"		"weapons\boxing_gloves_swing4.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// BOSTON BASHER
// ------------------------------------------------------------------------------------ //

"BostonBasher.Impact"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\eviction_notice_01.wav"
		"wave"		")weapons\eviction_notice_02.wav"
		"wave"		")weapons\eviction_notice_03.wav"
		"wave"		")weapons\eviction_notice_04.wav"
	}
}

"BostonBasher.ImpactCrit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\eviction_notice_01_crit.wav"
		"wave"		")weapons\eviction_notice_02_crit.wav"
		"wave"		")weapons\eviction_notice_03_crit.wav"
		"wave"		")weapons\eviction_notice_04_crit.wav"
	}
}

"BostonBasher.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\demo_sword_hit_world1.wav"
		"wave"		")weapons\demo_sword_hit_world2.wav"
	}
}

"BostonBasher.Swing"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons\boxing_gloves_swing1.wav"
		"wave"		"weapons\boxing_gloves_swing2.wav"
		"wave"		"weapons\boxing_gloves_swing4.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// RESERVE SHOOTER
// ------------------------------------------------------------------------------------ //


"Weapon_Reserve_Shooter.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\reserve_shooter_01.wav"
		"wave"		")weapons\reserve_shooter_02.wav"
		"wave"		")weapons\reserve_shooter_03.wav"
		"wave"		")weapons\reserve_shooter_04.wav"
	}
}

"Weapon_Reserve_Shooter.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\reserve_shooter_01_crit.wav"
		"wave"		")weapons\reserve_shooter_02_crit.wav"
		"wave"		")weapons\reserve_shooter_03_crit.wav"
		"wave"		")weapons\reserve_shooter_04_crit.wav"
	}
}

"Weapon_Reserve_Shooter.Empty"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/shotgun_empty.wav"
}

"Weapon_Reserve_Shooter.Reload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/scatter_gun_reload.wav"
}

"Weapon_Reserve_Shooter.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/scatter_gun_worldreload.wav"
}

"Weapon_Reserve_Shooter.Pump"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons/scatter_gun_worldreload.wav"
}

"Weapon_Reserve_Shooter.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_secondary.wav"
}

// ------------------------------------------------------------------------------------ //
// MANTREADS
// ------------------------------------------------------------------------------------ //


"Weapon_Mantreads.Impact"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons\mantreads.wav"
}


// ------------------------------------------------------------------------------------ //
// QUAKE ROCKET LAUNCHER
// ------------------------------------------------------------------------------------ //


"Weapon_QuakeRPG.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		"weapons\quake_rpg_fire_remastered.wav"
}

"Weapon_QuakeRPG.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"wave"		"weapons\quake_rpg_fire_remastered_crit.wav"
}

"Weapon_QuakeRPG.Draw"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons\quake_ammo_pickup_remastered.wav"
}

"Weapon_QuakeRPG.Reload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons\quake_rpg_reload_remastered.wav"
}

"Weapon_QuakeRPG.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons\quake_rpg_reload_remastered.wav"
}

"Weapon_QuakeRPG.Explode"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons\quake_explosion_remastered.wav"
}

// ------------------------------------------------------------------------------------ //
// DIAMOND BACK
// ------------------------------------------------------------------------------------ //
"Weapon_Diamond_Back.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_92dB"
	"volume"	"0.8"
	"rndwave"
	{
		"wave"		")weapons\diamond_back_01.wav"
		"wave"		")weapons\diamond_back_02.wav"
		"wave"		")weapons\diamond_back_03.wav"
	}
}

"Weapon_Diamond_Back.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\diamond_back_01_crit.wav"
		"wave"		")weapons\diamond_back_02_crit.wav"
		"wave"		")weapons\diamond_back_03_crit.wav"
	}
}


// ------------------------------------------------------------------------------------ //
// SNIPER RAILGUN RIFLE
// ------------------------------------------------------------------------------------ //
"Weapon_SniperRailgun.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\sniper_railgun_single_01.wav"
		"wave"		")weapons\sniper_railgun_single_02.wav"
	}
}

"Weapon_SniperRailgun.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\sniper_railgun_single_crit.wav"
		"wave"		")weapons\sniper_railgun_single_crit_02.wav"
	}
}

"Weapon_SniperRailgun_Large.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_100dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\sniper_railgun_charged_shot_01.wav"
		"wave"		")weapons\sniper_railgun_charged_shot_02.wav"
	}
}

"Weapon_SniperRailgun_Large.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_100dB"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\sniper_railgun_charged_shot_crit_01.wav"
		"wave"		")weapons\sniper_railgun_charged_shot_crit_02.wav"
	}
}

"Weapon_SniperRailgun.WorldReload"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.35"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		")weapons\sniper_railgun_world_reload.wav"
}

"Weapon_SniperRailgun.ClipEmpty"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		")weapons\sniper_railgun_dry_fire.wav"
}

"Weapon_SniperRailgun.NonScoped"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.7"
	"soundlevel"	"SNDLVL_NORM"

	"wave"		")weapons\sniper_railgun_no_fire.wav"
}

"Weapon_SniperRailgun.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_primary.wav"
}

"Weapon_SniperRailgun.BoltForward"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".45"
	"wave"		")weapons\sniper_railgun_bolt_forward.wav"
}

"Weapon_SniperRailgun.BoltBack"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".45"
	"wave"		")weapons\sniper_railgun_bolt_back.wav"
}

// ------------------------------------------------------------------------------------ //
// WIDOW MAKER SHOTGUN
// ------------------------------------------------------------------------------------ //

"Weapon_WidowMaker.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_92dB"
	"volume"	"0.9"
	"rndwave"
	{
		"wave"		")weapons\widow_maker_shot_01.wav"
		"wave"		")weapons\widow_maker_shot_02.wav"
		"wave"		")weapons\widow_maker_shot_03.wav"
	}
}

"Weapon_WidowMaker.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_92dB"
	"volume"	"0.9"
	"rndwave"
	{
		"wave"		")weapons\widow_maker_shot_crit_01.wav"
		"wave"		")weapons\widow_maker_shot_crit_02.wav"
		"wave"		")weapons\widow_maker_shot_crit_03.wav"
	}
}

"Weapon_WidowMaker.Empty"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons\widow_maker_dry_fire.wav"
}

"Weapon_WidowMaker.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/draw_shotgun_pyro.wav"
}

"Weapon_WidowMaker.Cock_Back"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")weapons\widow_maker_pump_action_back.wav"
}

"Weapon_WidowMaker.Cock_Forward"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		")weapons\widow_maker_pump_action_forward.wav"
}

// ------------------------------------------------------------------------------------ //
// BARRETS ARM
// ------------------------------------------------------------------------------------ //


"Weapon_BarretsArm.Shot"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons\barret_arm_shot.wav"
}

"Weapon_BarretsArm.Draw"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"0"
	"wave"		"weapons\barret_arm_draw.wav"
}

"Weapon_BarretsArm.Fizzle"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".7"
	"wave"		")weapons\barret_arm_fizzle.wav"
}

"Weapon_BarretsArm.Zap"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\barret_arm_zap.wav"
}

//-----------------------------------------//
// BOMBINOMICON PLAYER EXPLODE
//-----------------------------------------//
"Bombinomicon.Explode"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_105dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	
	"wave"		"weapons/bombinomicon_explode1.wav"	

}

//-----------------------------------------//
// SPY ASSASSIN KNIFE
//-----------------------------------------//


"Weapon_Assassin_Knife.Draw"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	
	"wave"		")weapons\spy_assassin_knife_draw.wav"
}

"Weapon_Assassin_Knife.Miss"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/knife_swing.wav"
}

"Weapon_Assassin_Knife.MissCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/knife_swing_crit.wav"
}

"Weapon_Assassin_Knife.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\spy_assassin_knife_impact_01.wav"
		"wave"		")weapons\spy_assassin_knife_impact_02.wav"
	}
}

"Weapon_Assassin_Knife.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/blade_hitworld.wav"
}

"Weapon_Assassin_Knife.Backstab"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_85dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	
	"wave"		")weapons\spy_assassin_knife_bckstb.wav"
}


//-----------------------------------------//
// Dr Grordbort's Wrenchmotron 600
//-----------------------------------------//

"Weapon_DRG_Wrench.Teleport"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_150dB"
	"volume"		"1.0"
	"wave"			")weapons/drg_wrench_teleport.wav"
}

// ------------------------------------------------------------------------------------ //
// The Spycicle (Spy Icicle knife)
// ------------------------------------------------------------------------------------ //

"Icicle.TurnToIce"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_100dB"
	"pitch"		"PITCH_NORM"
	"volume"	"1.0"
	"wave"		")weapons/icicle_freeze_victim_01.wav"
}

"Icicle.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons/icicle_hit_world_01.wav"
		"wave"		")weapons/icicle_hit_world_02.wav"
		"wave"		")weapons/icicle_hit_world_03.wav"
	}
}

"Icicle.Melt"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_100dB"
	"pitch"			"PITCH_NORM"
	"volume"		"1.0"
	"wave"			")weapons/icicle_melt_01.wav"
}

"Icicle.Deploy"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"volume"		"1.0"
	"wave"			")weapons/icicle_deploy.wav"
}

//-----------------------------------------//
// Man Melter
//-----------------------------------------//
"Weapon_ManMelter.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"wave"	")weapons\man_melter_fire.wav"
}

"Weapon_ManMelter.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"wave"	")weapons\man_melter_fire_crit.wav"
}

"Weapon_ManMelter.altfire_lp"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\man_melter_alt_fire_lp.wav"
}


//-----------------------------------------//
// Ball Buster
//-----------------------------------------//
"BallBuster.OrnamentImpact"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	"rndwave"
	{
		"wave"	"weapons\ball_buster_break_01.wav"
		"wave"	"weapons\ball_buster_break_02.wav"
	}
}

"BallBuster.OrnamentImpactRange"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	"rndwave"
	{
		"wave"	"weapons\ball_buster_break_01_crowd.wav"
		"wave"	"weapons\ball_buster_break_02_crowd.wav"
	}
}

"BallBuster.HitBall"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_75dB"
	"volume"	"1.0"
	"pitch"		"115"
	"wave"		"weapons\ball_buster_hit_02.wav"
}

"BallBuster.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons\ball_buster_hit_01.wav"
}

"BallBuster.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons\ball_buster_hit_01.wav"
}

"BallBuster.DrawCatch"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".75"
	"wave"		"weapons\ball_buster_hit_01.wav"
}

"BallBuster.Ornament_DrawCatch"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		"weapons\ball_buster_catch_01.wav"
		"wave"		"weapons\ball_buster_catch_02.wav"
	}
}

"BallBuster.Ball_HitWorld"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"	"SNDLVL_70dB"
	"rndwave"
	{
		"wave"		")weapons\ball_buster_bounce_01.wav"
		"wave"		")weapons\ball_buster_bounce_02.wav"
		"wave"		")weapons\ball_buster_bounce_03.wav"
		"wave"		")weapons\ball_buster_bounce_04.wav"
		"wave"		")weapons\ball_buster_bounce_05.wav"
		"wave"		")weapons\ball_buster_bounce_06.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// Pomson 6000
// ------------------------------------------------------------------------------------ //
"Weapon_Pomson.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"wave"	")weapons\pomson_fire_01.wav"
}

"Weapon_Pomson.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_NORM"
	"wave"	")weapons\pomson_fire_crit_01.wav"
}

"Weapon_Pomson.Reload"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"pitch"		"110"
	"wave"		"weapons/bison_reload.wav"
}

"Weapon_Pomson.DrainedVictim"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"1"
	"pitch"			"110"
	"wave"			"weapons/drg_pomson_drain_01.wav"
}

"Weapon_Pomson.ProjectileImpactWorld"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/fx/rics/pomson_projectile_impact_world.wav"
}

"Weapon_Pomson.ProjectileImpactFlesh"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/fx/rics/pomson_projectile_impact_flesh.wav"
}

// ------------------------------------------------------------------------------------ //
// PHLOGISTINATOR
// ------------------------------------------------------------------------------------ //

"Weapon_phlogistinator.FireStart"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\phlog_ignite.wav"
}

"Weapon_phlogistinator.FireLoop"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\phlog_loop.wav"
}

"Weapon_phlogistinator.FireLoopCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\phlog_loop_crit.wav"
}

"Weapon_phlogistinator.WindDown"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\phlog_end.wav"
}


// ------------------------------------------------------------------------------------ //
// 3RD DEGREE
// ------------------------------------------------------------------------------------ //

"Weapon_3rd_degree.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\3rd_degree_hit_01.wav"
		"wave"		")weapons\3rd_degree_hit_02.wav"
		"wave"		")weapons\3rd_degree_hit_03.wav"
		"wave"		")weapons\3rd_degree_hit_04.wav"
	}
}

"Weapon_3rd_degree.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"rndwave"
	{
		"wave"		")weapons\3rd_degree_hit_world_01.wav"
		"wave"		")weapons\3rd_degree_hit_world_02.wav"
		"wave"		")weapons\3rd_degree_hit_world_03.wav"
		"wave"		")weapons\3rd_degree_hit_world_04.wav"
	}
}


// ------------------------------------------------------------------------------------ //
// Mittens
// ------------------------------------------------------------------------------------ //

"Weapon_mittens.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"0.6"
	"wave"		")weapons\mittens_punch.wav"
}

"Weapon_mittens.CritHit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"0.8"
	"wave"		")weapons\mittens_punch_crit.wav"
}

"Weapon_mittens.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"0.5"
	"wave"		")weapons\mittens_punch.wav"
}

"Weapon_mittens.HitGlove"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	".4"
	"wave"		")weapons\mittens_punch.wav"
}

// ------------------------------------------------------------------------------------ //
// Dumpster Rocket Launcher
// ------------------------------------------------------------------------------------ //

"Weapon_DumpsterRocket.Reload"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"100"
	"wave"			"weapons/dumpster_rocket_reload.wav"
}

"Weapon_DumpsterRocket.Reload_FP"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"		"1"
	"pitch"			"100"
	"wave"			")weapons/dumpster_rocket_reload_fp.wav"
}

// ------------------------------------------------------------------------------------ //
// Rainblower
// ------------------------------------------------------------------------------------ //

"Weapon_Rainblower.FireStart"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/rainblower/rainblower_start.wav"
}

"Weapon_Rainblower.FireLoop"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/rainblower/rainblower_loop.wav"
}

"Weapon_Rainblower.FireEnd"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/rainblower/rainblower_end.wav"

}

"Weapon_Rainblower.FireHit"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/rainblower/rainblower_hit.wav"
}

"Weapon_Rainblower.PilotLoop"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".25"
	"wave"		")weapons/rainblower/rainblower_pilot.wav"
}

"Weapon_Rainblower.Fire"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/rainblower/rainblower_start.wav"
}

"Weapon_Rainblower.WindDown"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/rainblower/rainblower_end.wav"

}

// ------------------------------------------------------------------------------------ //
// Meet the Pyro, Doomsday, Public Enemy Pack, Urban Pro
// ------------------------------------------------------------------------------------ //
"Weapon_PickPocket_Pistol.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_scout_pistol.wav"
}

"Weapon_PickPocket_Pistol.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_scout_pistol_crit.wav"
}

"Weapon_Brawler_Blaster.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_scout_shotgun.wav"
}

"Weapon_Brawler_Blaster.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_scout_shotgun_crit.wav"
}

"Weapon_ProSniperRifle.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_98dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_sniper_rifle.wav"
}

"Weapon_ProSniperRifle.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_98dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_sniper_rifle_crit.wav"
}

"Weapon_UrbanProfessional.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_sniper_smg.wav"
}

"Weapon_UrbanProfessional.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_sniper_smg_crit.wav"
}

"Weapon_Does_Dumpster.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_rocket_launcher.wav"
}

"Weapon_Does_Dumpster.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_rocket_launcher_crit.wav"
}

"Weapon_ScorchShot.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_flare_gun.wav"
}

"Weapon_ScorchShot.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/doom_flare_gun_crit.wav"
}

//-----------------------------------------//
// Cleaver
//-----------------------------------------//
"Cleaver.ImpactFlesh"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_85dB"
	
	"rndwave"
	{
		"wave"		")weapons\cleaver_hit_02.wav"
		"wave"		")weapons\cleaver_hit_03.wav"
		"wave"		")weapons\cleaver_hit_05.wav"
		"wave"		")weapons\cleaver_hit_06.wav"
		"wave"		")weapons\cleaver_hit_07.wav"
	}
}

"Cleaver.ImpactWorld"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_85dB"
	"wave"		")weapons\cleaver_hit_world.wav"
}

"Cleaver.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons/cleaver_throw.wav"

}

"Cleaver.Draw"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		"weapons/cleaver_draw.wav"
}
//-----------------------------------------//
// Neon Sign
//-----------------------------------------//
"Neon_Sign.ImpactFlesh"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	
	"rndwave"
	{
		"wave"		")weapons\neon_sign_hit_01.wav"
		"wave"		")weapons\neon_sign_hit_02.wav"
		"wave"		")weapons\neon_sign_hit_03.wav"
		"wave"		")weapons\neon_sign_hit_04.wav"
	}
}

"Neon_Sign.ImpactWorld"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	
	"rndwave"
	{
		"wave"		")weapons\neon_sign_hit_world_01.wav"
		"wave"		")weapons\neon_sign_hit_world_02.wav"
		"wave"		")weapons\neon_sign_hit_world_03.wav"
		"wave"		")weapons\neon_sign_hit_world_04.wav"
	}
}

//-----------------------------------------//
// SD Sapper
//-----------------------------------------//
"Weapon_sd_sapper.Timer"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	
	"rndwave"
	{
		"wave"		")weapons\spy_tape_01.wav"
		"wave"		")weapons\spy_tape_02.wav"
		"wave"		")weapons\spy_tape_03.wav"
		"wave"		")weapons\spy_tape_04.wav"
		"wave"		")weapons\spy_tape_05.wav"
	}
}

//-----------------------------------------//
// Wheatley Sapper
//-----------------------------------------//
"Weapon_p2rec.Timer"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sapper_timer.wav"
}

//-----------------------------------------//
// Dragon Minigun
//-----------------------------------------//
"Dragon_Minigun.Spin"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		")weapons/dragon_gun_motor_loop_dry.wav"
}

"Dragon_Minigun.WindUp"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/dragon_gun_motor_start.wav"
}

"Dragon_Minigun.WindDown"	
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/dragon_gun_motor_stop.wav"
}

"Dragon_Minigun.Fire"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/dragon_gun_motor_loop.wav"
}

"Dragon_Minigun.FireCrit"	
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/dragon_gun_motor_loop_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// CSGO AWP
// ------------------------------------------------------------------------------------ //
"Weapon_AWP.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/csgo_awp_shoot.wav"
}

"Weapon_AWP.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/csgo_awp_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// RESCUE RANGER
// ------------------------------------------------------------------------------------ //

"Weapon_RescueRanger.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\rescue_ranger_fire.wav"
}

"Weapon_RescueRanger.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\rescue_ranger_fire_crit.wav"
}

"Weapon_RescueRanger.charge_01"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\rescue_ranger_charge_01.wav"
}

"Weapon_RescueRanger.charge_02"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\rescue_ranger_charge_02.wav"
}

"RescueRanger_Teleporter.Send"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"pitch"		"PITCH_NORM"
	"volume"	"0.700000"
	"rndwave"
	{
		"wave"		")weapons\rescue_ranger_teleport_send_01.wav"
		"wave"		")weapons\rescue_ranger_teleport_send_02.wav"
	}
}

"RescueRanger_Teleporter.Receive"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.700000"
	"soundlevel"	"SNDLVL_74dB"
	"rndwave"
	{
		"wave"		")weapons\rescue_ranger_teleport_receive_01.wav"
		"wave"		")weapons\rescue_ranger_teleport_receive_02.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// Vaccinator
// ------------------------------------------------------------------------------------ //
"WeaponMedigun_Vaccinator.Healing"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons\vaccinator_heal.wav"
}

"WeaponMedigun_Vaccinator.Charged_tier_01"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		"1"
	"wave"		")weapons\vaccinator_charge_tier_01.wav"
}

"WeaponMedigun_Vaccinator.Charged_tier_02"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		"1"
	"wave"		")weapons\vaccinator_charge_tier_02.wav"
}

"WeaponMedigun_Vaccinator.Charged_tier_03"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		"1"
	"wave"		")weapons\vaccinator_charge_tier_03.wav"
}

"WeaponMedigun_Vaccinator.Charged_tier_04"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"		"1"
	"wave"		")weapons\vaccinator_charge_tier_04.wav"
}

"WeaponMedigun_Vaccinator.InvulnerableOn"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		")player\invuln_on_vaccinator.wav"
}

"WeaponMedigun_Vaccinator.InvulnerableOff"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_86dB"
	"wave"		")player\invuln_off_vaccinator.wav"
}

"WeaponMedigun_Vaccinator.Toggle"
{
	"channel"		"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_86dB"
	"wave"		")weapons\vaccinator_toggle.wav"
}

// ------------------------------------------------------------------------------------ //
// Loose Cannon
// ------------------------------------------------------------------------------------ //

"Weapon_LooseCannon.Shoot"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"		"1.0"
	"wave"			")weapons/loose_cannon_shoot.wav"
}

"Weapon_LooseCannon.Shootcrit"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"		"1.0"
	"wave"			")weapons/loose_cannon_shootcrit.wav"
}

"Weapon_LooseCannon.Explode"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"1.0"
	"pitch"			"95, 105"
	"wave"			")weapons/loose_cannon_explode.wav"
}

"Weapon_LooseCannon.Charge"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		".45"
	"wave"			"weapons/loose_cannon_charge.wav"
}

"Weapon_LooseCannon.BallImpact"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_85dB"
	"volume"		"0.7"
	"pitch"			"95, 105"
	"wave"			"weapons/loose_cannon_ball_impact.wav"
}

// ------------------------------------------------------------------------------------ //
// MEDI_SHIELD
// ------------------------------------------------------------------------------------ //
"WeaponMedi_Shield.Protection"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons\vaccinator_heal.wav"
}

"WeaponMedi_Shield.Deploy"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"	"SNDLVL_95dB"
	"wave"		")weapons\medi_shield_deploy.wav"
}

"WeaponMedi_Shield.Retract"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"	"SNDLVL_95dB"
	"wave"		")weapons\medi_shield_retract.wav"
}

"WeaponMedi_Shield.Burn"
{
	"channel"	"CHAN_STATIC"
	"volume"	".7"
	"soundlevel"  	"SNDLVL_81dB"
	"pitch"		"90, 100"

	"rndwave"
	{
		"wave"	"weapons\medi_shield_burn_01.wav"
		"wave"	"weapons\medi_shield_burn_02.wav"
		"wave"	"weapons\medi_shield_burn_03.wav"
		"wave"	"weapons\medi_shield_burn_04.wav"
		"wave"	"weapons\medi_shield_burn_05.wav"
		"wave"	"weapons\medi_shield_burn_06.wav"
		"wave"	"weapons\medi_shield_burn_07.wav"
		"wave"	"weapons\medi_shield_burn_08.wav"
		"wave"	"weapons\medi_shield_burn_09.wav"
		"wave"	"weapons\medi_shield_burn_10.wav"
		"wave"	"weapons\medi_shield_burn_11.wav"
	}
}

"WeaponMedi_Shield.Burn_lp"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_94dB"
	"pitch"			"PITCH_NORM"

	"wave"	")weapons\medi_burn_lp.wav"
}
"Weapon_Airstrike.AltFire"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"1.0"
	"pitch"			"95, 105"
	"rndwave"
	{
			"wave"	")weapons/airstrike_fire_01.wav"
			"wave"	")weapons/airstrike_fire_02.wav"
			"wave"	")weapons/airstrike_fire_03.wav"
	}
}

"Weapon_Airstrike.CritFire"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"1.0"
	"pitch"			"95, 105"
	"wave"			")weapons/airstrike_fire_crit.wav"
}

"Weapon_Airstrike.Fail"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1.0"
	"wave"			"weapons/airstrike_fail.wav"
}
"Weapon_Airstrike.Explosion"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_95dB"
	"pitch"		"PITCH_NORM"

	"rndwave"
	{
			"wave"	")weapons/airstrike_small_explosion_01.wav"
			"wave"	")weapons/airstrike_small_explosion_02.wav"
			"wave"	")weapons/airstrike_small_explosion_03.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// Bread Monster
// ------------------------------------------------------------------------------------ //
// Gloves
"Weapon_bm_gloves.draw"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_80dB"
	"volume"		"0.5"
	"pitch"		    "100"
	"wave"			"weapons/breadmonster/gloves/bm_gloves_on.wav"
}

"Weapon_bm_gloves.snap"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.4"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"95, 105"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_01.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_02.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_03.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_04.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_05.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_06.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_07.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_08.wav"
	}
}

"Weapon_bm_gloves.scream"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.4"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"95, 105"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/gloves/bm_gloves_scream_01.wav"
			"wave"	"weapons/breadmonster/gloves/bm_gloves_scream_02.wav"
	}
}

"Weapon_bm_gloves.attack"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.5"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"95, 105"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/gloves/bm_gloves_attack_01.wav"
			"wave"	"weapons/breadmonster/gloves/bm_gloves_attack_02.wav"
			"wave"	"weapons/breadmonster/gloves/bm_gloves_attack_03.wav"
			"wave"	"weapons/breadmonster/gloves/bm_gloves_attack_04.wav"
	}
}

// Sapper
"Weapon_bm_sapper.scream"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.4"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"95, 105"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/sapper/bm_sapper_scream_01.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_scream_02.wav"
	}
}
"Weapon_bm_sapper.snap"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.4"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"95, 105"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_01.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_02.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_03.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_04.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_05.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_06.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_07.wav"
			"wave"	"weapons/breadmonster/sapper/bm_sapper_snap_08.wav"
	}
}

"Weapon_breadmonster_sapper.Timer"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_74dB"
	"wave"		"weapons/sapper_timer.wav"
}

//Throwable
"Weapon_bm_throwable.throw"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_95dB"
	"wave"		")weapons/breadmonster/throwable/bm_throwable_throw.wav"
}

"Weapon_bm_throwable.smash"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_95dB"	
	"wave"	")weapons/breadmonster/throwable/bm_throwable_smash.wav"
}

"Weapon_bm_throwable.growl"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.4"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"95, 105"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/throwable/bm_throwable_growl_01.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_growl_02.wav"
	}
}
"Weapon_bm_throwable.grunt"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.4"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"95, 105"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/throwable/bm_throwable_grunt_01.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_grunt_02.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_grunt_03.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_grunt_04.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_grunt_05.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_grunt_06.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_grunt_07.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_grunt_08.wav"
	}
}

"Weapon_bm_throwable.slosh"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.3"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"100"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/throwable/bm_throwable_slosh_01.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_slosh_02.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_slosh_03.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_slosh_04.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_slosh_05.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_slosh_06.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_slosh_07.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_slosh_08.wav"
	}
}

"Weapon_bm_throwable.attack"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"0.5"
	"soundlevel"	"SNDLVL_80dB"
	"pitch"		"100"
	"rndwave"
	{
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_01.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_02.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_03.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_04.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_05.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_06.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_07.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_08.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_09.wav"
			"wave"	"weapons/breadmonster/throwable/bm_throwable_attack_10.wav"
	}
}

// ------------------------------------------------------------------------------------ //

// ------------------------------------------------------------------------------------ //
// GRAPPLING HOOK
// ------------------------------------------------------------------------------------ //
"WeaponGrapplingHook.Shoot"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"wave"		")weapons\grappling_hook_shoot.wav"
}

"WeaponGrapplingHook.ReelStart"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"wave"		")weapons\grappling_hook_reel_start.wav"
}

"WeaponGrapplingHook.ReelStop"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"wave"		")weapons\grappling_hook_reel_stop.wav"
}

"WeaponGrapplingHook.ImpactDefault"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"pitch"		"PITCH_NORM"
	"wave"		"weapons\grappling_hook_impact_default.wav"
}

"WeaponGrapplingHook.ImpactFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"wave"		")weapons\grappling_hook_impact_flesh.wav"
}

"WeaponGrapplingHook.ImpactFleshLoop"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	"1"
	"wave"		")weapons\grappling_hook_impact_flesh_loop.wav"
}

"WeaponGrapplingHook.Wind"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_85dB"
	"volume"		"0"
	"wave"			")weapons\grappling_hook_wind.wav"
}

// ------------------------------------------------------------------------------------ //
// WEAPON INSPECT
// ------------------------------------------------------------------------------------ //

"WeaponInspect.Movement1"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"wave"		"weapons\weapon_inspect_movement1.wav"
}

"WeaponInspect.Movement2"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"wave"		"weapons\weapon_inspect_movement2.wav"
}

"WeaponInspect.Movement3"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"wave"		"weapons\weapon_inspect_movement3.wav"
}

"WeaponInspect.Movement4"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"wave"		"weapons\weapon_inspect_movement4.wav"
}

// ------------------------------------------------------------------------------------ //
// MELEE INSPECT
// ------------------------------------------------------------------------------------ //

"MeleeInspect.Movement"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"rndwave"
	{
		"wave"	"weapons\melee_inspect_movement2.wav"
		"wave"	"weapons\melee_inspect_movement3.wav"
		"wave"	"weapons\melee_inspect_movement4.wav"
	}
}

"MeleeInspect.Movement1"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"wave"		"weapons\melee_inspect_movement1.wav"
}

"MeleeInspect.Movement2"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"wave"		"weapons\melee_inspect_movement2.wav"
}

"MeleeInspect.Movement3"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"wave"		"weapons\melee_inspect_movement3.wav"
}

"MeleeInspect.Movement4"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".2"
	"wave"		"weapons\melee_inspect_movement4.wav"
}


// ------------------------------------------------------------------------------------ //
//  Weapon Hit (Ding a lings)
// ------------------------------------------------------------------------------------ //

"Player.HitSoundDefaultDing"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/hitsound.wav"
}

"Player.HitSoundBeepo"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/hitsound_beepo.wav"
}

"Player.HitSoundVortex"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	")ui/hitsound_vortex1.wav"
		"wave"	")ui/hitsound_vortex2.wav"
		"wave"	")ui/hitsound_vortex3.wav"
		"wave"	")ui/hitsound_vortex4.wav"
		"wave"	")ui/hitsound_vortex5.wav"	
	}
}

"Player.HitSoundElectro"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	")ui/hitsound_electro1.wav"
		"wave"	")ui/hitsound_electro2.wav"
		"wave"	")ui/hitsound_electro3.wav"
	}
}

"Player.HitSoundNotes"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	"ui/hitsound_menu_note1.wav"
		"wave"	"ui/hitsound_menu_note2.wav"
		"wave"	"ui/hitsound_menu_note3.wav"
		"wave"	"ui/hitsound_menu_note4.wav"
		"wave"	"ui/hitsound_menu_note5.wav"
		"wave"	"ui/hitsound_menu_note6.wav"
		"wave"	"ui/hitsound_menu_note7.wav"
		"wave"	"ui/hitsound_menu_note7b.wav"
		"wave"	"ui/hitsound_menu_note8.wav"
		"wave"	"ui/hitsound_menu_note9.wav"			
	}
}

"Player.HitSoundPercussion"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	")ui/hitsound_percussion1.wav"
		"wave"	")ui/hitsound_percussion2.wav"
		"wave"	")ui/hitsound_percussion3.wav"
		"wave"	")ui/hitsound_percussion4.wav"
		"wave"	")ui/hitsound_percussion5.wav"						
	}
}

"Player.HitSoundRetro"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"rndwave"
	{
		"wave"	")ui/hitsound_retro1.wav"
		"wave"	")ui/hitsound_retro2.wav"
		"wave"	")ui/hitsound_retro3.wav"
		"wave"	")ui/hitsound_retro4.wav"
		"wave"	")ui/hitsound_retro5.wav"						
	}
}

"Player.HitSoundSpace"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/hitsound_space.wav"
}

"Player.HitSoundSquasher"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/hitsound_squasher.wav"
}

"Player.HitSoundSynth"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"		"PITCH_NORM"

	"rndwave"
	{
		"wave"	"ui/hitsound_synth1.wav"
		"wave"	"ui/hitsound_synth2.wav"
		"wave"	"ui/hitsound_synth3.wav"
		"wave"	"ui/hitsound_synth4.wav"
		"wave"	"ui/hitsound_synth5.wav"						
	}
}

// ------------------------------------------------------------------------------------ //
//  Weapon Kill (Ding a lings)
// ------------------------------------------------------------------------------------ //

"Player.KillSoundDefaultDing"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/killsound.wav"
}

"Player.KillSoundBeepo"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/killsound_beepo.wav"
}

"Player.KillSoundElectro"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/killsound_electro.wav"
}

"Player.KillSoundNotes"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	"ui/killsound_note.wav"
}

"Player.KillSoundPercussion"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/killsound_percussion.wav"
}

"Player.KillSoundRetro"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/killsound_retro.wav"
}

"Player.KillSoundSpace"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/killsound_space.wav"
}

"Player.KillSoundSquasher"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/killsound_squasher.wav"
}

"Player.KillSoundVortex"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"	
	"pitch"			"PITCH_NORM"

	"wave"	")ui/killsound_vortex.wav"
}

// ------------------------------------------------------------------------------------ //
//  Invasion
// ------------------------------------------------------------------------------------ //


"Weapon_BatSaber.Draw"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"wave"		"weapons/batsaber_draw.wav"
}

"Weapon_BatSaber.Swing"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	"1"
	"pitch"			"96,100"
	"rndwave"
	{
		"wave"		")weapons/batsaber_swing1.wav"
		"wave"		")weapons/batsaber_swing2.wav"
		"wave"		")weapons/batsaber_swing3.wav"
	}
}

"Weapon_BatSaber.SwingCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	"1"
	"pitch"			"96,100"
	"rndwave"
	{
		"wave"		")weapons/batsaber_swing_crit1.wav"
		"wave"		")weapons/batsaber_swing_crit2.wav"
		"wave"		")weapons/batsaber_swing_crit3.wav"
	}
}

"Weapon_BatSaber.HitFlesh"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"pitch"			"96,100"
	"rndwave"
	{
		"wave"		")weapons/batsaber_hit_flesh1.wav"
		"wave"		")weapons/batsaber_hit_flesh2.wav"
	}

}

"Weapon_BatSaber.HitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1"
	"pitch"			"96,100"
	"rndwave"
	{
		"wave"		")weapons/batsaber_hit_world1.wav"
		"wave"		")weapons/batsaber_hit_world2.wav"
	}
}

"Weapon_ShootingStar.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_100dB"
	"volume"	"1.0"
	"wave"		")weapons\shooting_star_shoot.wav"
}

"Weapon_ShootingStar.SingleCharged"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_100dB"
	"volume"	"1.0"
	"wave"		")weapons\shooting_star_shoot_charged.wav"
}

"Weapon_ShootingStar.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_100dB"
	"volume"	"1.0"
	"wave"		")weapons\shooting_star_shoot_crit.wav"
}

"Weapon_Capper.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\capper_shoot.wav"
}

"Weapon_Capper.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons\capper_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// Rocket Jumper
// ------------------------------------------------------------------------------------ //

"Weapon_Rocket_Jumper.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_jumper_shoot.wav"
}

"Weapon_Rocket_Jumper.Explode"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	"wave"		")weapons/rocket_jumper_explode1.wav"

}

// ------------------------------------------------------------------------------------ //
// Stickey Jumper
// ------------------------------------------------------------------------------------ //

"Weapon_Sticky_Jumper.Single"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/sticky_jumper_shoot.wav"
}

"Weapon_Sticky_Jumper.Explode"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_95dB"
	"volume"	"1.0"
	"pitch"		"PITCH_NORM"
	"wave"		")weapons/sticky_jumper_explode1.wav"
}

// ------------------------------------------------------------------------------------ //
// Dropped Medigun
// ------------------------------------------------------------------------------------ //

"Medigun.DrainCharge"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"0.35"
	"pitch"			"PITCH_NORM"
	"wave"			"weapons/drg_pomson_drain_01.wav"
}

// ------------------------------------------------------------------------------------ //
// Push
// ------------------------------------------------------------------------------------ //

"Weapon_Hands.Push"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			"weapons/push.wav"
}

"Weapon_Hands.PushImpact"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			"weapons/push_impact.wav"
}

// ------------------------------------------------------------------------------------ //
// ROCKET PACK
// ------------------------------------------------------------------------------------ //

"Weapon_RocketPack.BoostersExtend"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_boosters_extend.wav"
}

"Weapon_RocketPack.BoostersRetract"
{
	"channel"		"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_boosters_retract.wav"
}


"Weapon_RocketPack.BoostersCharge"
{
	"channel"		"CHAN_ITEM"
	"soundlevel"	"SNDLVL_105dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_boosters_charge.wav"
}

"Weapon_RocketPack.BoostersLoop"
{
	"channel"		"CHAN_ITEM"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_boosters_loop.wav"
}

"Weapon_RocketPack.BoostersLoopEnd"
{
	"channel"		"CHAN_ITEM"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/null.wav"
}

"Weapon_RocketPack.BoostersFire"
{
	"channel"		"CHAN_ITEM"
	"soundlevel"	"SNDLVL_105dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_boosters_fire.wav"
}

"Weapon_RocketPack.BoostersNotReady"
{
	"channel"		"CHAN_ITEM"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_boosters_not_ready.wav"
}

"Weapon_RocketPack.BoostersReady"
{
	"channel"		"CHAN_ITEM"
	"soundlevel"	"SNDLVL_95dB"
	"volume"		"0"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_boosters_ready.wav"
}

"Weapon_RocketPack.BoostersShutdown"
{
	"channel"		"CHAN_ITEM"
	"soundlevel"	"SNDLVL_105dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_boosters_shutdown.wav"
}

"Weapon_RocketPack.Land"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_105dB"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"wave"			")weapons/rocket_pack_land.wav"
}

"Weapon_Slap.Draw"
{
	"channel"	"CHAN_AUTO"
	"soundlevel"	"SNDLVL_74dB"
	"volume"	".5"
	"wave"		"weapons/slap_draw.wav"
}


"Weapon_Slap.Swing"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/slap_swing.wav"
}

"Weapon_Slap.SwingCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_64dB"
	"volume"	".6"
	"wave"		")weapons/slap_swing_crit.wav"
}


"Weapon_Slap.BackHandHitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons\slap_hit_world1.wav"
}

"Weapon_Slap.OpenHandHitWorld"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_NORM"
	"volume"	"1.0"
	"wave"		"weapons\slap_hit_world2.wav"
}

"Weapon_Slap.BackHand"
{
	"channel"			"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"			"1"
	"pitch"				"90,100"
	"rndwave"
	{
		"wave"			")weapons/slap_hit1.wav"
		"wave"			")weapons/slap_hit2.wav"

	}
}

"Weapon_Slap.OpenHand"
{
	"channel"			"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"			"1"
	"pitch"				"100,110"
	"rndwave"
	{
		"wave"			")weapons/slap_hit3.wav"
		"wave"			")weapons/slap_hit4.wav"

	}
}


// ------------------------------------------------------------------------------------ //
// WINGER PISTOL
// ------------------------------------------------------------------------------------ //
"Weapon_Winger.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/winger_shoot.wav"
}

"Weapon_Winger.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/winger_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// FRONTIER JUSTICE
// ------------------------------------------------------------------------------------ //
"Weapon_FrontierJustice.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/frontier_justice_shoot.wav"
}

"Weapon_FrontierJustice.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/frontier_justice_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// FAMILY BUSINESS
// ------------------------------------------------------------------------------------ //
"Weapon_FamilyBusiness.Single"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/family_business_shoot.wav"
}

"Weapon_FamilyBusiness.SingleCrit"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1.0"
	"wave"		")weapons/family_business_shoot_crit.wav"
}

// ------------------------------------------------------------------------------------ //
// GAS CAN
// ------------------------------------------------------------------------------------ //
"Weapon_GasCan.Explode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_85dB"
	
	"wave"	")weapons/gas_can_explode.wav"
}

"Weapon_GasCan.Draw"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	
	"wave"	")weapons/draw_gas_can.wav"
}

"Weapon_GasCan.Throw"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"wave"		")weapons/gas_can_throw.wav"
}

"Weapon_GasCan.InspectMovement1"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"wave"		")weapons/gas_can_inspect_movement1.wav"
}

"Weapon_GasCan.InspectMovement2"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"wave"		")weapons/gas_can_inspect_movement2.wav"
}

"Weapon_GasCan.InspectMovement3"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_84dB"
	"volume"	"1"
	"wave"		")weapons/gas_can_inspect_movement3.wav"
}

// ------------------------------------------------------------------------------------ //
// DRAGONS FURY
// ------------------------------------------------------------------------------------ //
"Weapon_DragonsFury.Single"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_shoot.wav"
}

"Weapon_DragonsFury.SingleCrit"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_shoot_crit.wav"
}

"Weapon_DragonsFury.Impact"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_impact.wav"
}

"Weapon_DragonsFury.ImpactPain"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_pain.wav"
}

"Weapon_DragonsFury.ImpactHit"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_hit.wav"
}

"Weapon_DragonsFury.BonusDamage"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_impact_bonus_damage.wav"
}

"Weapon_DragonsFury.BonusDamagePain"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_impact_bonus_damage_pain.wav"
}

"Weapon_DragonsFury.BonusDamageHit"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_impact_bonus_damage_hit.wav"
}

"Weapon_DragonsFury.PressureBuild"
{
	"channel"		"CHAN_ITEM"
	"volume"		".5"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_pressure_build.wav"
}

"Weapon_DragonsFury.PressureBuildStop"
{
	"channel"		"CHAN_ITEM"
	"volume"		".5"
	"soundlevel"	"SNDLVL_84dB"
	
	"wave"	")weapons/dragons_fury_pressure_build_stop.wav"
}

"Weapon_DragonsFury.Nearmiss"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"soundlevel"		"SNDLVL_84dB"
	"pitch"			"PITCH_NORM"

	"wave"	")weapons/fx/nearmiss/dragons_fury_nearmiss.wav"

}