package;

import flixel.FlxState;

class Vidtest extends FlxState
{
	override public function create()
	{
		var io:WebmIo = new WebmIoFile("c:/projects/test.webm");
		var player:WebmPlayer = new WebmPlayer(io, sprite);
		player.addEventListener('play', function(e)
		{
			trace('play!');
		});
		{
			trace('play!');

			super.create();
		}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
