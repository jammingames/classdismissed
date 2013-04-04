package
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import BlackScreen;
	
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class OptionsWorld extends World 
	{
		public var fade:BlackScreen;
		public var pressBtnDialogue:Dialogue = new Dialogue();
		public var helpScreen:Dialogue = new Dialogue();
		public var titleImage:Image = new Image(Assets.HELP);
		public var menuBG:Entity = new Entity(0, 0, titleImage);
		private var done:Boolean = false;
		public function OptionsWorld() 
		{
		FP.screen.color = 0xFFFFFF;
			fade = new BlackScreen();
			add(fade);
			fade.completed == false;
			add(menuBG);
			add(pressBtnDialogue);
			add(helpScreen);
			helpScreen.profText.text = "Press SPACE to pwn, move with W,A,S,D";
			helpScreen.profText.align = "center";
			helpScreen.x = FP.halfWidth / 6 - (pressBtnDialogue.profText.width);
			helpScreen.y = 100;
			helpScreen.profText.color = 0xff0000;
			pressBtnDialogue.profText.text = "press H to go back to menu";
			pressBtnDialogue.profText.align = "center";
			pressBtnDialogue.x = FP.halfWidth / 2 - (pressBtnDialogue.profText.width / 3);
			pressBtnDialogue.y = 470;
			pressBtnDialogue.profText.color = 0xff0000;
		}
		
		override public function update():void 
		{
			if (done == false)
			{
				fade.fadeIn();
				done = true;
			}	
			if (Input.pressed(Key.H))
			{
				FP.world = new MenuWorld;
			}
			super.update();
			/*		Placeholder until I decide how to do better gui transitions.
			 * 
			 * 
			 * if (Input.pressed(Key.z) 
			{
				FP.world = new optionsWorld;
			}
			*/
		}
		
	}

}
/*
package  
{
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import BlackScreen;
	
	/**
	 * ...
	 * @author konsnos
	 *//*
	public class MainWorld extends World 
	{
		public var fade:BlackScreen;
		
		public function MainWorld() 
		{
			FP.screen.color = 0xFFFFFF;
			fade = new BlackScreen();
			add(fade);
		}
		
		override public function update():void 
		{
			if (fade.completed == true)
			{
				if (FP.random > 0.5)
				{
					fade.fadeIn();
				}
				else 
				{
					fade.fadeOut();
				}
			}
			
			super.update();
		}
		
	}
*/