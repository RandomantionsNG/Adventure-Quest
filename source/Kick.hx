package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class Kick extends FlxState
{
	var idkButton:FlxButton;

	override public function create()
	{
		var kick = new FlxText(10, 10, 100, "Really? Why did you think you could kick a demon?");
		add(kick);
		kick.screenCenter();
		// twice as big
		kick.scale.set(2, 2);
		// 50%
		kick.scale.set(1.8, 1.8);

		idkButton = new FlxButton(0, 0, "idk", clickyes);
		add(idkButton);

		idkButton.x = 398;
		idkButton.y = 206;

		super.create();
	}

	function clickyes()
	{
		FlxG.switchState(new GameOver());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
