package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class BlueStoryEx extends FlxState
{
	var okButton:FlxButton;

	override public function create()
	{
		var text = new FlxText(10, 10, 100, "This is Adventure 2. Once you finish Adventure 2, you will unlock last Adventure.");
		add(text);
		text.screenCenter();
		// 50%
		text.scale.set(2.0, 2.0);
		okButton = new FlxButton(356, 248, "Ok", pressOk);
		add(okButton);

		super.create();
	}

	function pressOk()
	{
		FlxG.camera.fade(FlxColor.WHITE, 0.33, false, function()
		{
			FlxG.switchState(new BlueStory());
		});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
