package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class BlueBuilding extends FlxState
{
	override public function create()
	{
		var bg = new FlxSprite();
		bg.loadGraphic("assets/images/BlueMan Base.png");
		add(bg);
		bg.x = 0;
		bg.y = 0;
		var enter = new FlxSprite();
		enter.loadGraphic("assets/images/Press Enter to Fight.png");
		add(enter);
		enter.loadGraphic("assets/images/Press Enter to Fight.png", true, 757, 45);
		enter.animation.add("glow", [
			0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38,
			39
		], 24, true);
		enter.animation.play("glow");
		enter.screenCenter();
		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.ENTER)
		{
			{
				FlxG.switchState(new BlueFight());
			}
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
			super.update(elapsed);
		}
	}
}
