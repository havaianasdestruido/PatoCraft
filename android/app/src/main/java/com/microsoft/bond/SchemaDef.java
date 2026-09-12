package com.microsoft.bond;

import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SchemaDef implements BondSerializable, BondMirror {
    private TypeDef root;
    private ArrayList<StructDef> structs;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m17clone() {
        return null;
    }

    public final ArrayList<StructDef> getStructs() {
        return this.structs;
    }

    public final void setStructs(ArrayList<StructDef> value) {
        this.structs = value;
    }

    public final TypeDef getRoot() {
        return this.root;
    }

    public final void setRoot(TypeDef value) {
        this.root = value;
    }

    public static class Schema {
        public static final Metadata metadata = new Metadata();
        private static final Metadata root_metadata;
        public static final SchemaDef schemaDef;
        private static final Metadata structs_metadata;

        static {
            metadata.setName("SchemaDef");
            metadata.setQualified_name("com.microsoft.bond.SchemaDef");
            structs_metadata = new Metadata();
            structs_metadata.setName("structs");
            root_metadata = new Metadata();
            root_metadata.setName("root");
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
            field.setMetadata(structs_metadata);
            field.getType().setId(BondDataType.BT_LIST);
            field.getType().setElement(new TypeDef());
            field.getType().setElement(StructDef.Schema.getTypeDef(schema));
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 1);
            field2.setMetadata(root_metadata);
            field2.setType(TypeDef.Schema.getTypeDef(schema));
            structDef.getFields().add(field2);
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 0:
                return this.structs;
            case 1:
                return this.root;
            default:
                return null;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 0:
                this.structs = (ArrayList) value;
                break;
            case 1:
                this.root = (TypeDef) value;
                break;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        if (StructDef.Schema.metadata == structDef.getMetadata()) {
            return new StructDef();
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

    public SchemaDef() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("SchemaDef", "com.microsoft.bond.SchemaDef");
    }

    protected void reset(String name, String qualifiedName) {
        if (this.structs == null) {
            this.structs = new ArrayList<>();
        } else {
            this.structs.clear();
        }
        this.root = new TypeDef();
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
            readFieldImpl_structs(reader, BondDataType.BT_LIST);
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.root.read(reader);
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
                        readFieldImpl_structs(reader, fieldTag.type);
                        break;
                    case 1:
                        ReadHelper.validateType(fieldTag.type, BondDataType.BT_STRUCT);
                        this.root.readNested(reader);
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

    private void readFieldImpl_structs(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        ReadHelper.validateType(typeInPayload, BondDataType.BT_LIST);
        ProtocolReader.ListTag tag1 = reader.readContainerBegin();
        ReadHelper.validateType(tag1.type, BondDataType.BT_STRUCT);
        this.structs.ensureCapacity(tag1.size);
        for (int i3 = 0; i3 < tag1.size; i3++) {
            StructDef element2 = new StructDef();
            element2.readNested(reader);
            this.structs.add(element2);
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

    @Override // com.microsoft.bond.BondSerializable
    public void writeNested(ProtocolWriter writer, boolean isBase) throws IOException {
        boolean canOmitFields = writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        int size1 = this.structs.size();
        if (!canOmitFields || size1 != 0) {
            writer.writeFieldBegin(BondDataType.BT_LIST, 0, Schema.structs_metadata);
            writer.writeContainerBegin(size1, BondDataType.BT_STRUCT);
            for (StructDef item2 : this.structs) {
                item2.writeNested(writer, false);
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_LIST, 0, Schema.structs_metadata);
        }
        writer.writeFieldBegin(BondDataType.BT_STRUCT, 1, Schema.root_metadata);
        this.root.writeNested(writer, false);
        writer.writeFieldEnd();
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        SchemaDef that = (SchemaDef) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x001e  */
    protected boolean memberwiseCompareQuick(SchemaDef that) {
        boolean equals;
        if (1 == 0) {
            equals = false;
        } else {
            if ((this.structs == null) == (that.structs == null)) {
                equals = true;
            } else {
                equals = false;
            }
        }
        return equals && (this.structs == null || this.structs.size() == that.structs.size());
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0048  */
    protected boolean memberwiseCompareDeep(SchemaDef that) {
        boolean equals;
        boolean equals2 = true;
        if (1 != 0 && this.structs != null && this.structs.size() != 0) {
            for (int i1 = 0; i1 < this.structs.size(); i1++) {
                StructDef val2 = this.structs.get(i1);
                StructDef val3 = that.structs.get(i1);
                if (!equals2) {
                    equals = false;
                } else if ((val2 == null) == (val3 == null)) {
                    equals = true;
                } else {
                    equals = false;
                }
                equals2 = equals && (val2 == null || val2.memberwiseCompare(val3));
                if (!equals2) {
                    break;
                }
            }
        }
        return equals2 && (this.root == null || this.root.memberwiseCompare(that.root));
    }
}
