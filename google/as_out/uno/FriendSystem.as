package uno {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import uno.FriendSystem.Member;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class FriendSystem extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FRIENDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("uno.FriendSystem.Friends", "friends", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return uno.FriendSystem.Member; });

		[ArrayElementType("uno.FriendSystem.Member")]
		public var friends:Array = [];

		/**
		 *  @private
		 */
		public static const BLACKST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("uno.FriendSystem.Blackst", "blackst", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return uno.FriendSystem.Member; });

		[ArrayElementType("uno.FriendSystem.Member")]
		public var blackst:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var friends$index:uint = 0; friends$index < this.friends.length; ++friends$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.friends[friends$index]);
			}
			for (var blackst$index:uint = 0; blackst$index < this.blackst.length; ++blackst$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.blackst[blackst$index]);
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
					this.friends.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new uno.FriendSystem.Member()));
					break;
				case 2:
					this.blackst.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new uno.FriendSystem.Member()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
