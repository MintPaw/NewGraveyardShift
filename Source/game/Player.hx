package game;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.math.FlxAngle;
import flixel.math.FlxPoint;
// TODO(jeru): You can import this better
import game.Structs.GunDef;

class Player extends FlxSprite
{
	public var currentGun:GunDef;

	private var _speed:FlxPoint;

	public function new()
	{
		super();

		makeGraphic(30, 60, 0xFF0000FF);

		{ // Setup movement
			maxVelocity.set(150, 150);
			drag.set(maxVelocity.x * 8, maxVelocity.y * 8);
			_speed = new FlxPoint(maxVelocity.x * 10, maxVelocity.y * 10);
		}
	}

	override public function update(elapsed:Float):Void
	{
		var left:Bool;
		var right:Bool;
		var up:Bool;
		var down:Bool;
		var shoot:Bool;
		var aim:Float = 0;
		left = right = up = down = shoot = false;

		{ // Update input
			if (FlxG.keys.pressed.W) up = true;
			if (FlxG.keys.pressed.S) down = true;
			if (FlxG.keys.pressed.A) left = true;
			if (FlxG.keys.pressed.D) right = true;
			if (FlxG.mouse.pressed) shoot = true;
			aim = FlxAngle.angleBetweenMouse(this);
		}

		{ // Update movement
			acceleration.set();
			if (left) acceleration.x -= _speed.x;
			if (right) acceleration.x += _speed.x;
			if (up) acceleration.y -= _speed.y;
			if (down) acceleration.y += _speed.y;
		}

		super.update(elapsed);
	}

	public function changeWeapon(gunName:String):Void
	{
		for (i in Structs.guns)
		{
			if (i.name == gunName) currentGun = i;
		}
	}
}