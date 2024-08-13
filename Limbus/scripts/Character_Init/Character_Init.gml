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

#macro DANTE global.Characters.Dante
#macro YISANG global.Characters.Yisang
#macro FAUST global.Characters.Faust
#macro DONQUIXOTE global.Characters.DonQuixote
#macro RYOSHU global.Characters.Ryoshu
#macro MEURSAULT global.Characters.Meursault
#macro HONGLU global.Characters.Honglu
#macro HEATHCLIFF global.Characters.Heathcliff
#macro ISHMAEL global.Characters.Ishmael
#macro RODION global.Characters.Rodion
#macro SINCLAIR global.Characters.Sinclair
#macro OUTIS global.Characters.Outis
#macro GREGOR global.Characters.Gregor
#macro SCHNEE global.Characters.Schneewittchen
function Characters_Init() {
	global.Speakers = [];
	global.Characters = {};

	with(global.Characters) {
		Dante = new Character("Dante", "Manager", make_color_rgb(150, 30, 50), SpriteDante);
		
		Yisang = new Character("Yi Sang", "Sinner #1", make_color_rgb(210, 225, 230), SpriteYisang);
		Faust = new Character("Faust", "Sinner #2", make_color_rgb(255, 170, 165), SpriteFaust);
		DonQuixote = new Character("Don Quixote", "Sinner #3", make_color_rgb(255, 230, 30), SpriteDonQuixote);
		Ryoshu = new Character("Ryoshu", "Sinner #4", make_color_rgb(175, 0, 0), SpriteRyoshu);
		Meursault = new Character("Meursault", "Sinner #5", make_color_rgb(20, 40, 110), SpriteMeursault);
		Honglu = new Character("Hong Lu", "Sinner #6", make_color_rgb(80, 255, 215), SpriteHonglu);
		Heathcliff = new Character("Heathcliff", "Sinner #7", make_color_rgb(75, 40, 95), SpriteHeathcliff);
		Ishmael = new Character("Ishmael", "Sinner #8", make_color_rgb(255, 140, 0), SpriteIshmael);
		Rodion = new Character("Rodion", "Sinner #9", make_color_rgb(125, 0, 0), SpriteRodion);
		Sinclair = new Character("Sinclair", "Sinner #11", make_color_rgb(130, 150, 20), SpriteSinclair);
		Outis = new Character("Outis", "Sinner #12", make_color_rgb(50, 80, 50), SpriteOutis);
		Gregor = new Character("Gregor", "Sinner #13", make_color_rgb(100, 50, 10), SpriteGregor);
		Schneewittchen = new Character("Schneewittchen", "Sinner #?", make_color_rgb(160, 215, 205), SpriteSchneewittchen); 
	}
}