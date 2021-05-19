package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class Shot extends FlxState
{
	override public function create()
	{
		var ok:FlxButton;

		var deadtext = new FlxText(617, 170, 0,
			"You shot the demon, but you still wonder why there was a demon behind the store, so you go to the police station to notify the officers.");
		add(deadtext);
		deadtext.x = 392;
		deadtext.y = 181;
		// twice as big
		deadtext.scale.set(2, 2);

		// 50%
		deadtext.scale.set(1.6, 1.8);

		ok = new FlxButton(0, 0, "Let's do it!", clickgo);
		add(ok);
		ok.screenCenter();
		// twice as big
		ok.scale.set(2, 2);

		// 50%
		ok.scale.set(1.6, 1.8);

		super.create();
	}

	function clickgo()
	{
		FlxG.switchState(new Finish());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
