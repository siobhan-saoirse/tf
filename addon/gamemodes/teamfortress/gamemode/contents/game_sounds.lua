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

"vox/null"
{
	"channel"		"CHAN_STATIC"
	"volume"		"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"vo/null.mp3"
}

// ------------------------------------------------------------------------------------ //
// HEALTH KIT
// ------------------------------------------------------------------------------------ //
"HealthKit.Touch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"
	"wave"		"items/smallmedkit1.wav"
}

// ------------------------------------------------------------------------------------ //
// AMMO PACK
// ------------------------------------------------------------------------------------ //
"AmmoPack.Touch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"
	"wave"		"items/gunpickup2.wav"
}

// ------------------------------------------------------------------------------------ //
// GRENADE PACK
// ------------------------------------------------------------------------------------ //
"GrenadePack.Touch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"
	"wave"		"items/gunpickup2.wav"
}

// ------------------------------------------------------------------------------------ //
// REGENERATE
// ------------------------------------------------------------------------------------ //
"Regenerate.Touch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"
	"wave"		"items/regenerate.wav"
}

// ------------------------------------------------------------------------------------ //
// CHANGE CLASS
// ------------------------------------------------------------------------------------ //
"ChangeClass.Touch"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"
	"wave"		"items/r_item1.wav"
}

"BaseCombatCharacter.CorpseGib"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"  "SNDLVL_75dB"
	"rndwave"
	{
		"wave"	"physics/flesh/flesh_squishy_impact_hard2.wav"
	}
}

"BaseCombatCharacter.StopWeaponSounds"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1"
	"soundlevel"  "SNDLVL_75dB"

	"wave"	"common/null.wav"
}

"BaseCombatCharacter.AmmoPickup"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  "SNDLVL_75dB"

	"wave"	"items/ammo_pickup.wav"
}

"General.BurningFlesh"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"0.45"
	"pitch"		"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"		 "npc/headcrab/headcrab_burning_loop2.wav" 
}

"General.BurningObject"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"VOL_NORM"
	"pitch"		"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"		 "ambient/fire/fire_small_loop2.wav" 
}

"General.StopBurning"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"VOL_NORM"
	"pitch"		"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"wave"		 "common/null.wav" 
}

"BaseCombatWeapon.WeaponDrop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"	  "95,110"
	"rndwave"
	{
		"wave"	"physics/metal/weapon_impact_hard1.wav"
		"wave"	"physics/metal/weapon_impact_hard2.wav"
		"wave"	"physics/metal/weapon_impact_hard3.wav"
	}
}

"BaseCombatWeapon.WeaponMaterialize"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  "SNDLVL_75dB"
	"pitch"	"150"

	"wave"	"items/suitchargeok1.wav"
}

"HudChat.Message"
{
	"channel"	"CHAN_STREAM"
	"volume"	"VOL_NORM"
	"soundlevel"  "SNDLVL_NONE"
	"pitch"	"PITCH_NORM"

	"wave"	"vo/null.mp3"
}

"Hud.Hint"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/hint.wav"
}

"Hud.ItemAcquired"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/item_acquired.wav"
}

"Hud.ProjectorScreenUp"
{
	"channel"	"CHAN_STATIC"
	"volume"	".65"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/projector_screen_up.wav"
}

"Hud.ProjectorScreenUpLong"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/projector_screen_up_long.wav"
}

"Hud.ProjectorScreenDown"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/projector_screen_down.wav"
}

"Hud.ProjectorMovie"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/projector_movie.wav"
}

"Hud.EndRoundScored"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/scored.wav"
}

"Hud.PointCaptured"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/scored.wav"
}

"Hud.Warning"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"misc/hud_warning.wav"
}

"Hud.TrainingPointSmall"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/training_point_small.wav"
}

"Hud.TrainingPointBig"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/training_point_big.wav"
}

"Hud.TrainingMsgUpdate"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ui/hint.wav"
}


"SprayCan.Paint"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"pitch"			"PITCH_NORM"
	"soundlevel"  		"SNDLVL_NORM"
	"wave"			"player/sprayer.wav"
}



"DoorSound.Null"
{
	"channel"		"CHAN_BODY"
	"volume"		"1.0"
	"pitch"			"100"
	"soundlevel"	"SNDLVL_NORM"
	"wave"		"common/null.wav" 
}

"DoorSound.DefaultMove"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"	"SNDLVL_75dB"
	"wave"		"doors/door_metal_rusty_move1.wav" 
}

"DoorSound.DefaultArrive"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"soundlevel"	"SNDLVL_75dB"
	"wave"		"doors/metal_stop1.wav" 
}

"DoorSound.DefaultLocked"
{
	"channel"		"CHAN_BODY"
	"volume"		"0.2"
	"soundlevel"	"SNDLVL_75dB"
	"wave"		"doors/default_locked.wav" 
}

"RotDoorSound.DefaultMove"
{
	"channel"	"CHAN_BODY"
	"volume"	"1"
	"soundlevel"	"SNDLVL_75dB"
	"wave"		"doors/door_metal_rusty_move1.wav" 
}

"RotDoorSound.DefaultArrive"
{
	"channel"		"CHAN_BODY"
	"volume"		"1"
	"soundlevel"	"SNDLVL_75dB"
	"wave"		"doors/metal_stop1.wav" 
}

"RotDoorSound.DefaultLocked"
{
	"channel"		"CHAN_BODY"
	"volume"		"0.2"
	"soundlevel"	"SNDLVL_75dB"
	"wave"		"doors/default_locked.wav" 
}

"Item.Materialize"
{
	"channel"	"CHAN_STATIC"
	"volume"	".25"
	"soundlevel"  "SNDLVL_75dB"
	"wave"	"items/spawn_item.wav"
}

"PropaneTank.Burst"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"pitch"		"95,105"
	"soundlevel"	"SNDLVL_90db"
	"wave"		"ambient/fire/gascan_ignite1.wav"
}

"NPC_CombineS.ElectrocuteScream"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"pitch"			"100"
	"soundlevel"		"SNDLVL_NORM"
	"wave"			"common/null.wav" 
}


"npc_citizen.die"
{
	"channel"		"CHAN_VOICE"
	"volume"		"VOL_NORM"
	"pitch"			"PITCH_NORM"

	"soundlevel"	"SNDLVL_NORM"

	"rndwave"
	{
		"wave"	"*vo/npc/$gender01/pain01.wav"
		"wave"	"*vo/npc/$gender01/pain02.wav"
		"wave"	"*vo/npc/$gender01/pain03.wav"
		"wave"	"*vo/npc/$gender01/pain04.wav"
		"wave"	"*vo/npc/$gender01/pain05.wav"
		"wave"	"*vo/npc/$gender01/pain06.wav"
		"wave"	"*vo/npc/$gender01/pain07.wav"
		"wave"	"*vo/npc/$gender01/pain08.wav"
		"wave"	"*vo/npc/$gender01/pain09.wav"
	}
}

