package {
    import flash.display.*;
    import flash.events.*;

    public class Button extends MovieClip {

		private var init:Boolean = false;
		private var main:Main;

		public function Button(_main:Main){
			main = _main;
			this.addEventListener(MouseEvent.CLICK,mouseClick);
			gotoAndStop(1);
		}

		public function mouseClick(ev:MouseEvent){
			if(!init)
			{
				main.startContent();
				gotoAndStop(2);
				init = !init;
			}else{
				main.endContent();
			}
		}
	}
}