package player_data {
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
	public dynamic final class CreateUserInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.CreateUserInfo.Sex", "sex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sex:int;

		/**
		 *  @private
		 */
		public static const NAMELENTH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.CreateUserInfo.Namelenth", "namelenth", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var namelenth:int;

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("player_data.CreateUserInfo.Name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var name:String;

		/**
		 *  @private
		 */
		public static const HAIR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.CreateUserInfo.Hair", "hair", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var hair:int;

		/**
		 *  @private
		 */
		public static const EYES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.CreateUserInfo.Eyes", "eyes", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var eyes:int;

		/**
		 *  @private
		 */
		public static const CLOTHES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.CreateUserInfo.Clothes", "clothes", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var clothes:int;

		/**
		 *  @private
		 */
		public static const BODY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("player_data.CreateUserInfo.Body", "body", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var body:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.sex);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.namelenth);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.name);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.hair);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.eyes);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.clothes);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.body);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var Sex$count:uint = 0;
			var Namelenth$count:uint = 0;
			var Name$count:uint = 0;
			var Hair$count:uint = 0;
			var Eyes$count:uint = 0;
			var Clothes$count:uint = 0;
			var Body$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (Sex$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateUserInfo.sex cannot be set twice.');
					}
					++Sex$count;
					this.sex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (Namelenth$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateUserInfo.namelenth cannot be set twice.');
					}
					++Namelenth$count;
					this.namelenth = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (Name$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateUserInfo.name cannot be set twice.');
					}
					++Name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (Hair$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateUserInfo.hair cannot be set twice.');
					}
					++Hair$count;
					this.hair = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (Eyes$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateUserInfo.eyes cannot be set twice.');
					}
					++Eyes$count;
					this.eyes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (Clothes$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateUserInfo.clothes cannot be set twice.');
					}
					++Clothes$count;
					this.clothes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (Body$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateUserInfo.body cannot be set twice.');
					}
					++Body$count;
					this.body = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