"Panel.SlideDown"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"pitch"			"100"
	"soundlevel"		"SNDLVL_NORM"
	"wave"			"ui/slide_down.wav" 
}

"Panel.SlideUp"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.0"
	"pitch"			"100"
	"soundlevel"		"SNDLVL_NORM"
	"wave"			"ui/slide_up.wav" 
}


// ------------------------------------------------------------------------------------ //
// AMBIENT
// ------------------------------------------------------------------------------------ //

"Ambient.Drips1"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_74dB"
	"wave"		")ambient/drips1.wav"
}

"Ambient.Drips2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_74dB"
	"wave"		")ambient/drips2.wav"
}

"Ambient.Drips3"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_74dB"
	"wave"		")ambient/drips3.wav"
}

"Sawmill.Waterfall"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_84dB"
	"wave"		"ambient/waterfall.wav"
}

"Ambient.MachineHum"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")ambient/machine_hum.wav"
}

"Ambient.MachineHum2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")ambient/machine_hum2.wav"
}

"Ambient.MachineWorking"
{
	"channel"	"CHAN_STATIC"
	"volume"	".50"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")ambient/train_engine_idle.wav"
}



"Ambient.ComputerWorking"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")ambient/computer_working.wav"
}

"Ambient.ComputerTape"
{
	"channel"	"CHAN_STATIC"
	"volume"	".5"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")ambient/computer_tape.wav"
}

"Ambient.ComputerTape3"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient/computer_tape3.wav"
}

"Ambient.ComputerTape4"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_70dB"
	"wave"		"ambient/computer_tape4.wav"
}

"Ambient.CommandCenter"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")ambient/command_center.wav"
}

"Ambient.CommandCenter2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"		")ambient/command_center2.wav"
}

"Ambient.Factory"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")ambient/factory_outdoor.wav"
}

"Ambient.Generator"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		")ambient/generator.wav"
}

"Ambient.SteamDrum"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_80dB"
	"wave"		")ambient/steam_drum.wav"
}

"Ambient.TrainApproachAndPass"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_95dB"
	"wave"		")ambient_mp3/train_approach_and_pass.mp3"
}


"Ambient.Train"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_95dB"
	"wave"		")ambient/train.wav"
}

"Ambient.LairTramCap2"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_95dB"
	"wave"		")ambient/lair/cap_2_tram.wav"
}

"Ambient.LairTramCap3"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_95dB"
	"wave"		")ambient/lair/cap_3_tram.wav"
}

"Ambient.LairTramDoorOpen"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient/lair/cap_2_tram_door_open.wav"
}

"Ambient.LairTramDoorClose"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient/lair/cap_2_tram_door_open.wav"
}

"Ambient.RailroadBells"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_95dB"
	"wave"		")ambient/railroad_bells.wav"
}

"Ambient.SlowTrain"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_150dB"
	"wave"		")ambient/slow_train.wav"
}

"Ambient.SlowTrainLeadIn"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_150dB"
	"wave"		")ambient_mp3/slow_train_lead_in.mp3"
}

"Ambient.LightHum"
{
	"channel"	"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_75dB"
	"wave"		"ambient/lighthum.wav"
}

"Ambient.LightHum"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_65dB"
	"wave"		"ambient/lighthum.wav"
}

"Ambient.Siren"
{
	"channel"		"CHAN_AUTO"
	"volume"		"VOL_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ambient_mp3/siren.mp3"
}

"Ambient.Cliff"
{
	"channel"		"CHAN_STATIC"
	"volume"		"VOL_NORM"
	"soundlevel"		"SNDLVL_87dB"
	"pitch"			"PITCH_NORM"
	"wave"			")ambient/forest_cliff.wav"
}

"Ambient.Fireball"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"	"SNDLVL_97dB"
	"pitch"			"PITCH_NORM"
	"wave"			")ambient/fireball.wav"
}

"Game.SuddenDeath"
{
	"channel"	"CHAN_AUTO"
	"volume"	"1"
	"soundlevel"	"SNDLVL_140dB"
	"pitch"		"PITCH_NORM"
	
	"wave"		"#misc/your_team_suddendeath.mp3"	[$WIN32]
	"wave"		"#misc/your_team_suddendeath.wav"	[$X360]
}

"Game.Stalemate"
{
	"channel"	"CHAN_AUTO"
	"volume"	"1"
	"soundlevel"	"SNDLVL_140dB"
	"pitch"		"PITCH_NORM"
	
	"wave"		"#misc/your_team_stalemate.mp3"	[$WIN32]
	"wave"		"#misc/your_team_stalemate.wav"	[$X360]
}

"Game.Overtime"
{
	"channel"	"CHAN_VOICE2"
	"volume"	"1"
	"soundlevel"	"SNDLVL_140dB"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"	"vo/announcer_overtime.mp3"
		"wave"	"vo/announcer_overtime2.mp3"
		"wave"	"vo/announcer_overtime3.mp3"
		"wave"	"vo/announcer_overtime4.mp3"
	}
}

"Game.YourTeamLost"
{
	"channel"	"CHAN_AUTO"
	"volume"	"1"
	"soundlevel"	"SNDLVL_140dB"
	"pitch"		"PITCH_NORM"

	"wave"		"#misc/your_team_lost.mp3"	[$WIN32]
	"wave"		"#misc/your_team_lost.wav"	[$X360]
}

"Game.YourTeamWon"
{
	"channel"	"CHAN_AUTO"
	"volume"	"1"
	"soundlevel"	"SNDLVL_140dB"
	"pitch"		"PITCH_NORM"

	"wave"		"#misc/your_team_won.mp3"	[$WIN32]
	"wave"		"#misc/your_team_won.wav"	[$X360]
}

"Game.Revenge"
{
	"channel"  "CHAN_STATIC"
	"volume"  ".65"
	"pitch"  "100"
	"soundlevel"   "SNDLVL_NORM"
	"wave"  "#misc/tf_revenge.wav"
}
 
"Game.Domination"
{
	"channel"  "CHAN_STATIC"
 	"volume"  ".65"
 	"pitch"  "100"
 	"soundlevel"   "SNDLVL_NORM"
	"wave"  "#misc/tf_domination.wav"
}
 
"Game.Nemesis"
{
 	"channel"  "CHAN_STATIC"
 	"volume"  ".65"
 	"pitch"  "100"
 	"soundlevel"   "SNDLVL_NORM"
	"wave"  "#misc/tf_nemesis.wav"
}
"Game.KillStreak"
{
 	"channel"  "CHAN_STATIC"
 	"volume"  ".65"
 	"pitch"  "100"
 	"soundlevel"   "SNDLVL_NORM"
	"wave"  "#misc/killstreak.wav"
}

