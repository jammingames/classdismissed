package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Bg1 extends Backgrounds
	{
		private var speed:Number = 100;
		private var total:int = 3;
		private var randomBG:int = FP.rand(60) % total;
		public var image:Image;
		public function Bg1() 
		{
			
			switch(randomBG)
			{
				case 0:
					graphic = new Image(Assets.BG1);
					break;
				case 1:
					graphic = new Image(Assets.BG2);
					break;
				case 2:
					graphic = new Image(Assets.BG3);
					break;
			}
		
			Backgrounds.bg1 = randomBG+1;
			x = 0;
			layer = 3;
			//x = FP.rand(256);
			//x += FP.screen.width;
			
		}
		override public function update():void 
		{
			swapBG(x);
			x -= speed * FP.elapsed;
			
			
			super.update();
		}
		
	}

}