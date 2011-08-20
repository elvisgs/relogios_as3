package {
	import flash.display.Sprite;
	import flash.display.Shape;
	import flash.events.Event;
	import flash.utils.setInterval;
	
	public class RelogioAnalogico extends Sprite {
		private var ponteiroHoras:Shape;
		private var ponteiroMins:Shape;
		private var ponteiroSegs:Shape;
		private var dataHora:Date;
		
		public function RelogioAnalogico() {
			var raio:Number = 200;
			var thickness:Number = 10;
			
			graphics.lineStyle(thickness, 0xCCCCCC);
			graphics.drawCircle(0, 0, raio);
			
			ponteiroMins = new Shape();
			ponteiroMins.graphics.lineStyle(thickness, 0xCCCCCC);
			ponteiroMins.graphics.lineTo(0, -(raio - 20));
			addChild(ponteiroMins);
			
			ponteiroHoras = new Shape();
			ponteiroHoras.graphics.lineStyle(thickness, 0xDDDDDD);
			ponteiroHoras.graphics.lineTo(0, -(raio - 70));
			addChild(ponteiroHoras);
			
			ponteiroSegs = new Shape();
			ponteiroSegs.graphics.lineStyle(2, 0);
			ponteiroSegs.graphics.moveTo(0, 7);
			ponteiroSegs.graphics.lineTo(0, -(raio - 20));
			addChild(ponteiroSegs);
			
			var centro:Shape = new Shape;
			centro.graphics.lineStyle(0, 0);
			centro.graphics.beginFill(0);
			centro.graphics.drawRect(-4, -4, 8, 8);
			centro.graphics.endFill();
			addChild(centro);

			init();
		}
		
		private function init():void {	
			atualizaHora();
			setInterval(atualizaHora, 1000);
		}
		
		private function atualizaHora():void {
			dataHora = new Date();
			var hora:Number = dataHora.hours;
			var min:Number = dataHora.minutes;
			var seg:Number = dataHora.seconds;

			ponteiroHoras.rotation = hora * 30;
			ponteiroMins.rotation = min * 6;
			ponteiroSegs.rotation = seg * 6;
		}
	}
}
			
			
			