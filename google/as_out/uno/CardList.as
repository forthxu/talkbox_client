package uno {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import uno.CardList.Card;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class CardList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const INDEXID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CardList.IndexID", "indexID", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var indexID:int;

		/**
		 *  @private
		 */
		public static const FROMUSERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CardList.FromUserID", "fromUserID", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var fromUserID:int;

		/**
		 *  @private
		 */
		public static const TOUSERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CardList.ToUserID", "toUserID", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var toUserID:int;

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CardList.NUM", "nUM", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var nUM:int;

		/**
		 *  @private
		 */
		public static const CARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("uno.CardList.Cards", "cards", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return uno.CardList.Card; });

		[ArrayElementType("uno.CardList.Card")]
		public var cards:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.indexID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.fromUserID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.toUserID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.nUM);
			for (var cards$index:uint = 0; cards$index < this.cards.length; ++cards$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.cards[cards$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var IndexID$count:uint = 0;
			var FromUserID$count:uint = 0;
			var ToUserID$count:uint = 0;
			var NUM$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (IndexID$count != 0) {
						throw new flash.errors.IOError('Bad data format: CardList.indexID cannot be set twice.');
					}
					++IndexID$count;
					this.indexID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (FromUserID$count != 0) {
						throw new flash.errors.IOError('Bad data format: CardList.fromUserID cannot be set twice.');
					}
					++FromUserID$count;
					this.fromUserID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (ToUserID$count != 0) {
						throw new flash.errors.IOError('Bad data format: CardList.toUserID cannot be set twice.');
					}
					++ToUserID$count;
					this.toUserID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (NUM$count != 0) {
						throw new flash.errors.IOError('Bad data format: CardList.nUM cannot be set twice.');
					}
					++NUM$count;
					this.nUM = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					this.cards.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new uno.CardList.Card()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
