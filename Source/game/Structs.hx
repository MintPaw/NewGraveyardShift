package game;

class Structs
{
	public static var guns:Array<GunDef> = [];

}

typedef GunDef =
{
	name:String,
	projectile:Bool,
	spread:Float,
	bullets:Int,
	fireRate:Float
}