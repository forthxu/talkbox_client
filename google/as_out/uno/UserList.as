package uno {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import uno.UserList.User;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class UserList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.UserList.NUM", "nUM", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var nUM:int;

		/**
		 *  @private
		 */
		public static const USERS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("uno.UserList.Users", "users", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return uno.UserList.User; });

		[ArrayElementType("uno.UserList.User")]
		public var users:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.nUM);
			for (var users$index:uint = 0; users$index < this.users.length; ++users$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.users[users$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var NUM$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (NUM$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserList.nUM cannot be set twice.');
					}
					++NUM$count;
					this.nUM = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					this.users.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new uno.UserList.User()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
