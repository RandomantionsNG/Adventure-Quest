package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.ui.FlxButton;

class StoreS extends FlxState
{
	var talkButton:FlxButton;
	var exitButton:FlxButton;

	override public function create()
	{
		var SMART = new FlxSprite();
		SMART.loadGraphic("assets/images/S Mart.png");
		add(SMART);

		var employee = new FlxSprite();
		employee.loadGraphic("assets/images/Employee 1.png");
		add(employee);

		employee.x = 926;
		employee.y = 436;

		talkButton = new FlxButton(948, 337, "Talk", clicktalk);
		add(talkButton);

		exitButton = new FlxButton(0, 0, "Exit", clickPlay);
		add(exitButton);
		exitButton.screenCenter();

		super.create();
	}

	function clicktalk()
	{
		FlxG.switchState(new EmTalk());
	}

	function clickPlay()
	{
		FlxG.switchState(new Volcano());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
