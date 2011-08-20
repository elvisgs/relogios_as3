package {
	import flash.display.Shape;
	
	public class Bloco extends Shape {
		private var tam:Number;
		
		public function Bloco(tam:Number = 25) {
			this.tam = tam;
			init();
		}
		
		private function init():void {
			graphics.lineStyle(1, 0xFFFFFF);
			graphics.beginFill(0, .6);
			graphics.drawRect(0, 0, tam, tam);
			graphics.endFill();
		}
	}
}