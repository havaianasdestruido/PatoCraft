package com.microsoft.bond;

import com.appsflyer.MonitorMessages;
import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Vector<T extends BondSerializable, U extends BondSerializable> implements BondSerializable, BondMirror {
    private Class<T> generic_type_T;
    private Class<U> generic_type_U;
    private ArrayList<T> value;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m22clone() {
        return null;
    }

    public final ArrayList<T> getValue() {
        return this.value;
    }

    public final void setValue(ArrayList<T> value) {
        this.value = value;
    }

    public static class Schema {
        public static final Metadata metadata = new Metadata();
        public static final SchemaDef schemaDef;
        private static final Metadata value_metadata;

        static {
            metadata.setName("Vector");
            metadata.setQualified_name("com.microsoft.bond.Vector");
            value_metadata = new Metadata();
            value_metadata.setName(MonitorMessages.VALUE);
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
            field.setMetadata(value_metadata);
            field.getType().setId(BondDataType.BT_LIST);
            field.getType().setElement(new TypeDef());
            field.getType().getElement().setId(BondDataType.BT_STRUCT);
            structDef.getFields().add(field);
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 0:
                return this.value;
            default:
                return null;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 0:
                this.value = (ArrayList) value;
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

    public Vector() {
        Type[] genericTypes = getGenericTypeArguments();
        int typeIndex = 0 + 1;
        this.generic_type_T = (Class) genericTypes[0];
        int i = typeIndex + 1;
        this.generic_type_U = (Class) genericTypes[typeIndex];
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("Vector", "com.microsoft.bond.Vector");
    }

    protected void reset(String name, String qualifiedName) {
        if (this.value == null) {
            this.value = new ArrayList<>();
        } else {
            this.value.clear();
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
            readFieldImpl_value(reader, BondDataType.BT_LIST);
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
                        readFieldImpl_value(reader, fieldTag.type);
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

    private void readFieldImpl_value(ProtocolReader protocolReader, BondDataType bondDataType) throws IOException {
        ReadHelper.validateType(bondDataType, BondDataType.BT_LIST);
        ProtocolReader.ListTag containerBegin = protocolReader.readContainerBegin();
        this.value.ensureCapacity(containerBegin.size);
        for (int i = 0; i < containerBegin.size; i++) {
            T tNewInstance = null;
            try {
                tNewInstance = this.generic_type_T.newInstance();
                tNewInstance.readNested(protocolReader);
            } catch (IllegalAccessException e) {
            } catch (InstantiationException e2) {
            }
            this.value.add(tNewInstance);
        }
        protocolReader.readContainerEnd();
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
        int size1 = this.value.size();
        if (!canOmitFields || size1 != 0) {
            writer.writeFieldBegin(BondDataType.BT_LIST, 0, Schema.value_metadata);
            writer.writeContainerBegin(size1, BondDataType.BT_STRUCT);
            for (T item2 : this.value) {
                item2.writeNested(writer, false);
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_LIST, 0, Schema.value_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        Vector<T, U> that = (Vector) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x001e  */
    protected boolean memberwiseCompareQuick(Vector<T, U> that) {
        boolean equals;
        if (1 == 0) {
            equals = false;
        } else {
            if ((this.value == null) == (that.value == null)) {
                equals = true;
            } else {
                equals = false;
            }
        }
        return equals && (this.value == null || this.value.size() == that.value.size());
    }

    protected boolean memberwiseCompareDeep(Vector<T, U> that) {
        if (1 != 0 && this.value != null && this.value.size() != 0) {
            for (int i1 = 0; i1 < this.value.size(); i1++) {
                this.value.get(i1);
                that.value.get(i1);
                if (1 == 0) {
                    break;
                }
            }
        }
        return true;
    }

    private Type[] getGenericTypeArguments() {
        ParameterizedType superclass = (ParameterizedType) getClass().getGenericSuperclass();
        Type[] actualTypeArguments = superclass.getActualTypeArguments();
        return actualTypeArguments;
    }
}
