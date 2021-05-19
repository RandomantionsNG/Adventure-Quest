package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class Cutscene extends FlxState
{
	override public function create()
	{
		var cut:FlxSprite = new FlxSprite(0, 0);
		cut.frames = Paths.getSparrowAtlas('Cutscrene 1');
		cut.animation.addByPrefix('CUT', "big spritesheet", 24);
		cut.animation.play('CUT');
		add(cut);
		var some:FlxSprite = new FlxSprite(0, 30);
		some.frames = Paths.getSparrowAtlas('Press X');
		some.animation.addByPrefix('X', "Press X bch", 13);
		some.animation.play('X');
		add(some);
		some.screenCenter();
		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.X)
		{
			{
				FlxG.switchState(new MenuState2());
			}
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
			super.update(elapsed);
		}
	}
}
