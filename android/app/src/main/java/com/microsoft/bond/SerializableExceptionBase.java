package com.microsoft.bond;

import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SerializableExceptionBase implements BondSerializable, BondMirror {
    private String m_message;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m18clone() {
        return null;
    }

    public final String getM_message() {
        return this.m_message;
    }

    public final void setM_message(String value) {
        this.m_message = value;
    }

    public static class Schema {
        private static final Metadata m_message_metadata;
        public static final Metadata metadata = new Metadata();
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("SerializableExceptionBase");
            metadata.setQualified_name("com.microsoft.bond.SerializableExceptionBase");
            m_message_metadata = new Metadata();
            m_message_metadata.setName("m_message");
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
            field.setId((short) 8189);
            field.setMetadata(m_message_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 8189:
                return this.m_message;
            default:
                return null;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 8189:
                this.m_message = (String) value;
                break;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        return null;
    }

    @Override // com.microsoft.bond.BondMirror
    public SchemaDef getSchema() {
        return getRuntimeSchema();
    }

    public static SchemaDef getRuntimeSchema() {
        return Schema.schemaDef;
    }

    public SerializableExceptionBase() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("SerializableExceptionBase", "com.microsoft.bond.SerializableExceptionBase");
    }

    protected void reset(String name, String qualifiedName) {
        this.m_message = "";
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
            this.m_message = reader.readString();
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
                    case 8189:
                        this.m_message = ReadHelper.readString(reader, fieldTag.type);
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
        if (!canOmitFields || this.m_message != Schema.m_message_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 8189, Schema.m_message_metadata);
            writer.writeString(this.m_message);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 8189, Schema.m_message_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        SerializableExceptionBase that = (SerializableExceptionBase) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x001e  */
    protected boolean memberwiseCompareQuick(SerializableExceptionBase that) {
        boolean equals;
        if (1 == 0) {
            equals = false;
        } else {
            if ((this.m_message == null) == (that.m_message == null)) {
                equals = true;
            } else {
                equals = false;
            }
        }
        return equals && (this.m_message == null || this.m_message.length() == that.m_message.length());
    }

    protected boolean memberwiseCompareDeep(SerializableExceptionBase that) {
        return 1 != 0 && (this.m_message == null || this.m_message.equals(that.m_message));
    }
}
