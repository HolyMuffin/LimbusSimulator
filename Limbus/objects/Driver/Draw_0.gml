if (global.shader_on)
	shader_set(TCorpShader);

//draw background
if (global.background != empty)
	draw_sprite(global.background, 0, 960 + global.camera_x * 0.7, 0);
//draw characters
for(var i = 0; i < array_length(global.Speakers); i++) {
	with(global.Speakers[i]) {
		var blend = c_grey;
		if (global.speaker == self)
			blend = c_white;
		draw_sprite_ext(character.picture, 0, x + global.camera_x, y, 0.75, 0.75, 0, blend, 1);
	}
}
shader_reset();

//draw vignette
draw_sprite(SpriteUIVignette, 0, 0, 0);
//draw textbox
draw_sprite(SpriteUITextbox, 0, 0, 0);

draw_set_stats(make_color_rgb(245, 210, 175), fa_left,,,FontLiberation);
if (global.speaker == empty) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext(960, 940, get_current_text(), 36, 1200);
	draw_set_valign(fa_top);
} else {
	draw_text_ext(440, 905, get_current_text(), 36, 1200);
}

if (global.speaker != empty) {
	//draw name and title
	draw_sprite(SpriteUINameHolder, 0, 0, 0);
	draw_sprite(SpriteUINameBox, 0, 0, 0);
	//title
	draw_set_stats(make_color_rgb(150, 100, 50), fa_center,,,FontMikodacs16);
	draw_text_transformed(188, 815, global.speaker.character.title, 1, 1, 7);
	draw_sprite_ext(SpriteUINameColor, 0, 0, 0, 1, 1, 0, global.speaker.character.color, 1);

	//name shadow
	draw_set_stats(c_black, fa_center,,,FontMikodacs24);
	draw_text_transformed(247, 867, global.speaker.character.name, 1, 1, 7);
	//name
	draw_set_color(make_color_rgb(250, 220, 185));
	draw_text_transformed(245, 865, global.speaker.character.name, 1, 1, 7);
}

if (global.location != empty) {
	//draw location
	draw_sprite(SpriteUILocationBox, 0, 0, 0);
	//location shadow
	draw_set_stats(c_black, fa_center,,,FontMikodacs24);
	draw_text_transformed(197, 62, global.location, 1, 1, 5);
	//location
	draw_set_color(make_color_rgb(255, 220, 185));
	draw_text_transformed(195, 60, global.location, 1, 1, 5);
}

//draw fake button
draw_sprite(SpriteUIMenuButton, 0, 0, 0);
