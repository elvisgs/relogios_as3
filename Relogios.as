package {
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	public class Relogios extends Sprite {
		public function Relogios() {
			init();
		}
		
		private function init():void {
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var analog:RelogioAnalogico = new RelogioAnalogico();
			addChild(analog);
			analog.x = stage.stageWidth / 2;
			analog.y = stage.stageHeight / 2 - 30;
			analog.scaleX = analog.scaleY = 1.5;
			
			var digi:RelogioDigital = new RelogioDigital();
			addChild(digi);
			digi.x = stage.stageWidth / 2 - 463;
			digi.y = stage.stageHeight / 2 - 200;
		}
	}
}