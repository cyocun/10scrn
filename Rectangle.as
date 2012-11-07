package
{
	import flash.display.MovieClip;

	public class Rectangle extends MovieClip
	{
		//Properties

		//Member variable

		//Constructor
		public function Rectangle()
		{

		}

		/**
		* show
		*/
		public function show()
		{
			trace("Hello," , this);
		}

		/**
		* hide
		*/
		public function hide()
		{
			trace("goodbye," , this);
		}

	}

}