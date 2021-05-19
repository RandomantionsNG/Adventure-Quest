package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	override public function create()
	{
		var TSBG = new FlxSprite();
		TSBG.loadGraphic("assets/images/Adventure Quest Title Screen.png");
		add(TSBG);

		var LOGO = new FlxSprite();
		LOGO.loadGraphic("assets/images/Adventure Quest Logo.png");
		add(LOGO);
		LOGO.screenCenter();

		var frick = new FlxSprite();
		frick.loadGraphic("assets/images/Click Enter.png");
		add(frick);
		frick.x = 89;
		frick.y = 623;

		if (FlxG.sound.music == null) // don't restart the music if it's already playing
		{
			FlxG.sound.playMusic(AssetPaths.Title__ogg, 1, true);
		}
		var mouce = new FlxSprite();
		mouce.loadGraphic("assets/images/cursor.png");
		FlxG.mouse.load(mouce.pixels);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.ENTER)
		{
			FlxG.camera.fade(FlxColor.BLACK, 0.30, false, function()
			{
				FlxG.switchState(new MenuState());
			});
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
		}
		super.update(elapsed);
	}
}
// idk just wanted to put this here for da laughs
