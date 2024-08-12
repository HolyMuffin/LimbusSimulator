enum EMOTION {
	
}

global.action_queue = global.test;
global.current_action = new Action();

global.speaker = empty;
global.location = empty;
global.background = empty;
global.camera_x = 0;
global.camera_target_x = 0;

function set_text(text) {
	global.text = text;
	global.text_length_max = string_length(global.text);
	global.text_length_current = 0;
}

function get_current_text() {
	return string_copy(global.text, 1, global.text_length_current);
}

set_text("<... What the hell happened?>");