"Game.PenetrationKill"
{
	"channel"	"CHAN_STATIC"
 	"volume"	"0.8"
 	"pitch"		"100"
 	"soundlevel"   "SNDLVL_NORM"
	"wave"	"misc\sniper_railgun_double_kill.wav"
}

"Game.HappyBirthday"
{
 	"channel"  "CHAN_STATIC"
 	"volume"  "1"
 	"pitch"  "100"
 	"soundlevel"   "SNDLVL_87dB"
	"wave"  "misc/happy_birthday.wav"
}

"Game.HappyBirthdayNoiseMaker"
{
 	"channel"  "CHAN_STATIC"
 	"volume"  "1"
 	"pitch"  "100"
 	"soundlevel"   "SNDLVL_87dB"
	"rndwave"
	{
		"wave"	")misc\happy_birthday_tf_01.wav"
		"wave"	")misc\happy_birthday_tf_02.wav"
		"wave"	")misc\happy_birthday_tf_03.wav"
		"wave"	")misc\happy_birthday_tf_04.wav"
		"wave"	")misc\happy_birthday_tf_05.wav"
		"wave"	")misc\happy_birthday_tf_06.wav"
		"wave"	")misc\happy_birthday_tf_07.wav"
		"wave"	")misc\happy_birthday_tf_08.wav"
		"wave"	")misc\happy_birthday_tf_09.wav"
		"wave"	")misc\happy_birthday_tf_10.wav"
		"wave"	")misc\happy_birthday_tf_11.wav"
		"wave"	")misc\happy_birthday_tf_12.wav"
		"wave"	")misc\happy_birthday_tf_13.wav"
		"wave"	")misc\happy_birthday_tf_14.wav"
		"wave"	")misc\happy_birthday_tf_15.wav"
		"wave"	")misc\happy_birthday_tf_16.wav"
		"wave"	")misc\happy_birthday_tf_17.wav"
		"wave"	")misc\happy_birthday_tf_18.wav"
		"wave"	")misc\happy_birthday_tf_19.wav"
		"wave"	")misc\happy_birthday_tf_20.wav"
		"wave"	")misc\happy_birthday_tf_21.wav"
		"wave"	")misc\happy_birthday_tf_22.wav"
		"wave"	")misc\happy_birthday_tf_23.wav"
		"wave"	")misc\happy_birthday_tf_24.wav"
		"wave"	")misc\happy_birthday_tf_25.wav"
		"wave"	")misc\happy_birthday_tf_26.wav"
		"wave"	")misc\happy_birthday_tf_27.wav"
		"wave"	")misc\happy_birthday_tf_28.wav"
		"wave"	")misc\happy_birthday_tf_29.wav"
	}
}

"DoSpark"
{
	"channel"	"CHAN_STATIC"
	"volume"	"VOL_NORM"
	"pitch"	"PITCH_NORM"
	"soundlevel"	"SNDLVL_NONE"
	"wave"	"misc/null.wav"
}


// ------------------------------------------------------------------------------------ //
// MISC
// ------------------------------------------------------------------------------------ //

"Door.Open"
{
	"channel"		"CHAN_STATIC"
	"volume"		".65"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"doors/generic_door_open.wav"
}

"Door.Close"
{
	"channel"		"CHAN_STATIC"
	"volume"		".65"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"doors/generic_door_close.wav"
}

"TV.Static"
{
	"channel"		"CHAN_STATIC"
	"volume"		".15"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"misc/null.wav"
}

"TV.Tune"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"rndwave"	[$WIN32]
	{
		"wave"	"ui/tv_tune.mp3"
		"wave"	"ui/tv_tune2.mp3"
		"wave"	"ui/tv_tune3.mp3"
	}
	
	"rndwave"	[$X360]
	{
		"wave"	"ui/tv_tune.wav"
		"wave"	"ui/tv_tune2.wav"
		"wave"	"ui/tv_tune3.wav"
	}
}

"Hologram.Start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_73dB"
	"wave"		"misc/hologram_start.wav"
}

"Hologram.Move"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_73dB"
	"wave"		"misc/hologram_move.wav"
}

"Hologram.Stop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_73dB"
	"wave"		"misc/hologram_stop.wav"
}

"Hologram.Interrupted"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_73dB"
	"wave"		"misc/hologram_malfunction.wav"
}


"Fire.Engulf"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NORM"
	"wave"		")misc/flame_engulf.wav"
}

"Camera.SnapShot"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NORM"
	"wave"		"misc/freeze_cam_snapshot.wav"
}

"Camera.SnapShotMultiple"
{
	"channel"		"CHAN_STATIC"
	"volume"		".95, 1.0"
	"pitch"		"95, 105"
	"soundlevel"  	"SNDLVL_NORM"
	"rndwave"
	{
		"wave"		"misc\tf_camera_01.wav"
		"wave"		"misc\tf_camera_02.wav"
		"wave"		"misc\tf_camera_03.wav"
		"wave"		"misc\tf_camera_04.wav"
		"wave"		"misc\tf_camera_05.wav"
		"wave"		"misc\tf_camera_06.wav"
		"wave"		"misc\tf_camera_07.wav"
		"wave"		"misc\tf_camera_08.wav"
		"wave"		"misc\tf_camera_09.wav"
		"wave"		"misc\tf_camera_10.wav"
		"wave"		"misc\tf_camera_11.wav"
	}
}

"Achievement.Earned"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_94dB"
	"wave"			")misc/achievement_earned.wav"
}


"Cart.Roll"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	"wave"			")items/cart_rolling.wav"
}

"Cart.Grind"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	"rndwave"	
	{
		"wave"	"items/cart_rolling_back_grind1.wav"
		"wave"	"items/cart_rolling_back_grind2.wav"
		"wave"	"items/cart_rolling_back_grind3.wav"
		"wave"	"items/cart_rolling_back_grind4.wav"
	}
}

"Cart.RollStart"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	"wave"			")items/cart_rolling_start.wav"
}

"Cart.RollStop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	"wave"			")items/cart_rolling_stop.wav"
}

"Cart.Explode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"			")items/cart_explode.wav"
}

"Cart.Trigger"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_150dB"
	"wave"			")items/cart_explode_trigger.wav"
}

"Cart.Falling"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_110dB"
	"wave"			"items/cart_explode_falling.wav"
}

"Cart.Warning"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_104dB"
	"wave"			")items/cart_warning.wav"
}

"Cart.WarningSingle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_104dB"
	"wave"			")items/cart_warning_single.wav"
}

"Hud.AchievementIncremented"
{
	"channel"	"CHAN_STATIC"
	"volume"	"0.5"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"160"

	"wave"		"ui/scored.wav"
}

 
"SawMill.BladeImpact"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_105dB"
	"pitch"		"95,105"
	"rndwave"
	{
		"wave"	")ambient_mp3/sawblade_impact1.mp3"
		"wave"	")ambient_mp3/sawblade_impact2.mp3"
	}
}

