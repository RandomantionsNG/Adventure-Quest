package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;

class NPC extends FlxState
{
	override public function create()
	{
		var NPC = new FlxSprite();
		NPC.loadGraphic("assets/images/NPC.png");
		add(NPC);

		NPC.x = 0;
		NPC.y = 0;

		FlxTween.tween(NPC, {x: 0, y: 695}, 2);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
