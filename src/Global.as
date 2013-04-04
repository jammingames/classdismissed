package 
{
	import net.flashpunk.graphics.Spritemap;
	import Player;
	import Enemy;
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Global 
	{
		
		public static var
			player:Player,
			playerGFX:int,
			enemy:Enemy,
			_highScore:int,
			_totalScore:int,
			_hit:Boolean,
			attacking:Boolean,
			rate:int = 1;
	}

}