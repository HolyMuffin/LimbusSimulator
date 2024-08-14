var run_action = true;
if (abs(global.camera_target_x - global.camera_x) > 8)
	global.camera_x = lerp(global.camera_x, global.camera_target_x, 0.1);
if (global.background != empty && sprite_get_width(global.background) == 1920)
	global.camera_x = 0;

while (global.current_action.action_complete() && array_length(global.action_queue) > 0) {
	run_action = false;
	global.current_action = array_shift(global.action_queue);
	global.current_action.action_start();
}
if (run_action) {
	global.current_action.action_run();
}