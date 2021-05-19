package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.ui.FlxButton;

class ZState extends FlxState
{
	var take:FlxButton;
	var leave:FlxButton;

	override public function create()
	{
		var ZBG = new FlxSprite();
		ZBG.loadGraphic("assets/images/Z Mart.png");
		add(ZBG);

		var deGun = new FlxSprite();
		deGun.loadGraphic("assets/images/Demon Gun.png");
		add(deGun);
		deGun.screenCenter();

		take = new FlxButton(0, 0, "Take", clicktake);
		add(take);
		take.screenCenter();

		leave = new FlxButton(492, 443, "Leave", clickLeave);
		add(leave);

		super.create();
	}

	function clicktake()
	{
		FlxG.switchState(new GotState());
	}

	function clickLeave()
	{
		FlxG.switchState(new StoryState());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
