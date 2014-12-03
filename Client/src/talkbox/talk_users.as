package talkbox {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import talkbox.talk_users.talk_user;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class talk_users extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const USERS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("talkbox.talk_users.users", "users", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return talkbox.talk_users.talk_user; });

		[ArrayElementType("talkbox.talk_users.talk_user")]
		public var users:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var users$index:uint = 0; users$index < this.users.length; ++users$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
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
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.users.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new talkbox.talk_users.talk_user()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
