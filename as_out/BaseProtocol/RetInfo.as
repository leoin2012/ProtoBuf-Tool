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
	public dynamic final class RetInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_CODE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("BaseProtocol.RetInfo.ret_code", "retCode", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ret_code$field:int;

		private var hasField$0:uint = 0;

		public function clearRetCode():void {
			hasField$0 &= 0xfffffffe;
			ret_code$field = new int();
		}

		public function get hasRetCode():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set retCode(value:int):void {
			hasField$0 |= 0x1;
			ret_code$field = value;
		}

		public function get retCode():int {
			if(!hasRetCode) {
				return 0;
			}
			return ret_code$field;
		}

		/**
		 *  @private
		 */
		public static const RET_MSG:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("BaseProtocol.RetInfo.ret_msg", "retMsg", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var ret_msg$field:String;

		public function clearRetMsg():void {
			ret_msg$field = null;
		}

		public function get hasRetMsg():Boolean {
			return ret_msg$field != null;
		}

		public function set retMsg(value:String):void {
			ret_msg$field = value;
		}

		public function get retMsg():String {
			if(!hasRetMsg) {
				return "";
			}
			return ret_msg$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRetCode) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, ret_code$field);
			}
			if (hasRetMsg) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, ret_msg$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_code$count:uint = 0;
			var ret_msg$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_code$count != 0) {
						throw new flash.errors.IOError('Bad data format: RetInfo.retCode cannot be set twice.');
					}
					++ret_code$count;
					this.retCode = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (ret_msg$count != 0) {
						throw new flash.errors.IOError('Bad data format: RetInfo.retMsg cannot be set twice.');
					}
					++ret_msg$count;
					this.retMsg = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
