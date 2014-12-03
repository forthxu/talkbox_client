package uno.RoomList {
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
	public dynamic final class Room extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.RoomList.Room.Index", "index", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.RoomList.Room.Name", "name", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var name:int;

		/**
		 *  @private
		 */
		public static const HOSTUSERID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.RoomList.Room.HostUserID", "hostUserID", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hostUserID:int;

		/**
		 *  @private
		 */
		public static const HOSTNAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("uno.RoomList.Room.HostName", "hostName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var hostName:String;

		/**
		 *  @private
		 */
		public static const HOSTLEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("uno.RoomList.Room.HostLevel", "hostLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hostLevel:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.index);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.name);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.hostUserID);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.hostName);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.hostLevel);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var Index$count:uint = 0;
			var Name$count:uint = 0;
			var HostUserID$count:uint = 0;
			var HostName$count:uint = 0;
			var HostLevel$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (Index$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.index cannot be set twice.');
					}
					++Index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (Name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.name cannot be set twice.');
					}
					++Name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (HostUserID$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.hostUserID cannot be set twice.');
					}
					++HostUserID$count;
					this.hostUserID = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (HostName$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.hostName cannot be set twice.');
					}
					++HostName$count;
					this.hostName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (HostLevel$count != 0) {
						throw new flash.errors.IOError('Bad data format: Room.hostLevel cannot be set twice.');
					}
					++HostLevel$count;
					this.hostLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
