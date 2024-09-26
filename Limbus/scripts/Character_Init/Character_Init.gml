function Character(name_, title_, color_, picture_, head_coords_ = [0, -800]) constructor {
	name = name_;
	title = title_;
	color = color_;
	picture = picture_;
	picture_head = empty;
	head_coords = head_coords_;
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
		
		Yisang = new Character("Yi Sang", "Sinner #1", make_color_rgb(210, 225, 230), SpriteYisang, [-6, -915]);
		Faust = new Character("Faust", "Sinner #2", make_color_rgb(255, 170, 165), SpriteFaust, [-18.75, -889.5]);
		DonQuixote = new Character("Don Quixote", "Sinner #3", make_color_rgb(255, 230, 30), SpriteHead_DonQuixote, [-19.5, -804]);
		Ryoshu = new Character("Ryōshū", "Sinner #4", make_color_rgb(175, 0, 0), SpriteRyoshu, [28, -890]);
		Meursault = new Character("Meursault", "Sinner #5", make_color_rgb(20, 40, 110), SpriteMeursault, [0.75, -992.25]);
		Honglu = new Character("Hong Lu", "Sinner #6", make_color_rgb(80, 255, 215), SpriteHonglu, [11.25, -992.25]);
		Heathcliff = new Character("Heathcliff", "Sinner #7", make_color_rgb(75, 40, 95), SpriteHeathcliff, [-26.25, -951.75]);
		Ishmael = new Character("Ishmael", "Sinner #8", make_color_rgb(255, 140, 0), SpriteIshmael, [0, -865.5]);
		Rodion = new Character("Rodion", "Sinner #9", make_color_rgb(125, 0, 0), SpriteRodion, [-34.5, -969.75]);
		Sinclair = new Character("Sinclair", "Sinner #11", make_color_rgb(130, 150, 20), SpriteSinclair, [15, -888]);
		Outis = new Character("Outis", "Sinner #12", make_color_rgb(50, 80, 50), SpriteOutis, [-11.25, -961.5]);
		Gregor = new Character("Gregor", "Sinner #13", make_color_rgb(100, 50, 10), SpriteGregor, [3, -894]);
		Schneewittchen = new Character("Schneewittchen", "Sinner #?", make_color_rgb(160, 215, 205), SpriteSchneewittchen); 
	}
}

global.Head_Aligner = [
	BACKGROUND(SpriteBG_Bus),
	SPAWN(700, ISHMAEL),
	SPEAKER(ISHMAEL),
	CHANGE_HEAD(ISHMAEL, SpriteHead_Ishmael),
	TEXT("hi"),
];