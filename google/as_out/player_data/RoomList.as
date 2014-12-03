package player_data {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import player_data.RoomList.RoomMan;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class RoomList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ROOMMANS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("player_data.RoomList.roomMans", "roomMans", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return player_data.RoomList.RoomMan; });

		[ArrayElementType("player_data.RoomList.RoomMan")]
		public var roomMans:Array = [];

		/**
		 *  @private
		 */
		public static const ROOMINDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.RoomList.roomIndex", "roomIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var roomIndex:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var roomMans$index:uint = 0; roomMans$index < this.roomMans.length; ++roomMans$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.roomMans[roomMans$index]);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roomIndex);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var roomIndex$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.roomMans.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new player_data.RoomList.RoomMan()));
					break;
				case 2:
					if (roomIndex$count != 0) {
						throw new flash.errors.IOError('Bad data format: RoomList.roomIndex cannot be set twice.');
					}
					++roomIndex$count;
					this.roomIndex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
