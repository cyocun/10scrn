package
{
	import flash.display.*;
  import flash.events.*;
	import a24.tween.Tween24;
	import a24.tween.events.Tween24Event;

	public class Letters extends MovieClip
	{
		//Properties
		//private var tween:Tween24;

		//Member variable
		//protected var contentRear:MovieClip;
		//protected var contentFront:MovieClip;
		protected var maskShapeRear:Shape;
		protected var maskShapeFront:Shape;

		//Constructor
		public function Letters()
		{
			if (stage) init(null);
			else addEventListener(Event.ADDED_TO_STAGE, init);

		}

		/**
		* init
		*/
		public function init(ev:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);

		}

		/**
		* setup
		*/
		protected function setup(rear:MovieClip, front:MovieClip)
		{
			var contentRear:MovieClip = rear;
			var contentFront:MovieClip = front;

			//contentcontentRear
			contentRear.alpha = 0.2;

			//maskShapeRear
			maskShapeRear = new Shape;
			maskShapeRear.graphics.beginFill(0xFFF);
			maskShapeRear.graphics.drawRect(0, 0, this.width, this.height);
			maskShapeRear.graphics.endFill();
			maskShapeRear.x = 0;
			maskShapeRear.y = 0;
			maskShapeRear.width = 0;
			addChild(maskShapeRear);

			contentRear.mask = maskShapeRear;

			//contentcontentRear
			contentFront.alpha = 1;

			//maskShapeFront
			maskShapeFront = new Shape;
			maskShapeFront.graphics.beginFill(0xFFF);
			maskShapeFront.graphics.drawRect(0, 0, this.width, this.height);
			maskShapeFront.graphics.endFill();
			maskShapeFront.x = 0;
			maskShapeFront.y = 0;
			maskShapeFront.width = 0;
			addChild(maskShapeFront);

			contentFront.mask = maskShapeFront;
		}

		/**
		* show
		*/
		public function show()
		{
			Tween24.tween(maskShapeRear, .5, Tween24.ease.ExpoInOut)
				.width(this.width)
				.play();
			Tween24.tween(maskShapeFront, .5, Tween24.ease.ExpoInOut)
				.width(this.width)
				.delay(.3)
				.play();
			trace("Hello," , this);
		}

		/**
		* hide
		*/
		public function hide()
		{
			Tween24.tween([ maskShapeRear, maskShapeFront ], .5, Tween24.ease.ExpoInOut)
				.width(0)
				.play();
			trace("goodbye," , this);
		}

	}

}