package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class BlueBad extends FlxState
{
	override public function create()
	{
		var blueBg = new FlxSprite();
		blueBg.makeGraphic(1280, 720, FlxColor.BLUE);
		add(blueBg);
		var boyBlue = new FlxSprite();
		boyBlue.loadGraphic("assets/images/Blew Bot Idle.png");
		add(boyBlue);
		boyBlue.screenCenter();
		boyBlue.loadGraphic("assets/images/Blew Bot Idle.png", true, 345, 524);
		boyBlue.animation.add("idle", [0, 1, 2, 3, 4, 5, 6, 7], 24, true);
		boyBlue.animation.play("idle");
		boyBlue.screenCenter();
		FlxG.camera.shake(0.01, 5.2);
		var enter = new FlxText(317, 250, 100, "WHOA, WHAT WAS THAT SOUND?!? It was probably an explosion. No big deal.(Press enter to continue.)");
		add(enter);
		// twice as big
		enter.scale.set(2, 2);

		// 50%
		enter.scale.set(1.8, 1.8);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.ENTER)
		{
			FlxG.camera.fade(FlxColor.BLACK, 0.70, false, function()
			{
				FlxG.switchState(new BlueOut());
			});
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
		}
		super.update(elapsed);
	}
}
