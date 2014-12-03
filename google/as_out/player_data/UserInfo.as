package player_data {
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
		public static const SEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Sex", "sex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sex:int;

		/**
		 *  @private
		 */
		public static const USERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.UserId", "userId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var userId:int;

		/**
		 *  @private
		 */
		public static const NAMELENTH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Namelenth", "namelenth", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var namelenth:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("player_data.UserInfo.Name", "name", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Level", "level", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:int;

		/**
		 *  @private
		 */
		public static const CURRENTEXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.CurrentExp", "currentExp", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var currentExp:int;

		/**
		 *  @private
		 */
		public static const MONEYGOLD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.MoneyGold", "moneyGold", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var moneyGold:int;

		/**
		 *  @private
		 */
		public static const MONEYCOPPER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.MoneyCopper", "moneyCopper", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		public var moneyCopper:int;

		/**
		 *  @private
		 */
		public static const HAIR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Hair", "hair", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hair:int;

		/**
		 *  @private
		 */
		public static const EYES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Eyes", "eyes", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		public var eyes:int;

		/**
		 *  @private
		 */
		public static const CLOTHES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Clothes", "clothes", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		public var clothes:int;

		/**
		 *  @private
		 */
		public static const BODY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Body", "body", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		public var body:int;

		/**
		 *  @private
		 */
		public static const SHADOW:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Shadow", "shadow", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shadow:int;

		/**
		 *  @private
		 */
		public static const BACKGROUND:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.Background", "background", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		public var background:int;

		/**
		 *  @private
		 */
		public static const MVP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.MVP", "mVP", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		public var mVP:int;

		/**
		 *  @private
		 */
		public static const VIP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.VIP", "vIP", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		public var vIP:int;

		/**
		 *  @private
		 */
		public static const PLAYTOTAL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.PlayTotal", "playTotal", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playTotal:int;

		/**
		 *  @private
		 */
		public static const PLAYWIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.PlayWin", "playWin", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playWin:int;

		/**
		 *  @private
		 */
		public static const PLAYLOSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.PlayLose", "playLose", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playLose:int;

		/**
		 *  @private
		 */
		public static const PLAYRUN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.UserInfo.PlayRun", "playRun", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		public var playRun:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.sex);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.userId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.namelenth);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.name);
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
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.mVP);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.vIP);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.playTotal);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.playWin);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.playLose);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.playRun);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var Sex$count:uint = 0;
			var UserId$count:uint = 0;
			var Namelenth$count:uint = 0;
			var Name$count:uint = 0;
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
			var MVP$count:uint = 0;
			var VIP$count:uint = 0;
			var PlayTotal$count:uint = 0;
			var PlayWin$count:uint = 0;
			var PlayLose$count:uint = 0;
			var PlayRun$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (Sex$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.sex cannot be set twice.');
					}
					++Sex$count;
					this.sex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (UserId$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.userId cannot be set twice.');
					}
					++UserId$count;
					this.userId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (Namelenth$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.namelenth cannot be set twice.');
					}
					++Namelenth$count;
					this.namelenth = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (Name$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.name cannot be set twice.');
					}
					++Name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
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
					if (MVP$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.mVP cannot be set twice.');
					}
					++MVP$count;
					this.mVP = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (VIP$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.vIP cannot be set twice.');
					}
					++VIP$count;
					this.vIP = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 17:
					if (PlayTotal$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.playTotal cannot be set twice.');
					}
					++PlayTotal$count;
					this.playTotal = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 18:
					if (PlayWin$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.playWin cannot be set twice.');
					}
					++PlayWin$count;
					this.playWin = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 19:
					if (PlayLose$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserInfo.playLose cannot be set twice.');
					}
					++PlayLose$count;
					this.playLose = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 20:
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
