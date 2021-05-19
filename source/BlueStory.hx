package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class BlueStory extends FlxState
{
	override public function create()
	{
		var enter:FlxSprite = new FlxSprite(0, 0);
		enter.frames = Paths.getSparrowAtlas('press enter');
		enter.animation.addByPrefix('Cool', "PRESS ENTER", 24);
		enter.animation.play('Cool');
		add(enter);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.ENTER)
		{
			FlxG.switchState(new BluePlace());
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
		}
		super.update(elapsed);
	}
}
