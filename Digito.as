package {
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.setTimeout;
	import caurina.transitions.Tweener;
	
	public class Digito extends Sprite {
		private var char:String;
		
		private var grade:Array;
		private var objs:Array;
		private var blocos:Array;
		private var numBlocosX:int = 8;
		private var numBlocosY:int = 14;
		private var tamBloco:int = 25;
		
		public function Digito(char:String = null) {
			if(char != null) {
				this.char = char;
			}
			init();
		}
		
		private function init():void {				
			grade = new Array();
	
			for(var i:int = 0; i < numBlocosY; i++)
				grade[i] = new Array();
				
			objs   = new Array();
			blocos = new Array();
			
			for(i = 0; i < numBlocosY; i++) {
				objs[i] = new Array();
				blocos[i] = new Array();
				for(var j:int = 0; j < numBlocosX; j++) {
					objs[i][j]   = new Object();
					objs[i][j].x = j * tamBloco;
					objs[i][j].y = i * tamBloco;
					
					blocos[i][j] = new Bloco(tamBloco);
					addChild(blocos[i][j]);
				}
			}
			
			if(char != null) criaDigito();
		}
		
		private function criaDigito():void {
			setGrade();
			
			for(var i:int = 0; i < numBlocosY; i++) {
				for(var j:int = 0; j < numBlocosX; j++) {
					var duracao:Number = (Math.random() * 30 + 10) / 10;
					var espera:Number = Math.random() * 4;
					
					blocos[i][j].x = 1300;
					blocos[i][j].y = Math.random() * 800;
					blocos[i][j].visible = false;
					
					if(grade[i][j] == 1) {
						blocos[i][j].visible = true;
					}

					Tweener.addTween(blocos[i][j], {x: objs[i][j].x, time: duracao, delay: espera});
					Tweener.addTween(blocos[i][j], {y: objs[i][j].y, time: duracao, delay: espera});
				}
			}
		}

		private function setGrade():void {						
			switch(char) {
				case "1":
				grade[0]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[1]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[2]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[3]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[4]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[5]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[6]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[7]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[8]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[9]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[10] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[11] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[12] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[13] = [0, 0, 0, 0, 0, 0, 1, 1];
				break;
				
				case "2":
				grade[0]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[1]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[2]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[3]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[4]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[5]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[6]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[7]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[8]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[9]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[10] = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[11] = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[12] = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[13] = [1, 1, 1, 1, 1, 1, 1, 1];
				break;
				
				case "3":
				grade[0]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[1]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[2]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[3]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[4]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[5]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[6]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[7]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[8]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[9]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[10] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[11] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[12] = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[13] = [1, 1, 1, 1, 1, 1, 1, 1];
				break;
				
				case "4":
				grade[0]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[1]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[2]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[3]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[4]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[5]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[6]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[7]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[8]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[9]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[10] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[11] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[12] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[13] = [0, 0, 0, 0, 0, 0, 1, 1];
				break;
				
				case "5":
				grade[0]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[1]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[2]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[3]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[4]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[5]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[6]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[7]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[8]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[9]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[10] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[11] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[12] = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[13] = [1, 1, 1, 1, 1, 1, 1, 1];
				break;
				
				case "6":
				grade[0]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[1]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[2]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[3]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[4]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[5]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[6]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[7]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[8]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[9]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[10] = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[11] = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[12] = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[13] = [1, 1, 1, 1, 1, 1, 1, 1];
				break;
				
				case "7":
				grade[0]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[1]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[2]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[3]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[4]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[5]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[6]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[7]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[8]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[9]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[10] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[11] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[12] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[13] = [0, 0, 0, 0, 0, 0, 1, 1];
				break;
				
				case "8":
				grade[0]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[1]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[2]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[3]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[4]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[5]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[6]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[7]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[8]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[9]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[10] = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[11] = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[12] = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[13] = [1, 1, 1, 1, 1, 1, 1, 1];
				break;
				
				case "9":
				grade[0]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[1]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[2]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[3]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[4]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[5]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[6]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[7]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[8]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[9]  = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[10] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[11] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[12] = [0, 0, 0, 0, 0, 0, 1, 1];
				grade[13] = [0, 0, 0, 0, 0, 0, 1, 1];
				break;
				
				case "0":
				grade[0]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[1]  = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[2]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[3]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[4]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[5]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[6]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[7]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[8]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[9]  = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[10] = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[11] = [1, 1, 0, 0, 0, 0, 1, 1];
				grade[12] = [1, 1, 1, 1, 1, 1, 1, 1];
				grade[13] = [1, 1, 1, 1, 1, 1, 1, 1];
				break;
				
				case ":":
				grade[0]  = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[1]  = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[2]  = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[3]  = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[4]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[5]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[6]  = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[7]  = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[8]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[9]  = [1, 1, 0, 0, 0, 0, 0, 0];
				grade[10] = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[11] = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[12] = [0, 0, 0, 0, 0, 0, 0, 0];
				grade[13] = [0, 0, 0, 0, 0, 0, 0, 0];
				break;
			}
		}
		
		public function setChar(char:String):void {
			if(this.char != null) {
				this.char = char;
				desfazDigito();
				setTimeout(criaDigito, 5000);
			}
			else {
				this.char = char;
				criaDigito();
			}
		}
		
		private function desfazDigito():void {
			for(var i:int = 0; i < numBlocosY; i++) {
				for(var j:int = 0; j < numBlocosX; j++) {
					var duracao:Number = (Math.random() * 30 + 10) / 10;
					var espera:Number = Math.random() * 4;

					Tweener.addTween(blocos[i][j], {y: 800, time: duracao, delay: espera});
				}
			}
		}
	}
}