"SawMill.Blade"
{
	"channel"		"CHAN_STATIC"
	"volume"		".75"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient/sawblade.wav"
}

"Ambient.NucleusElectricity"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_105dB"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient/nucleus_electricity.wav"
}

"Nucleus.WalkWayMove"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient_mp3/walkway_move.mp3"
}

"Nucleus.ChamberOpen"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient/chamber_open.wav"
}

"Medieval.DoorOpen"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ambient_mp3/medieval_dooropen.mp3"
}

"Medieval.DoorClose"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ambient_mp3/medieval_doorclose.mp3"
}

"Medieval.DoorOpenRaise"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ambient_mp3/medieval_dooropenraise.mp3"
}

"Medieval.DoorOpenLower"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"

	"wave"		"ambient_mp3/medieval_dooropenlower.mp3"
}

"Medieval.Flag"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		"ambient/medieval_flag.wav"
}

"Medieval.Brazier"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient/medieval_brazier.wav"
}

"ArrowLight"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient_mp3/arrowlight.mp3"
}

"Yeti.StatueGrowl"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_84dB"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"	")ambient/lair/yeti_statue_growl1.wav"
		"wave"	")ambient/lair/yeti_statue_growl2.wav"
		"wave"	")ambient/lair/yeti_statue_growl3.wav"
		"wave"	")ambient/lair/yeti_statue_growl4.wav"
		"wave"	")ambient/lair/yeti_statue_growl5.wav"
		"wave"	")ambient/lair/yeti_statue_growl6.wav"
	}
}

// ------------------------------------------------------------------------------------ //
// REPLAY
// ------------------------------------------------------------------------------------ //

"Replay.Saved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"		"PITCH_NORM"

	"wave"		"replay/saved.wav"
}


"Halloween.PumpkinExplode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_115dB"
	"pitch"		"PITCH_NORM"
	"rndwave"
	{
		"wave"	")items/pumpkin_explode1.wav"
		"wave"	")items/pumpkin_explode2.wav"
		"wave"	")items/pumpkin_explode3.wav"
	}
}

"Halloween.PumpkinDrop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_95dB"
	"pitch"		"PITCH_NORM"

	"wave"		"items/pumpkin_drop.wav"
}

"Halloween.PumpkinPickup"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"


	"wave"		"items/pumpkin_pickup.wav"
}

"Halloween.LightsOn"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient_mp3/lightson.mp3"
}

"Halloween.LightsOff"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"		"PITCH_NORM"

	"wave"		")ambient_mp3/lightsoff.mp3"
}

"Halloween.MerasmusLoop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	"wave"		"ambient/hallowloop.wav"
}

"Vote.Created"
{
	"channel"	"CHAN_STATIC"
	"soundlevel" 	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		"UI/vote_started.wav"
}

"Vote.Passed"
{
	"channel"	"CHAN_STATIC"
	"soundlevel" 	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		"UI/vote_success.wav"
}

"Vote.Failed"
{
	"channel"	"CHAN_STATIC"
	"soundlevel" 	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		"UI/vote_failure.wav"
}

"Vote.Cast.Yes"
{
	"channel"	"CHAN_STATIC"
	"soundlevel" 	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		"UI/vote_yes.wav"
}

"Vote.Cast.No"
{
	"channel"	"CHAN_STATIC"
	"soundlevel" 	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		"UI/vote_no.wav"
}


//
// Eyeball boss vortex
//
"Halloween.TeleportVortex.EyeballMovedVortex"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.000"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"wave"		"misc/halloween_eyeball/vortex_eyeball_moved.wav"
}

"Halloween.TeleportVortex.EyeballDiedVortex"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.000"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"wave"		"misc/halloween_eyeball/vortex_eyeball_died.wav"
}

"Halloween.TeleportVortex.BookSpawn"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.000"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"wave"		"misc/halloween_eyeball/book_spawn.wav"
}

"Halloween.TeleportVortex.BookExit"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1.000"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_95dB"

	"wave"		"misc/halloween_eyeball/book_exit.wav"
}

"Christmas.GiftDrop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_95dB"
	"pitch"		"PITCH_NORM"

	"wave"		"items/gift_drop.wav"
}

"Christmas.GiftPickup"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_75dB"
	"pitch"		"PITCH_NORM"

	"wave"		"items/gift_pickup.wav"
}

"harbor_furnace_1shots"
{	
		"channel"		"CHAN_STATIC"
		"volume"		".6"
		"pitch"		"100"
    	"soundlevel"  	"SNDLVL_80dB"
		"rndwave"
		{
			"wave"		"ambient_mp3\cp_harbor\furnace_1_shot_01.mp3"
			"wave"		"ambient_mp3\cp_harbor\furnace_1_shot_02.mp3"
			"wave"		"ambient_mp3\cp_harbor\furnace_1_shot_03.mp3"
			"wave"		"ambient_mp3\cp_harbor\furnace_1_shot_04.mp3"
			"wave"		"ambient_mp3\cp_harbor\furnace_1_shot_05.mp3"
		}
}

"harbor_furnace_lp"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_80dB"
	"wave"		"ambient\cp_harbor\cauldron_lp_main.wav"
}

"harbor.blue_whistle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"		"PITCH_NORM"

	"wave"		")misc\cp_harbor_blue_whistle.wav"
}

"harbor.red_whistle"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"		"PITCH_NORM"

	"wave"		")misc\cp_harbor_red_whistle.wav"
}

"Tournament.PlayerReady"
{
	"channel"	"CHAN_STATIC"
	"soundlevel" 	"SNDLVL_NORM"
	"pitch"		"PITCH_NORM"

	"wave"		"UI/vote_started.wav"
}

// ------------------------------------------------------------------------------------ //
// DOOMSDAY
// ------------------------------------------------------------------------------------ //

"doomsday.alarm"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"		"PITCH_NORM"
	
	"wave"		")ambient_mp3\alarms\doomsday_lift_alarm.mp3"
}

"doomsday.lift_start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		"misc\doomsday_lift_start.wav"
}

"doomsday.lift_loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		"misc\doomsday_lift_loop.wav"
}

"doomsday.lift_stop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		"misc\doomsday_lift_stop.wav"
}


"doomsday.cap_spinstart"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.5"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_cap_spin_start.wav"
}

"doomsday.cap_spinloop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.9"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_cap_spin_loop.wav"
}

"doomsday.cap_spin_end"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.5"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_cap_spin_end.wav"
}

"doomsday.cap_open_start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_cap_open_start.wav"
}

"doomsday.cap_open_end"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_cap_open_end.wav"
}

"doomsday.cap_close_start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_cap_close_start.wav"
}

"doomsday.cap_close_end"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_cap_close_end.wav"
}

"doomsday.cap_close_quick"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		"misc\doomsday_cap_close_quick.wav"
}

