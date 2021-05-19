package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class GotState extends FlxState
{
	var exit:FlxButton;

	override public function create()
	{
		var haptext = new FlxText(617, 170, 0, "You got the Demon Gun! Now you can fight the DeDe Demon.");
		add(haptext);

		exit = new FlxButton(469, 579, "Exit", clickexit);
		add(exit);
		exit.screenCenter();

		super.create();
	}

	function clickexit()
	{
		FlxG.switchState(new VolFightgun());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
