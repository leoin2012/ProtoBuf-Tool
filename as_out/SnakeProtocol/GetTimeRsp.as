package SnakeProtocol {
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
	public dynamic final class GetTimeRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TIME:FieldDescriptor_TYPE_UINT64 = new FieldDescriptor_TYPE_UINT64("SnakeProtocol.GetTimeRsp.time", "time", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var time$field:UInt64;

		public function clearTime():void {
			time$field = null;
		}

		public function get hasTime():Boolean {
			return time$field != null;
		}

		public function set time(value:UInt64):void {
			time$field = value;
		}

		public function get time():UInt64 {
			if(!hasTime) {
				return new UInt64(0, 0);
			}
			return time$field;
		}

		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor_TYPE_UINT32 = new FieldDescriptor_TYPE_UINT32("SnakeProtocol.GetTimeRsp.ret", "ret", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ret$field:uint;

		private var hasField$0:uint = 0;

		public function clearRet():void {
			hasField$0 &= 0xfffffffe;
			ret$field = new uint();
		}

		public function get hasRet():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ret(value:uint):void {
			hasField$0 |= 0x1;
			ret$field = value;
		}

		public function get ret():uint {
			if(!hasRet) {
				return 0;
			}
			return ret$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_UINT64(output, time$field);
			}
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_UINT32(output, ret$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var time$count:uint = 0;
			var ret$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (time$count != 0) {
						throw new flash.errors.IOError('Bad data format: GetTimeRsp.time cannot be set twice.');
					}
					++time$count;
					this.time = com.netease.protobuf.ReadUtils.read_TYPE_UINT64(input);
					break;
				case 2:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: GetTimeRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
