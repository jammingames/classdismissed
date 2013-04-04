package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import flash.geom.Rectangle;
	import net.flashpunk.graphics.Spritemap;
	import Global;
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Enemy extends Entity 
	{
		private var speed:Number = 200;
		private var hitMult:Number = 500;
		private var yTop:int;				private var xTop:int;
		private var yBot:int;				private var xBot:int;
		private var hit:Boolean = false;
		public var offScreen:Boolean = false;
		public var sprE:Spritemap;
			
		
		public function Enemy() 
		{
			sprE = new Spritemap(Assets.ENEMY_GRAPHIC, 110, 180); //onAnimationEnd);
			sprE.add("walk", [0, 1, 2, 3], 10, true);
			sprE.scale *= 1.8;	
			setHitbox(75, 160, 30, 80);
			graphic = sprE;
			y = 110 + FP.rand(300);
			x = FP.rand(6000);
			x += FP.screen.width;
			layer = -y/90;
			sprE.play("walk");
			type = "enemy";
			
		}
		public function checkBounds():Boolean
		{
			if (x < -50) 
			{
				offScreen = true;
				trace("OffScreen");
			}
			return offScreen;
		}
		public function takeDamage():void
		{
			hit = true;
			Global._hit = true;
			FP.log("it worked");
			GameWorld(world).addScore(7 +FP.rand(10));
			sprE.color = 0xff0000;
			speed += hitMult;
		}
		private function reset():void
		{
			FP.log("Respawning dude");
			x = FP.rand(6000) + FP.width;
			offScreen = false;
			hit = false;
			Global._hit = false;
			sprE.color = 0xffffff;
			speed = 200;
			layer = -y/90;
			speed += FP.rand(50);
		}
		override public function update():void 
		{
			var i:int = FP.rand(2);
			x -= speed * FP.elapsed;
			x -= FP.rand(50) * FP.elapsed;
			if (checkBounds()) 
			{
				reset();
			}
 			if (collide("player", x, y) && Global.attacking == true && !hit)
			{
				takeDamage();
			}
						
			super.update();
		}
		
	}

}