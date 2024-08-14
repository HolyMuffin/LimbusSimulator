function Action() constructor {
	function action_start() {};
	function action_run() {};
	function action_complete() {return true;};
}

function get_speaker_index(character) {
	for(var i = 0; i < array_length(global.Speakers); i++) {
		var current = global.Speakers[i];
		if (current.character == character)
			return i;
	}
	return empty;
}

function Set_Location_Action(location_) : Action() constructor {
	location = location_;
	function action_start() {
		global.location = location;
	}
}

function Set_Background_Action(background_) : Action() constructor {
	background = background_;
	function action_start() {
		global.background = background;
	}
}

function Play_Sound_Action(sound_) : Action() constructor {
	sound = sound_;
	function action_start() {
		if (global.sound_effect != empty)
			audio_stop_sound(global.sound_effect);
		global.sound_effect = audio_play_sound(sound, 0, false);
	}
}

function Set_BGM_Action(bgm_) : Action() constructor {
	bgm = bgm_;
	function action_start() {
		if (global.bgm != empty)
			audio_stop_sound(global.bgm);
		global.bgm = audio_play_sound(bgm, 0, true);
	}
}

function New_Text_Action(text_) : Action() constructor {
	run_counter = 0;
	complete_counter = 0;
	text = text_;
	function action_start() {
		Driver.set_text(text);
	}
	function action_run() {
		run_counter++;
		if (run_counter % 4 == 0)
			global.text_length_current = min(global.text_length_max, global.text_length_current + 1);
		if (mouse_check_button_pressed(mb_left))
			global.text_length_current = global.text_length_max;
	}
	function action_complete() {
		if (global.text_length_current == global.text_length_max) {
			complete_counter++;
			return mouse_check_button_pressed(mb_left) && complete_counter >= 10;
		}
	}
}

function Spawn_Character_Action(x_, character_) : Action() constructor {
	x = x_;
	character = character_;
	function action_start() {
		array_push(global.Speakers, new Speaker(x, character));
	}
}

function Delete_Character_Action(character_) : Action() constructor {
	character = character_;
	function action_start() {
		var index = get_speaker_index(character);
		array_delete(global.Speakers, index, 1);
	}
}

function Clear_All_Character_Action() : Action() constructor {
	function action_start() {
		global.Speakers = [];
	}
}

function Set_Primary_Speaker_Action(character_) : Action() constructor {
	character = character_;
	function action_start() {
		if (character == empty) {
			global.speaker = empty;
		} else {
			var speaker = global.Speakers[get_speaker_index(character)];
			global.speaker = speaker;
			global.camera_target_x = 960 - speaker.x;
		}
	}
}

#macro SPAWN new Spawn_Character_Action
#macro DESPAWN new Delete_Character_Action
#macro DESPAWN_ALL new Clear_All_Character_Action
#macro LOCATION new Set_Location_Action
#macro BACKGROUND new Set_Background_Action
#macro MUSIC new Set_BGM_Action
#macro SPEAKER new Set_Primary_Speaker_Action
#macro TEXT new New_Text_Action
#macro SOUND new Play_Sound_Action

//function Delete_Character_Action()
Characters_Init();

global.rollcall = [
	LOCATION("Aboard Metistopheles"),
	BACKGROUND(SpriteBG_BusBrown),
	MUSIC(PortInShadow),
	SPAWN(200, DANTE),
	
	SPEAKER(DANTE),
	SOUND(SoundDanteNormal),
	TEXT("<Time for a roll call.>"),
	SOUND(SoundDanteShort),
	TEXT("<Yi Sang?>"),
	
	SPAWN(600, YISANG),
	SPEAKER(YISANG),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	SOUND(SoundDanteShort),
	TEXT("<Faust?>"),
	
	SPAWN(700, FAUST),
	SPEAKER(FAUST),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	SOUND(SoundDanteShort),
	TEXT("<Don Quixote?>"),
	
	SPAWN(800, DONQUIXOTE),
	SPEAKER(DONQUIXOTE),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Ryōshū?>"),
	
	SPAWN(900, RYOSHU),
	SPEAKER(RYOSHU),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Meursault?>"),
	
	SPAWN(1000, MEURSAULT),
	SPEAKER(MEURSAULT),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Hong Lu?>"),
	
	SPAWN(1100, HONGLU),
	SPEAKER(HONGLU),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Heathcliff?>"),
	
	SPAWN(1200, HEATHCLIFF),
	SPEAKER(HEATHCLIFF),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Ishmael?>"),
	
	SPAWN(1300, ISHMAEL),
	SPEAKER(ISHMAEL),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Rodion?>"),
	
	SPAWN(1400, RODION),
	SPEAKER(RODION),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Sinclair?>"),
	
	SPAWN(1500, SINCLAIR),
	SPEAKER(SINCLAIR),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Outis?>"),
	
	SPAWN(1600, OUTIS),
	SPEAKER(OUTIS),
	TEXT("Hello."),
	
	SPEAKER(DANTE),
	TEXT("<Gregor?>"),
	
	SPAWN(1700, GREGOR),
	SPEAKER(GREGOR),
	TEXT("Hello."),
]