package   
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class GameScore extends Entity 
	{
	
		private var _score:int;
		
		public function GameScore() 
		{	

			_score = 0;
			
		}
		public function addScore(points:int):void
		{
			_score += points;
			
	
		}
		
		public function destroy():void
		{
			graphic = null;
		}
	}

}