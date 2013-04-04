package 
{
	import adobe.utils.CustomActions;
	import flash.display.BitmapData;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import net.flashpunk.transition.*;
	import net.flashpunk.transition.effects.*;
	import net.flashpunk.Sfx;
	import Backgrounds;
	import Player;
	import Enemy;
	import Global;
	/**
	 * ...
	 * @author B Jammin Games
	 */
	public class GameWorld extends World 
	{
		private var maxEnemy:int = 18;
		private var scoreGUI:Dialogue = new Dialogue();
		private var timerGUI:Dialogue = new Dialogue();
		private var _score:int;
		public var counter:Number = 0.0;

		//public static var player:Player;
		
		
		public function GameWorld() 
		{
			//GameWorld.player = new Player;
			_score = 0;
			counter = 30;
			trace("Hello World");
		}
		override public function begin():void 
		{
			super.begin();
			SoundBoard.i.playSound(SoundBoard.i.musSong1, 0.7, 0, true);
			add(new Bg1());
			add(new Bg2());
			add(new Bg3());	
			
			add(new Player());
			
			
			var i:int = 0;
			for (i = 0; i < maxEnemy; i++)
			{
				add(new Enemy());
			}
			add(new Desk());
			add(scoreGUI);
			add(timerGUI);
			timerGUI.profText.text = "Countdown: " + counter.toString(); 
			timerGUI.x = 400;
			timerGUI.y = 30;
			timerGUI.profText.size = 48;
			timerGUI.profText.color = 0xff0000;
			scoreGUI.profText.text = "Score: " + _score.toString(); // + score;
			scoreGUI.x = 100;
			scoreGUI.y = 30;
			scoreGUI.profText.size = 48;
			scoreGUI.profText.color = 0xff0000;
			
			
			super.begin();
		}
		override public function end():void
		{
			Global._totalScore = _score;
		}
		public function get score():int
		{
			return _score;
		}
	public function addScore(points:int):void
		{
			_score += points;
			
			scoreGUI.profText.text = "Score: " + _score.toString();
		}
		
	
		override public function update():void 
		{
			 
		
		counter -= FP.elapsed;
		
		//counter = counter * counter / 0.1;
		if (counter <= 0)
		{
			FP.world = new GameoverWorld();
			counter = 30;
		
		}
		timerGUI.profText.text = "Timer: " + Math.floor(counter);
			
		//	square.x = Input.mouseX;
		//	square.y = Input.mouseY;
		/*	if (Input.mousePressed)
			{
				Image(square.graphic).color = FP.rand(0Xffffffff)
				trace("Mouse Pressed.");
			}*/
			super.update();
		}
	}

}