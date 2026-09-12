package com.microsoft.bond;

import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Metadata implements BondSerializable, BondMirror {
    private HashMap<String, String> attributes;
    private Variant default_value;
    private Modifier modifier;
    private String name;
    private String qualified_name;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m14clone() {
        return null;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String value) {
        this.name = value;
    }

    public final String getQualified_name() {
        return this.qualified_name;
    }

    public final void setQualified_name(String value) {
        this.qualified_name = value;
    }

    public final HashMap<String, String> getAttributes() {
        return this.attributes;
    }

    public final void setAttributes(HashMap<String, String> value) {
        this.attributes = value;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    public final void setModifier(Modifier value) {
        this.modifier = value;
    }

    public final Variant getDefault_value() {
        return this.default_value;
    }

    public final void setDefault_value(Variant value) {
        this.default_value = value;
    }

    public static class Schema {
        private static final Metadata attributes_metadata;
        private static final Metadata default_value_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata modifier_metadata;
        private static final Metadata name_metadata;
        private static final Metadata qualified_name_metadata;
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("Metadata");
            metadata.setQualified_name("com.microsoft.bond.Metadata");
            name_metadata = new Metadata();
            name_metadata.setName("name");
            qualified_name_metadata = new Metadata();
            qualified_name_metadata.setName("qualified_name");
            attributes_metadata = new Metadata();
            attributes_metadata.setName("attributes");
            modifier_metadata = new Metadata();
            modifier_metadata.setName("modifier");
            modifier_metadata.getDefault_value().setInt_value(Modifier.Optional.getValue());
            default_value_metadata = new Metadata();
            default_value_metadata.setName("default_value");
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
            field.setMetadata(name_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 1);
            field2.setMetadata(qualified_name_metadata);
            field2.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 2);
            field3.setMetadata(attributes_metadata);
            field3.getType().setId(BondDataType.BT_MAP);
            field3.getType().setKey(new TypeDef());
            field3.getType().setElement(new TypeDef());
            field3.getType().getKey().setId(BondDataType.BT_STRING);
            field3.getType().getElement().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 3);
            field4.setMetadata(modifier_metadata);
            field4.getType().setId(BondDataType.BT_INT32);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 4);
            field5.setMetadata(default_value_metadata);
            field5.setType(Variant.Schema.getTypeDef(schema));
            structDef.getFields().add(field5);
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 0:
                return this.name;
            case 1:
                return this.qualified_name;
            case 2:
                return this.attributes;
            case 3:
                return this.modifier;
            case 4:
                return this.default_value;
            default:
                return null;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 0:
                this.name = (String) value;
                break;
            case 1:
                this.qualified_name = (String) value;
                break;
            case 2:
                this.attributes = (HashMap) value;
                break;
            case 3:
                this.modifier = (Modifier) value;
                break;
            case 4:
                this.default_value = (Variant) value;
                break;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        if (Variant.Schema.metadata == structDef.getMetadata()) {
            return new Variant();
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

    public Metadata() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("Metadata", "com.microsoft.bond.Metadata");
    }

    protected void reset(String name, String qualifiedName) {
        this.name = "";
        this.qualified_name = "";
        if (this.attributes == null) {
            this.attributes = new HashMap<>();
        } else {
            this.attributes.clear();
        }
        this.modifier = Modifier.Optional;
        this.default_value = new Variant();
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
            this.name = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.qualified_name = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            readFieldImpl_attributes(reader, BondDataType.BT_MAP);
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.modifier = Modifier.fromValue(reader.readInt32());
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.default_value.read(reader);
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
                        this.name = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 1:
                        this.qualified_name = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 2:
                        readFieldImpl_attributes(reader, fieldTag.type);
                        break;
                    case 3:
                        this.modifier = Modifier.fromValue(ReadHelper.readInt32(reader, fieldTag.type));
                        break;
                    case 4:
                        ReadHelper.validateType(fieldTag.type, BondDataType.BT_STRUCT);
                        this.default_value.readNested(reader);
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

    private void readFieldImpl_attributes(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        ReadHelper.validateType(typeInPayload, BondDataType.BT_MAP);
        ProtocolReader.MapTag tag1 = reader.readMapContainerBegin();
        for (int i2 = 0; i2 < tag1.size; i2++) {
            String key3 = ReadHelper.readString(reader, tag1.keyType);
            String val4 = ReadHelper.readString(reader, tag1.valueType);
            this.attributes.put(key3, val4);
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
        if (!canOmitFields || this.name != Schema.name_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 0, Schema.name_metadata);
            writer.writeString(this.name);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 0, Schema.name_metadata);
        }
        if (!canOmitFields || this.qualified_name != Schema.qualified_name_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 1, Schema.qualified_name_metadata);
            writer.writeString(this.qualified_name);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 1, Schema.qualified_name_metadata);
        }
        int size3 = this.attributes.size();
        if (!canOmitFields || size3 != 0) {
            writer.writeFieldBegin(BondDataType.BT_MAP, 2, Schema.attributes_metadata);
            writer.writeContainerBegin(this.attributes.size(), BondDataType.BT_STRING, BondDataType.BT_STRING);
            for (Map.Entry<String, String> e4 : this.attributes.entrySet()) {
                writer.writeString(e4.getKey());
                writer.writeString(e4.getValue());
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_MAP, 2, Schema.attributes_metadata);
        }
        if (!canOmitFields || this.modifier.getValue() != Schema.modifier_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT32, 3, Schema.modifier_metadata);
            writer.writeInt32(this.modifier.getValue());
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT32, 3, Schema.modifier_metadata);
        }
        writer.writeFieldBegin(BondDataType.BT_STRUCT, 4, Schema.default_value_metadata);
        this.default_value.writeNested(writer, false);
        writer.writeFieldEnd();
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        Metadata that = (Metadata) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0053  */
    /* JADX WARN: Code duplicated, block: B:55:0x0069  */
    /* JADX WARN: Code duplicated, block: B:61:0x007f  */
    protected boolean memberwiseCompareQuick(Metadata that) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        if (1 == 0) {
            equals = false;
        } else {
            if ((this.name == null) == (that.name == null)) {
                equals = true;
            } else {
                equals = false;
            }
        }
        boolean equals4 = equals && (this.name == null || this.name.length() == that.name.length());
        if (equals4) {
            if ((this.qualified_name == null) == (that.qualified_name == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals5 = equals2 && (this.qualified_name == null || this.qualified_name.length() == that.qualified_name.length());
        if (equals5) {
            if ((this.attributes == null) == (that.attributes == null)) {
                equals3 = true;
            } else {
                equals3 = false;
            }
        } else {
            equals3 = false;
        }
        boolean equals6 = equals3 && (this.attributes == null || this.attributes.size() == that.attributes.size());
        return equals6 && this.modifier == that.modifier;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0095  */
    protected boolean memberwiseCompareDeep(Metadata that) {
        boolean equals;
        boolean equals2 = (1 != 0 && (this.name == null || this.name.equals(that.name))) && (this.qualified_name == null || this.qualified_name.equals(that.qualified_name));
        if (equals2 && this.attributes != null && this.attributes.size() != 0) {
            for (Map.Entry<String, String> e3 : this.attributes.entrySet()) {
                String val1 = e3.getValue();
                String val2 = that.attributes.get(e3.getKey());
                equals2 = equals2 && that.attributes.containsKey(e3.getKey());
                if (equals2) {
                    if (!equals2) {
                        equals = false;
                    } else if ((val1 == null) == (val2 == null)) {
                        equals = true;
                    } else {
                        equals = false;
                    }
                    equals2 = (equals && (val1 == null || val1.length() == val2.length())) && (val1 == null || val1.equals(val2));
                }
                if (!equals2) {
                    break;
                }
            }
        }
        return equals2 && (this.default_value == null || this.default_value.memberwiseCompare(that.default_value));
    }
}
