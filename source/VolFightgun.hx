package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class VolFightgun extends FlxState
{
	var spitButton:FlxButton;
	var kickButton:FlxButton;
	var gunButton:FlxButton;

	override public function create()
	{
		var text = new FlxText(549, 171, 100, "What do you want to do?");
		add(text);
		// twice as big
		text.scale.set(2, 2);

		// 50%
		text.scale.set(1.6, 1.8);

		spitButton = new FlxButton(0, 0, "Spit", clickspit);
		add(spitButton);
		spitButton.screenCenter();
		// twice as big
		spitButton.scale.set(2, 2);

		// 50%
		spitButton.scale.set(1.6, 1.8);

		kickButton = new FlxButton(0, 0, "Kick", clickKick);
		add(kickButton);
		kickButton.x = 100;
		kickButton.y = 423;
		// twice as big
		kickButton.scale.set(2, 2);

		// 50%
		kickButton.scale.set(1.6, 1.8);

		gunButton = new FlxButton(0, 0, "Shoot", clickShoot);
		add(gunButton);
		gunButton.x = 412;
		gunButton.y = 605;
		// twice as big
		gunButton.scale.set(2, 2);

		// 50%
		gunButton.scale.set(1.6, 1.8);

		super.create();
	}

	function clickspit()
	{
		FlxG.switchState(new Spit());
	}

	function clickKick()
	{
		FlxG.switchState(new Kick());
	}

	function clickShoot()
	{
		FlxG.switchState(new Shot());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
