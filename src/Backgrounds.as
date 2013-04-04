package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Backgrounds extends Entity
	{
		public static const bgX1:int = FP.screen.width;
		public static const bgX2:int = FP.screen.width * 2;
		public static const bgX3:int = FP.screen.width * 2 +FP.screen.width;
		public static var bg1:int= -1;
		public static var bg2:int= -1;
		public static var bg3:int= -1;
		public function Backgrounds() 
		{
			/*
			GameWorld.add(new Bg1());
			GameWorld.add(new Bg2());
			GameWorld.add(new Bg3());
			*/
		}
		
		protected function swapDesks(x_pos:int):void
		{
			//var x:int = x_pos;
			if (x_pos < -FP.screen.width) 
			{
				this.x = FP.width + FP.rand(6000);
				trace("moved desk");
			}
		}
		protected function swapBG(x_pos:int):void
		{
			//var x:int = x_pos;
			if (x_pos < -FP.screen.width) 
			{
				this.x = Backgrounds.bgX2;
			}
		}
		
	}

}