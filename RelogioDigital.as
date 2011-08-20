package {
	import flash.display.Sprite;
	import flash.utils.setInterval;

	public class RelogioDigital extends Sprite {
		private var digitos:Array;
		private var dataHora:Date;
		private var tamDigito:int = 25 * 8;
		
		private var lastDigit1:int = -1;
		private var lastDigit2:int = -1;
		private var lastDigit3:int = -1;
		private var lastDigit4:int = -1;
		
		public function RelogioDigital() {
			init();
		}
		
		private function init():void {
			digitos = new Array();
			var pos:int = 0;
			
			for(var i:int = 0; i < 5; i++) {
				digitos[i] = new Digito();
				addChild(digitos[i]);
				digitos[i].x = pos;
				digitos[i].y = 0;
				pos += tamDigito + 25;
			}
			digitos[2].setChar(":");
			digitos[3].x -= 25 * 6;
			digitos[4].x -= 25 * 6;
			
			atualizaHora();
			setInterval(atualizaHora, 1000);  
		}
		
		private function atualizaHora():void {
			dataHora = new Date();
			var hora:Number = dataHora.hours;
			var min:Number = dataHora.minutes;
			var seg:Number = dataHora.seconds;

			var horaDigit1:int = (hora / 10);
			var horaDigit2:int = (hora % 10);
			var minDigit1:int = (min / 10);
			var minDigit2:int = (min % 10);
			
			if(horaDigit1 != lastDigit1) {
				digitos[0].setChar(horaDigit1.toString());
				lastDigit1 = horaDigit1;
			}
			if(horaDigit2 != lastDigit2) {
				digitos[1].setChar(horaDigit2.toString());
				lastDigit2 = horaDigit2;
			}
			if(minDigit1 != lastDigit3) {
				digitos[3].setChar(minDigit1.toString());
				lastDigit3 = minDigit1;
			}
			if(minDigit2 != lastDigit4) {
				digitos[4].setChar(minDigit2.toString());
				lastDigit4 = minDigit2;
			}
		}
	}
}