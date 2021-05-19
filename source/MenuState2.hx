package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.system.FlxAssets;
import flixel.util.FlxColor;
import flixel.util.FlxSave;

class MenuState2 extends FlxState
{
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

		var AD2 = new FlxSprite();
		AD2.loadGraphic("assets/images/ADVENTURE 2.png");
		add(AD2);
		AD2.x = 621;
		AD2.y = 413;
		// twice as big
		AD2.scale.set(-6, -6);

		// 50%
		AD2.scale.set(0.5, 0.5);

		if (FlxG.sound.music == null) // don't restart the music if it's already playing
		{
			FlxG.sound.playMusic(AssetPaths.Main__ogg, 2, true);
		}

		FlxG.sound.playMusic(FlxAssets.getSound("assets/music/Main"));

		var _gameSave = new FlxSave();
		_gameSave.bind("SaveDemo");

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.TWO)
		{
			FlxG.camera.fade(FlxColor.BLACK, 0.30, false, function()
			{
				FlxG.switchState(new BlueStoryEx());
			});

			if (FlxG.keys.pressed.ONE)
			{
				FlxG.camera.fade(FlxColor.BLACK, 0.30, false, function()
				{
					FlxG.switchState(new StorySubState());
				});

				super.update(elapsed);
			}
		}
	}
}
