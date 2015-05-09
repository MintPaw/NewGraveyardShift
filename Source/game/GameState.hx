package game;

import flixel.FlxState;
import flixel.group.FlxSpriteGroup;

class GameState extends FlxState
{
	private var _playerGroup:FlxTypedSpriteGroup<Player>;

	public function new()
	{
		super();
	}

	override public function create():Void
	{
		super.create();

		{ // Setup players
			_playerGroup = new FlxTypedSpriteGroup<Player>();
		}
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}