Anims.Male = {}
if CAKE.ConVars[ "UseEnhancedCitizens" ] then
	Anims.Male[ "models" ] = {
		"models/bloo_ltcom/citizens/male_01.mdl",
		"models/breen.mdl",
		"models/player/breen.mdl",
		"models/Barney.mdl"
	}
else
	Anims.Male[ "models" ] = {
		"models/breen.mdl",
		"models/player/breen.mdl",
		"models/Barney.mdl"
	}
end
Anims.Male.Emotes = {
	["wave"] = {
		["anim"] = "&sequence:;Wave",
		["name"] = "Wave",
		["length"] = 4
	},
	["bringit"] = {
		["anim"] = "&sequence:;Wave_close",
		["name"] = "Bring It",
		["length"] = 2.4
	},
	["disgust"] = {
		["anim"] = "&sequence:;photo_react_blind",
		["name"] = "Show Disgust",
		["length"] = 3.4
	},
	["startle"] = {
		["anim"] = "&sequence:;photo_react_startle",
		["name"] = "Startle",
		["length"] = 2
	},
	["throw"] = {
		["anim"] = "&sequence:;throw1",
		["name"] = "Throw",
		["length"] = 2
	},
}
Anims.Male[ "default" ] = { 
	[ "idle" ] = "&sequence:;LineIdle03",
	--[ "walk" ] = "&gesture:;ACT_WALK;G_what;1",
	[ "walk" ] = "&switch:;ACT_WALK",
	[ "run" ] = "&switch:;ACT_RUN",
	[ "jump" ] = "&switch:;ACT_JUMP",
	[ "land" ] = "&switch:;ACT_LAND",
	[ "fly" ] = "&switch:;ACT_GLIDE",
	[ "sit" ] = "&switch:;ACT_BUSY_SIT_CHAIR",
	[ "sitentry" ] = "&switch:;ACT_BUSY_SIT_CHAIR_ENTRY",
	[ "sitexit" ] = "&switch:;ACT_BUSY_SIT_CHAIR_EXIT",
	[ "swim" ] = "&switch:models/player/breen.mdl;ACT_MP_SWIM",
	[ "sitground" ] = "&switch:;ACT_BUSY_SIT_GROUND",
	[ "sitgroundentry" ] = "&switch:;ACT_BUSY_SIT_GROUND_ENTRY",
	[ "sitgroundexit" ] = "&switch:;ACT_BUSY_SIT_GROUND_EXIT",
	[ "sprint" ] = "&sequence:;sprint_all",
	[ "flinch" ] = {
		["explosion"] = "&switch:;ACT_GESTURE_FLINCH_BLAST"
	},
	[ "crouch" ] = {
			[ "idle" ] = "&sequence:;crouchidlehide",
			[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
			[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
			[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	}
}
Anims.Male[ "relaxed" ] = { 
	[ "idle" ] = "&sequence:;LineIdle01",
	--[ "walk" ] = "&gesture:;ACT_WALK;G_what;1",
	[ "walk" ] = "&sequence:;walk_all_Moderate",
	[ "run" ] = "&switch:;ACT_RUN",
	[ "jump" ] = "&switch:;ACT_JUMP",
	[ "land" ] = "&switch:;ACT_LAND",
	[ "fly" ] = "&switch:;ACT_GLIDE",
	[ "sit" ] = "&switch:;ACT_BUSY_SIT_CHAIR",
	[ "sitentry" ] = "&switch:;ACT_BUSY_SIT_CHAIR_ENTRY",
	[ "sitexit" ] = "&switch:;ACT_BUSY_SIT_CHAIR_EXIT",
	[ "swim" ] = "&switch:;ACT_GLIDE",
	[ "sitground" ] = "&switch:;ACT_BUSY_SIT_GROUND",
	[ "sitgroundentry" ] = "&switch:;ACT_BUSY_SIT_GROUND_ENTRY",
	[ "sitgroundexit" ] = "&switch:;ACT_BUSY_SIT_GROUND_EXIT",
	[ "sprint" ] = "&sequence:;sprint_all",
	[ "flinch" ] = {
	["explosion"] = "&switch:;ACT_GESTURE_FLINCH_BLAST"
	},
	[ "crouch" ] = {
			[ "idle" ] = "&sequence:;crouchidlehide",
			[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
			[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
			[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	}
}
Anims.Male[ "headstrong" ] = { 
	[ "idle" ] = "&sequence:;idle_subtle",
	--[ "walk" ] = "&gesture:;ACT_WALK;G_what;1",
	[ "walk" ] = "&switch:;ACT_WALK",
	[ "run" ] = "&switch:;ACT_RUN",
	[ "jump" ] = "&switch:;ACT_JUMP",
	[ "land" ] = "&switch:;ACT_LAND",
	[ "fly" ] = "&switch:;ACT_GLIDE",
	[ "sit" ] = "&switch:;ACT_BUSY_SIT_CHAIR",
	[ "sitentry" ] = "&switch:;ACT_BUSY_SIT_CHAIR_ENTRY",
	[ "sitexit" ] = "&switch:;ACT_BUSY_SIT_CHAIR_EXIT",
	[ "swim" ] = "&switch:;ACT_GLIDE",
	[ "sitground" ] = "&switch:;ACT_BUSY_SIT_GROUND",
	[ "sitgroundentry" ] = "&switch:;ACT_BUSY_SIT_GROUND_ENTRY",
	[ "sitgroundexit" ] = "&switch:;ACT_BUSY_SIT_GROUND_EXIT",
	[ "sprint" ] = "&sequence:;sprint_all",
	[ "flinch" ] = {
		["explosion"] = "&switch:;ACT_GESTURE_FLINCH_BLAST"
	},
	[ "crouch" ] = {
			[ "idle" ] = "&switch:;ACT_COVER_LOW",
			[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
			[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
			[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	}
}
Anims.Male[ "frustrated" ] = { 
	[ "idle" ] = "&sequence:;LineIdle02",
	--[ "walk" ] = "&gesture:;ACT_WALK;G_what;1",
	[ "walk" ] = "&sequence:;pace_all",
	[ "run" ] = "&switch:;ACT_RUN",
	[ "jump" ] = "&switch:;ACT_JUMP",
	[ "land" ] = "&switch:;ACT_LAND",
	[ "fly" ] = "&switch:;ACT_GLIDE",
	[ "sit" ] = "&switch:;ACT_BUSY_SIT_CHAIR",
	[ "sitentry" ] = "&switch:;ACT_BUSY_SIT_CHAIR_ENTRY",
	[ "sitexit" ] = "&switch:;ACT_BUSY_SIT_CHAIR_EXIT",
	[ "swim" ] = "&switch:;ACT_GLIDE",
	[ "sitground" ] = "&switch:;ACT_BUSY_SIT_GROUND",
	[ "sitgroundentry" ] = "&switch:;ACT_BUSY_SIT_GROUND_ENTRY",
	[ "sitgroundexit" ] = "&switch:;ACT_BUSY_SIT_GROUND_EXIT",
	[ "sprint" ] = "&sequence:;sprint_all",
	[ "flinch" ] = {
	["explosion"] = "&switch:;ACT_GESTURE_FLINCH_BLAST"
	},
	[ "crouch" ] = {
			[ "idle" ] = "&switch:;ACT_COVER_LOW",
			[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
			[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
			[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	}
}
Anims.Male[ "pistol" ] = {
	[ "idle" ] = Anims.Male[ "default" ]["idle"],
	[ "walk" ] = Anims.Male[ "default" ]["walk"],
	[ "run" ] = Anims.Male[ "default" ]["run"],
	[ "crouch" ] = {
		[ "idle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_CROUCH",
		[ "walk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_CROUCH_PISTOL",
		[ "aimwalk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_CROUCH_PISTOL"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_PISTOL",
		[ "walk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_PISTOL",
		[ "run" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_RUN_PISTOL"
	},
	[ "fire" ] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL",
	[ "reload" ] = "ACT_HL2MP_GESTURE_RELOAD_PISTOL"
}
Anims.Male[ "ar2" ] = {
	[ "idle" ] = "&switch:;ACT_IDLE_SMG1_RELAXED",
	[ "walk" ] = "&switch:;ACT_WALK_RIFLE_RELAXED",
	[ "run" ] = "&switch:;ACT_RUN_RIFLE_RELAXED",
	[ "crouch" ] = {
		[ "idle" ] = "&switch:;ACT_COVER_LOW",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH_RIFLE",
		[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
		[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
		["fire"] = "ACT_GESTURE_RANGE_ATTACK_SMG1"
}

Anims.Male[ "smg" ] = {
	[ "idle" ] = "&switch:models/Barney.mdl;ACT_IDLE_SMG1_RELAXED",
	[ "walk" ] = "&switch:models/Barney.mdl;ACT_WALK_RIFLE_STIMULATED",
	[ "run" ] = "&switch:models/Barney.mdl;ACT_RUN_RIFLE_STIMULATED",
	[ "crouch" ] = {
		[ "idle" ] = "&switch:models/Barney.mdl;ACT_COVER_LOW",
		[ "walk" ] = "&sequence:models/Barney.mdl;Crouch_walk_holding_all",
		[ "aimidle" ] = "&sequence:models/Barney.mdl;crouch_aim_smg1",
		[ "aimwalk" ] = "&sequence:models/Barney.mdl;Crouch_walk_aiming_all"
	},
	[ "aim" ] = {
		[ "idle" ] = "&sequence:models/Barney.mdl;Idle_SMG1_Aim_Alert",
		[ "walk" ] = "&switch:models/Barney.mdl;ACT_WALK_AIM_RIFLE",
		[ "run" ] = "&switch:models/Barney.mdl;ACT_RUN_AIM_RIFLE"
	},
	[ "fire" ] = "ACT_GESTURE_RANGE_ATTACK_SMG1",
	[ "reload" ] = "ACT_GESTURE_RELOAD_SMG1"
}

Anims.Male[ "shotgun" ] = {
	[ "idle" ] = "&switch:models/Barney.mdl;ACT_IDLE_SHOTGUN_RELAXED",
	[ "walk" ] = "&switch:models/Barney.mdl;ACT_WALK_RPG_RELAXED",
	[ "run" ] = "&sequence:models/Barney.mdl;run_RPG_Relaxed_all",
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:models/Barney.mdl;Crouch_Idle_RPG",
		[ "walk" ] = "&sequence:models/Barney.mdl;Crouch_walk_holding_RPG_all",
		[ "aimidle" ] = "&sequence:models/Barney.mdl;crouch_aim_smg1",
		[ "aimwalk" ] = "&sequence:models/Barney.mdl;Crouch_walk_aiming_all"
	},
	[ "aim" ] = {
		[ "idle" ] = "&sequence:models/Barney.mdl;Idle_RPG_Aim",
		[ "walk" ] = "&sequence:models/Barney.mdl;walkAlertAimALL1",
		[ "run" ] = "&sequence:models/Barney.mdl;run_aiming_ar2_all"
	},
	["fire"] = "ACT_GESTURE_RANGE_ATTACK_SHOTGUN"
}

Anims.Male[ "crossbow" ] = {
	[ "idle" ] = "&switch:models/Barney.mdl;ACT_IDLE_SHOTGUN_RELAXED",
	[ "walk" ] = "&switch:models/Barney.mdl;ACT_WALK_RPG_RELAXED",
	[ "run" ] = "&sequence:models/Barney.mdl;run_RPG_Relaxed_all",
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:models/Barney.mdl;Crouch_Idle_RPG",
		[ "walk" ] = "&sequence:models/Barney.mdl;Crouch_walk_holding_RPG_all",
		[ "aimidle" ] = "&sequence:models/Barney.mdl;crouch_aim_smg1",
		[ "aimwalk" ] = "&sequence:models/Barney.mdl;Crouch_walk_aiming_all"
	},
	[ "aim" ] = {
		[ "idle" ] = "&sequence:models/Barney.mdl;Idle_RPG_Aim",
		[ "walk" ] = "&sequence:models/Barney.mdl;walkAlertAim_AR2_ALL1",
		[ "run" ] = "&sequence:models/Barney.mdl;run_aiming_ar2_all"
	},
	["fire"] = "ACT_GESTURE_RANGE_ATTACK_AR2"
}

Anims.Male[ "rpg" ] = {
	[ "idle" ] = "&switch:;ACT_IDLE_RPG",
	[ "walk" ] = "&switch:;ACT_WALK_RPG_RELAXED",
	[ "run" ] = "&switch:;ACT_RUN_RPG_RELAXED",
	[ "crouch" ] = {
		[ "idle" ] = "&switch:;ACT_COVER_LOW_RPG",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH_RPG",
		[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
		[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_ANGRY_RPG",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
		["fire"] = "ACT_GESTURE_RANGE_ATTACK_SMG1"
}

Anims.Male[ "melee" ] = {
	[ "idle" ] = Anims.Male[ "default" ]["idle"],
	[ "walk" ] = Anims.Male[ "default" ]["walk"],
	[ "run" ] = Anims.Male[ "default" ]["run"],
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:;crouchidlehide",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_CROUCH_MELEE",
		[ "aimwalk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_CROUCH_MELEE",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_MELEE",
		[ "walk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_MELEE",
		[ "run" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_RUN_MELEE",
	},
		["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE"
}

Anims.Male[ "melee2" ] = {
	[ "idle" ] = Anims.Male[ "default" ]["idle"],
	[ "walk" ] = Anims.Male[ "default" ]["walk"],
	[ "run" ] = Anims.Male[ "default" ]["run"],
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:;crouchidlehide",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_CROUCH_MELEE2",
		[ "aimwalk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_CROUCH_MELEE2",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_MELEE2",
		[ "walk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_MELEE2",
		[ "run" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_RUN_MELEE2",
	},
	["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2"
}

Anims.Male[ "knife" ] = {
	[ "idle" ] = Anims.Male[ "default" ]["idle"],
	[ "walk" ] = Anims.Male[ "default" ]["walk"],
	[ "run" ] = Anims.Male[ "default" ]["run"],
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:;crouchidlehide",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_CROUCH_KNIFE",
		[ "aimwalk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_CROUCH_KNIFE",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_KNIFE",
		[ "walk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_KNIFE",
		[ "run" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_RUN_KNIFE",
	},
	["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE"
}

Anims.Male[ "fist" ] = {
	[ "idle" ] = Anims.Male[ "default" ]["idle"],
	[ "walk" ] = Anims.Male[ "default" ]["walk"],
	[ "run" ] = Anims.Male[ "default" ]["run"],
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:;crouchidlehide",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_CROUCH_FIST",
		[ "aimwalk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_CROUCH_FIST",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_FIST",
		[ "walk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_FIST",
		[ "run" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_RUN_FIST",
	},
	["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST"
}

Anims.Male[ "grenade" ] = {
	[ "idle" ] = Anims.Male[ "default" ]["idle"],
	[ "walk" ] = Anims.Male[ "default" ]["walk"],
	[ "run" ] = Anims.Male[ "default" ]["run"],
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:;crouchidlehide",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_CROUCH_GRENADE",
		[ "aimwalk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_CROUCH_GRENADE",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_IDLE_GRENADE",
		[ "walk" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_WALK_GRENADE",
		[ "run" ] = "&switch:models/player/breen.mdl;ACT_HL2MP_RUN_GRENADE",
	},
	["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE"
}

Anims.Male[ "slam" ] = {
	[ "idle" ] = Anims.Male[ "default" ]["idle"],
	[ "walk" ] = Anims.Male[ "default" ]["walk"],
	[ "run" ] = Anims.Male[ "default" ]["run"],
	[ "crouch" ] = {
	[ "idle" ] = "&switch:;ACT_COVER_LOW",
	[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
	[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
	[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_RPG"
	},
	[ "aim" ] = {
	[ "idle" ] = "&switch:;ACT_IDLE_PACKAGE",
	[ "walk" ] = "&switch:;ACT_WALK_PACKAGE",
	[ "run" ] = "&switch:;ACT_RUN"
	},
		["fire"] = "&switch:;ACT_PICKUP_RACK"
}


--FEMALE ANIMATIONS

 
Anims.Female = {}
if CAKE.ConVars[ "UseEnhancedCitizens" ] then
	Anims.Female[ "models" ] = {
		"models/bloo_ltcom/citizens/female_01.mdl",
		"models/alyx.mdl",
		"models/player/alyx.mdl"
	}
else
	Anims.Female[ "models" ] = {
		"models/alyx.mdl",
		"models/player/alyx.mdl"
	}
end
Anims.Female.Emotes = {
	["wave"] = {
		["anim"] = "&sequence:models/alyx.mdl;Wave",
		["name"] = "Wave",
		["length"] = 4
	},
	["bringit"] = {
		["anim"] = "&sequence:models/alyx.mdl;Wave_close",
		["name"] = "Bring It",
		["length"] = 2.4
	},
	["disgust"] = {
		["anim"] = "&sequence:models/alyx.mdl;photo_react_blind",
		["name"] = "Show Disgust",
		["length"] = 3.4
	},
	["startle"] = {
		["anim"] = "&sequence:models/alyx.mdl;photo_react_startle",
		["name"] = "Startle",
		["length"] = 2
	},
	["throw"] = {
		["anim"] = "&sequence:models/alyx.mdl;throw1",
		["name"] = "Throw",
		["length"] = 2
	},
}
Anims.Female[ "default" ] = {
	[ "idle" ] = "&sequence:;ACT_IDLE",
	[ "walk" ] = "&switch:;ACT_WALK",
	[ "run" ] = "&switch:;ACT_RUN",
	[ "jump" ] = "&switch:;ACT_JUMP",
	[ "land" ] = "&switch:;ACT_LAND",
	[ "fly" ] = "&switch:;ACT_GLIDE",
	[ "sit" ] = "&switch:models/player/alyx.mdl;ACT_MP_SWIM",
	[ "sitentry" ] = "&switch:;ACT_BUSY_SIT_CHAIR_ENTRY",
	[ "sitexit" ] = "&switch:;ACT_BUSY_SIT_CHAIR_EXIT",
	[ "swim" ] = "&switch:;ACT_GLIDE",
	[ "sitground" ] = "&switch:;ACT_BUSY_SIT_GROUND",
	[ "sitgroundentry" ] = "&switch:;ACT_BUSY_SIT_GROUND_ENTRY",
	[ "sitgroundexit" ] = "&switch:;ACT_BUSY_SIT_GROUND_EXIT",
	[ "sprint" ] = "&switch:;ACT_RUN",
	[ "flinch" ] = {
		["explosion"] = "&switch:;ACT_GESTURE_FLINCH_BLAST"
	},
	[ "crouch" ] = {
		[ "idle" ] = "&switch:;ACT_COVER_LOW",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
		[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
	[ "fire" ] = "&sequence:;MeleeAttack01"
}
Anims.Female[ "relaxed" ] = { 
	[ "idle" ] = "&sequence:;LineIdle02",
	--[ "walk" ] = "&gesture:;ACT_WALK;G_what;1",
	[ "walk" ] = "&sequence:;walk_all_Moderate",
	[ "run" ] = "&switch:;ACT_RUN",
	[ "jump" ] = "&switch:;ACT_JUMP",
	[ "land" ] = "&switch:;ACT_LAND",
	[ "fly" ] = "&switch:;ACT_GLIDE",
	[ "sit" ] = "&switch:models/player/alyx.mdl;ACT_MP_SWIM",
	[ "sitentry" ] = "&switch:;ACT_BUSY_SIT_CHAIR_ENTRY",
	[ "sitexit" ] = "&switch:;ACT_BUSY_SIT_CHAIR_EXIT",
	[ "swim" ] = "&switch:;ACT_GLIDE",
	[ "sitground" ] = "&sequence:;canals_mary_postidle",
	[ "sitgroundentry" ] = "&switch:;ACT_BUSY_SIT_GROUND_ENTRY",
	[ "sitgroundexit" ] = "&switch:;ACT_BUSY_SIT_GROUND_EXIT",
	[ "sprint" ] = "&switch:;ACT_RUN",
	[ "flinch" ] = {
		["explosion"] = "&switch:;ACT_GESTURE_FLINCH_BLAST"
	},
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:;roofidle2",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
		[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
	[ "fire" ] = "&sequence:;MeleeAttack01"
}
Anims.Female[ "headstrong" ] = {
	[ "idle" ] = "&sequence:;Idle_subtle",
	[ "walk" ] = "&sequence:;walk_all",
	[ "run" ] = "&sequence:;run_all",
	[ "jump" ] = "&switch:;ACT_JUMP",
	[ "land" ] = "&switch:;ACT_LAND",
	[ "fly" ] = "&switch:;ACT_GLIDE",
	[ "sit" ] = "&switch:models/player/alyx.mdl;ACT_MP_SWIM",
	[ "sitentry" ] = "&switch:;ACT_BUSY_SIT_CHAIR_ENTRY",
	[ "sitexit" ] = "&switch:;ACT_BUSY_SIT_CHAIR_EXIT",
	[ "swim" ] = "&switch:;ACT_GLIDE",
	[ "sitground" ] = "&switch:;ACT_BUSY_SIT_GROUND",
	[ "sitgroundentry" ] = "&switch:;ACT_BUSY_SIT_GROUND_ENTRY",
	[ "sitgroundexit" ] = "&switch:;ACT_BUSY_SIT_GROUND_EXIT",
	[ "sprint" ] = "&switch:;ACT_RUN",
	[ "flinch" ] = {
		["explosion"] = "&switch:;ACT_GESTURE_FLINCH_BLAST"
	},
	[ "crouch" ] = {
		[ "idle" ] = "&switch:;ACT_COVER_LOW",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
		[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
	[ "fire" ] = "&sequence:;MeleeAttack01"
}
Anims.Female[ "frustrated" ] = { 
	[ "idle" ] = "&sequence:;LineIdle01",
	--[ "walk" ] = "&gesture:;ACT_WALK;G_what;1",
	[ "walk" ] = "&sequence:;walk_all_Moderate",
	[ "run" ] = "&switch:;ACT_RUN",
	[ "jump" ] = "&switch:;ACT_JUMP",
	[ "land" ] = "&switch:;ACT_LAND",
	[ "fly" ] = "&switch:;ACT_GLIDE",
	[ "sit" ] = "&switch:models/player/alyx.mdl;ACT_MP_SWIM",
	[ "sitentry" ] = "&switch:;ACT_BUSY_SIT_CHAIR_ENTRY",
	[ "sitexit" ] = "&switch:;ACT_BUSY_SIT_CHAIR_EXIT",
	[ "swim" ] = "&switch:;ACT_GLIDE",
	[ "sitground" ] = "&sequence:;canals_mary_postidle",
	[ "sitgroundentry" ] = "&switch:;ACT_BUSY_SIT_GROUND_ENTRY",
	[ "sitgroundexit" ] = "&switch:;ACT_BUSY_SIT_GROUND_EXIT",
	[ "sprint" ] = "&switch:;ACT_RUN",
	[ "flinch" ] = {
		["explosion"] = "&switch:;ACT_GESTURE_FLINCH_BLAST"
	},
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:;roofidle2",
		[ "walk" ] = "&switch:;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:;ACT_RANGE_AIM_SMG1_LOW",
		[ "aimwalk" ] = "&switch:;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:;ACT_IDLE_AIM_RIFLE_STIMULATED",
		[ "walk" ] = "&switch:;ACT_WALK_AIM_RIFLE_STIMULATED",
		[ "run" ] = "&switch:;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
	[ "fire" ] = "&sequence:;MeleeAttack01"
}
Anims.Female[ "pistol" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_PISTOL",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN",
	[ "crouch" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_COVER_LOW",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH",
	[ "aimidle" ] = "&switch:models/alyx.mdl;ACT_RANGE_AIM_SMG1_LOW",
	[ "aimwalk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_ANGRY_PISTOL",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_AIM_PISTOL",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_AIM_PISTOL"
	},
[ "fire" ] = "ACT_GESTURE_RANGE_ATTACK_PISTOL",
}
Anims.Female[ "ar2" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_SMG1_RELAXED",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_RIFLE_RELAXED",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_RIFLE_RELAXED",
	[ "crouch" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_COVER_LOW",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_RIFLE",
	[ "aimidle" ] = "&switch:models/alyx.mdl;ACT_RANGE_AIM_SMG1_LOW",
	[ "aimwalk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_AIM_RIFLE_STIMULATED",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_AIM_RIFLE_STIMULATED",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
["fire"] = "ACT_GESTURE_RANGE_ATTACK_SMG1"
}

Anims.Female[ "smg" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_SMG1",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_RIFLE",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_RIFLE",
	[ "crouch" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_COVER_LOW",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_RIFLE",
	[ "aimidle" ] = "&switch:models/alyx.mdl;ACT_RANGE_AIM_SMG1_LOW",
	[ "aimwalk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_ANGRY_SMG1",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_AIM_RIFLE",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_AIM_RIFLE"
	},
[ "fire" ] = "ACT_GESTURE_RANGE_ATTACK_SMG1",
}

Anims.Female[ "shotgun" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_SHOTGUN_STIMULATED",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_RIFLE_RELAXED",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_RIFLE_RELAXED",
	[ "crouch" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_COVER_LOW",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_RIFLE",
	[ "aimidle" ] = "&switch:models/alyx.mdl;ACT_RANGE_AIM_SMG1_LOW",
	[ "aimwalk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_RIFLE"
	},
	[ "aim" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_ANGRY_RPG",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_AIM_RIFLE",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_AIM_RIFLE"
	},
["fire"] = "ACT_GESTURE_RANGE_ATTACK_SHOTGUN"
}

Anims.Female[ "crossbow" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_SMG1_RELAXED",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_RIFLE_RELAXED",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_RIFLE_RELAXED",
	[ "crouch" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_COVER_LOW",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_RIFLE",
	[ "aimidle" ] = "&switch:models/alyx.mdl;ACT_RANGE_AIM_SMG1_LOW",
	[ "aimwalk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_AIM_RIFLE_STIMULATED",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_AIM_RIFLE_STIMULATED",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
["fire"] = "ACT_GESTURE_RANGE_ATTACK_SMG1"
}

Anims.Female[ "rpg" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_RPG",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_RPG_RELAXED",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_RPG_RELAXED",
	[ "crouch" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_COVER_LOW_RPG",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_RPG",
	[ "aimidle" ] = "&switch:models/alyx.mdl;ACT_RANGE_AIM_SMG1_LOW",
	[ "aimwalk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_AIM_RIFLE"
	},
	[ "aim" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_ANGRY_RPG",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_AIM_RIFLE_STIMULATED",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN_AIM_RIFLE_STIMULATED"
	},
["fire"] = "ACT_GESTURE_RANGE_ATTACK_SMG1"
}

Anims.Female[ "melee" ] = {
	[ "idle" ] = Anims.Female[ "default" ][ "idle" ],
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN",
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:models/alyx.mdl;crouchidlehide",
		[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_CROUCH_MELEE",
		[ "aimwalk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_CROUCH_MELEE",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_MELEE",
		[ "walk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_MELEE",
		[ "run" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_RUN_MELEE",
	},
		["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE"
}

Anims.Female[ "melee2" ] = {
	[ "idle" ] = Anims.Female[ "default" ][ "idle" ],
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN",
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:models/alyx.mdl;crouchidlehide",
		[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_CROUCH_MELEE2",
		[ "aimwalk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_CROUCH_MELEE2",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_MELEE2",
		[ "walk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_MELEE2",
		[ "run" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_RUN_MELEE2",
	},
	["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2"
}

Anims.Female[ "knife" ] = {
	[ "idle" ] = Anims.Female[ "default" ][ "idle" ],
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN",
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:models/alyx.mdl;crouchidlehide",
		[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_CROUCH_KNIFE",
		[ "aimwalk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_CROUCH_KNIFE",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_KNIFE",
		[ "walk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_KNIFE",
		[ "run" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_RUN_KNIFE",
	},
	["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE"
}

Anims.Female[ "fist" ] = {
	[ "idle" ] = Anims.Female[ "default" ][ "idle" ],
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN",
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:models/alyx.mdl;crouchidlehide",
		[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_CROUCH_FIST",
		[ "aimwalk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_CROUCH_FIST",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_FIST",
		[ "walk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_FIST",
		[ "run" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_RUN_FIST",
	},
	["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST"
}

Anims.Female[ "grenade" ] = {
	[ "idle" ] = Anims.Female[ "default" ][ "idle" ],
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN",
	[ "crouch" ] = {
		[ "idle" ] = "&sequence:models/alyx.mdl;crouchidlehide",
		[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH",
		[ "aimidle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_CROUCH_GRENADE",
		[ "aimwalk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_CROUCH_GRENADE",
	},
	[ "aim" ] = {
		[ "idle" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_IDLE_GRENADE",
		[ "walk" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_WALK_GRENADE",
		[ "run" ] = "&switch:models/player/alyx.mdl;ACT_HL2MP_RUN_GRENADE",
	},
	["fire"] = "ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE"
}

Anims.Female[ "slam" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_SUITCASE",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN",
	[ "crouch" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_COVER_LOW",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH",
	[ "aimidle" ] = "&switch:models/alyx.mdl;ACT_RANGE_AIM_SMG1_LOW",
	[ "aimwalk" ] = "&switch:models/alyx.mdl;ACT_WALK_CROUCH_RPG"
	},
	[ "aim" ] = {
	[ "idle" ] = "&switch:models/alyx.mdl;ACT_IDLE_PACKAGE",
	[ "walk" ] = "&switch:models/alyx.mdl;ACT_WALK_PACKAGE",
	[ "run" ] = "&switch:models/alyx.mdl;ACT_RUN"
	},
["fire"] = "ACT_PICKUP_RACK"
}

util.PrecacheModel("models/gibs/agibs.mdl")
for _,mdl in pairs(Anims.Male[ "models" ]) do
	util.PrecacheModel( mdl )
end

for _,mdl in pairs(Anims.Female[ "models" ]) do
	util.PrecacheModel( mdl )
end