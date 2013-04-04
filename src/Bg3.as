package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Bg3 extends Backgrounds
	{
		private var speed:Number = 100;
			
		public function Bg3() 
		{
			if (Backgrounds.bg1 == -1)
			{
				
				graphic = new Image(Assets.BG1);
			}
			else if (Backgrounds.bg2 == -1)
			{
				
				graphic = new Image(Assets.BG2);
			}
			else
			{
				graphic = new Image(Assets.BG3);
				Backgrounds.bg3 = 3
			}
			x = Backgrounds.bgX2;
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