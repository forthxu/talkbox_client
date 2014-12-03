package uno.LeaveMSG {
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
	public dynamic final class MSG extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FROMUSERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.LeaveMSG.MSG.FromUserID", "fromUserID", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var fromUserID:int;

		/**
		 *  @private
		 */
		public static const DESTUSERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.LeaveMSG.MSG.DestUserID", "destUserID", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var destUserID:int;

		/**
		 *  @private
		 */
		public static const MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("uno.LeaveMSG.MSG.MSG", "mSG", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var mSG:String;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.fromUserID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.destUserID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.mSG);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var FromUserID$count:uint = 0;
			var DestUserID$count:uint = 0;
			var MSG$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (FromUserID$count != 0) {
						throw new flash.errors.IOError('Bad data format: MSG.fromUserID cannot be set twice.');
					}
					++FromUserID$count;
					this.fromUserID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (DestUserID$count != 0) {
						throw new flash.errors.IOError('Bad data format: MSG.destUserID cannot be set twice.');
					}
					++DestUserID$count;
					this.destUserID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (MSG$count != 0) {
						throw new flash.errors.IOError('Bad data format: MSG.mSG cannot be set twice.');
					}
					++MSG$count;
					this.mSG = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
