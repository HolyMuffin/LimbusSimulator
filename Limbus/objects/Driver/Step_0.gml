var run_action = true;
global.camera_x = lerp(global.camera_x, global.camera_target_x, 0.08);

while (global.current_action.action_complete() && array_length(global.action_queue) > 0) {
	run_action = false;
	global.current_action = array_shift(global.action_queue);
	global.current_action.action_start();
}
if (run_action) {
	global.current_action.action_run();
}