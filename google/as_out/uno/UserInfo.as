package uno {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class UserInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const USERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.UserID", "userID", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var userID:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("uno.UserInfo.Name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const SEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Sex", "sex", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sex:int;

		/**
		 *  @private
		 */
		public static const ROLETYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.RoleType", "roleType", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roleType:int;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Level", "level", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:int;

		/**
		 *  @private
		 */
		public static const CURRENTEXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.CurrentExp", "currentExp", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var currentExp:int;

		/**
		 *  @private
		 */
		public static const MONEYGOLD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.MoneyGold", "moneyGold", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var moneyGold:int;

		/**
		 *  @private
		 */
		public static const MONEYCOPPER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.MoneyCopper", "moneyCopper", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		public var moneyCopper:int;

		/**
		 *  @private
		 */
		public static const HAIR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Hair", "hair", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hair:int;

		/**
		 *  @private
		 */
		public static const EYES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Eyes", "eyes", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		public var eyes:int;

		/**
		 *  @private
		 */
		public static const CLOTHES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Clothes", "clothes", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		public var clothes:int;

		/**
		 *  @private
		 */
		public static const BODY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Body", "body", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		public var body:int;

		/**
		 *  @private
		 */
		public static const SHADOW:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Shadow", "shadow", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shadow:int;

		/**
		 *  @private
		 */
		public static const BACKGROUND:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Background", "background", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		public var background:int;

		/**
		 *  @private
		 */
		public static const VIPLEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.VipLevel", "vipLevel", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		public var vipLevel:int;

		/**
		 *  @private
		 */
		public static const VIPGROW:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.VipGrow", "vipGrow", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		public var vipGrow:int;

		/**
		 *  @private
		 */
		public static const VIPGIFT:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("uno.UserInfo.VipGift", "vipGift", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var vipGift:Array = [];

		/**
		 *  @private
		 */
		public static const CM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.CM", "cM", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cM:int;

		/**
		 *  @private
		 */
		public static const DYNAMIC:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.Dynamic", "dynamic", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		public var dynamic:int;

		/**
		 *  @private
		 */
		public static const LOGINTIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.LoginTime", "loginTime", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		public var loginTime:int;

		/**
		 *  @private
		 */
		public static const OFFLINETIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.OfflineTime", "offlineTime", (21 << 3) | com.netease.protobuf.WireType.VARINT);

		public var offlineTime:int;

		/**
		 *  @private
		 */
		public static const TODAYTIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.TodayTime", "todayTime", (22 << 3) | com.netease.protobuf.WireType.VARINT);

		public var todayTime:int;

		/**
		 *  @private
		 */
		public static const ISONLINE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.IsOnline", "isOnline", (23 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isOnline:int;

		/**
		 *  @private
		 */
		public static const CREATETIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.CreateTime", "createTime", (24 << 3) | com.netease.protobuf.WireType.VARINT);

		public var createTime:int;

		/**
		 *  @private
		 */
		public static const PLAYTOTAL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.PlayTotal", "playTotal", (25 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playTotal:int;

		/**
		 *  @private
		 */
		public static const PLAYWIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.PlayWin", "playWin", (26 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playWin:int;

		/**
		 *  @private
		 */
		public static const PLAYLOSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.PlayLose", "playLose", (27 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playLose:int;

		/**
		 *  @private
		 */
		public static const PLAYRUN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserInfo.PlayRun", "playRun", (28 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playRun:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.userID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.name);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.sex);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roleType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.level);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.currentExp);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.moneyGold);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.moneyCopper);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.hair);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.eyes);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.clothes);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.body);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.shadow);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.background);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.vipLevel);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.vipGrow);
			for (var vipGift$index:uint = 0; vipGift$index < this.vipGift.length; ++vipGift$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.vipGift[vipGift$index]);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.cM);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.dynamic);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.loginTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.offlineTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 22);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.todayTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 23);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isOnline);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 24);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.createTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 25);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.playTotal);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 26);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.playWin);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 27);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.playLose);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 28);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.playRun);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var UserID$count:uint = 0;
			var Name$count:uint = 0;
			var Sex$count:uint = 0;
			var RoleType$count:uint = 0;
			var Level$count:uint = 0;
			var CurrentExp$count:uint = 0;
			var MoneyGold$count:uint = 0;
			var MoneyCopper$count:uint = 0;
			var Hair$count:uint = 0;
			var Eyes$count:uint = 0;
			var Clothes$count:uint = 0;
			var Body$count:uint = 0;
			var Shadow$count:uint = 0;
			var Background$count:uint = 0;
			var VipLevel$count:uint = 0;
			var VipGrow$count:uint = 0;
			var CM$count:uint = 0;
			var Dynamic$count:uint = 0;
			var LoginTime$count:uint = 0;
			var OfflineTime$count:uint = 0;
			var TodayTime$count:uint = 0;
			var IsOnline$count:uint = 0;
			var CreateTime$count:uint = 0;
			var PlayTotal$count:uint = 0;
			var PlayWin$count:uint = 0;
			var PlayLose$count:uint = 0;
			var PlayRun$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (UserID$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.userID cannot be set twice.');
					}
					++UserID$count;
					this.userID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (Name$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.name cannot be set twice.');
					}
					++Name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (Sex$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.sex cannot be set twice.');
					}
					++Sex$count;
					this.sex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (RoleType$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.roleType cannot be set twice.');
					}
					++RoleType$count;
					this.roleType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (Level$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.level cannot be set twice.');
					}
					++Level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (CurrentExp$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.currentExp cannot be set twice.');
					}
					++CurrentExp$count;
					this.currentExp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (MoneyGold$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.moneyGold cannot be set twice.');
					}
					++MoneyGold$count;
					this.moneyGold = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (MoneyCopper$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.moneyCopper cannot be set twice.');
					}
					++MoneyCopper$count;
					this.moneyCopper = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (Hair$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.hair cannot be set twice.');
					}
					++Hair$count;
					this.hair = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (Eyes$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.eyes cannot be set twice.');
					}
					++Eyes$count;
					this.eyes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (Clothes$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.clothes cannot be set twice.');
					}
					++Clothes$count;
					this.clothes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (Body$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.body cannot be set twice.');
					}
					++Body$count;
					this.body = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					if (Shadow$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.shadow cannot be set twice.');
					}
					++Shadow$count;
					this.shadow = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 14:
					if (Background$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.background cannot be set twice.');
					}
					++Background$count;
					this.background = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 15:
					if (VipLevel$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.vipLevel cannot be set twice.');
					}
					++VipLevel$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (VipGrow$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.vipGrow cannot be set twice.');
					}
					++VipGrow$count;
					this.vipGrow = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 17:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.vipGift);
						break;
					}
					this.vipGift.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 18:
					if (CM$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.cM cannot be set twice.');
					}
					++CM$count;
					this.cM = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 19:
					if (Dynamic$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.dynamic cannot be set twice.');
					}
					++Dynamic$count;
					this.dynamic = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 20:
					if (LoginTime$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.loginTime cannot be set twice.');
					}
					++LoginTime$count;
					this.loginTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 21:
					if (OfflineTime$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.offlineTime cannot be set twice.');
					}
					++OfflineTime$count;
					this.offlineTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 22:
					if (TodayTime$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.todayTime cannot be set twice.');
					}
					++TodayTime$count;
					this.todayTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 23:
					if (IsOnline$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.isOnline cannot be set twice.');
					}
					++IsOnline$count;
					this.isOnline = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 24:
					if (CreateTime$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.createTime cannot be set twice.');
					}
					++CreateTime$count;
					this.createTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 25:
					if (PlayTotal$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.playTotal cannot be set twice.');
					}
					++PlayTotal$count;
					this.playTotal = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 26:
					if (PlayWin$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.playWin cannot be set twice.');
					}
					++PlayWin$count;
					this.playWin = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 27:
					if (PlayLose$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.playLose cannot be set twice.');
					}
					++PlayLose$count;
					this.playLose = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 28:
					if (PlayRun$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.playRun cannot be set twice.');
					}
					++PlayRun$count;
					this.playRun = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
