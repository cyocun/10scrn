package
{
	import flash.display.*;
  import flash.events.*;
	import a24.tween.Tween24;
	import a24.tween.events.Tween24Event;

	public class Product extends MovieClip
	{
		//Properties

		//Member variable
		protected var maskShape:Shape;

		//Constructor
		public function Product()
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

			//maskShape
			maskShape = new Shape;
			maskShape.graphics.beginFill(0xFFF);
			maskShape.graphics.drawRect(0, 0, this.width, this.height);
			maskShape.graphics.endFill();
			maskShape.x = 0;
			maskShape.y = 0;
			maskShape.width = 0;
			addChild(maskShape);

			ProductContent.mask = maskShape;
		}

		/**
		* show
		*/
		public function show()
		{
			Tween24.tween(maskShape, .7, Tween24.ease.ExpoInOut)
				.width(this.width)
				.play();
			trace("Hello," , this);
		}

		/**
		* hide
		*/
		public function hide()
		{
			Tween24.tween(maskShape, .5, Tween24.ease.ExpoInOut)
				.width(0)
				.play();
			trace("goodbye," , this);
		}

	}

}