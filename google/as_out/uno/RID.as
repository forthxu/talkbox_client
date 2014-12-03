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
	public dynamic final class RID extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.RID.ID", "iD", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var iD:int;

		/**
		 *  @private
		 */
		public static const RID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.RID.RID", "rID", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var RID$field:int;

		private var hasField$0:uint = 0;

		public function clearRID():void {
			hasField$0 &= 0xfffffffe;
			RID$field = new int();
		}

		public function get hasRID():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rID(value:int):void {
			hasField$0 |= 0x1;
			RID$field = value;
		}

		public function get rID():int {
			return RID$field;
		}

		/**
		 *  @private
		 */
		public static const TIP:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("uno.RID.TIP", "tIP", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var TIP$field:String;

		public function clearTIP():void {
			TIP$field = null;
		}

		public function get hasTIP():Boolean {
			return TIP$field != null;
		}

		public function set tIP(value:String):void {
			TIP$field = value;
		}

		public function get tIP():String {
			return TIP$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.iD);
			if (hasRID) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, RID$field);
			}
			if (hasTIP) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, TIP$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ID$count:uint = 0;
			var RID$count:uint = 0;
			var TIP$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ID$count != 0) {
						throw new flash.errors.IOError('Bad data format: RID.iD cannot be set twice.');
					}
					++ID$count;
					this.iD = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (RID$count != 0) {
						throw new flash.errors.IOError('Bad data format: RID.rID cannot be set twice.');
					}
					++RID$count;
					this.rID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (TIP$count != 0) {
						throw new flash.errors.IOError('Bad data format: RID.tIP cannot be set twice.');
					}
					++TIP$count;
					this.tIP = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
