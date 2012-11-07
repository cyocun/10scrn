package
{
	import flash.display.*;

	public class Product extends MovieClip
	{
		//Properties

		//Member variable
		private var container:Sprite;		//マスクされるコンテナ
		private var content:MovieClip;	//コンテナに入れるコンテンツ
		private var maskShape:Shape;		//マスク

		//Constructor
		public function Product()
		{
			//container
			container = new Sprite;
			container.x = 0;
			container.y = 0;
			addChild(container);

			//content
			content = new ProductContent;
			content.x = 0;
			content.y = 0;
			container.addChild(content);

			//maskShape
			maskShape = new Shape;
			maskShape.graphics.beginFill(0xFFF);
			maskShape.graphics.drawRect(0, 0, content.width, content.height);
			maskShape.graphics.endFill();
			maskShape.x = 0;
			maskShape.y = 0;
			maskShape.width = 0;
			addChild(maskShape);

			//マスク処理
			container.mask = maskShape;
		}

		/**
		* show
		*/
		public function show()
		{
			maskShape.width = content.width;
			trace("Hello," , this);
		}

		/**
		* hide
		*/
		public function hide()
		{
			maskShape.width = 0;
			trace("goodbye," , this);
		}

	}

}