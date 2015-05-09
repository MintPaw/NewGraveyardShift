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
		super.create();

		FlxG.fixedTimestep = false;
		FlxG.stage.frameRate = 120;

		FlxG.switchState(new MenuState());
	}
}