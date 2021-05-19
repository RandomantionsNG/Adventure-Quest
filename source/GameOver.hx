package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.system.FlxAssets;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class GameOver extends FlxState
{
	var retryButton:FlxButton;

	override public function create()
	{
		var gameover = new FlxText(10, 10, 100, "GAME OVER");
		add(gameover);
		gameover.screenCenter();
		// twice as big
		gameover.scale.set(2, 2);

		// 50%
		gameover.scale.set(1.8, 1.8);

		retryButton = new FlxButton(0, 0, "Retry", clicklol);
		add(retryButton);
		retryButton.x = 432;
		retryButton.y = 528;
		// twice as big
		retryButton.scale.set(2, 2);

		// 50%
		retryButton.scale.set(1.8, 1.8);
		FlxG.sound.playMusic(FlxAssets.getSound("assets/music/GAMEOVER"));

		super.create();
	}

	function clicklol()
		FlxG.camera.fade(FlxColor.WHITE, 0.67, false, function()
		{
			FlxG.switchState(new StoryState());
		});

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
