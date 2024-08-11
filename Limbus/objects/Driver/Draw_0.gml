//draw background
draw_sprite(SpriteBG_Bus, 0, 960 + global.camera_x * 0.7, 0);
//draw characters
draw_sprite_ext(SpriteRyoshu, 0, 300 + global.camera_x, 1350, 0.75, 0.75, 0, c_grey, 1);
draw_sprite_ext(SpriteSinclair, 0, 1300 + global.camera_x, 1350, 0.75, 0.75, 0, c_grey, 1);
draw_sprite_ext(SpriteGregor, 0, 1700 + global.camera_x, 1350, 0.75, 0.75, 0, c_grey, 1);
draw_sprite_ext(global.speaker.picture, 0, 960 + global.camera_x, 1350, 0.75, 0.75, 0, c_white, 1);

//draw vignette
draw_sprite(SpriteUIVignette, 0, 0, 0);
//draw textbox
draw_sprite(SpriteUITextbox, 0, 0, 0);
draw_set_stats(make_color_rgb(245, 210, 175), fa_left,,,FontLiberation);
var text = "<... What the hell happened?>";
draw_text_ext(440, 905, text, 36, 1200);


//draw name and title
draw_sprite(SpriteUINameHolder, 0, 0, 0);
draw_sprite(SpriteUINameBox, 0, 0, 0);
//title
draw_set_stats(make_color_rgb(150, 100, 50), fa_center,,,FontMikodacs16);
draw_text_transformed(188, 815, global.speaker.title, 1, 1, 7);
draw_sprite_ext(SpriteUINameColor, 0, 0, 0, 1, 1, 0, global.speaker.color, 1);

//name shadow
draw_set_stats(c_black, fa_center,,,FontMikodacs24);
draw_text_transformed(247, 867, global.speaker.name, 1, 1, 7);
//name
draw_set_color(make_color_rgb(250, 220, 185));
draw_text_transformed(245, 865, global.speaker.name, 1, 1, 7);


//draw location
draw_sprite(SpriteUILocationBox, 0, 0, 0);
//location shadow
draw_set_stats(c_black, fa_center,,,FontMikodacs24);
draw_text_transformed(197, 62, global.location, 1, 1, 5);
//location
draw_set_color(make_color_rgb(255, 220, 185));
draw_text_transformed(195, 60, global.location, 1, 1, 5);
//draw fake button
draw_sprite(SpriteUIMenuButton, 0, 0, 0);
