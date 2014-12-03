/**
 * 
 */
package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.setInterval;
	import flash.utils.setTimeout;
	
	import config.TestXML;
	
	import socket.ClientSocket;
	
	import view.TestView;


	[SWF(width = "600", height = "600")]
	public class ClientTest extends Sprite
	{
		private var _testView : TestView;
		private var _socket:ClientSocket;
		private var _xml:TestXML;

		public function ClientTest()
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(evt : Event) : void
		{
			_testView = TestView.getInstance();
			this.addChild(_testView);
			
			_xml = TestXML.getInstance();
			setTimeout(setConfig,500);
		}
		public function setConfig():void
		{
			_socket=ClientSocket.getInstance();
			_socket.init(_xml.getIP(),_xml.getPORT(),_xml.getCROSSDOMAIN());
		}
	}
}
