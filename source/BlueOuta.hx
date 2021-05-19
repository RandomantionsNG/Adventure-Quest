package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class BlueOuta extends FlxState
{
	override public function create()
	{
		var myText = new FlxText(0, 0, 500); // x, y, width
		myText.text = "OH MY GOD! WHAT HAPPENED!?! I mean, I like the color blue, but this is too much. How did this happen?";
		myText.setFormat("assets/font.ttf", 20, FlxColor.WHITE, CENTER);
		myText.setBorderStyle(OUTLINE, FlxColor.BLUE, 2);
		add(myText);
		myText.screenCenter();

		var dumb = new FlxText(733, 538, 538); // x, y, width
		dumb.text = "Press Enter to continue";
		dumb.setFormat("assets/font.ttf", 20, FlxColor.WHITE, CENTER);
		dumb.setBorderStyle(OUTLINE, FlxColor.BLUE, 2);
		add(dumb);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.ENTER)
		{
			{
				FlxG.switchState(new BlueTalk());
			}
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
			super.update(elapsed);
		}
	}
}
