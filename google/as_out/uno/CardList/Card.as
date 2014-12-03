package uno.CardList {
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
	public dynamic final class Card extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CardList.Card.ID", "iD", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var iD:int;

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CardList.Card.Type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var type:int;

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CardList.Card.NUM", "nUM", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var nUM:int;

		/**
		 *  @private
		 */
		public static const COLOR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CardList.Card.Color", "color", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var color:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.iD);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.nUM);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.color);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ID$count:uint = 0;
			var Type$count:uint = 0;
			var NUM$count:uint = 0;
			var Color$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ID$count != 0) {
						throw new flash.errors.IOError('Bad data format: Card.iD cannot be set twice.');
					}
					++ID$count;
					this.iD = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (Type$count != 0) {
						throw new flash.errors.IOError('Bad data format: Card.type cannot be set twice.');
					}
					++Type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (NUM$count != 0) {
						throw new flash.errors.IOError('Bad data format: Card.nUM cannot be set twice.');
					}
					++NUM$count;
					this.nUM = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (Color$count != 0) {
						throw new flash.errors.IOError('Bad data format: Card.color cannot be set twice.');
					}
					++Color$count;
					this.color = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
