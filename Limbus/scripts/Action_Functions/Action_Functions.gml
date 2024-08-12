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

function Dialogue_Init_Action(location_, background_) : Action() constructor {
	location = location_;
	background = background_;
	function action_start() {
		global.location = location;
		global.background = background;
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
		if (run_counter % 2 == 0)
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

function Set_Primary_Speaker_Action(character_) : Action() constructor {
	character = character_;
	function action_start() {
		var speaker = global.Speakers[get_speaker_index(character)];
		global.speaker = speaker;
		global.camera_target_x = 960 - speaker.x;
	}
}

#macro SPAWN new Spawn_Character_Action
#macro SPEAKER new Set_Primary_Speaker_Action
#macro TEXT new New_Text_Action
#macro SCHNEE global.Characters.Schneewittchen
#macro DANTE global.Characters.Dante

//function Delete_Character_Action()
Characters_Init();

global.test = [
	new Dialogue_Init_Action("Aboard Metistopheles", SpriteBG_Bus),
	SPAWN(960, SCHNEE),
	//SPEAKER(SCHNEE),
	TEXT("Schneewittchen sat by the window, a lit cigarette dangling from her lips. She seemed to be looking past the night sky."),
	
	SPAWN(1500, DANTE),
	SPEAKER(DANTE),
	TEXT("<I thought you didn't smoke>"),
	
	SPEAKER(SCHNEE),
	TEXT("Well, I try not to. It's bad for your health."),
	TEXT("I wish Gregor and Ryoshu would take better care of themselves. This kind of lifestyle makes your body break down after a while, you know?"),
	TEXT("It's not like we can talk them out of it, either. You can't force an old habit to die. Is it essentially the same thing as letting them die a slow death?"),
	
	SPEAKER(DANTE),
	TEXT("<...>"),
	
	SPEAKER(SCHNEE),
	TEXT("I hope you take care of yourself too, Manager Dante."),
	
	SPEAKER(DANTE),
	TEXT("<So that situation... it was all a lie as well. Why? Why did you pretend you'd never smoked before?>"),
	
	SPEAKER(SCHNEE),
	TEXT("It was endearing enough to make you pity me, wasn't it?"),
]