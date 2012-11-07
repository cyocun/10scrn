package
{
	import Witer;

	public class Commander
	{
		//Properties

		//Member variable
		private var _waiter:Witer;
		private var _main:Main;

		//Constructor
		public function Commander( main:Main ):void
		{
			_main = main;
			init();
		}

		/**
		* init
		*/
		private function init():void
		{
			_waiter = new Witer();
		}

		/**
		* start
		* コンテンツの表示アニメーションを実行します。
		*/
		public function start():void
		{
			_main.bg_mc.show();
			_waiter.wait(1000, _main.rectangle_mc.show);
			_waiter.wait(2000, _main.title_mc.show);
			_waiter.wait(3000, _main.lead_mc.show);
			_waiter.wait(4000, _main.product_mc.show);
		}

		/**
		* start
		* コンテンツの終了アニメーションを実行します。
		*/
		public function end():void
		{
			_waiter.wait(500, _main.rectangle_mc.hide);
			_waiter.wait(700, _main.title_mc.hide);
			_waiter.wait(900, _main.lead_mc.hide);
			_waiter.wait(1000, _main.product_mc.hide);
		}

	}

}