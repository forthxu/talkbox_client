package uno {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import uno.RoomList.Room;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class RoomList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.RoomList.NUM", "nUM", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var nUM:int;

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.RoomList.Type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var type:int;

		/**
		 *  @private
		 */
		public static const ROOMS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("uno.RoomList.Rooms", "rooms", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return uno.RoomList.Room; });

		[ArrayElementType("uno.RoomList.Room")]
		public var rooms:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.nUM);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.type);
			for (var rooms$index:uint = 0; rooms$index < this.rooms.length; ++rooms$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rooms[rooms$index]);
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
			var Type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (NUM$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomList.nUM cannot be set twice.');
					}
					++NUM$count;
					this.nUM = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (Type$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomList.type cannot be set twice.');
					}
					++Type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					this.rooms.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new uno.RoomList.Room()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
