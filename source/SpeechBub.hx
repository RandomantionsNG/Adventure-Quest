package;

import flixel.FlxSprite;

class SpeechBub extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		var SpeechBub:FlxSprite = new FlxSprite(0, 30);
		SpeechBub.loadGraphic("assets/images/Speech Bubs.png");
		super(x, y);
	}
}
