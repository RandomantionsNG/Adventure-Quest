package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class Finish extends FlxState
{
	var yay:FlxButton;

	override public function create()
	{
		var deadtext = new FlxText(617, 170, 0, "Amazing job!! You Finished Adventure 1! You may now play Adventure 2.");
		add(deadtext);
		// 50%
		deadtext.scale.set(2.0, 2.0);

		yay = new FlxButton(0, 0, "Let's do it!", clickdone);
		add(yay);
		yay.screenCenter();
		super.create();
	}

	function clickdone()
	{
		FlxG.switchState(new Cutscene());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
