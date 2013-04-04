package  
{
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Stamp;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import ui.Button;
	import ui.Checkbox;
	import ui.RadioButton;
	import ui.RadioButtonGroup;
	import ui.TextInput;
	
	public class SelectWorld extends World 
	{
		private var nameInput:TextInput;
		
		private var p1Rad:RadioButton;
		private var p2Rad:RadioButton;
		private var p3Rad:RadioButton;
		private var p4Rad:RadioButton;
		private var p5Rad:RadioButton;
		
		
		private var p1:Stamp;
		private var p2:Stamp;
		private var p3:Stamp;
		private var p4:Stamp;
		private var p5:Stamp;
		
		private var friend:Stamp;
		private var hat:Stamp;
		private var laser:Stamp;
		private var wing:Stamp;
		
		public function SelectWorld() 
		{
			
			
			//=============
			FP.screen.color = 0x666666;
			p1 = new Stamp(Assets.PLAYER_GRAPHIC, 250, 20);
			p2 = new Stamp(Assets.PLAYER_GRAPHIC2, 250, 20);
			p3 = new Stamp(Assets.PLAYER_GRAPHIC3, 250, 20);
			p4 = new Stamp(Assets.PLAYER_GRAPHIC4, 250, 20);
			p5 = new Stamp(Assets.PLAYER_GRAPHIC5, 250, 20);
			
			
			
			p2.visible = p3.visible = p4.visible = p5.visible = false;
			
			addGraphic(new Graphiclist(p1, p2, p3, p4, p5));
			
			
			//===============
			addGraphic(new Text("Who shall you pwn thine students with?", 10, 10, { size: 32, color: 0xff0000 } ));
			
			addGraphic(new Text("Pwner:", 10, 120, { size: 16, color: 0x8CD5FB } ));
			
			var typeGroup:RadioButtonGroup = new RadioButtonGroup(onType);
			add(p1Rad = new RadioButton(10, 150, typeGroup, "Wreck It Rob", p1, true));
			add(p2Rad = new RadioButton(10, 200, typeGroup, "Baron Von Darren", p2));
			add(p3Rad = new RadioButton(10, 250, typeGroup, "Captain Jack Leli", p3));
			add(p4Rad = new RadioButton(10, 300, typeGroup, "The Rocco Horror", p4));
			add(p5Rad = new RadioButton(10, 350, typeGroup, "Tophinator", p5));
			Global.playerGFX = 1;
			add(new Button(10, 450, "Random", onRandom));
			add(new Button(200, 450, "Start", onStart));
		}
		
		private function onType(params:Object):void
		{	
			p1.visible = p2.visible = p3.visible = p4.visible = p5.visible = false;
			params.visible = true;
			
			switch (params) {
				case p1:
					Global.playerGFX = 1;
					break;
				case p2:
					Global.playerGFX = 2;
					break;
				case p3:
					Global.playerGFX = 3;
					break;	
				case p4:
					Global.playerGFX = 4;
					break;
				case p5:
					Global.playerGFX = 5;
					break;
				default:
					Global.playerGFX = 1;
					break;
			}
			trace (Global.playerGFX);
		}
		
		private function onFeature(on:Boolean, params:Object):void
		{
			params.visible = on;
		}
		private function onStart():void 
		{
				FP.world = new GameWorld;
		}
		private function onRandom():void
		{
			p1.visible = p2.visible = p3.visible = p4.visible = p5.visible = false;
			p1Rad.checked = p2Rad.checked = p3Rad.checked = p4Rad.checked = p5Rad.checked = false;
			
			var type:int = Math.random() * 5;
			if (type < 1)
			{
				p1.visible = true;
				p1Rad.checked = true;
				Global.playerGFX = 1;
			}
			else if (type < 2)
			{
				p2.visible = true;
				p2Rad.checked = true;
				Global.playerGFX = 2;
			}
			else if (type < 3)
			{
				p3.visible = true;
				p3Rad.checked = true;
				Global.playerGFX = 3;
			}
			else if (type < 4)
			{
				p4.visible = true;
				p4Rad.checked = true;
				Global.playerGFX = 4;
			}
			else if (type < 5)
			{
				p5.visible = true;
				p5Rad.checked = true;
				Global.playerGFX = 5;
			}
			
		}
	}
}