package
{
	import flash.display.*;
  import flash.events.*;
	import Witer;

	public class Commander extends Sprite
	{
		//Properties

		//Member variable
		private var _waiter:Witer;
		private var _main:Main;

		//Constructor
		public function Commander( main:Main ):void
		{
			if (stage) init(null);
			else addEventListener(Event.ADDED_TO_STAGE, init);

			_main = main;
			_waiter = new Witer();
		}

		/**
		* init
		*/
		private function init(ev:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
		}

		/**
		* start
		* コンテンツの表示アニメーションを実行します。
		*/
		public function start():void
		{
			_main.bg_mc.show();
			_waiter.wait(200, _main.rectangle_mc.show);
			_waiter.wait(800, _main.title_mc.show);
			_waiter.wait(1200, _main.lead_mc.show);
			_waiter.wait(1700, _main.product_mc.show);
		}

		/**
		* start
		* コンテンツの終了アニメーションを実行します。
		*/
		public function end():void
		{
			_waiter.wait(0, _main.title_mc.hide);
			_waiter.wait(200, _main.lead_mc.hide);
			_waiter.wait(400, _main.product_mc.hide);
			_waiter.wait(900, _main.rectangle_mc.hide);
		}

	}

}