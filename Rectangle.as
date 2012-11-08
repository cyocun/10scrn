package
{
	import flash.display.*;
  import flash.events.*;
	import a24.tween.Tween24;
	import a24.tween.events.Tween24Event;

	public class Rectangle extends MovieClip
	{
		//Properties

		//Member variable
		protected var shape:Shape;

		//Constructor
		public function Rectangle()
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

			//shape
			shape = new Shape;
			shape.graphics.beginFill(0xFFFFFF);
			shape.graphics.drawRect(0, 0, 1200, 2160);
			shape.graphics.endFill();
			shape.x = 0;
			shape.y = 0;
			shape.height = 0;
			shape.alpha = .7;
			addChild(shape);

		}

		/**
		* show
		*/
		public function show()
		{
			Tween24.tween(shape, .7, Tween24.ease.ExpoInOut)
				.height(2160)
				.play();
			trace("Hello," , this);
		}

		/**
		* hide
		*/
		public function hide()
		{
			Tween24.tween(shape, .5, Tween24.ease.ExpoInOut)
				.height(0)
				.play();
			trace("goodbye," , this);
		}

	}

}