package game;

import flixel.FlxG;
import flixel.FlxSprite;

class Player extends FlxSprite
{

	public function new()
	{
		super();

		makeGraphic(30, 60, 0xFF0000FF);
	}

	override public function update(elapsed:Float):Void
	{
		var left:Bool;
		var right:Bool;
		var up:Bool;
		var down:Bool;
		left = right = up = down = false;

		{ // Update input
			if (FlxG.keys.pressed.LEFT) left = true;
			if (FlxG.keys.pressed.RIGHT) right = true;
			if (FlxG.keys.pressed.UP) up = true;
			if (FlxG.keys.pressed.DOWN) down = true;

			trace(left, right, up, down);
		}

		super.update(elapsed);
	}
}