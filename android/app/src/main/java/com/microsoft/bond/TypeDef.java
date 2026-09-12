package com.microsoft.bond;

import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TypeDef implements BondSerializable, BondMirror {
    private boolean bonded_type;
    private TypeDef element;
    private BondDataType id;
    private TypeDef key;
    private short struct_def;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m20clone() {
        return null;
    }

    public final BondDataType getId() {
        return this.id;
    }

    public final void setId(BondDataType value) {
        this.id = value;
    }

    public final short getStruct_def() {
        return this.struct_def;
    }

    public final void setStruct_def(short value) {
        this.struct_def = value;
    }

    public final TypeDef getElement() {
        return this.element;
    }

    public final void setElement(TypeDef value) {
        this.element = value;
    }

    public final TypeDef getKey() {
        return this.key;
    }

    public final void setKey(TypeDef value) {
        this.key = value;
    }

    public final boolean getBonded_type() {
        return this.bonded_type;
    }

    public final void setBonded_type(boolean value) {
        this.bonded_type = value;
    }

    public static class Schema {
        private static final Metadata bonded_type_metadata;
        private static final Metadata element_metadata;
        private static final Metadata id_metadata;
        private static final Metadata key_metadata;
        public static final Metadata metadata = new Metadata();
        public static final SchemaDef schemaDef;
        private static final Metadata struct_def_metadata;

        static {
            metadata.setName("TypeDef");
            metadata.setQualified_name("com.microsoft.bond.TypeDef");
            id_metadata = new Metadata();
            id_metadata.setName("id");
            id_metadata.getDefault_value().setInt_value(BondDataType.BT_STRUCT.getValue());
            struct_def_metadata = new Metadata();
            struct_def_metadata.setName("struct_def");
            struct_def_metadata.getDefault_value().setUint_value(0L);
            element_metadata = new Metadata();
            element_metadata.setName("element");
            key_metadata = new Metadata();
            key_metadata.setName("key");
            bonded_type_metadata = new Metadata();
            bonded_type_metadata.setName("bonded_type");
            bonded_type_metadata.getDefault_value().setUint_value(0L);
            schemaDef = new SchemaDef();
            schemaDef.setRoot(getTypeDef(schemaDef));
        }

        public static TypeDef getTypeDef(SchemaDef schema) {
            TypeDef type = new TypeDef();
            type.setId(BondDataType.BT_STRUCT);
            type.setStruct_def(getStructDef(schema));
            return type;
        }

        private static short getStructDef(SchemaDef schema) {
            for (short pos = 0; pos < schema.getStructs().size(); pos = (short) (pos + 1)) {
                if (schema.getStructs().get(pos).getMetadata() == metadata) {
                    return pos;
                }
            }
            StructDef structDef = new StructDef();
            schema.getStructs().add(structDef);
            structDef.setMetadata(metadata);
            FieldDef field = new FieldDef();
            field.setId((short) 0);
            field.setMetadata(id_metadata);
            field.getType().setId(BondDataType.BT_INT32);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 1);
            field2.setMetadata(struct_def_metadata);
            field2.getType().setId(BondDataType.BT_UINT16);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 2);
            field3.setMetadata(element_metadata);
            field3.getType().setId(BondDataType.BT_LIST);
            field3.getType().setElement(new TypeDef());
            field3.getType().setElement(getTypeDef(schema));
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 3);
            field4.setMetadata(key_metadata);
            field4.getType().setId(BondDataType.BT_LIST);
            field4.getType().setElement(new TypeDef());
            field4.getType().setElement(getTypeDef(schema));
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 4);
            field5.setMetadata(bonded_type_metadata);
            field5.getType().setId(BondDataType.BT_BOOL);
            structDef.getFields().add(field5);
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 0:
                return this.id;
            case 1:
                return Short.valueOf(this.struct_def);
            case 2:
                return this.element;
            case 3:
                return this.key;
            case 4:
                return Boolean.valueOf(this.bonded_type);
            default:
                return null;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 0:
                this.id = (BondDataType) value;
                break;
            case 1:
                this.struct_def = ((Short) value).shortValue();
                break;
            case 2:
                this.element = (TypeDef) value;
                break;
            case 3:
                this.key = (TypeDef) value;
                break;
            case 4:
                this.bonded_type = ((Boolean) value).booleanValue();
                break;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        if (Schema.metadata == structDef.getMetadata()) {
            return new TypeDef();
        }
        return null;
    }

    @Override // com.microsoft.bond.BondMirror
    public SchemaDef getSchema() {
        return getRuntimeSchema();
    }

    public static SchemaDef getRuntimeSchema() {
        return Schema.schemaDef;
    }

    public TypeDef() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("TypeDef", "com.microsoft.bond.TypeDef");
    }

    protected void reset(String name, String qualifiedName) {
        this.id = BondDataType.BT_STRUCT;
        this.struct_def = (short) 0;
        this.element = null;
        this.key = null;
        this.bonded_type = false;
    }

    @Override // com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input) throws IOException {
        Marshaler.unmarshal(input, this);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input, BondSerializable schema) throws IOException {
        Marshaler.unmarshal(input, (SchemaDef) schema, this);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader) throws IOException {
        reader.readBegin();
        readNested(reader);
        reader.readEnd();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void readNested(ProtocolReader reader) throws IOException {
        if (!reader.hasCapability(ProtocolCapability.TAGGED)) {
            readUntagged(reader, false);
        } else if (readTagged(reader, false)) {
            ReadHelper.skipPartialStruct(reader);
        }
    }

    @Override // com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader, BondSerializable schema) throws IOException {
    }

    protected void readUntagged(ProtocolReader reader, boolean isBase) throws IOException {
        boolean canOmitFields = reader.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        reader.readStructBegin(isBase);
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.id = BondDataType.fromValue(reader.readInt32());
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.struct_def = reader.readUInt16();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            readFieldImpl_element(reader, BondDataType.BT_LIST);
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            readFieldImpl_key(reader, BondDataType.BT_LIST);
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.bonded_type = reader.readBool();
        }
        reader.readStructEnd();
    }

    protected boolean readTagged(ProtocolReader reader, boolean isBase) throws IOException {
        ProtocolReader.FieldTag fieldTag;
        reader.readStructBegin(isBase);
        while (true) {
            fieldTag = reader.readFieldBegin();
            if (fieldTag.type != BondDataType.BT_STOP && fieldTag.type != BondDataType.BT_STOP_BASE) {
                switch (fieldTag.id) {
                    case 0:
                        this.id = BondDataType.fromValue(ReadHelper.readInt32(reader, fieldTag.type));
                        break;
                    case 1:
                        this.struct_def = ReadHelper.readUInt16(reader, fieldTag.type);
                        break;
                    case 2:
                        readFieldImpl_element(reader, fieldTag.type);
                        break;
                    case 3:
                        readFieldImpl_key(reader, fieldTag.type);
                        break;
                    case 4:
                        this.bonded_type = ReadHelper.readBool(reader, fieldTag.type);
                        break;
                    default:
                        reader.skip(fieldTag.type);
                        break;
                }
                reader.readFieldEnd();
            }
        }
        boolean isPartial = fieldTag.type == BondDataType.BT_STOP_BASE;
        reader.readStructEnd();
        return isPartial;
    }

    private void readFieldImpl_element(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        ReadHelper.validateType(typeInPayload, BondDataType.BT_LIST);
        ProtocolReader.ListTag tag1 = reader.readContainerBegin();
        ReadHelper.validateType(tag1.type, BondDataType.BT_STRUCT);
        if (tag1.size == 1) {
            if (this.element == null) {
                this.element = new TypeDef();
            }
            this.element.readNested(reader);
        } else if (tag1.size != 0) {
        }
        reader.readContainerEnd();
    }

    private void readFieldImpl_key(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        ReadHelper.validateType(typeInPayload, BondDataType.BT_LIST);
        ProtocolReader.ListTag tag1 = reader.readContainerBegin();
        ReadHelper.validateType(tag1.type, BondDataType.BT_STRUCT);
        if (tag1.size == 1) {
            if (this.key == null) {
                this.key = new TypeDef();
            }
            this.key.readNested(reader);
        } else if (tag1.size != 0) {
        }
        reader.readContainerEnd();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void marshal(ProtocolWriter writer) throws IOException {
        Marshaler.marshal(this, writer);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void write(ProtocolWriter writer) throws IOException {
        writer.writeBegin();
        ProtocolWriter firstPassWriter = writer.getFirstPassWriter();
        if (firstPassWriter != null) {
            writeNested(firstPassWriter, false);
            writeNested(writer, false);
        } else {
            writeNested(writer, false);
        }
        writer.writeEnd();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c4  */
    @Override // com.microsoft.bond.BondSerializable
    public void writeNested(ProtocolWriter writer, boolean isBase) throws IOException {
        boolean canOmitFields = writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        if (!canOmitFields || this.id.getValue() != Schema.id_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT32, 0, Schema.id_metadata);
            writer.writeInt32(this.id.getValue());
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT32, 0, Schema.id_metadata);
        }
        if (!canOmitFields || this.struct_def != Schema.struct_def_metadata.getDefault_value().getUint_value()) {
            writer.writeFieldBegin(BondDataType.BT_UINT16, 1, Schema.struct_def_metadata);
            writer.writeUInt16(this.struct_def);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_UINT16, 1, Schema.struct_def_metadata);
        }
        int size3 = this.element != null ? 1 : 0;
        if (!canOmitFields || size3 != 0) {
            writer.writeFieldBegin(BondDataType.BT_LIST, 2, Schema.element_metadata);
            writer.writeContainerBegin(size3, BondDataType.BT_STRUCT);
            if (size3 != 0) {
                this.element.writeNested(writer, false);
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_LIST, 2, Schema.element_metadata);
        }
        int size4 = this.key != null ? 1 : 0;
        if (!canOmitFields || size4 != 0) {
            writer.writeFieldBegin(BondDataType.BT_LIST, 3, Schema.key_metadata);
            writer.writeContainerBegin(size4, BondDataType.BT_STRUCT);
            if (size4 != 0) {
                this.key.writeNested(writer, false);
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_LIST, 3, Schema.key_metadata);
        }
        if (canOmitFields) {
            if (this.bonded_type != (Schema.bonded_type_metadata.getDefault_value().getUint_value() != 0)) {
                writer.writeFieldBegin(BondDataType.BT_BOOL, 4, Schema.bonded_type_metadata);
                writer.writeBool(this.bonded_type);
                writer.writeFieldEnd();
            } else {
                writer.writeFieldOmitted(BondDataType.BT_BOOL, 4, Schema.bonded_type_metadata);
            }
        } else {
            writer.writeFieldBegin(BondDataType.BT_BOOL, 4, Schema.bonded_type_metadata);
            writer.writeBool(this.bonded_type);
            writer.writeFieldEnd();
        }
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        TypeDef that = (TypeDef) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0045  */
    /* JADX WARN: Code duplicated, block: B:41:0x004b  */
    protected boolean memberwiseCompareQuick(TypeDef that) {
        boolean equals;
        boolean equals2;
        boolean equals3 = 1 != 0 && this.id == that.id;
        boolean equals4 = equals3 && this.struct_def == that.struct_def;
        if (equals4) {
            if ((this.element == null) == (that.element == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        if (equals) {
            if ((this.key == null) == (that.key == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        return equals2 && this.bonded_type == that.bonded_type;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0040  */
    /* JADX WARN: Code duplicated, block: B:44:0x0052  */
    protected boolean memberwiseCompareDeep(TypeDef that) {
        boolean equals;
        boolean equals2;
        boolean equals3 = true;
        if (1 != 0 && this.element != null) {
            if (1 == 0) {
                equals2 = false;
            } else {
                if ((this.element == null) == (that.element == null)) {
                    equals2 = true;
                } else {
                    equals2 = false;
                }
            }
            equals3 = equals2 && (this.element == null || this.element.memberwiseCompare(that.element));
        }
        if (equals3 && this.key != null) {
            if (equals3) {
                if ((this.key == null) == (that.key == null)) {
                    equals = true;
                } else {
                    equals = false;
                }
            } else {
                equals = false;
            }
            return equals && (this.key == null || this.key.memberwiseCompare(that.key));
        }
        return equals3;
    }
}
