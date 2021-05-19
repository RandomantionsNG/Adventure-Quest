package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class VsBlueDia extends FlxState
{
	override public function create()
	{
		var dumb = new FlxText(0, 0, 100, "What do you want to do?");
		add(dumb);

		// twice as big
		dumb.scale.set(2, 2);

		// 50%
		dumb.scale.set(1.8, 1.8);

		dumb.screenCenter();

		var op = new FlxSprite();
		op.loadGraphic('assets/images/Optins.png');
		add(op);

		super.create();
	}

	// lol this was at skool :D hehe
	// notes are fun lol

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
