package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.ui.FlxButton;

class StoryState extends FlxState
{
	var storeButton:FlxButton;

	var storeButtontwo:FlxButton;

	override public function create()
	{
		var ABG = new FlxSprite();
		ABG.loadGraphic("assets/images/Adventure 1 BG.png");
		add(ABG);

		storeButton = new FlxButton(1047, 90, "Z Mart", clickPlay);
		add(storeButton);

		storeButtontwo = new FlxButton(710, 144, "S Mart", PressPlay);
		add(storeButtontwo);

		super.create();
	}

	function clickPlay()
	{
		FlxG.switchState(new ZState());
	}

	function PressPlay()
	{
		FlxG.switchState(new SState());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
