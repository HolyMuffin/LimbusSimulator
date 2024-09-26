
global.offset_x += keyboard_check(vk_right) - keyboard_check(vk_left) + 0.25*(keyboard_check_pressed(ord("L")) - keyboard_check_pressed(ord("J")));
global.offset_y += keyboard_check(vk_down) - keyboard_check(vk_up) + 0.25*(keyboard_check_pressed(ord("K")) - keyboard_check_pressed(ord("I")));

draw_text(100, 100, "x offset: " + string(global.offset_x));
draw_text(100, 200, "y offset: " + string(global.offset_y));