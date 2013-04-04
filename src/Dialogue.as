package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class Dialogue extends Entity 
	{
		public var profText:Text;
		
		public function Dialogue() 
		{
		profText = new Text("");
		profText.size = 32;
		graphic = profText;
		profText.align = "center";
		layer = -1;
		}
		
	}

}