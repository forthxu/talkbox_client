package talkbox {
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
	public dynamic final class talk_message extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FROMUSERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("talkbox.talk_message.fromuserid", "fromuserid", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var fromuserid:int;

		/**
		 *  @private
		 */
		public static const TOUSERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("talkbox.talk_message.touserid", "touserid", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var touserid:int;

		/**
		 *  @private
		 */
		public static const MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("talkbox.talk_message.msg", "msg", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var msg:String;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.fromuserid);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.touserid);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.msg);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var fromuserid$count:uint = 0;
			var touserid$count:uint = 0;
			var msg$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (fromuserid$count != 0) {
						throw new flash.errors.IOError('Bad data format: talk_message.fromuserid cannot be set twice.');
					}
					++fromuserid$count;
					this.fromuserid = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (touserid$count != 0) {
						throw new flash.errors.IOError('Bad data format: talk_message.touserid cannot be set twice.');
					}
					++touserid$count;
					this.touserid = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (msg$count != 0) {
						throw new flash.errors.IOError('Bad data format: talk_message.msg cannot be set twice.');
					}
					++msg$count;
					this.msg = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
