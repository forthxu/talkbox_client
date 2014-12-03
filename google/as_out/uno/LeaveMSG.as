package uno {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import uno.LeaveMSG.MSG;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class LeaveMSG extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MSGS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("uno.LeaveMSG.MSGs", "mSGs", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return uno.LeaveMSG.MSG; });

		[ArrayElementType("uno.LeaveMSG.MSG")]
		public var mSGs:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var mSGs$index:uint = 0; mSGs$index < this.mSGs.length; ++mSGs$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.mSGs[mSGs$index]);
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
					this.mSGs.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new uno.LeaveMSG.MSG()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
