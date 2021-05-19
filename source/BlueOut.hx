package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class BlueOut extends FlxState
{
	override public function create()
	{
		var cut = new FlxSprite();
		cut.loadGraphic("assets/images/Cutscene 2.png");
		add(cut);
		cut.loadGraphic("assets/images/Cutscene 2.png", true, 1280, 720);
		cut.animation.add("kool", [
			0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18,
			18
		], 24, false);

		cut.animation.play("kool");

		var skip = new FlxSprite();
		skip.loadGraphic("assets/images/press x to skip.png");
		add(skip);
		skip.x = 369;
		skip.y = 83;

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.X)
		{
			{
				FlxG.switchState(new BlueOuta());
			}
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
		}
		super.update(elapsed);
	}
}
