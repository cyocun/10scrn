package
{
	import flash.display.*;
  import flash.events.*;
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	import Commander;

	public class Main extends Sprite
	{
		//Properties

		//Member variable a.k.a 演者
		public var bg_mc:MovieClip;					//背景のmovieClip
		public var title_mc:MovieClip;			//タイトルのmovieClip
		public var lead_mc:MovieClip;				//本文のmovieClip
		public var rectangle_mc:MovieClip;	//白い帯
		public var product_mc:MovieClip;		//製品画像
		//public var button_mc:MovieClip;			//テスト駆動用
		private var _commander:Commander;		//司令塔

		//Constructor
		public function Main():void
		{
			if (stage) init(null);
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}

		/**
		* init
		* システムにaddChild()されたとき実行されます。
		*/
		private function init(ev:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);

			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.SHOW_ALL;
			_commander = new Commander( this );

			//Background
			bg_mc = new BackGround();
			bg_mc.x = 0;
			bg_mc.y = 0;
			addChild(bg_mc);

			//Rectangle
			rectangle_mc = new Rectangle();
			rectangle_mc.x = 0;
			rectangle_mc.y = 0;
			addChild(rectangle_mc);

			//Title
			title_mc = new Title();
			title_mc.x = 120;
			title_mc.y = 120;
			addChild(title_mc);

			//Lead
			lead_mc = new Lead();
			lead_mc.x = 120;
			lead_mc.y = title_mc.y + title_mc.height + 90;
			addChild(lead_mc);

			//Product
			product_mc = new Product();
			product_mc.x = 120;
			product_mc.y = 2160 - product_mc.height;
			addChild(product_mc);

			//button
			//button_mc = new Button( this );
			//button_mc.x = 10;
			//button_mc.y = 10;
			//addChild(button_mc);

			//startContent();
		}

		/**
		* startContent
		* ワイプインアニメーションの開始と同時に実行されます。
		*/
		public function startContent():void
		{
			_commander.start();
		}

		/**
		* endContent
		* ワイプアウトアニメーションの1秒前に実行されます。
		*/
		public function endContent():void
		{
			_commander.end();
		}

	}

}