"doomsday.warhead"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		"misc\doomsday_warhead.wav"
}

"doomsday.pickupwarhead"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_30dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		"misc\doomsday_pickup.wav"
}

"doomsday.radiation"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.3"
	"soundlevel"  	"SNDLVL_50dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_radiation.wav"
}

"doomsday.blank"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	
	"wave"		"misc\blank.wav"
}

"doomsday.launch"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_missile_launch.wav"
}

"doomsday.launch_exp"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	
	"wave"		")misc\doomsday_missile_explosion.wav"
}

// ------------------------------------------------------------------------------------ //
// Halloween 2012
// ------------------------------------------------------------------------------------ //

"Halloween.WheelofFate"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_wheel_of_fate.wav"
}
"Halloween.WheelofFateQuiet"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_40dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_wheel_of_fate.wav"
}

"Halloween.Merasmus_Spell"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/merasmus_spell.wav"
}
"Halloween.Merasmus_TP_In"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/merasmus_appear.wav"
}

"Halloween.Merasmus_TP_Out"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/merasmus_disappear.wav"
}

"Halloween.Merasmus_Float"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_95dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/merasmus_float.wav"
}

"Halloween.Merasmus_Hiding_Explode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_110dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/merasmus_hiding_explode.wav"
}

"Halloween.Merasmus_Stun"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/merasmus_stun.wav"
}


"Halloween.Merasmus_Death"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/merasmus_death.wav"
}

"Halloween.dance_loop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.5"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_dance_loop.wav"
}

"Halloween.dance_howl"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.5"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_dance_howl.wav"
}

"Halloween.plumes_long"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_plumes_capture.wav"
}

"Halloween.plumes_short"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/hwn_plumes_short.wav"
}

// ------------------------------------------------------------------------------------ //
// Halloween 2013
// ------------------------------------------------------------------------------------ //


"Halloween.ClockTick"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_150dB"
	"pitch"		"PITCH_NORM"

	"wave"		")misc/halloween/clock_tick.wav"
}

"Halloween.hellride"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/gotohell.wav"
}

"Halloween.spell_pickup"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_100dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_pickup.wav"
}

"Halloween.spell_pickup_rare"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_100dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_pickup_rare.wav"
}

"Halloween.spelltick_a"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.5"
	"soundlevel"  	"SNDLVL_100dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/spelltick_01.wav"
}

"Halloween.spelltick_b"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.5"
	"soundlevel"  	"SNDLVL_100dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/spelltick_02.wav"
}

"Halloween.spelltick_set"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"  	"SNDLVL_100dB"
	"pitch"			"PITCH_NORM"
	"wave"			"misc/halloween/spelltick_set.wav"
}

"Halloween.skeleton_break"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/skeleton_break.wav"
}

"Halloween.skeleton_laugh_small"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"misc\halloween\skeletons\skelly_small_01.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_02.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_03.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_04.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_05.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_06.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_07.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_08.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_09.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_10.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_11.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_12.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_13.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_14.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_15.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_16.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_17.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_18.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_19.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_20.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_21.wav"
		"wave"		"misc\halloween\skeletons\skelly_small_22.wav"
	}
}

"Halloween.skeleton_laugh_medium"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"soundlevel"  	"SNDLVL_110dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"misc\halloween\skeletons\skelly_medium_01.wav"
		"wave"		"misc\halloween\skeletons\skelly_medium_02.wav"
		"wave"		"misc\halloween\skeletons\skelly_medium_03.wav"
		"wave"		"misc\halloween\skeletons\skelly_medium_04.wav"
	}
}

"Halloween.skeleton_laugh_giant"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"rndwave"
	{
		"wave"		"misc\halloween\skeletons\skelly_giant_01.wav"
		"wave"		"misc\halloween\skeletons\skelly_giant_02.wav"
		"wave"		"misc\halloween\skeletons\skelly_giant_03.wav"
	}

}


"Halloween.spell_athletic"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_athletic.wav"
}

"Halloween.spell_bat_cast"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_bat_cast.wav"
}

"Halloween.spell_bat_impact"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_bat_impact.wav"
}

"Halloween.spell_blastjump"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_blast_jump.wav"
}

"Halloween.spell_fireball_cast"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_fireball_cast.wav"
}

"Halloween.spell_fireball_impact"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_fireball_impact.wav"
}

"Halloween.spell_lightning_cast"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_lightning_ball_cast.wav"
}

"Halloween.spell_lightning_impact"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_lightning_ball_impact.wav"
}

"Halloween.spell_meteor_cast"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_meteor_cast.wav"
}

"Halloween.spell_meteor_impact"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_meteor_impact.wav"
}

"Halloween.spell_mirv_cast"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_mirv_cast.wav"
}

"Halloween.spell_mirv_explode_primary"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_mirv_explode_primary.wav"
}

"Halloween.spell_mirv_explode_secondary"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_mirv_explode_secondary.wav"
}

"Halloween.spell_overheal"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_overheal.wav"
}

"Halloween.spell_skeleton_horde_cast"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_skeleton_horde_cast.wav"
}

"Halloween.spell_skeleton_horde_rise"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_skeleton_horde_rise.wav"
}

"Halloween.spell_spawn_boss"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_spawn_boss.wav"
}

"Halloween.spell_spawn_boss_disappear"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_spawn_boss_disappear.wav"
}

"Halloween.spell_stealth"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_stealth.wav"
}

"Halloween.spell_teleport"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_140dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/halloween/spell_teleport.wav"
}


// Misc

"Ambient.metrotrain_passby"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_85dB"
	"rndwave"
	{
		"wave"	"ambient_mp3/metrotrain_passby_01.mp3"
		"wave"	"ambient_mp3/metrotrain_passby_02.mp3"
	}
}

"General.banana_slip" 
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"	")misc/banana_slip.wav"

}


// Rottenburg map - Large metal door sounds

"Hugedoor.openstart"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_140dB"
	"wave"			")ambient_mp3/rottenburg/tunneldoor_open.mp3"
}

"Hugedoor.opencomplete"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_100dB"
	"wave"			")ambient_mp3/rottenburg/tunneldoor_open_complete.mp3"
}

"Hugedoor.closedloud"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_140dB"
	"wave"			")ambient_mp3/rottenburg/tunneldoor_closed_loud.mp3"
}

"Hugedoor.closedsoft"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_100dB"
	"wave"			")ambient_mp3/rottenburg/tunneldoor_closed_quiet.mp3"
}

// Rottenburg map - Portcullis over upgrades shop

"Portcullis.down_start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"			")ambient_mp3/rottenburg/portcullis_down.mp3"
}

"Portcullis.down_slam"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"			")ambient_mp3/rottenburg/portcullis_slam.mp3"
}

"Portcullis.up_start"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_85dB"
	"wave"			")ambient_mp3/rottenburg/portcullis_up.mp3"
}

