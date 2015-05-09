package menu;

import flixel.FlxState;
import flixel.ui.FlxButton;

class MenuState extends FlxState
{
	var _testButton:FlxButton;

	public function new()
	{
		super();
	}

	override public function create():Void
	{
		super.create();

		_testButton = new FlxButton(0, 0, "Start test level");
		add(_testButton);
	}

	override public function update(elapsed:Float):Void
	{
		if (_testButton.justPressed) trace("Button pressed");

		super.update(elapsed);
	}
}