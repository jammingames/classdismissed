package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Bg2 extends Backgrounds
	{
		private var speed:Number = 100;
				private var total:int = 2;
		private var randomBG:int = FP.rand(60) % total;
		
		
		public function Bg2() 
		{
			
			switch(randomBG)
			{
				case 0:
					graphic = new Image(Assets.BG1);
					break;
				case 1:
					graphic = new Image(Assets.BG2);
					break;
				
			}
			Backgrounds.bg2 = randomBG+1;
			x = Backgrounds.bgX1;
			layer = 3;
		}
		override public function update():void 
		{
			swapBG(x);
			
			x -= speed * FP.elapsed;
			
			
			super.update();
		}
		
	}

}