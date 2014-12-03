package player_data.RoomList {
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
	public dynamic final class RoomMan extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Sex", "sex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sex:int;

		/**
		 *  @private
		 */
		public static const USERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.UserId", "userId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var userId:int;

		/**
		 *  @private
		 */
		public static const NAMELENTH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Namelenth", "namelenth", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var namelenth:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("player_data.RoomList.RoomMan.Name", "name", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Level", "level", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:int;

		/**
		 *  @private
		 */
		public static const HAIR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Hair", "hair", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hair:int;

		/**
		 *  @private
		 */
		public static const EYES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Eyes", "eyes", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var eyes:int;

		/**
		 *  @private
		 */
		public static const CLOTHES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Clothes", "clothes", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		public var clothes:int;

		/**
		 *  @private
		 */
		public static const BODY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Body", "body", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		public var body:int;

		/**
		 *  @private
		 */
		public static const SHADOW:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Shadow", "shadow", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shadow:int;

		/**
		 *  @private
		 */
		public static const BACKGROUND:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Background", "background", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		public var background:int;

		/**
		 *  @private
		 */
		public static const ROOMHOST:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.RoomHost", "roomHost", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roomHost:int;

		/**
		 *  @private
		 */
		public static const ROLEID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.RoleId", "roleId", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roleId:int;

		/**
		 *  @private
		 */
		public static const SEAT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Seat", "seat", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		public var seat:int;

		/**
		 *  @private
		 */
		public static const TEAM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Team", "team", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		public var team:int;

		/**
		 *  @private
		 */
		public static const BLOOD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.Blood", "blood", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		public var blood:int;

		/**
		 *  @private
		 */
		public static const ISMARK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.IsMark", "isMark", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isMark:int;

		/**
		 *  @private
		 */
		public static const ISLOOPER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.IsLooper", "isLooper", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isLooper:int;

		/**
		 *  @private
		 */
		public static const ISSTOREGAS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.IsStoreGas", "isStoreGas", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isStoreGas:int;

		/**
		 *  @private
		 */
		public static const ISACCEPTATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.IsAcceptAttack", "isAcceptAttack", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isAcceptAttack:int;

		/**
		 *  @private
		 */
		public static const ISACCEPTSKILL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.IsAcceptSkill", "isAcceptSkill", (21 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isAcceptSkill:int;

		/**
		 *  @private
		 */
		public static const ISACCEPTMAGIC:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.IsAcceptMagic", "isAcceptMagic", (22 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isAcceptMagic:int;

		/**
		 *  @private
		 */
		public static const ISHELP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.IsHelp", "isHelp", (23 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isHelp:int;

		/**
		 *  @private
		 */
		public static const ATTACKNUMBER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.RoomMan.attackNumber", "attackNumber", (24 << 3) | com.netease.protobuf.WireType.VARINT);

		public var attackNumber:int;

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
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.hair);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.eyes);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.clothes);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.body);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.shadow);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.background);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roomHost);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roleId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.seat);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.team);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.blood);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isMark);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isLooper);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isStoreGas);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isAcceptAttack);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isAcceptSkill);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 22);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isAcceptMagic);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 23);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isHelp);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 24);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.attackNumber);
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
			var Hair$count:uint = 0;
			var Eyes$count:uint = 0;
			var Clothes$count:uint = 0;
			var Body$count:uint = 0;
			var Shadow$count:uint = 0;
			var Background$count:uint = 0;
			var RoomHost$count:uint = 0;
			var RoleId$count:uint = 0;
			var Seat$count:uint = 0;
			var Team$count:uint = 0;
			var Blood$count:uint = 0;
			var IsMark$count:uint = 0;
			var IsLooper$count:uint = 0;
			var IsStoreGas$count:uint = 0;
			var IsAcceptAttack$count:uint = 0;
			var IsAcceptSkill$count:uint = 0;
			var IsAcceptMagic$count:uint = 0;
			var IsHelp$count:uint = 0;
			var attackNumber$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (Sex$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.sex cannot be set twice.');
					}
					++Sex$count;
					this.sex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (UserId$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.userId cannot be set twice.');
					}
					++UserId$count;
					this.userId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (Namelenth$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.namelenth cannot be set twice.');
					}
					++Namelenth$count;
					this.namelenth = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (Name$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.name cannot be set twice.');
					}
					++Name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (Level$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.level cannot be set twice.');
					}
					++Level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (Hair$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.hair cannot be set twice.');
					}
					++Hair$count;
					this.hair = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (Eyes$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.eyes cannot be set twice.');
					}
					++Eyes$count;
					this.eyes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (Clothes$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.clothes cannot be set twice.');
					}
					++Clothes$count;
					this.clothes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (Body$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.body cannot be set twice.');
					}
					++Body$count;
					this.body = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (Shadow$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.shadow cannot be set twice.');
					}
					++Shadow$count;
					this.shadow = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (Background$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.background cannot be set twice.');
					}
					++Background$count;
					this.background = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (RoomHost$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.roomHost cannot be set twice.');
					}
					++RoomHost$count;
					this.roomHost = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					if (RoleId$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.roleId cannot be set twice.');
					}
					++RoleId$count;
					this.roleId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 14:
					if (Seat$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.seat cannot be set twice.');
					}
					++Seat$count;
					this.seat = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 15:
					if (Team$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.team cannot be set twice.');
					}
					++Team$count;
					this.team = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (Blood$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.blood cannot be set twice.');
					}
					++Blood$count;
					this.blood = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 17:
					if (IsMark$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.isMark cannot be set twice.');
					}
					++IsMark$count;
					this.isMark = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 18:
					if (IsLooper$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.isLooper cannot be set twice.');
					}
					++IsLooper$count;
					this.isLooper = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 19:
					if (IsStoreGas$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.isStoreGas cannot be set twice.');
					}
					++IsStoreGas$count;
					this.isStoreGas = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 20:
					if (IsAcceptAttack$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.isAcceptAttack cannot be set twice.');
					}
					++IsAcceptAttack$count;
					this.isAcceptAttack = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 21:
					if (IsAcceptSkill$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.isAcceptSkill cannot be set twice.');
					}
					++IsAcceptSkill$count;
					this.isAcceptSkill = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 22:
					if (IsAcceptMagic$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.isAcceptMagic cannot be set twice.');
					}
					++IsAcceptMagic$count;
					this.isAcceptMagic = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 23:
					if (IsHelp$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.isHelp cannot be set twice.');
					}
					++IsHelp$count;
					this.isHelp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 24:
					if (attackNumber$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomMan.attackNumber cannot be set twice.');
					}
					++attackNumber$count;
					this.attackNumber = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
