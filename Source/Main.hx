package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	private var _flixel:FlxGame;

	public function new()
	{
		super();

		_flixel = new FlxGame(1920,
							  1080,
							  MainState,
							  120,
							  120,
							  true, // Skip intro
							  true);// Fullscreen 
		addChild(_flixel);
	}
}