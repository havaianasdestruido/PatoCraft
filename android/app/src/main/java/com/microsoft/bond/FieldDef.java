package com.microsoft.bond;

import com.facebook.share.internal.ShareConstants;
import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FieldDef implements BondSerializable, BondMirror {
    private short id;
    private Metadata metadata;
    private TypeDef type;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m11clone() {
        return null;
    }

    public final Metadata getMetadata() {
        return this.metadata;
    }

    public final void setMetadata(Metadata value) {
        this.metadata = value;
    }

    public final short getId() {
        return this.id;
    }

    public final void setId(short value) {
        this.id = value;
    }

    public final TypeDef getType() {
        return this.type;
    }

    public final void setType(TypeDef value) {
        this.type = value;
    }

    public static class Schema {
        private static final Metadata id_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata metadata_metadata;
        public static final SchemaDef schemaDef;
        private static final Metadata type_metadata;

        static {
            metadata.setName("FieldDef");
            metadata.setQualified_name("com.microsoft.bond.FieldDef");
            metadata_metadata = new Metadata();
            metadata_metadata.setName("metadata");
            id_metadata = new Metadata();
            id_metadata.setName("id");
            id_metadata.getDefault_value().setUint_value(0L);
            type_metadata = new Metadata();
            type_metadata.setName(ShareConstants.MEDIA_TYPE);
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
            field.setMetadata(metadata_metadata);
            field.setType(Metadata.Schema.getTypeDef(schema));
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 1);
            field2.setMetadata(id_metadata);
            field2.getType().setId(BondDataType.BT_UINT16);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 2);
            field3.setMetadata(type_metadata);
            field3.setType(TypeDef.Schema.getTypeDef(schema));
            structDef.getFields().add(field3);
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 0:
                return this.metadata;
            case 1:
                return Short.valueOf(this.id);
            case 2:
                return this.type;
            default:
                return null;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 0:
                this.metadata = (Metadata) value;
                break;
            case 1:
                this.id = ((Short) value).shortValue();
                break;
            case 2:
                this.type = (TypeDef) value;
                break;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        if (Metadata.Schema.metadata == structDef.getMetadata()) {
            return new Metadata();
        }
        if (TypeDef.Schema.metadata == structDef.getMetadata()) {
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

    public FieldDef() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("FieldDef", "com.microsoft.bond.FieldDef");
    }

    protected void reset(String name, String qualifiedName) {
        this.metadata = new Metadata();
        this.id = (short) 0;
        this.type = new TypeDef();
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
            this.metadata.read(reader);
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.id = reader.readUInt16();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.type.read(reader);
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
                        ReadHelper.validateType(fieldTag.type, BondDataType.BT_STRUCT);
                        this.metadata.readNested(reader);
                        break;
                    case 1:
                        this.id = ReadHelper.readUInt16(reader, fieldTag.type);
                        break;
                    case 2:
                        ReadHelper.validateType(fieldTag.type, BondDataType.BT_STRUCT);
                        this.type.readNested(reader);
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

    @Override // com.microsoft.bond.BondSerializable
    public void writeNested(ProtocolWriter writer, boolean isBase) throws IOException {
        boolean canOmitFields = writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        writer.writeFieldBegin(BondDataType.BT_STRUCT, 0, Schema.metadata_metadata);
        this.metadata.writeNested(writer, false);
        writer.writeFieldEnd();
        if (!canOmitFields || this.id != Schema.id_metadata.getDefault_value().getUint_value()) {
            writer.writeFieldBegin(BondDataType.BT_UINT16, 1, Schema.id_metadata);
            writer.writeUInt16(this.id);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_UINT16, 1, Schema.id_metadata);
        }
        writer.writeFieldBegin(BondDataType.BT_STRUCT, 2, Schema.type_metadata);
        this.type.writeNested(writer, false);
        writer.writeFieldEnd();
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        FieldDef that = (FieldDef) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    protected boolean memberwiseCompareQuick(FieldDef that) {
        return 1 != 0 && this.id == that.id;
    }

    protected boolean memberwiseCompareDeep(FieldDef that) {
        boolean equals = 1 != 0 && (this.metadata == null || this.metadata.memberwiseCompare(that.metadata));
        return equals && (this.type == null || this.type.memberwiseCompare(that.type));
    }
}
