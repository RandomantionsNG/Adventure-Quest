package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class Volcano extends FlxState
{
	var fightButton:FlxButton;

	override public function create()
	{
		var volbg = new FlxSprite();
		volbg.loadGraphic("assets/images/Volcano.png");
		add(volbg);

		var demon = new FlxSprite();
		demon.loadGraphic("assets/images/DeDe Demon.png");
		add(demon);
		demon.loadGraphic("assets/images/DeDe Demon.png", true, 625, 627);
		demon.animation.add("idle", [1, 2, 3, 3, 2, 1], 12, true);
		demon.animation.play("idle");
		demon.screenCenter();

		fightButton = new FlxButton(0, 0, "Fight", clickfight);
		add(fightButton);
		fightButton.screenCenter();
		super.create();
	}

	function clickfight()
		FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
		{
			FlxG.switchState(new VolFight());
		});

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
