package
{
	import flash.display.*;

	public class Title extends Letters
	{
		//Properties

		//Member variable

		//Constructor
		public function Title()
		{
			trace(TitleContentFront)
			//↑mcの中においてあるインスタンス名。null..
			super(TitleContentFront, TitleContentRear);
		}

		/**
		* show
		*/
		override public function show()
		{
			trace("Hello," , this);
		}

		/**
		* hide
		*/
		override public function hide()
		{
			trace("goodbye," , this);
		}

	}

}