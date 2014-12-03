package uno.UserList {
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
	public dynamic final class User extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const USERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.UserId", "userId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var userId:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("uno.UserList.User.Name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const SEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Sex", "sex", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sex:int;

		/**
		 *  @private
		 */
		public static const ROLETYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.RoleType", "roleType", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roleType:int;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Level", "level", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:int;

		/**
		 *  @private
		 */
		public static const HAIR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Hair", "hair", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hair:int;

		/**
		 *  @private
		 */
		public static const EYES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Eyes", "eyes", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var eyes:int;

		/**
		 *  @private
		 */
		public static const CLOTHES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Clothes", "clothes", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		public var clothes:int;

		/**
		 *  @private
		 */
		public static const BODY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Body", "body", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		public var body:int;

		/**
		 *  @private
		 */
		public static const SHADOW:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Shadow", "shadow", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		public var shadow:int;

		/**
		 *  @private
		 */
		public static const BACKGROUND:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Background", "background", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		public var background:int;

		/**
		 *  @private
		 */
		public static const ISROOMHOST:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.IsRoomHost", "isRoomHost", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isRoomHost:int;

		/**
		 *  @private
		 */
		public static const SEAT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Seat", "seat", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		public var seat:int;

		/**
		 *  @private
		 */
		public static const TEAM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.User.Team", "team", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		public var team:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.userId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.name);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.sex);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roleType);
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
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isRoomHost);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.seat);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.team);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var UserId$count:uint = 0;
			var Name$count:uint = 0;
			var Sex$count:uint = 0;
			var RoleType$count:uint = 0;
			var Level$count:uint = 0;
			var Hair$count:uint = 0;
			var Eyes$count:uint = 0;
			var Clothes$count:uint = 0;
			var Body$count:uint = 0;
			var Shadow$count:uint = 0;
			var Background$count:uint = 0;
			var IsRoomHost$count:uint = 0;
			var Seat$count:uint = 0;
			var Team$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (UserId$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.userId cannot be set twice.');
					}
					++UserId$count;
					this.userId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (Name$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.name cannot be set twice.');
					}
					++Name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (Sex$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.sex cannot be set twice.');
					}
					++Sex$count;
					this.sex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (RoleType$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.roleType cannot be set twice.');
					}
					++RoleType$count;
					this.roleType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (Level$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.level cannot be set twice.');
					}
					++Level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (Hair$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.hair cannot be set twice.');
					}
					++Hair$count;
					this.hair = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (Eyes$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.eyes cannot be set twice.');
					}
					++Eyes$count;
					this.eyes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (Clothes$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.clothes cannot be set twice.');
					}
					++Clothes$count;
					this.clothes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (Body$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.body cannot be set twice.');
					}
					++Body$count;
					this.body = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (Shadow$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.shadow cannot be set twice.');
					}
					++Shadow$count;
					this.shadow = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (Background$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.background cannot be set twice.');
					}
					++Background$count;
					this.background = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if (IsRoomHost$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.isRoomHost cannot be set twice.');
					}
					++IsRoomHost$count;
					this.isRoomHost = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 13:
					if (Seat$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.seat cannot be set twice.');
					}
					++Seat$count;
					this.seat = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 14:
					if (Team$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.team cannot be set twice.');
					}
					++Team$count;
					this.team = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
