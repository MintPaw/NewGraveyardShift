package;

import flixel.FlxG;
import flixel.FlxState;
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