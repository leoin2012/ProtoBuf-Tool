package BaseProtocol {
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
	public dynamic final class Coordinate extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const LATITUDE_VALUE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("BaseProtocol.Coordinate.latitude_value", "latitudeValue", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var latitude_value$field:int;

		private var hasField$0:uint = 0;

		public function clearLatitudeValue():void {
			hasField$0 &= 0xfffffffe;
			latitude_value$field = new int();
		}

		public function get hasLatitudeValue():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set latitudeValue(value:int):void {
			hasField$0 |= 0x1;
			latitude_value$field = value;
		}

		public function get latitudeValue():int {
			if(!hasLatitudeValue) {
				return 0;
			}
			return latitude_value$field;
		}

		/**
		 *  @private
		 */
		public static const LONGITUDE_VALUE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("BaseProtocol.Coordinate.longitude_value", "longitudeValue", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var longitude_value$field:int;

		public function clearLongitudeValue():void {
			hasField$0 &= 0xfffffffd;
			longitude_value$field = new int();
		}

		public function get hasLongitudeValue():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set longitudeValue(value:int):void {
			hasField$0 |= 0x2;
			longitude_value$field = value;
		}

		public function get longitudeValue():int {
			if(!hasLongitudeValue) {
				return 0;
			}
			return longitude_value$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasLatitudeValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, latitude_value$field);
			}
			if (hasLongitudeValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, longitude_value$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var latitude_value$count:uint = 0;
			var longitude_value$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (latitude_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: Coordinate.latitudeValue cannot be set twice.');
					}
					++latitude_value$count;
					this.latitudeValue = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (longitude_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: Coordinate.longitudeValue cannot be set twice.');
					}
					++longitude_value$count;
					this.longitudeValue = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
