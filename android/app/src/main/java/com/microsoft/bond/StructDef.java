package com.microsoft.bond;

import com.facebook.GraphRequest;
import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StructDef implements BondSerializable, BondMirror {
    private TypeDef base_def;
    private ArrayList<FieldDef> fields;
    private Metadata metadata;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m19clone() {
        return null;
    }

    public final Metadata getMetadata() {
        return this.metadata;
    }

    public final void setMetadata(Metadata value) {
        this.metadata = value;
    }

    public final TypeDef getBase_def() {
        return this.base_def;
    }

    public final void setBase_def(TypeDef value) {
        this.base_def = value;
    }

    public final ArrayList<FieldDef> getFields() {
        return this.fields;
    }

    public final void setFields(ArrayList<FieldDef> value) {
        this.fields = value;
    }

    public static class Schema {
        private static final Metadata base_def_metadata;
        private static final Metadata fields_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata metadata_metadata;
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("StructDef");
            metadata.setQualified_name("com.microsoft.bond.StructDef");
            metadata_metadata = new Metadata();
            metadata_metadata.setName("metadata");
            base_def_metadata = new Metadata();
            base_def_metadata.setName("base_def");
            fields_metadata = new Metadata();
            fields_metadata.setName(GraphRequest.FIELDS_PARAM);
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
            field2.setMetadata(base_def_metadata);
            field2.getType().setId(BondDataType.BT_LIST);
            field2.getType().setElement(new TypeDef());
            field2.getType().setElement(TypeDef.Schema.getTypeDef(schema));
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 2);
            field3.setMetadata(fields_metadata);
            field3.getType().setId(BondDataType.BT_LIST);
            field3.getType().setElement(new TypeDef());
            field3.getType().setElement(FieldDef.Schema.getTypeDef(schema));
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
                return this.base_def;
            case 2:
                return this.fields;
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
                this.base_def = (TypeDef) value;
                break;
            case 2:
                this.fields = (ArrayList) value;
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
        if (FieldDef.Schema.metadata == structDef.getMetadata()) {
            return new FieldDef();
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

    public StructDef() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("StructDef", "com.microsoft.bond.StructDef");
    }

    protected void reset(String name, String qualifiedName) {
        this.metadata = new Metadata();
        this.base_def = null;
        if (this.fields == null) {
            this.fields = new ArrayList<>();
        } else {
            this.fields.clear();
        }
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
            readFieldImpl_base_def(reader, BondDataType.BT_LIST);
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            readFieldImpl_fields(reader, BondDataType.BT_LIST);
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
                        readFieldImpl_base_def(reader, fieldTag.type);
                        break;
                    case 2:
                        readFieldImpl_fields(reader, fieldTag.type);
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

    private void readFieldImpl_base_def(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        ReadHelper.validateType(typeInPayload, BondDataType.BT_LIST);
        ProtocolReader.ListTag tag1 = reader.readContainerBegin();
        ReadHelper.validateType(tag1.type, BondDataType.BT_STRUCT);
        if (tag1.size == 1) {
            if (this.base_def == null) {
                this.base_def = new TypeDef();
            }
            this.base_def.readNested(reader);
        } else if (tag1.size != 0) {
        }
        reader.readContainerEnd();
    }

    private void readFieldImpl_fields(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        ReadHelper.validateType(typeInPayload, BondDataType.BT_LIST);
        ProtocolReader.ListTag tag1 = reader.readContainerBegin();
        ReadHelper.validateType(tag1.type, BondDataType.BT_STRUCT);
        this.fields.ensureCapacity(tag1.size);
        for (int i3 = 0; i3 < tag1.size; i3++) {
            FieldDef element2 = new FieldDef();
            element2.readNested(reader);
            this.fields.add(element2);
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
        writer.writeFieldBegin(BondDataType.BT_STRUCT, 0, Schema.metadata_metadata);
        this.metadata.writeNested(writer, false);
        writer.writeFieldEnd();
        int size1 = this.base_def != null ? 1 : 0;
        if (!canOmitFields || size1 != 0) {
            writer.writeFieldBegin(BondDataType.BT_LIST, 1, Schema.base_def_metadata);
            writer.writeContainerBegin(size1, BondDataType.BT_STRUCT);
            if (size1 != 0) {
                this.base_def.writeNested(writer, false);
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_LIST, 1, Schema.base_def_metadata);
        }
        int size2 = this.fields.size();
        if (!canOmitFields || size2 != 0) {
            writer.writeFieldBegin(BondDataType.BT_LIST, 2, Schema.fields_metadata);
            writer.writeContainerBegin(size2, BondDataType.BT_STRUCT);
            for (FieldDef item3 : this.fields) {
                item3.writeNested(writer, false);
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_LIST, 2, Schema.fields_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        StructDef that = (StructDef) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x002d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0033  */
    protected boolean memberwiseCompareQuick(StructDef that) {
        boolean equals;
        boolean equals2;
        if (1 == 0) {
            equals = false;
        } else {
            if ((this.base_def == null) == (that.base_def == null)) {
                equals = true;
            } else {
                equals = false;
            }
        }
        if (equals) {
            if ((this.fields == null) == (that.fields == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        return equals2 && (this.fields == null || this.fields.size() == that.fields.size());
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0070  */
    /* JADX WARN: Code duplicated, block: B:55:0x0082  */
    protected boolean memberwiseCompareDeep(StructDef that) {
        boolean equals;
        boolean equals2;
        boolean equals3 = 1 != 0 && (this.metadata == null || this.metadata.memberwiseCompare(that.metadata));
        if (equals3 && this.base_def != null) {
            if (!equals3) {
                equals2 = false;
            } else if ((this.base_def == null) == (that.base_def == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
            equals3 = equals2 && (this.base_def == null || this.base_def.memberwiseCompare(that.base_def));
        }
        if (equals3 && this.fields != null && this.fields.size() != 0) {
            for (int i1 = 0; i1 < this.fields.size(); i1++) {
                FieldDef val2 = this.fields.get(i1);
                FieldDef val3 = that.fields.get(i1);
                if (!equals3) {
                    equals = false;
                } else if ((val2 == null) == (val3 == null)) {
                    equals = true;
                } else {
                    equals = false;
                }
                equals3 = equals && (val2 == null || val2.memberwiseCompare(val3));
                if (!equals3) {
                    break;
                }
            }
        }
        return equals3;
    }
}
