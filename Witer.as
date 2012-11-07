package
{
	import flash.utils.Timer;
	import flash.events.TimerEvent;

	public class Witer
	{

		/**
		* wait
		* @param time:int ミリ秒
		* @param hander:Funtion メソッド
		* @return undefined
		*/
		function wait(time:int, handler:Function):void
		{
				var timer:Timer = new Timer(time, 1);
				timer.addEventListener(TimerEvent.TIMER_COMPLETE, timerHandler);
				timer.start();
				function timerHandler(event:TimerEvent):void
				{
						handler();
						timer.removeEventListener(TimerEvent.TIMER_COMPLETE, timerHandler);
				}
		}

	}

}