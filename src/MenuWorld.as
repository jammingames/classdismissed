package
{
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.Sfx;
	import BlackScreen;
	
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class MenuWorld extends World 
	{
		public var fade:BlackScreen;
		private var done:Boolean = false;
		public var pressBtnDialogue:Dialogue = new Dialogue();
		public var helpScreen:Dialogue = new Dialogue();
		public var titleImage:Image = new Image(Assets.TITLE);
		public var menuBG:Entity = new Entity(0, 0, titleImage);
		
		public function MenuWorld() 
		{
			SoundBoard.i.musSong1.stop();
			FP.screen.color = 0xFFFFFF;
			fade = new BlackScreen();
			add(fade);
			
			add(menuBG);
			add(pressBtnDialogue);
			add(helpScreen);
			helpScreen.profText.text = "Press 'H' For Help";
			helpScreen.profText.align = "center";
			helpScreen.x = FP.halfWidth / 2 - (pressBtnDialogue.profText.width / 3);
			helpScreen.y = 500;
			helpScreen.profText.color = 0xff0000;
			pressBtnDialogue.profText.text = "Press Space to Play";
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
			if (Input.pressed(Key.SPACE))
			{
				FP.world = new SelectWorld;
			}
			if (Input.pressed(Key.H))
			{
				FP.world = new OptionsWorld;
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