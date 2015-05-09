package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	private var _flixel:FlxGame;

	public function new()
	{
		super();

		_flixel = new FlxGame(1920, 1080, null, 120, 120, true, true);
		addChild(_flixel);
	}
}