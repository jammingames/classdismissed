package 
{
	import flash.geom.Rectangle;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	import Global;
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Player extends Entity 
	{
		
		
		public var sprRob:Spritemap;
		private var speed:Number = 200;
		private var yTop:int = 100;				private var x1:int = 20;
		private var yBot:int = 310;				private var x2:int = 600;
		private var busy:Boolean = false;
		private var isMovingY:Boolean = false;
		
		
		public function Player() 
		{
			switch(Global.playerGFX) {
				case 1: 
					sprRob = new Spritemap(Assets.PLAYER_GRAPHIC, 103, 155, onAnimationEnd);
					sprRob.add("walk", [8, 9, 10, 11, 12, 13, 14, 15], 10, true);
					sprRob.add("atk", [15, 16, 17, 18], 10, false);
					break;
				case 2:
					sprRob = new Spritemap(Assets.PLAYER_GRAPHIC2, 87, 168.5, onAnimationEnd);
					sprRob.add("walk", [ 10, 11, 12, 13, 14], 10, true);
					sprRob.add("atk", [17], 10, false);
					break;
				case 3:
					sprRob = new Spritemap(Assets.PLAYER_GRAPHIC3, 98, 150, onAnimationEnd);
					sprRob.add("walk", [0, 1, 2, 3, 4, 5, 6, 7], 10, true);
					sprRob.add("atk", [8, 9, 10, 11], 10, false);
					break;
				case 4:
					sprRob = new Spritemap(Assets.PLAYER_GRAPHIC4, 98, 150, onAnimationEnd);
					sprRob.add("walk", [0, 1, 2, 3, 4, 5, 6, 7], 10, true);
					sprRob.add("atk", [8, 9, 10, 11], 10, false);
					break;
				case 5:
					sprRob = new Spritemap(Assets.PLAYER_GRAPHIC5, 161, 160, onAnimationEnd);
					sprRob.add("walk", [0, 1, 2, 3], 10, true);
					sprRob.add("atk", [4, 5, 6,], 10, false);
					break;
			}	
			
			y = 280;
			layer = -y;
			sprRob.scale *= 2;	
			graphic = sprRob;
			setHitbox(80, 30, 35, 0);
			sprRob.play("walk");
			//sprRob.play("atk");
			type = "player";
		}
		private function onAnimationEnd():void
		{
			busy = false;
			Global.attacking = false;
			Spritemap(graphic).play("walk");
		//	_timeInterval = 0;
		}
		public function attack():void
		{
			busy = true;
			Global.attacking = true;
			sprRob.play("atk", false);
		}
		override public function update():void 
		{
			if (!busy)
			{
				isMovingY = false;
				if ((Input.check(Key.RIGHT) || Input.check(Key.D)) && x <= x2)
				{
					x += speed * FP.elapsed;
				}
				if ((Input.check(Key.LEFT)|| Input.check(Key.A)) && x >= x1)
				{
					x -= speed * FP.elapsed;
				}
				if ((Input.check(Key.UP) || Input.check(Key.W)) && y >= yTop )
				{	
					isMovingY = true;
					y -= speed * FP.elapsed;
				}
				if ((Input.check(Key.DOWN) || Input.check(Key.S)) && y <= yBot )
				{
					y += speed * FP.elapsed;
					isMovingY = true;
				}
				if (Input.pressed(Key.SPACE))
				{	
					attack();
				}
				if (Input.pressed(Key.SPACE) && !busy) {
					attack();	
				}
				if (collide("enemy", x, y) && speed>=100 && Global.attacking == false)
				{
					sprRob.color = 0xff0000;
					speed -= 1;
				}
				else
				{
					sprRob.color = 0xffffff;
				}
				if (collide("enemy", x, y) && Global._hit == true)
				{
					sprRob.color = 0x00FF00;
					speed += 5;
				}
				if (speed < 100 ) 
				{
					var loss:Boolean = true;
					if (loss) { trace("YOU LOSE");
					GameWorld(world).end();
					FP.world = new GameoverWorld;
					loss = false;
					}
				}
				
			}
			super.update();
			if (isMovingY) { this.layer = -y / 90; }
		}
		
		
	}

}