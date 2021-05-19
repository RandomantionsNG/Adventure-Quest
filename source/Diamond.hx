package;

import flixel.FlxSprite;

class Diamond extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		loadGraphic("assets/images/Blue Diamond.png");
		super(x, y);
	}
}
