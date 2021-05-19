package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class BlueTalk extends FlxState
{
	override public function create()
	{
		var myText = new FlxText(0, 0, 500); // x, y, width
		myText.text = "Casey: Dude really? It's obviously the GIANT BUILDING IN THE MIDDLE OF TOWN!!
        Blue: Ohhhhhhh. Who are you?
        Casey: Really? You don't know who I am? The creator of CaseyShow
        Blue: Um, no. You just look like if Eddsworld had a child with Sans fangirls.
        Casey: Damn. That was harsh. I'm leaving.";
		myText.setFormat("assets/font.ttf", 20, FlxColor.WHITE, CENTER);
		myText.setBorderStyle(OUTLINE, FlxColor.MAGENTA, 2);
		add(myText);
		myText.screenCenter();
		var myText = new FlxText(733, 538, 500); // x, y, width
		myText.text = "Press Enter to continue";
		myText.setFormat("assets/font.ttf", 20, FlxColor.WHITE, CENTER);
		myText.setBorderStyle(OUTLINE, FlxColor.BLUE, 2);
		add(myText);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.ENTER)
		{
			{
				FlxG.switchState(new BlueBuilding());
			}
			super.update(elapsed);
		}
	}
}
