package
{
	import flash.display.*;
  import flash.events.*;
	import a24.tween.Tween24;
	import a24.tween.events.Tween24Event;

	public class Title extends Letters
	{
		//Properties

		//Member variable

		//Constructor
		public function Title()
		{
			//if (stage) init(null);
			//else addEventListener(Event.ADDED_TO_STAGE, init);
			super.setup(TitleContentFront, TitleContentRear);
		}

		/**
		* init
		*/
		//override function init(ev:Event):void
		//{
		//	removeEventListener(Event.ADDED_TO_STAGE, init);
		//}

		/**
		* show
		*/
		//override public function show()
		//{
		//	trace("Hello," , this);
		//}

		/**
		* hide
		*/
		//override public function hide()
		//{
		//	trace("goodbye," , this);
		//}

	}

}