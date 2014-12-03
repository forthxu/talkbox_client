package socket
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.Socket;
	import flash.system.Security;
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	
	import talkbox.talk_create;
	import talkbox.talk_message;
	import talkbox.talk_result;
	import talkbox.talk_users;
	
	import view.TestView;
	
	/*
	0 发送内容
	0 返回发送的内容
	
	1001 发送获取用户列表请求
	1002 返回用户列表数据
	
	1003 发送创建用户请求
	1000 返回创建用户结果
	1002 发给每个人新增用户列表数据
	1008 返回当前创建的用户信息
	
	1005 发送消息内容
	1000 返回发送消息结果
	1010 发给指定用户信息内容
	
	1011 主动发送断开连接的用户userid
	
	1000 用于返回请求结果，结果只有一个id
	0 创建用户成功
	1 服务端解析请求创建用户的protocbuf失败
	2 创建用户失败，名字已经存在
	3 服务端解析请求发送内容的protocbuf失败
	4 发送内容成
	*/

	/**
	 *
	 * @author forthxu.com
	 */
	public class ClientSocket extends Socket
	{
		private static var _this : ClientSocket;
		private static var _ip : String;
		private static var _port : uint;

		private var _testView : TestView;

		public function ClientSocket()
		{
			super();
		}
		
		public function init(host : String = null, port : uint = 10101,crossdomain:String=null):void{
			this.endian=Endian.LITTLE_ENDIAN
			_testView = TestView.getInstance();
			configureListeners();
			if(host && port)
			{
				_ip=host;
				_port=port;
				if(crossdomain)
					Security.loadPolicyFile(crossdomain);
				this.connect(host, port);
			}
		}

		public static function getInstance() : ClientSocket
		{
			if(!_this)
				_this = new ClientSocket();
			return _this;
		}

		private function configureListeners() : void
		{
			this.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);//io错误
			this.addEventListener(Event.CLOSE, closeHandler);//断开服务器
			this.addEventListener(Event.CONNECT, connectHandler);//连接服务器
			this.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorEventHandler);
			this.addEventListener(ProgressEvent.SOCKET_DATA, socketDataHandler);//服务器消息
		}

		protected function socketDataHandler(event : ProgressEvent) : void
		{
			var rec_byte : ByteArray =  new ByteArray();
			_this.readBytes(rec_byte);
			var s:Number = rec_byte.readShort();
			var v:Number = rec_byte.readShort();
			var p:int = rec_byte.readInt();
			//_testView.appendInfo("\n【系统】收到"+' 长度:'+s+' 版本:'+v+' 协议:'+p);
			switch(p) 
			{ 
				case 0: 
					var str:String = rec_byte.readUTFBytes(s-6);
					_testView.appendInfo("\n【系统】收到msg:"+str);
					break;
				case 1000:
					var b1000:ByteArray = new ByteArray();
					rec_byte.readBytes(b1000,0,s-6);
					var a1000:talk_result = new talk_result();
					b1000.position = 0;//至关重要
					a1000.mergeFrom(b1000);

					switch(a1000.id)
					{
						case 0://登陆成功
							_testView.enable_LoginPanel();
							break;
						case 1://解析protocbuf失败
							_testView.appendInfo("\n【系统】服务端解析protocbuf失败");
							break;
						case 2://名字已经存在
							_testView.appendInfo("\n【系统】登陆失败，名字已经存在");
							break;
						case 3:
							_testView.appendInfo("\n【系统】服务端解析protocbuf失败");
							break;
						case 4:
							//_testView.appendInfo("\n【系统】msg发送成功");
							break;
						default:
							
							break;
					}
					
					break;
				case 1002:
					var b1002:ByteArray = new ByteArray();
					rec_byte.readBytes(b1002,0,s-6);
					var a1002:talk_users = new talk_users();
					b1002.position = 0;//至关重要
					a1002.mergeFrom(b1002);
					for (var i:int = 0; i<a1002.users.length; i++) {
						_testView.addUser(a1002.users[i])
					}
					//_testView.appendInfo("\n【系统】获取用户列表成功");
					break;
				case 1004:
					var b1004:ByteArray = new ByteArray();
					rec_byte.readBytes(b1004,0,s-6);
					var a1004:talk_users = new talk_users();
					b1004.position = 0;//至关重要
					a1004.mergeFrom(b1004);
					a1004.users[0];
					//_testView.appendInfo("\n【系统】获取用户列表成功");
					break;
				case 1008:
					var b1008:ByteArray = new ByteArray();
					rec_byte.readBytes(b1008,0,s-6);
					var a1008:talk_create = new talk_create();
					b1008.position = 0;//至关重要
					a1008.mergeFrom(b1008);
					_testView.setLogin(a1008);
					break;
				case 1010:
					var b1010:ByteArray = new ByteArray();
					rec_byte.readBytes(b1010,0,s-6);
					var a1010:talk_message = new talk_message();
					b1010.position = 0;//至关重要
					a1010.mergeFrom(b1010);
					_testView.receiveMsg(a1010);
					//_testView.appendInfo("\n【系统】收到msg:"+a1010.msg);
					break;
				case 1011:
					var b1011:ByteArray = new ByteArray();
					rec_byte.readBytes(b1011,0,s-6);
					var a1011:talk_result = new talk_result();
					b1011.position = 0;//至关重要
					a1011.mergeFrom(b1011);
					_testView.rmUser(a1011.id);
					break;
				default:
					_testView.appendInfo("\n【系统】收到"+' 长度:'+s+' 版本:'+v+' 协议:'+p);
					_testView.appendInfo("\n【系统】协议未定");
					break;
			}
		}
		
		public function sendLogin(a1003:talk_create):void
		{
			var b1003:ByteArray = new ByteArray();
			b1003.writeShort(6);
			b1003.writeShort(1);
			b1003.writeInt(1003);
			a1003.writeTo(b1003);
			b1003.position=0;
			b1003.writeShort(b1003.length-2);

			sendMessage(b1003);
		}
		public function getUsers():void
		{
			//组装协议
			var b1:ByteArray = new ByteArray();
			b1.writeShort(6);
			b1.writeShort(1);
			b1.writeInt(1001);
			b1.writeUTFBytes("now")
			b1.position=0;
			b1.writeShort(b1.length-2);
			
			sendMessage(b1);
			
		}
		public function sendMsg(a1005:talk_message):void
		{
			//组装协议
			var b1005:ByteArray = new ByteArray();
			b1005.writeShort(6);
			b1005.writeShort(1);
			b1005.writeInt(1005);
			a1005.writeTo(b1005);
			b1005.position=0;
			b1005.writeShort(b1005.length-2);
			b1005.position=0;
			sendMessage(b1005);
		}
		public function sendMessage(data : ByteArray) : void
		{
			if(!data)
				return;
				try
				{
					writeBytes(data);
				}
				catch(error : Error)
				{
					_testView.appendInfo(error.message);
					return;
				}
			this.flush();
			_testView.clearInput();
		}

		protected function securityErrorEventHandler(event : SecurityErrorEvent) : void
		{
			_testView.appendInfo("securityErrorEventHandler: " + event+"\n");
		}

		protected function connectHandler(evt : Event) : void
		{
			_testView.appendInfo("\n【系统】连接到服务器: " + _ip + ":" + _port+ "成功！\n");
			
		}

		protected function closeHandler(event : Event) : void
		{
			_testView.appendInfo("\n【系统】与服务端断开连接: " + event+"\n");
		}

		protected function ioErrorHandler(event : IOErrorEvent) : void
		{
			_testView.appendInfo("\n【系统】iOErrorEvent: " + event+"\n");
		}
	}
}