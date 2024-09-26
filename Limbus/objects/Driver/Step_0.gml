

var run_action = true;
if (abs(global.camera_target_x - global.camera_x) > 8)
	global.camera_x = lerp(global.camera_x, global.camera_target_x, 0.1);
if (global.background != empty) {
	var background_is_cg = string_pos("SpriteCG", sprite_get_name(global.background));
	if (sprite_get_width(global.background) == 1920 || background_is_cg)
	global.camera_x = 0;
}

while (global.current_action.action_complete() && array_length(global.action_queue) > 0) {
	run_action = false;
	global.current_action = array_shift(global.action_queue);
	global.current_action.action_start();
}
if (run_action) {
	global.current_action.action_run();
}

if (mouse_check_button_pressed(mb_right))
	global.background_offset_target = [960 - mouse_x, 540 - mouse_y];
for(var i = 0; i < array_length(global.background_offset); i++) {
	global.background_offset[i] = lerp(global.background_offset[i], global.background_offset_target[i], 0.15);
}
global.background_zoom = lerp(global.background_zoom, global.background_zoom_target, 0.1);