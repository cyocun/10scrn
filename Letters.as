package
{
	import flash.display.*;

	public class Letters extends MovieClip
	{
		//Properties

		//Member variable
		protected var contentRear:MovieClip;
		protected var maskShapeRear:Shape;

		protected var contentFront:MovieClip;
		protected var maskShapeFront:Shape;

		//Constructor
		public function Letters(front:MovieClip, rear:MovieClip)
		{
			contentRear = rear;
			contentFront = front;

			//contentcontentRear
			contentRear.alpha = 0.5;

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
			maskShapeRear.width = this.width;
			maskShapeFront.width = this.width;
			trace("Hello," , this);
		}

		/**
		* hide
		*/
		public function hide()
		{
			maskShapeRear.width = 0;
			maskShapeFront.width = 0;
			trace("goodbye," , this);
		}

	}

}