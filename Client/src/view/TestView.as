package view
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.ui.Keyboard;
	
	import fl.controls.Label;
	import fl.controls.List;
	
	import socket.ClientSocket;
	
	import talkbox.talk_create;
	import talkbox.talk_message;


	/**
	 *
	 * @author forthxu.com
	 */
	public class TestView extends Sprite
	{
		private static var _this:TestView;
		
		private var _outputPanel:TextField;
		private var _inputPanel:TextField;
		private var _loginNameLebel:Label;
		private var _loginName:TextField;
		private var _login:Object;
		private var _usersList:List;
		private var _clientSocket:ClientSocket;
		private var _touserid:int;
		private var _tousername:String;

		public function TestView()
		{
			this.addEventListener(Event.ADDED_TO_STAGE, initView);
		}

		protected function initView(evt : Event) : void
		{
			//输出框
			_outputPanel = new TextField();
			_outputPanel.width = 495;
			_outputPanel.height = 498;
			_outputPanel.border = true;
			_outputPanel.type = TextFieldType.DYNAMIC;
			_outputPanel.defaultTextFormat = new TextFormat(null, 15, 0x0000FF, true);
			_outputPanel.wordWrap=true;
			this.addChild(_outputPanel);
			_outputPanel.x = 2;
			_outputPanel.y = 2;
			
			//用户列表
			_usersList = new List();
			_touserid = -1;
			_tousername = "所有人";
			_usersList.addItem({label:_tousername, userid:_touserid}); 
			
			_usersList.setSize(100, 498); 
			_usersList.move(497,2); 
			this.addChild(_usersList); 
			_usersList.addEventListener(Event.CHANGE, _usersListChangeHandler); 
			function _usersListChangeHandler(event:Event):void { 
				_touserid=event.target.selectedItem.userid;
				_tousername=event.target.selectedItem.label;
				//trace(event.target.selectedItem.userid);
			}
			var styleObj:Object;
			//styleObj = _usersList.getStyle();
			
			//内容发送框
			_inputPanel = new TextField();
			_inputPanel.width = 595;
			_inputPanel.height = 85;
			_inputPanel.border = true;
			_inputPanel.type = TextFieldType.INPUT;
			_inputPanel.defaultTextFormat = new TextFormat(null, 15, 0x00000, true);
			this.addChild(_inputPanel);
			_inputPanel.x = 2;
			_inputPanel.y = 510;
			_inputPanel.addEventListener(KeyboardEvent.KEY_DOWN,sendMsg);
			_inputPanel.visible=false;
			
			//登陆用户信息
			_login = new Object();
			_login.name = "";
			_login.userid = 0;
			
			//登陆提示文字
			_loginNameLebel = new Label();
			_loginNameLebel.width = 90;
			_loginNameLebel.height = 20;
			_loginNameLebel.text = "输入昵称：";
			this.addChild(_loginNameLebel);
			_loginNameLebel.x = 2;
			_loginNameLebel.y = 510;
			
			//登陆框
			_loginName = new TextField();
			_loginName.width = 505;
			_loginName.height = 20;
			_loginName.border = true;
			_loginName.type = TextFieldType.INPUT;
			_loginName.defaultTextFormat = new TextFormat(null, 15, 0x00000, true);
			this.addChild(_loginName);
			_loginName.x = 92;
			_loginName.y = 510;
			_loginName.addEventListener(KeyboardEvent.KEY_DOWN,login);
			
			//socket单例
			_clientSocket=ClientSocket.getInstance();

		}
		
		//登陆动作
		protected function login(evt:KeyboardEvent):void
		{
			if(evt.keyCode==Keyboard.ENTER)
			{
				if(_loginName.text!="")
				{
					_login.name = _loginName.text;
					//protocbuf
					var a1003:talk_create = new talk_create();
					a1003.userid = 1;
					a1003.name = _login.name;
				
					_clientSocket.sendLogin(a1003);
				}
				else
				{ 
					appendInfo("\n【系统】登陆名不能为空！");
				}
			}
		}
		
		public function enable_LoginPanel():void
		{
			_loginNameLebel.visible = false;
			_loginName.visible = false;
			_inputPanel.visible = true;
			appendInfo("\n【系统】登陆名："+_login.name);
			_clientSocket.getUsers();
		}
		
		public function setLogin(data:Object):void
		{
			_login.name=data.name;
			_login.userid=data.userid;
		}
		
		public function addUser(data:Object):void{
			this._usersList.addItem({label:data.name, userid:data.userid}); 
		}
		
		public function rmUser(data:int):void{
			var arr:Array=_usersList.dataProvider.toArray();
			
			for each (var user:Object in arr)
			{
				if(user.userid==data){
					_usersList.removeItem(user)
				}
			}
		}
		
		protected function sendMsg(evt:KeyboardEvent):void
		{
			if(evt.keyCode==Keyboard.ENTER)
			{
				if(_inputPanel.text!="")
				{
					//组装协议
					var a1005:talk_message = new talk_message();
					a1005.fromuserid = _login.userid;
					a1005.touserid = _touserid;
					a1005.msg = _inputPanel.text;
					_clientSocket.sendMsg(a1005);
					appendInfo("\n【我】发给【"+_tousername+"】："+a1005.msg);
				}
				else
				{ 
					appendInfo("内容不能为空！");
				}
			}
		}
		
		public function receiveMsg(data:Object):void
		{
			var fromuser:Object=new Object();
			var touser:Object=new Object();
			var arr:Array=_usersList.dataProvider.toArray();

			for each (var user:Object in arr)
			{
				trace(user.userid)
				
				if(user.userid==data.fromuserid){
					fromuser=user;
				}
				if(user.userid==data.touserid){
					touser=user;
				}
			}
			
			appendInfo("\n【"+fromuser.label+"】发给【"+touser.label+"】："+data.msg);
		}

		public function appendInfo(str:String):void
		{
			_outputPanel.appendText(str+"\n");
			_outputPanel.scrollV=_outputPanel.maxScrollV;
		}
		
		public function clearInput():void
		{
			_inputPanel.text="";
		}
		
		public static function getInstance():TestView
		{
			if(!_this)
				_this=new TestView();
			return _this;
		}
	}
}
