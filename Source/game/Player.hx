package game;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.math.FlxPoint;

class Player extends FlxSprite
{
	private var _speed:FlxPoint;

	public function new()
	{
		super();

		makeGraphic(30, 60, 0xFF0000FF);

		maxVelocity.set(150, 150);
		drag.set(maxVelocity.x * 8, maxVelocity.y * 8);
		_speed = new FlxPoint(maxVelocity.x * 10, maxVelocity.y * 10);
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
		}

		super.update(elapsed);
	}
}