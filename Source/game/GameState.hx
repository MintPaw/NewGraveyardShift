package game;

import flixel.FlxState;

class GameState extends FlxState
{

	public function new()
	{
		super();
	}

	override public function create():Void
	{
		super.create();

		trace("Game has started");
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}