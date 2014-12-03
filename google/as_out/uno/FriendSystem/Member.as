package uno.FriendSystem {
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
	public dynamic final class Member extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const USERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.FriendSystem.Member.UserID", "userID", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var userID:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("uno.FriendSystem.Member.Name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const ISONLINE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.FriendSystem.Member.IsOnline", "isOnline", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isOnline:int;

		/**
		 *  @private
		 */
		public static const ROLETYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.FriendSystem.Member.RoleType", "roleType", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roleType:int;

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.FriendSystem.Member.Level", "level", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var level:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.userID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.name);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.isOnline);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roleType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.level);
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
			var IsOnline$count:uint = 0;
			var RoleType$count:uint = 0;
			var Level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (UserID$count != 0) {
						throw new flash.errors.IOError('Bad data format: Member.userID cannot be set twice.');
					}
					++UserID$count;
					this.userID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (Name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Member.name cannot be set twice.');
					}
					++Name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (IsOnline$count != 0) {
						throw new flash.errors.IOError('Bad data format: Member.isOnline cannot be set twice.');
					}
					++IsOnline$count;
					this.isOnline = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (RoleType$count != 0) {
						throw new flash.errors.IOError('Bad data format: Member.roleType cannot be set twice.');
					}
					++RoleType$count;
					this.roleType = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (Level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Member.level cannot be set twice.');
					}
					++Level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
