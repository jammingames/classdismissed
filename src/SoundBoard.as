package 
{
	import net.flashpunk.Sfx;
	
	/**
	 * ...
	 * @author Matt Hofmann
	 */
	public class SoundBoard
	{
		// Singleton instance of SoundBoard
		private static var instance:SoundBoard = new SoundBoard();
		
		// Load music, prefix with mus*
		[Embed(source="../assets/sfx/thelimit.mp3")] private const SONG1:Class;
		public var musSong1:Sfx = new Sfx(SONG1);
		
		public function SoundBoard() 
		{
			
		}	
		
		public static function get i():SoundBoard
		{
			return instance;
		}
		
		public function playSound(snd:Sfx, vol:Number = 1, pan:Number = 0, loop:Boolean = false):void {
			snd.stop();
			if (loop) {
				snd.loop(vol, pan);
			}
			else {
				snd.play(vol, pan);
			}
		}
	}

}