// Rottenburg map - Bomb carrier pushed into pit under bell tower

"Belltower.Ring"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"			")ambient_mp3/rottenburg/rottenburg_belltower.mp3"
}

// Rottenburg map - Palisade barrier smash

"MVM.BarrierSmash"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"			")ambient_mp3/rottenburg/barrier_smash.mp3"
}

// New item drop crates

"ui.crate_open_short"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/item_open_crate_short.wav"
}


"ui.cratesmash_common"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.7"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/itemcrate_smash_common.wav"
}

"ui.cratesmash_rare_long"
{
	"channel"		"CHAN_STATIC"
	"volume"		"0.8"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/itemcrate_smash_mid.wav"
}

"ui.cratesmash_ultrarare_short"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/itemcrate_smash_ultrarare_short.wav"
}

"ui.cratesmash_ultrarare_long"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/itemcrate_smash_ultrarare.wav"
}

"ui.cratesmash_ultrarare_long_fireworks"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/itemcrate_smash_ultrarare_fireworks.wav"
}

"Equipment.RocketPack_Activate"
{
	"channel"	"CHAN_WEAPON"
	"volume"	"1.0"
	"soundlevel"	"SNDLVL_94dB"
	"wave"		")weapons/rocket_ll_shoot.wav"
}
"Parachute_open"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"1.0"
	"soundlevel"	"SNDLVL_75dB"
	"wave"			")items/para_open.wav"
}
"Parachute_close"
{
	"channel"		"CHAN_WEAPON"
	"volume"		"0.3"
	"soundlevel"	"SNDLVL_75dB"
	"wave"			")items/para_close.wav"
}

// ------------------------------------------------------------------------------------ //
// Halloween 2014
// ------------------------------------------------------------------------------------ //

"Halloween.CarCheer"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"rndwave"
	{
		"wave"	")ambient_mp3/bumper_car_cheer1.mp3"
		"wave"	")ambient_mp3/bumper_car_cheer2.mp3"
		"wave"	")ambient_mp3/bumper_car_cheer3.mp3"
	}
}

"Halloween.CarBoo"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"pitch"		"100"
	"soundlevel"  	"SNDLVL_NONE"
	"rndwave"
	{
		"wave"	")ambient_mp3/bumper_car_boo1.mp3"
		"wave"	")ambient_mp3/bumper_car_boo2.mp3"
		"wave"	")ambient_mp3/bumper_car_boo3.mp3"
	}
}

"Halloween.Quack"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_94dB"
	"volume"	"1"
	"pitch"		"90, 110"
	"rndwave"
	{
		"wave"	")ambient_mp3/bumper_car_quack1.mp3"
		"wave"	")ambient_mp3/bumper_car_quack2.mp3"
		"wave"	")ambient_mp3/bumper_car_quack3.mp3"
		"wave"	")ambient_mp3/bumper_car_quack4.mp3"
		"wave"	")ambient_mp3/bumper_car_quack5.mp3"
		"wave"	")ambient_mp3/bumper_car_quack9.mp3"
		"wave"	")ambient_mp3/bumper_car_quack11.mp3"
	}
}

"Halloween.FloorBreak"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_110dB"
	"volume"	"1"
	"wave"	")ambient_mp3/bumper_car_floor_break.mp3"
}
"Halloween.FloorBreakReverse"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_110dB"
	"volume"	"1"
	"wave"	")ambient_mp3/bumper_car_floor_break_reverse.mp3"
}

"Halloween.HammerGearCrankSlow"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"ambient_mp3/puthammerhere.mp3"
}

"Halloween.HammerGearCrankFast"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"ambient_mp3/puthammerhere.mp3"
}

"Halloween.HammerImpactLarge"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"ambient_mp3/puthammerhere.mp3"
}

"Halloween.HammerImpactSmall"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"ambient_mp3/puthammerhere.mp3"
}

"Halloween.HammerImpactSmall2"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"ambient_mp3/puthammerhere.mp3"
}

"Halloween.HammerImpactBloodyBoneCrunch"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"ambient_mp3/puthammerhere.mp3"
}

"Halloween.PlatformAlarm"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"ambient/alarms/klaxon1.wav"
}

"Halloween.BellRing.Scout"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"mvm/melee_impacts/metal_gloves_hit_robo02.wav"
}

"Halloween.BellRing.Heman"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"mvm/melee_impacts/metal_gloves_hit_robo02.wav"
}

"Halloween.BellRing.PushOver"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"mvm/melee_impacts/metal_gloves_hit_robo02.wav"
}

"Halloween.BellRing.Wizard"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"mvm/melee_impacts/metal_gloves_hit_robo02.wav"
}

"Halloween.BellRing.WoodImpact"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"mvm/melee_impacts/metal_gloves_hit_robo02.wav"
}

"Halloween.DuckPickup.Pos"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"misc/halloween/duck_pickup_pos_01.wav"
}

"Halloween.DuckPickup.Neg"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_148dB"
	"volume"	"1"
	"wave"	"misc/halloween/duck_pickup_neg_01.wav"
}
"Halloween.HammerImpact"
{
	"channel"	"CHAN_WEAPON"
	"soundlevel"	"SNDLVL_150dB"
	"volume"	"1"
	"wave"	"misc/halloween/strongman_fast_impact_01.wav"
}

"Duck.Quack"
{
	"channel"	"CHAN_STATIC"
	"soundlevel"	"SNDLVL_75dB"
	"volume"	"0.75"
	"pitch"		"85, 105"
	"rndwave"
	{
		"wave"	")ambient_mp3/bumper_car_quack1.mp3"
		"wave"	")ambient_mp3/bumper_car_quack2.mp3"
		"wave"	")ambient_mp3/bumper_car_quack3.mp3"
		"wave"	")ambient_mp3/bumper_car_quack4.mp3"
		"wave"	")ambient_mp3/bumper_car_quack5.mp3"
		"wave"	")ambient_mp3/bumper_car_quack9.mp3"
		"wave"	")ambient_mp3/bumper_car_quack11.mp3"
	}
}

// ------------------------------------------------------------------------------------ //
// Powerups
// ------------------------------------------------------------------------------------ //

"Mannpower.InvulnerableOn"
{
	"channel"	"CHAN_STATIC"
	"volume"	"1"
	"soundlevel"  	"SNDLVL_NONE"
	"wave"		"player/mannpower_invulnerable.wav"
}

"Powerup.PickUpTemp.Crit"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_crits.wav"
}

"Powerup.PickUpTemp.Uber"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_uber.wav"
}

"Powerup.PickUpKnockout"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_knockout.wav"
}

"Powerup.Knockout_Melee_Hit"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"  	"SNDLVL_120dB"
	"wave"			")items/powerup_pickup_knockout_melee_hit.wav"
}

"Powerup.Volume.Use"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_team_revenge.wav"
}

