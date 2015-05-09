package;

import flixel.FlxState;
import flixel.FlxG;
import menu.MenuState;

class MainState extends FlxState
{

	public function new()
	{
		super();
	}

	override public function create():Void
	{
		FlxG.switchState(new MenuState());
	}
}