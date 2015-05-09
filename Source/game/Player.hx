package game;

import flixel.FlxSprite;

class Player extends FlxSprite
{

	public function new()
	{
		super();

		makeGraphic(30, 60, 0xFF0000FF);
	}
}