package com.microsoft.bond;

import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Void implements BondSerializable, BondMirror {
    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m23clone() {
        return null;
    }

    public static class Schema {
        public static final Metadata metadata = new Metadata();
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("Void");
            metadata.setQualified_name("com.microsoft.bond.Void");
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
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        fieldDef.getId();
        return null;
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        fieldDef.getId();
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

    public Void() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("Void", "com.microsoft.bond.Void");
    }

    protected void reset(String name, String qualifiedName) {
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
        reader.readStructBegin(isBase);
        reader.readStructEnd();
    }

    protected boolean readTagged(ProtocolReader reader, boolean isBase) throws IOException {
        ProtocolReader.FieldTag fieldTag;
        reader.readStructBegin(isBase);
        while (true) {
            fieldTag = reader.readFieldBegin();
            if (fieldTag.type == BondDataType.BT_STOP || fieldTag.type == BondDataType.BT_STOP_BASE) {
                break;
            }
            int i = fieldTag.id;
            reader.skip(fieldTag.type);
            reader.readFieldEnd();
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
        writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        Void that = (Void) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    protected boolean memberwiseCompareQuick(Void that) {
        return true;
    }

    protected boolean memberwiseCompareDeep(Void that) {
        return true;
    }
}
