package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class BlueFight extends FlxState
{
	override public function create()
	{
		var bg = new FlxSprite();
		bg.loadGraphic("assets/images/BLUE BOSS Background.png");
		add(bg);
		bg.loadGraphic("assets/images/BLUE BOSS Background.png", true, 1280, 720);
		bg.animation.add("move", [
			0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36
		], 24, true);
		bg.x = 0;
		bg.y = 0;
		bg.animation.play("move");

		var dia:FlxSprite = new FlxSprite(0, 30);
		dia.frames = Paths.getSparrowAtlas('Blue Diamond');
		dia.animation.addByPrefix('bluey', "Blue Diamond", 24);
		dia.animation.play('bluey');
		add(dia);
		dia.screenCenter();

		var swagtext = new FlxText(10, 10, 100, "Hewo, arw you heea to fight me? (Hehe) you weawy fink tshat you can beat me?(Press Enter to continue.)");
		add(swagtext);
		swagtext.screenCenter();
		// twice as big
		swagtext.scale.set(2, 2);

		// 50%
		swagtext.scale.set(1.8, 1.8);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.ENTER)
		{
			FlxG.camera.fade(FlxColor.BLACK, 0.30, false, function()
			{
				FlxG.switchState(new Vidtest());
			});
			// The up arrow key is currently pressed
			// This code is executed every frame, while the key is pressed
		}
		super.update(elapsed);
	}
}
