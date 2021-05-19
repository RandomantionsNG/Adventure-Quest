package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class Spit extends FlxState
{
	var okButton:FlxButton;

	override public function create()
	{
		var spit = new FlxText(10, 10, 100, "Good Choice! Spitting on demons will melt them. Except you didn't spit enough, and now you're about to die.");
		add(spit);
		spit.screenCenter();
		// twice as big
		spit.scale.set(2, 2);

		// 50%
		spit.scale.set(1.8, 1.8);

		okButton = new FlxButton(510, 444, "Ok", clickok);
		add(okButton);

		super.create();
	}

	function clickok()
	{
		FlxG.switchState(new GameOver());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