"Powerup.PickUpBase"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_base.wav"
}

"Powerup.PickUpAgility"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_agility.wav"
}

"Powerup.PickUpHaste"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_haste.wav"
}

"Powerup.PickUpPrecision"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_precision.wav"
}

"Powerup.PickUpRegeneration"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_regeneration.wav"
}

"Powerup.PickUpResistance"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_resistance.wav"
}

"Powerup.PickUpStrength"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_strength.wav"
}

"Powerup.PickUpVampire"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_vampire.wav"
}

"Powerup.PickUpSupernova"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_supernova.wav"
}

"Powerup.PickUpSupernovaActivate"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_supernova_activate.wav"
}

"Powerup.PickUpPlague"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_plague.wav"
}

"Powerup.PickUpPlagueInfected"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_plague_infected.wav"
}

"Powerup.PickUpPlagueInfectedLoop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_105dB"

	"wave"			")items/powerup_pickup_plague_infected_loop.wav"
}

"Powerup.PickUpThorns"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"PITCH_NORM"
	"soundlevel"	"SNDLVL_120dB"

	"wave"			")items/powerup_pickup_warlock.wav"
}

"Powerup.PickUpReflect"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			")items/powerup_pickup_reflect.wav"
}

"Powerup.Reflect.Reflect"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_105dB"
	"pitch"			"PITCH_NORM"
	"wave"			")items/powerup_pickup_reflect_reflect_damage.wav"
}

"Powerup.PickUpKing"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_120dB"
	"pitch"			"PITCH_NORM"
	"wave"			")items/powerup_pickup_king.wav"
}

"Powerup.ReducedDamage"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_105dB"
	"pitch"			"95,100"
	"wave"			")items/powerup_pickup_reduced_damage.wav"
}

"Mannpower.PlayerIsDominant"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_105dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/killstreak.wav"
}

"Mannpower.DominantPlayerOtherTeam"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_105dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/tf_revenge.wav"
}

"Mannpower.PlayerIsNoLongerDominant"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_105dB"
	"pitch"			"PITCH_NORM"
	"wave"			")misc/hologram_stop.wav"
}

// ------------------------------------------------------------------------------------ //
// Quests
// ------------------------------------------------------------------------------------ //

"Quest.Alert"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_alert.wav"
}

"Quest.StatusTickNovice"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_novice.wav"
}

"Quest.StatusTickNoviceFriend"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_novice_friend.wav"
}

"Quest.StatusTickNovicePDA"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_70dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_novice_PDA.wav"
}

"Quest.StatusTickAdvanced"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_advanced.wav"
}

"Quest.StatusTickAdvancedFriend"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_advanced_friend.wav"
}

"Quest.StatusTickAdvancedPDA"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_70dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_advanced_PDA.wav"
}

"Quest.StatusTickExpert"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_expert.wav"
}

"Quest.StatusTickExpertFriend"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_expert_friend.wav"
}

"Quest.StatusTickExpertPDA"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_70dB"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_expert_PDA.wav"
}

"Quest.StatusTickNoviceComplete"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_novice_complete.wav"
}

"Quest.StatusTickAdvancedComplete"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_advanced_complete.wav"
} 

"Quest.StatusTickExpertComplete"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_expert_complete.wav"
} 

"Quest.StatusTickNoviceCompletePDA"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	"wave"			")ui/quest_status_tick_novice_complete_pda.wav"
}

"Quest.StatusTickAdvancedCompletePDA"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	"wave"			")ui/quest_status_tick_advanced_complete_pda.wav"
} 

"Quest.StatusTickExpertCompletePDA"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_85dB"
	"pitch"			"PITCH_NORM"
	"wave"			")ui/quest_status_tick_expert_complete_pda.wav"
} 

"Quest.StatusComplete" 
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_complete.wav"
}

"Quest.Decode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_decode.wav"
}

"Quest.FolderOpen"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_folder_open.wav"
}

"Quest.FolderClose"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_folder_close.wav"
}

"Quest.TurnInDecode"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_turn_in_decode.wav"
}

"Quest.TurnInAccepted"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_turn_in_accepted.wav"
}

"Quest.TurnInAcceptedLight"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_turn_in_accepted_light.wav"
}

"Quest.OperationPassUse"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_operation_pass_use.wav"
}

"Quest.OperationPassBuy"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_operation_pass_buy.wav"
}

// ------------------------------------------------------------------------------------ //
// Halloween 2015
// ------------------------------------------------------------------------------------ //

"Quest.StatusTickCompleteHalloween"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_complete_halloween.wav"
}

"Quest.StatusTickBonusCompleteHalloween"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_status_tick_bonus_complete_halloween.wav"
} 

"Quest.DecodeHalloween"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_decode_halloween.wav"
}

"Quest.FolderOpenHalloween"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_folder_open_halloween.wav"
}

"Quest.FolderCloseHalloween"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_folder_close_halloween.wav"
}

"Quest.TurnInDecodeHalloween"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_turn_in_decode_halloween.wav"
}


"Quest.TurnInAcceptedHalloween"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NORM"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/quest_turn_in_accepted_halloween.wav"
}

// ------------------------------------------------------------------------------------ //
// MATCHMAKING
// ------------------------------------------------------------------------------------ //

"MatchMaking.RoundStart"
{
	"channel"		"CHAN_STATIC"
	"volume"		".4"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_round_start.wav"
} 

"MatchMaking.RoundStartCasual"
{
	"channel"		"CHAN_STATIC"
	"volume"		".4"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_round_start_casual.wav"
}

"MatchMaking.MatchEndBlueWinMusic"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_match_end_blue_win_music.wav"
} 

"MatchMaking.MatchEndRedWinMusic"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_match_end_red_win_music.wav"
}

"MatchMaking.MatchEndWinMusicCasual"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_match_end_win_music_casual.wav"
}

"MatchMaking.MatchEndLoseMusicCasual"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_match_end_lose_music_casual.wav"
}

"MatchMaking.RoundEndBlueWinMusic"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_round_end_blue_win_music.wav"
} 

"MatchMaking.RoundEndRedWinMusic"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_round_end_red_win_music.wav"
} 

"MatchMaking.RoundEndStalemateMusic"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_round_end_stalemate_music.wav"
} 
 
"MatchMaking.DoorOpen"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_door_open.wav"
} 

"MatchMaking.DoorOpenUnlock"
{
	"channel"		"CHAN_STATIC"
	"volume"		".15"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_door_open_unlock.wav"
}

"MatchMaking.DoorClose"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_door_close.wav"
} 

"MatchMaking.DoorCloseLock"
{
	"channel"		"CHAN_STATIC"
	"volume"		".15"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_door_close_lock.wav"
}

"MatchMaking.ScoreboardPanelSlide"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_scoreboardpanel_slide.wav"
} 

"MatchMaking.None"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_medal_none.wav"
}  

