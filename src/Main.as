package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Main extends Engine 
	{
		public function Main():void 
		{
			super(800, 600);		
			//FP.console.enable();
		}
		//this one initializes all rendering and FP stuff
		
		override public function init():void 
		{
			trace("Flashpunk is happening");
			FP.world = new MenuWorld();
			//FP.world = new Preloader("MenuWorld");
			super.init();
		}
	}
	
}