package uno {
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
	public dynamic final class CheckID extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const UID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CheckID.UID", "uID", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var uID:int;

		/**
		 *  @private
		 */
		public static const SERVERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CheckID.ServerID", "serverID", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var serverID:int;

		/**
		 *  @private
		 */
		public static const TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CheckID.Time", "time", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var time:int;

		/**
		 *  @private
		 */
		public static const CM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.CheckID.CM", "cM", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cM:int;

		/**
		 *  @private
		 */
		public static const FLAG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("uno.CheckID.Flag", "flag", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var flag:String;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.uID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.serverID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.time);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.cM);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.flag);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var UID$count:uint = 0;
			var ServerID$count:uint = 0;
			var Time$count:uint = 0;
			var CM$count:uint = 0;
			var Flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (UID$count != 0) {
						throw new flash.errors.IOError('Bad data format: CheckID.uID cannot be set twice.');
					}
					++UID$count;
					this.uID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (ServerID$count != 0) {
						throw new flash.errors.IOError('Bad data format: CheckID.serverID cannot be set twice.');
					}
					++ServerID$count;
					this.serverID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (Time$count != 0) {
						throw new flash.errors.IOError('Bad data format: CheckID.time cannot be set twice.');
					}
					++Time$count;
					this.time = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (CM$count != 0) {
						throw new flash.errors.IOError('Bad data format: CheckID.cM cannot be set twice.');
					}
					++CM$count;
					this.cM = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (Flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: CheckID.flag cannot be set twice.');
					}
					++Flag$count;
					this.flag = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
