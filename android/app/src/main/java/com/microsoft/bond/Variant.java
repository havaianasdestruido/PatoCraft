package com.microsoft.bond;

import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import com.microsoft.cll.android.EventEnums;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Variant implements BondSerializable, BondMirror {
    private double double_value;
    private long int_value;
    private boolean nothing;
    private String string_value;
    private long uint_value;
    private String wstring_value;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m21clone() {
        return null;
    }

    public final long getUint_value() {
        return this.uint_value;
    }

    public final void setUint_value(long value) {
        this.uint_value = value;
    }

    public final long getInt_value() {
        return this.int_value;
    }

    public final void setInt_value(long value) {
        this.int_value = value;
    }

    public final double getDouble_value() {
        return this.double_value;
    }

    public final void setDouble_value(double value) {
        this.double_value = value;
    }

    public final String getString_value() {
        return this.string_value;
    }

    public final void setString_value(String value) {
        this.string_value = value;
    }

    public final String getWstring_value() {
        return this.wstring_value;
    }

    public final void setWstring_value(String value) {
        this.wstring_value = value;
    }

    public final boolean getNothing() {
        return this.nothing;
    }

    public final void setNothing(boolean value) {
        this.nothing = value;
    }

    public static class Schema {
        private static final Metadata double_value_metadata;
        private static final Metadata int_value_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata nothing_metadata;
        public static final SchemaDef schemaDef;
        private static final Metadata string_value_metadata;
        private static final Metadata uint_value_metadata;
        private static final Metadata wstring_value_metadata;

        static {
            metadata.setName("Variant");
            metadata.setQualified_name("com.microsoft.bond.Variant");
            uint_value_metadata = new Metadata();
            uint_value_metadata.setName("uint_value");
            uint_value_metadata.getDefault_value().setUint_value(0L);
            int_value_metadata = new Metadata();
            int_value_metadata.setName("int_value");
            int_value_metadata.getDefault_value().setInt_value(0L);
            double_value_metadata = new Metadata();
            double_value_metadata.setName("double_value");
            double_value_metadata.getDefault_value().setDouble_value(EventEnums.SampleRate_0_percent);
            string_value_metadata = new Metadata();
            string_value_metadata.setName("string_value");
            wstring_value_metadata = new Metadata();
            wstring_value_metadata.setName("wstring_value");
            nothing_metadata = new Metadata();
            nothing_metadata.setName("nothing");
            nothing_metadata.getDefault_value().setUint_value(0L);
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
            field.setMetadata(uint_value_metadata);
            field.getType().setId(BondDataType.BT_UINT64);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 1);
            field2.setMetadata(int_value_metadata);
            field2.getType().setId(BondDataType.BT_INT64);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 2);
            field3.setMetadata(double_value_metadata);
            field3.getType().setId(BondDataType.BT_DOUBLE);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 3);
            field4.setMetadata(string_value_metadata);
            field4.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 4);
            field5.setMetadata(wstring_value_metadata);
            field5.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field5);
            FieldDef field6 = new FieldDef();
            field6.setId((short) 5);
            field6.setMetadata(nothing_metadata);
            field6.getType().setId(BondDataType.BT_BOOL);
            structDef.getFields().add(field6);
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 0:
                return Long.valueOf(this.uint_value);
            case 1:
                return Long.valueOf(this.int_value);
            case 2:
                return Double.valueOf(this.double_value);
            case 3:
                return this.string_value;
            case 4:
                return this.wstring_value;
            case 5:
                return Boolean.valueOf(this.nothing);
            default:
                return null;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 0:
                this.uint_value = ((Long) value).longValue();
                break;
            case 1:
                this.int_value = ((Long) value).longValue();
                break;
            case 2:
                this.double_value = ((Double) value).doubleValue();
                break;
            case 3:
                this.string_value = (String) value;
                break;
            case 4:
                this.wstring_value = (String) value;
                break;
            case 5:
                this.nothing = ((Boolean) value).booleanValue();
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

    public Variant() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("Variant", "com.microsoft.bond.Variant");
    }

    protected void reset(String name, String qualifiedName) {
        this.uint_value = 0L;
        this.int_value = 0L;
        this.double_value = EventEnums.SampleRate_0_percent;
        this.string_value = "";
        this.wstring_value = "";
        this.nothing = false;
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
            this.uint_value = reader.readUInt64();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.int_value = reader.readInt64();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.double_value = reader.readDouble();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.string_value = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.wstring_value = reader.readWString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.nothing = reader.readBool();
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
                        this.uint_value = ReadHelper.readUInt64(reader, fieldTag.type);
                        break;
                    case 1:
                        this.int_value = ReadHelper.readInt64(reader, fieldTag.type);
                        break;
                    case 2:
                        this.double_value = ReadHelper.readDouble(reader, fieldTag.type);
                        break;
                    case 3:
                        this.string_value = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 4:
                        this.wstring_value = ReadHelper.readWString(reader, fieldTag.type);
                        break;
                    case 5:
                        this.nothing = ReadHelper.readBool(reader, fieldTag.type);
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

    /* JADX WARN: Code duplicated, block: B:27:0x00dd  */
    @Override // com.microsoft.bond.BondSerializable
    public void writeNested(ProtocolWriter writer, boolean isBase) throws IOException {
        boolean canOmitFields = writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        if (!canOmitFields || this.uint_value != Schema.uint_value_metadata.getDefault_value().getUint_value()) {
            writer.writeFieldBegin(BondDataType.BT_UINT64, 0, Schema.uint_value_metadata);
            writer.writeUInt64(this.uint_value);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_UINT64, 0, Schema.uint_value_metadata);
        }
        if (!canOmitFields || this.int_value != Schema.int_value_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT64, 1, Schema.int_value_metadata);
            writer.writeInt64(this.int_value);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT64, 1, Schema.int_value_metadata);
        }
        if (!canOmitFields || this.double_value != Schema.double_value_metadata.getDefault_value().getDouble_value()) {
            writer.writeFieldBegin(BondDataType.BT_DOUBLE, 2, Schema.double_value_metadata);
            writer.writeDouble(this.double_value);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_DOUBLE, 2, Schema.double_value_metadata);
        }
        if (!canOmitFields || this.string_value != Schema.string_value_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 3, Schema.string_value_metadata);
            writer.writeString(this.string_value);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 3, Schema.string_value_metadata);
        }
        if (!canOmitFields || this.wstring_value != Schema.wstring_value_metadata.getDefault_value().getWstring_value()) {
            writer.writeFieldBegin(BondDataType.BT_WSTRING, 4, Schema.wstring_value_metadata);
            writer.writeWString(this.wstring_value);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_WSTRING, 4, Schema.wstring_value_metadata);
        }
        if (canOmitFields) {
            if (this.nothing != (Schema.nothing_metadata.getDefault_value().getUint_value() != 0)) {
                writer.writeFieldBegin(BondDataType.BT_BOOL, 5, Schema.nothing_metadata);
                writer.writeBool(this.nothing);
                writer.writeFieldEnd();
            } else {
                writer.writeFieldOmitted(BondDataType.BT_BOOL, 5, Schema.nothing_metadata);
            }
        } else {
            writer.writeFieldBegin(BondDataType.BT_BOOL, 5, Schema.nothing_metadata);
            writer.writeBool(this.nothing);
            writer.writeFieldEnd();
        }
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        Variant that = (Variant) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0074  */
    /* JADX WARN: Code duplicated, block: B:61:0x008a  */
    protected boolean memberwiseCompareQuick(Variant that) {
        boolean equals;
        boolean equals2;
        boolean equals3 = 1 != 0 && this.uint_value == that.uint_value;
        boolean equals4 = equals3 && this.int_value == that.int_value;
        boolean equals5 = equals4 && (!Double.isNaN(this.double_value) ? this.double_value != that.double_value : !Double.isNaN(that.double_value));
        if (equals5) {
            if ((this.string_value == null) == (that.string_value == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals6 = equals && (this.string_value == null || this.string_value.length() == that.string_value.length());
        if (equals6) {
            if ((this.wstring_value == null) == (that.wstring_value == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals7 = equals2 && (this.wstring_value == null || this.wstring_value.length() == that.wstring_value.length());
        return equals7 && this.nothing == that.nothing;
    }

    protected boolean memberwiseCompareDeep(Variant that) {
        boolean equals = 1 != 0 && (this.string_value == null || this.string_value.equals(that.string_value));
        return equals && (this.wstring_value == null || this.wstring_value.equals(that.wstring_value));
    }
}
