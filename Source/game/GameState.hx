package game;

import flixel.FlxState;
import flixel.math.FlxPoint;
import flixel.group.FlxSpriteGroup;
import game.Structs.GunDef;

class GameState extends FlxState
{
	private var _playerGroup:FlxTypedSpriteGroup<Player>;
	private var _bulletGroup:FlxTypedSpriteGroup<Bullet>;

	public function new()
	{
		super();
	}

	override public function create():Void
	{
		super.create();
		{ // Setup misc
			_bulletGroup = new FlxTypedSpriteGroup<Bullet>();
			Globals.shootCallback = shoot;
		}

		// TODO(jeru): This may not be temp
		{ // Setup guns (temp)
			Structs.guns.push({
				name: "Pistol", 
				projectile: true,
				spread: 4,
				bullets: 1,
				fireRate: 2
				});
		}

		{ // Setup players
			_playerGroup = new FlxTypedSpriteGroup<Player>();

			var p:Player = new Player();
			p.changeWeapon("Pistol");
			_playerGroup.add(p);
		}

		{ // Add groups
			add(_bulletGroup);
			add(_playerGroup);
		}
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	private function shoot(player:Player):Void
	{
		var projectileSpeed:Float = 700;

		if (player.currentGun.projectile)
		{
			var bulletVelo:FlxPoint = new FlxPoint();
			bulletVelo.x = Math.cos(player.aim) * projectileSpeed;
			bulletVelo.y = Math.sin(player.aim) * projectileSpeed;

			var b:Bullet = new Bullet();
			b.x = player.x + player.width / 2 - b.width / 2;
			b.y = player.y + player.height / 2 - b.height / 2;
			b.velocity.x = bulletVelo.x;
			b.velocity.y = bulletVelo.y;
			_bulletGroup.add(b);
		}
	}
}