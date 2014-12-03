package uno {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import uno.ResultList.Result;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class ResultList extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const WIN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("uno.ResultList.Win", "win", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return uno.ResultList.Result; });

		public var win:uno.ResultList.Result;

		/**
		 *  @private
		 */
		public static const RESULTS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("uno.ResultList.Results", "results", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return uno.ResultList.Result; });

		[ArrayElementType("uno.ResultList.Result")]
		public var results:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.win);
			for (var results$index:uint = 0; results$index < this.results.length; ++results$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.results[results$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var Win$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (Win$count != 0) {
						throw new flash.errors.IOError('Bad data format: ResultList.win cannot be set twice.');
					}
					++Win$count;
					this.win = new uno.ResultList.Result();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.win);
					break;
				case 2:
					this.results.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new uno.ResultList.Result()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
