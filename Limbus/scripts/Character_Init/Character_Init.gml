function Character(name_, title_, color_, picture_) constructor {
	name = name_;
	title = title_;
	color = color_;
	picture = picture_;
}

function Speaker(x_, character_) constructor {
	x = x_;
	y = 1350;
	character = character_;
}

function Characters_Init() {
	global.Speakers = [];
	global.Characters = {};

	with(global.Characters) {
		Dante = new Character("Dante", "Manager", make_color_rgb(150, 30, 50), SpriteDante);
		Sinclair = new Character("Sinclair", "Sinner #11", make_color_rgb(0, 0, 0), SpriteSinclair);
		Gregor = new Character("Gregor", "Sinner #13", make_color_rgb(0, 0, 0), SpriteGregor);
		Ryoshu = new Character("Ryoshu", "Sinner #4", make_color_rgb(0, 0, 0), SpriteRyoshu);
		Schneewittchen = new Character("Schneewittchen", "Sinner #?", make_color_rgb(160, 215, 205), SpriteSchneewittchen); 
	}
}