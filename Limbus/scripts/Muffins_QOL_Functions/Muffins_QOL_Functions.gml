//stuff with no additional functionality, they just make things easier to type
#macro empty_function function() {}
#macro activate instance_activate_object
#macro deactivate instance_deactivate_object

function show_debug_readable_struct(struct) {
	var var_names = struct_get_names(struct)
	for(var i = 0; i < array_length(var_names); i++) {
		var current_name = var_names[i];
		show_debug_message(current_name + ": " + string(struct[$ current_name]));
	}
}

function overwrite_struct(source_struct, target_struct) {
	var names = struct_get_names(source_struct);
	for(var i = 0; i < array_length(names); i++) {
		var name = names[i];
		target_struct[$ name] = source_struct[$ name];
	}
}

function bind_inner_functions_to_struct(source_struct, target_struct) {
	var names = struct_get_names(source_struct);
	for(var i = 0; i < array_length(names); i++) {
		var name = names[i];
		source_struct[$ name] = method(target_struct, source_struct[$ name]);
	}
}

function left_click() {
	return mouse_check_button_pressed(mb_left);
}

function right_click() {
	return mouse_check_button_pressed(mb_right);
}

function instance_nearest_notself(x_, y_, obj_) {
	var prev_y = y;
	y -= 100000;
	var inst = instance_nearest(x_, prev_y, obj_);
	y += 100000;
	if (inst == id)
		return noone;
	return inst;
}
//more convenient way to access anim curve values
function anim_curve(name, percent, curve) {
	return animcurve_channel_evaluate(animcurve_get_channel(curve, name), percent);
}
//point distance from the caller to target
function distance_to_target(target) {
	return point_distance(x, y, target.x, target.y);
}
//point direction from the caller to target
function direction_to_target(target) {
	return point_direction(x, y, target.x, target.y);
}
//sign from caller to target x value. 0 defaults to 1
function sign_to_target(target_x, source_x = x) {
	var xscale = sign(target_x - source_x);
	if (xscale == 0)
		return 1;
	return xscale;
}
//instance nearest but returns noone if nearest is too far away
function instance_nearest_within_distance(x_, y_, obj_, max_dist) {
	var inst = instance_nearest(x_, y_, obj_);
	if (inst == noone || max_dist < point_distance(x_, y_, inst.x, inst.y))
		return noone;
	return inst;
}
//point_in_rectangle but for mouse_x and mouse_y
function mouse_in_rectangle(x1, y1, x2, y2, device_number = 0) {
	var mouse_x_ = device_mouse_x(device_number);
	var mouse_y_ = device_mouse_y(device_number);
	return point_in_rectangle(mouse_x_, mouse_y_, x1, y1, x2, y2);
}
//check if mouse is colliding with specified object
function collision_with_mouse(obj_, prec_ = false, device_number = 0) {
	var mouse_x_ = device_mouse_x(device_number);
	var mouse_y_ = device_mouse_y(device_number);
	return collision_point(mouse_x_, mouse_y_, obj_, prec_, false);
}
//
function left_click_on_object(obj, prec_ = false) {
	return left_click() && collision_with_mouse(obj, prec_);
}

//point_in_rectangle but for mouse gui values
function mouse_gui_in_rectangle(x1, y1, x2, y2, device_number = 0) {
	var mouse_x_ = device_mouse_x_to_gui(device_number);
	var mouse_y_ = device_mouse_y_to_gui(device_number);
	return point_in_rectangle(mouse_x_, mouse_y_, x1, y1, x2, y2);
}

function draw_set_stats(color, h_align, v_align = fa_top, alpha = 1, font = draw_get_font()) {
	draw_set_color(color);
	draw_set_halign(h_align);
	draw_set_valign(v_align);
	draw_set_alpha(alpha);
	draw_set_font(font);
}