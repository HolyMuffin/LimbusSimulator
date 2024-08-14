enum EMOTION {
	
}
global.shader_on = true;

global.action_queue = global.rollcall;
global.current_action = new Action();

global.speaker = empty;
global.bgm = empty;
global.sound_effect = empty;
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

surface_resize(application_surface, room_width*4, room_height*4);