"MatchMaking.Bronze"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_medal_bronze.wav"
} 

"MatchMaking.Silver"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_medal_silver.wav"
} 

"MatchMaking.Gold"
{
	"channel"		"CHAN_STATIC"
	"volume"		".25"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_medal_gold.wav"
} 

"MatchMaking.XPChime"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_xp_chime.wav"
} 

"MatchMaking.RankUp"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_rank_up.wav"
} 

"MatchMaking.RankDownMedalShoot"
{
	"channel"		"CHAN_STATIC"
	"soundlevel"	"SNDLVL_75dB"
	"volume"		"1"
	"wave"			")ui/mm_rank_down_medal_shoot.wav"
}

"MatchMaking.RankDownMedalShootImpact"
{
	"channel"			"CHAN_STATIC"
	"soundlevel"		"SNDLVL_75dB"
	"pitch"				"PITCH_NORM"
	"volume"			"1"
	"wave"				")ui/mm_rank_down_medal_shoot_impact.wav"
}

"MatchMaking.MedalSpinHit"
{
	"channel"			"CHAN_STATIC"
	"soundlevel"		"SNDLVL_75dB"
	"pitch"				"PITCH_NORM"
	"volume"			"1"
	"wave"				")ui/mm_medal_spin_hit.wav"
}

"MatchMaking.RankOneAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_rank_one_achieved.wav"
} 

"MatchMaking.RankTwoAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_rank_two_achieved.wav"
} 

"MatchMaking.RankThreeAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_rank_three_achieved.wav"
} 

"MatchMaking.RankFourAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_rank_four_achieved.wav"
} 

"MatchMaking.RankFiveAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_rank_five_achieved.wav"
} 


"MatchMaking.LevelOneAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_level_one_achieved.wav"
}

"MatchMaking.LevelTwoAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_level_two_achieved.wav"
} 

"MatchMaking.LevelThreeAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_level_three_achieved.wav"
} 

"MatchMaking.LevelFourAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_level_four_achieved.wav"
} 

"MatchMaking.LevelFiveAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_level_five_achieved.wav"
} 

"MatchMaking.LevelSixAchieved"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_level_six_achieved.wav"
}  

"MatchMaking.RankProgressTickUp"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_rank_progress_tick_up.wav"
} 

"MatchMaking.RankProgressTickDown"
{
	"channel"		"CHAN_STATIC"
	"volume"		".5"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_rank_progress_tick_down.wav"
} 

"MatchMaking.MedalClick"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_medal_click.wav"
} 

"MatchMaking.MedalClickRare"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_medal_click_rare.wav"
} 

"MatchMaking.MedalClickRareYeti"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"rndwave"	
	{
		"wave"	"ui/mm_medal_click_rare_yeti.wav"
		"wave"	"ui/mm_medal_click_rare_yeti1.wav"
		"wave"	"ui/mm_medal_click_rare_yeti2.wav"
		"wave"	"ui/mm_medal_click_rare_yeti3.wav"
		"wave"	"ui/mm_medal_click_rare_yeti4.wav"
	}
} 

"MatchMaking.MedalClickRankUnknown"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_medal_click_rank_unknown.wav"
}

"MatchMaking.MedalClickRankUnknownRare"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_medal_click_rank_unknown_rare.wav"
}


"MatchMaking.CompBanner"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_comp_banner.wav"
} 

"MatchMaking.CompBannerUp"
{
	"channel"		"CHAN_STATIC"
	"volume"		".55"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_comp_banner_up.wav"
} 

"MatchMaking.CompBannerDown"
{
	"channel"		"CHAN_STATIC"
	"volume"		".7"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/mm_comp_banner_down.wav"
}

"MatchMaking.Queue"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_NORM"

	"wave"	"ui/mm_queue.wav"
}

"MatchMaking.Join"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_NORM"
	
	"wave"	"ui/mm_join.wav"
}

"DemoSupport.StartRecording"
{
	"channel"		"CHAN_STATIC"
	"volume"		"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/demosupport_start.wav"
}

"DemoSupport.EndRecording"
{
	"channel"		"CHAN_STATIC"
	"volume"		"VOL_NORM"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/demosupport_stop.wav"
}

"CYOA.MenuMusic"
{
	"channel"		"CHAN_STATIC"
	"volume"		".75"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	"rndwave"	
	{
		"wave"	"ui/cyoa_musicdrunkenpipebomb_tv.mp3"
		"wave"	"ui/cyoa_musicfasterthanaspeedingbullet_tv.mp3"
		"wave"	"ui/cyoa_musicintruderalert_tv.mp3"
		"wave"	"ui/cyoa_musicmedic_tv.mp3"
		"wave"	"ui/cyoa_musicmoregun_tv.mp3"
		"wave"	"ui/cyoa_musicmoregun2_tv.mp3"
		"wave"	"ui/cyoa_musicplayingwithdanger_tv.mp3"
		"wave"	"ui/cyoa_musicrightbehindyou_tv.mp3"
		"wave"	"ui/cyoa_musicteamfortress2_tv.mp3"
	}
}

"CYOA.PingInProgress"
{
	"channel"		"CHAN_STATIC"
	"volume"		".75"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_ping_in_progress.wav"
}

"CYOA.PingAvailable"
{
	"channel"		"CHAN_STATIC"
	"volume"		".75"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_ping_available.wav"
}

"CYOA.StaticFade"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_map_open.wav"
}

"CYOA.MapOpen"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_map_open.wav"
}

"CYOA.MapClose"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_map_close.wav"
}

"CYOA.OrangePanelCollapse"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_orange_panel_collapse.wav"
}

"CYOA.ObjectivePanelExpand"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_objective_panel_expand.wav"
}

"CYOA.ObjectivePanelCollapse"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_objective_panel_collapse.wav"
}

"CYOA.NodeLocked"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_node_locked.wav"
}

"CYOA.NodeAbsent"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_node_absent.wav"
}

"CYOA.NodeActivate"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_node_activate.wav"
}

"CYOA.NodeDeactivate"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_node_deactivate.wav"
}

"CYOA.KeyGiven"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_key_given.wav"
}

"CYOA.KeyMinimize"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_key_minimize.wav"
}

"CYOA.Switch"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_84dB"
	
	"wave"	"ui/cyoa_switch.wav"
}

"Chat.DisplayText"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"pitch"			"100"
	"soundlevel"  	"SNDLVL_NORM"
	
	"wave"	"ui/chat_display_text.wav"
}

"UI.WarPaintApplyStart"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/item_warpaint_apply_start.wav"
}


"UI.WarPaintApplyStop"
{
	"channel"		"CHAN_STATIC"
	"volume"		"1"
	"soundlevel"  	"SNDLVL_NONE"
	"pitch"			"PITCH_NORM"
	"wave"			"ui/item_warpaint_apply_stop.wav"
}