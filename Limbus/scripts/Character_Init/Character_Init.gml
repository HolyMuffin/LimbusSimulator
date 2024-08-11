function Character(name_, title_, color_, picture_) constructor {
	name = name_;
	title = title_;
	color = color_;
	picture = picture_;
}

global.Characters = {}

with(global.Characters) {
	Dante = new Character("Dante", "Manager", make_color_rgb(150, 30, 50), SpriteDante);
	Sinclair = new Character("Sinclair", "Sinner #", make_color_rgb(0, 0, 0), SpriteSinclair);
	Gregor = new Character("Gregor", "Sinner #", make_color_rgb(0, 0, 0), SpriteGregor);
	Ryoshu = new Character("Ryoshu", "Sinner #", make_color_rgb(0, 0, 0), SpriteRyoshu);
}