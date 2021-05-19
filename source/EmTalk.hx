package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class EmTalk extends FlxState
{
	var okButton:FlxButton;

	override public function create()
	{
		var emtext = new FlxText(10, 10, 100, "Our rival is Z Mart! They stole our idea, and they stole our design!!");
		add(emtext);

		emtext.screenCenter();

		// 50%
		emtext.scale.set(2.5, 2.5);

		okButton = new FlxButton(0, 0, "Ok", kPlay);
		add(okButton);
		okButton.x = 398;
		okButton.y = 206;

		super.create();
	}

	function kPlay()
	{
		FlxG.switchState(new StoreS());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
