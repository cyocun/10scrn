package
{
	import flash.display.*;
  import flash.events.*;

	public class BackGround extends MovieClip
	{
		//Properties

		//Member variable

		//Constructor
		public function BackGround()
		{
			if (stage) init(null);
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}

		/**
		* init
		*/
		private function init(ev:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stop();
		}

		/**
		* show
		* 自身の表示アニメーションを実行します。
		*/
		public function show()
		{
			trace("Hello," , this);
			gotoAndPlay(1);
		}

		/**
		* hide
		* 自身の非表示アニメーションを実行します。
		*/
		public function hide()
		{
			trace("goodbye," , this);
		}

	}

}