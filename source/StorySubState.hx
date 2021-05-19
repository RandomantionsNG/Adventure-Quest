package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.FlxAccelerometer;
import flixel.text.FlxText;

class StorySubState extends FlxState
{
	override public function create()
	{
		var evtext = new FlxText(10, 10, 900,
			"You chose to do Adventure 1. When you finish Adventure 1, you be sent back to the main menu. Then you can play Adventure 2.");
		add(evtext);
		evtext.screenCenter();

		// 50%
		evtext.scale.set(1.30, 1.30);

		var some:FlxSprite = new FlxSprite(0, 30);
		some.frames = Paths.getSparrowAtlas('Press Space');
		add(some);
		some.x = 647;
		some.y = 379;

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.SPACE)
		{
			FlxG.switchState(new StoryState());

			var yay:FlxSprite = new FlxSprite(0, 0);
			yay.frames = Paths.getSparrowAtlas('U FOUND ME');
			add(yay); // The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
		}
		super.update(elapsed);
	}
}
