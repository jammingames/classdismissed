package 
{
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Assets 
	{
//graphics
	//MenuWorld Objects
		[Embed(source = "../assets/graphics/startScreen.png")] public static const TITLE:Class;
		[Embed(source = "../assets/graphics/papper.png")] public static const HELP:Class;
		[Embed(source = "../assets/graphics/game over.png")] public static const GO:Class;
		
	//Gui objects
	
		[Embed(source = "../assets/graphics/button.png")] public static const BUTTON:Class;
		[Embed(source = "../assets/graphics/button_down.png")] public static const BUTTON_DOWN:Class;
		[Embed(source = "../assets/graphics/button_hover.png")]  public static const BUTTON_HOVER:Class;
		[Embed(source = "../assets/graphics/checkbox.png")] public static const CHECKBOX:Class;
		[Embed(source = "../assets/graphics/radiobutton.png")] public static const RADIOBUTTON:Class;
		
		
		
	//Game Level objects
		[Embed(source = "../assets/graphics/bg1.png")] public static const BG1:Class;
		[Embed(source = "../assets/graphics/bg2.png")] public static const BG2:Class;
		[Embed(source = "../assets/graphics/bg3.png")] public static const BG3:Class;
	//	[Embed(source = "../assets/graphics/bg4.png")] public static const BG4:Class;
	//	[Embed(source = "../assets/graphics/bg5.png")] public static const BG5:Class;
		[Embed(source = "../assets/graphics/desk.png")] public static const DESK:Class;

	//player
		[Embed(source = "../assets/graphics/Rob.png")] public static const PLAYER_GRAPHIC:Class;
		[Embed(source = "../assets/graphics/Darren.png")] public static const PLAYER_GRAPHIC2:Class;
		[Embed(source = "../assets/graphics/Paul.png")] public static const PLAYER_GRAPHIC3:Class;
		[Embed(source = "../assets/graphics/Rocco.png")] public static const PLAYER_GRAPHIC4:Class;
		[Embed(source = "../assets/graphics/Topher.png")] public static const PLAYER_GRAPHIC5:Class;
		[Embed(source="../assets/graphics/Jp.png")] public static const PLAYER_GRAPHIC6:Class;
	//enemies
		[Embed(source = "../assets/graphics/stdSheetfixed.png")] public static const ENEMY_GRAPHIC:Class;
//SFX
	//music
		[Embed(source = "../assets/sfx/thelimit.mp3")] public static const ROB_SONG:Class;
	}

}