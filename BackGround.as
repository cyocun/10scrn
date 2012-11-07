package
{
	import flash.display.MovieClip;

	public class BackGround extends MovieClip
	{
		//Properties

		//Member variable

		//Constructor

		public function BackGround()
		{
			stop();
		}

		/**
		* show
		* 自身の表示アニメーションを実行します。
		*/
		public function show()
		{
			trace("Hello," , this);
			gotoAndPlay(1);
		}

		/**
		* hide
		* 自身の非表示アニメーションを実行します。
		*/
		public function hide()
		{
			trace("goodbye," , this);
		}

	}

}