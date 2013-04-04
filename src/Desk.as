package   
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import Global;
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Desk extends Backgrounds
	{
		private var speed:Number = 250;
		private var total:int = 3;
		public var image:Image;
		public function Desk() 
		{
			graphic = new Image(Assets.DESK);
			x = FP.width + FP.rand(500);
			layer = -y - 5000;
			y = 465;
		}
		
		
		override public function update():void 
		{
			swapDesks(x);
			x -= speed * FP.elapsed;
			
			
			super.update();
		}
		
	}

}