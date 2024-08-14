global.Dialogue_Schnee_1 = [
	BACKGROUND(SpriteBG_Lobotomy),
	SPAWN(700, SCHNEE),
	SPAWN(1160, RYOSHU),
	
	SPEAKER(RYOSHU),
	TEXT("... You look like you need a cig."),
	
	SPEAKER(SCHNEE),
	TEXT("H-huh? Thank you..."),
	
	SPEAKER(empty),
	TEXT("I watched a she took a cigarette from Ryōshū's box, her hands trembling. I was surprised by Ryōshū's unexpected gesture of kindness, as I never imagined she would be the one to offer comfort to, well, anyone."),
	TEXT("But even I couldn't help feeling sorry for her. Her face showed the effort she was making to hold back tears. It was difficult not to reach out and offer some reassurance."),
	TEXT("Ryōshū lit the cigarette that was already clumsily placed between Schneewittchen's lips. Hesistantly, she took a huff and then..."),
	
	SPEAKER(SCHNEE),
	TEXT("HACK- cough, COUGH! Wheeze... HAck! gag-"),
	
	SPEAKER(RYOSHU),
	TEXT("Hah. N.O.O.B."),
	
	DESPAWN(RYOSHU),
	SPAWN(1160, SINCLAIR),
	
	SPEAKER(empty),
	TEXT("I looked expectantly at Sinclair who immediately straightened his back with a sigh. He clearly felt like, at this point, he was obligated to be the designated translator."),
	
	SPEAKER(SINCLAIR),
	TEXT("... Never Offered One Blunt"),
	
	SPAWN(1420, GREGOR),
	SPEAKER(GREGOR),
	TEXT("You good, kid? Everyone's gotta start somewhere. Just... Try not to throw up."),
	TEXT("I'd offer you some water, but all I've got is more cigarettes."),
	
	SPEAKER(SCHNEE),
	TEXT("Akh, AKH! T-thank- huff... You for your concern, Herr Gregor... COUGH!"),
	
	BACKGROUND(empty),
	DESPAWN_ALL(),
	SPEAKER(empty),
	TEXT("We all laughed. She laughed too."),
	TEXT("I should have noticed sooner. There must have been a slip-up somewhere, but no matter how many times I replay it in my mind, I can't pinpoint anything."),
	TEXT("There was no way for me to know. I had no reason to suspect her, yet..."),
	TEXT("Who do I blame?"),
]

global.Dialogue_Schnee_2 = [
	LOCATION("Aboard Metistopheles"),
	BACKGROUND(SpriteBG_Bus),
	SPAWN(960, SCHNEE),
	
	TEXT("Schneewittchen sat by the window, a lit cigarette dangling from her lips. She seemed to be looking past the night sky."),
	
	SPAWN(1500, DANTE),
	SPEAKER(DANTE),
	TEXT("<I thought you didn't smoke.>"),
	
	SPEAKER(SCHNEE),
	TEXT("Well, I try not to. It's bad for your health."),
	TEXT("I wish Gregor and Ryōshū would take better care of themselves. This kind of lifestyle makes your body break down after a while, you know?"),
	TEXT("It's not like we can talk them out of it, either. You can't force an old habit to die. Is it essentially the same thing as letting them die a slow death?"),
	
	SPEAKER(DANTE),
	TEXT("<...>"),
	
	SPEAKER(SCHNEE),
	TEXT("I hope you take care of yourself too, Manager Dante."),
	
	SPEAKER(DANTE),
	TEXT("<So that situation... it was all a lie as well. Why? Why did you pretend you'd never smoked before?>"),
	
	SPEAKER(SCHNEE),
	TEXT("It was endearing enough to make you pity me, wasn't it?"),
]