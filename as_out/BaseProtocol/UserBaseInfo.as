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
	public dynamic final class UserBaseInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_UINT32 = new FieldDescriptor_TYPE_UINT32("BaseProtocol.UserBaseInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:uint;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new uint();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:uint):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():uint {
			if(!hasId) {
				return 0;
			}
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor_TYPE_UINT32 = new FieldDescriptor_TYPE_UINT32("BaseProtocol.UserBaseInfo.exp", "exp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exp$field:uint;

		public function clearExp():void {
			hasField$0 &= 0xfffffffd;
			exp$field = new uint();
		}

		public function get hasExp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set exp(value:uint):void {
			hasField$0 |= 0x2;
			exp$field = value;
		}

		public function get exp():uint {
			if(!hasExp) {
				return 0;
			}
			return exp$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor_TYPE_UINT32 = new FieldDescriptor_TYPE_UINT32("BaseProtocol.UserBaseInfo.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:uint;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffb;
			level$field = new uint();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set level(value:uint):void {
			hasField$0 |= 0x4;
			level$field = value;
		}

		public function get level():uint {
			if(!hasLevel) {
				return 0;
			}
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const SEX:FieldDescriptor_TYPE_UINT32 = new FieldDescriptor_TYPE_UINT32("BaseProtocol.UserBaseInfo.sex", "sex", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var sex$field:uint;

		public function clearSex():void {
			hasField$0 &= 0xfffffff7;
			sex$field = new uint();
		}

		public function get hasSex():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set sex(value:uint):void {
			hasField$0 |= 0x8;
			sex$field = value;
		}

		public function get sex():uint {
			if(!hasSex) {
				return 0;
			}
			return sex$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_UINT32(output, id$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_UINT32(output, exp$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_UINT32(output, level$field);
			}
			if (hasSex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_UINT32(output, sex$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var exp$count:uint = 0;
			var level$count:uint = 0;
			var sex$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserBaseInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
					break;
				case 2:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserBaseInfo.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserBaseInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
					break;
				case 4:
					if (sex$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserBaseInfo.sex cannot be set twice.');
					}
					++sex$count;
					this.sex = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
