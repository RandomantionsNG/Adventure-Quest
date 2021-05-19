package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.system.FlxAssets;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
	var selectButton:FlxButton;

	override public function create()
	{
		var MMBG = new FlxSprite();
		MMBG.loadGraphic("assets/images/MenuBG.png");
		add(MMBG);

		var MML = new FlxSprite();
		MML.loadGraphic("assets/images/Main Menu Logo.png");
		add(MML);

		MML.screenCenter();

		var AD1 = new FlxSprite();
		AD1.loadGraphic("assets/images/ADVENTURE 1.png");
		add(AD1);
		AD1.x = 384;
		AD1.y = 405;
		// twice as big
		AD1.scale.set(-6, -6);

		// 50%
		AD1.scale.set(0.5, 0.5);
		{
			FlxG.sound.music.stop();
		}
		FlxG.sound.playMusic("assets/music/Main.ogg", 1, true);

		var mouce = new FlxSprite();
		mouce.loadGraphic("assets/images/cursor.png");
		FlxG.mouse.load(mouce.pixels);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.ONE)
		{
			FlxG.camera.fade(FlxColor.BLACK, 0.30, false, function()
			{
				FlxG.switchState(new StorySubState());
			});
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
			// LMAOOOOOO WROTE THIS AT SCHOOL
		}
		super.update(elapsed);
	}
}
