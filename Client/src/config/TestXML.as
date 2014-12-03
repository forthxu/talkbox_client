package config
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	public class TestXML
	{
		private static var _this:TestXML;
		private var _ip:String;
		private var _port:uint;
		private var _crossdomain:String;
		
		public static function getInstance():TestXML
		{
			if(!_this)
				_this=new TestXML();
			return _this;
		}
		
		public function TestXML():void{
			var xmlLoader:URLLoader = new URLLoader();
			xmlLoader.addEventListener(Event.COMPLETE, onLoadXML);
			xmlLoader.load(new URLRequest("assets/config.xml"));
		}

		protected function onLoadXML(ev:Event):void
		{
			var xmlData:XML = new XML(ev.target.data);
			this._ip = xmlData.child("ip").toString();
			this._port = int(xmlData.child("port"));
			this._crossdomain = xmlData.child("crossdomain").toString();
		}
		public function getIP():String
		{
			return this._ip;
		}
		public function getPORT():uint
		{
			return this._port;
		}
		public function getCROSSDOMAIN():String
		{
			return this._crossdomain;
		}
	}
}