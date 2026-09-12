package Microsoft.Telemetry.Extensions;

import Microsoft.Telemetry.Extension;
import com.facebook.GraphRequest;
import com.microsoft.bond.BondDataType;
import com.microsoft.bond.BondMirror;
import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.FieldDef;
import com.microsoft.bond.Metadata;
import com.microsoft.bond.ProtocolCapability;
import com.microsoft.bond.ProtocolReader;
import com.microsoft.bond.ProtocolWriter;
import com.microsoft.bond.SchemaDef;
import com.microsoft.bond.StructDef;
import com.microsoft.bond.TypeDef;
import com.microsoft.bond.internal.Marshaler;
import com.microsoft.bond.internal.ReadHelper;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class utc extends Extension {
    private String aId;
    private long cat;
    private long flags;
    private String op;
    private String raId;
    private String sqmId;
    private String stId;

    @Override // Microsoft.Telemetry.Extension
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo3clone() {
        return null;
    }

    public final String getStId() {
        return this.stId;
    }

    public final void setStId(String value) {
        this.stId = value;
    }

    public final String getAId() {
        return this.aId;
    }

    public final void setAId(String value) {
        this.aId = value;
    }

    public final String getRaId() {
        return this.raId;
    }

    public final void setRaId(String value) {
        this.raId = value;
    }

    public final String getOp() {
        return this.op;
    }

    public final void setOp(String value) {
        this.op = value;
    }

    public final long getCat() {
        return this.cat;
    }

    public final void setCat(long value) {
        this.cat = value;
    }

    public final long getFlags() {
        return this.flags;
    }

    public final void setFlags(long value) {
        this.flags = value;
    }

    public final String getSqmId() {
        return this.sqmId;
    }

    public final void setSqmId(String value) {
        this.sqmId = value;
    }

    public static class Schema {
        private static final Metadata aId_metadata;
        private static final Metadata cat_metadata;
        private static final Metadata flags_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata op_metadata;
        private static final Metadata raId_metadata;
        public static final SchemaDef schemaDef;
        private static final Metadata sqmId_metadata;
        private static final Metadata stId_metadata;

        static {
            metadata.setName("utc");
            metadata.setQualified_name("Microsoft.Telemetry.Extensions.utc");
            metadata.getAttributes().put("Description", "Describes the properties that might be populated by a logging library on Windows.");
            stId_metadata = new Metadata();
            stId_metadata.setName("stId");
            stId_metadata.getAttributes().put("Description", "Used for UTC scenarios.");
            aId_metadata = new Metadata();
            aId_metadata.setName("aId");
            aId_metadata.getAttributes().put("Description", "Activity Id in ETW (event tracing for windows).");
            raId_metadata = new Metadata();
            raId_metadata.setName("raId");
            raId_metadata.getAttributes().put("Description", "Related Activity Id in ETW.");
            op_metadata = new Metadata();
            op_metadata.setName("op");
            op_metadata.getAttributes().put("Description", "Op Code in ETW.");
            cat_metadata = new Metadata();
            cat_metadata.setName("cat");
            cat_metadata.getAttributes().put("Description", "Categories.");
            cat_metadata.getDefault_value().setInt_value(0L);
            flags_metadata = new Metadata();
            flags_metadata.setName("flags");
            flags_metadata.getAttributes().put("Description", "This captures the characteristics of the traffic. Examples: isTest, isInternal.");
            flags_metadata.getDefault_value().setInt_value(0L);
            sqmId_metadata = new Metadata();
            sqmId_metadata.setName("sqmId");
            sqmId_metadata.getAttributes().put("Description", "The Windows SQM device ID.");
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
            structDef.setBase_def(Extension.Schema.getTypeDef(schema));
            FieldDef field = new FieldDef();
            field.setId((short) 10);
            field.setMetadata(stId_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(aId_metadata);
            field2.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 30);
            field3.setMetadata(raId_metadata);
            field3.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 40);
            field4.setMetadata(op_metadata);
            field4.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 50);
            field5.setMetadata(cat_metadata);
            field5.getType().setId(BondDataType.BT_INT64);
            structDef.getFields().add(field5);
            FieldDef field6 = new FieldDef();
            field6.setId((short) 60);
            field6.setMetadata(flags_metadata);
            field6.getType().setId(BondDataType.BT_INT64);
            structDef.getFields().add(field6);
            FieldDef field7 = new FieldDef();
            field7.setId((short) 70);
            field7.setMetadata(sqmId_metadata);
            field7.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field7);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.stId;
            case 20:
                return this.aId;
            case 30:
                return this.raId;
            case 40:
                return this.op;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                return Long.valueOf(this.cat);
            case 60:
                return Long.valueOf(this.flags);
            case 70:
                return this.sqmId;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.stId = (String) value;
                break;
            case 20:
                this.aId = (String) value;
                break;
            case 30:
                this.raId = (String) value;
                break;
            case 40:
                this.op = (String) value;
                break;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                this.cat = ((Long) value).longValue();
                break;
            case 60:
                this.flags = ((Long) value).longValue();
                break;
            case 70:
                this.sqmId = (String) value;
                break;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        return null;
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public SchemaDef getSchema() {
        return getRuntimeSchema();
    }

    public static SchemaDef getRuntimeSchema() {
        return Schema.schemaDef;
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public void reset() {
        reset("utc", "Microsoft.Telemetry.Extensions.utc");
    }

    @Override // Microsoft.Telemetry.Extension
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.stId = "";
        this.aId = "";
        this.raId = "";
        this.op = "";
        this.cat = 0L;
        this.flags = 0L;
        this.sqmId = "";
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input) throws IOException {
        Marshaler.unmarshal(input, this);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input, BondSerializable schema) throws IOException {
        Marshaler.unmarshal(input, (SchemaDef) schema, this);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader) throws IOException {
        reader.readBegin();
        readNested(reader);
        reader.readEnd();
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public void readNested(ProtocolReader reader) throws IOException {
        if (!reader.hasCapability(ProtocolCapability.TAGGED)) {
            readUntagged(reader, false);
        } else if (readTagged(reader, false)) {
            ReadHelper.skipPartialStruct(reader);
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader, BondSerializable schema) throws IOException {
    }

    @Override // Microsoft.Telemetry.Extension
    protected void readUntagged(ProtocolReader reader, boolean isBase) throws IOException {
        boolean canOmitFields = reader.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        reader.readStructBegin(isBase);
        super.readUntagged(reader, true);
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.stId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.aId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.raId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.op = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.cat = reader.readInt64();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.flags = reader.readInt64();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.sqmId = reader.readString();
        }
        reader.readStructEnd();
    }

    @Override // Microsoft.Telemetry.Extension
    protected boolean readTagged(ProtocolReader reader, boolean isBase) throws IOException {
        ProtocolReader.FieldTag fieldTag;
        reader.readStructBegin(isBase);
        if (!super.readTagged(reader, true)) {
            return false;
        }
        while (true) {
            fieldTag = reader.readFieldBegin();
            if (fieldTag.type != BondDataType.BT_STOP && fieldTag.type != BondDataType.BT_STOP_BASE) {
                switch (fieldTag.id) {
                    case 10:
                        this.stId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.aId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 30:
                        this.raId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 40:
                        this.op = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                        this.cat = ReadHelper.readInt64(reader, fieldTag.type);
                        break;
                    case 60:
                        this.flags = ReadHelper.readInt64(reader, fieldTag.type);
                        break;
                    case 70:
                        this.sqmId = ReadHelper.readString(reader, fieldTag.type);
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

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public void marshal(ProtocolWriter writer) throws IOException {
        Marshaler.marshal(this, writer);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
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

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public void writeNested(ProtocolWriter writer, boolean isBase) throws IOException {
        boolean canOmitFields = writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        super.writeNested(writer, true);
        if (!canOmitFields || this.stId != Schema.stId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 10, Schema.stId_metadata);
            writer.writeString(this.stId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 10, Schema.stId_metadata);
        }
        if (!canOmitFields || this.aId != Schema.aId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 20, Schema.aId_metadata);
            writer.writeString(this.aId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 20, Schema.aId_metadata);
        }
        if (!canOmitFields || this.raId != Schema.raId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 30, Schema.raId_metadata);
            writer.writeString(this.raId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 30, Schema.raId_metadata);
        }
        if (!canOmitFields || this.op != Schema.op_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 40, Schema.op_metadata);
            writer.writeString(this.op);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 40, Schema.op_metadata);
        }
        if (!canOmitFields || this.cat != Schema.cat_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT64, 50, Schema.cat_metadata);
            writer.writeInt64(this.cat);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT64, 50, Schema.cat_metadata);
        }
        if (!canOmitFields || this.flags != Schema.flags_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT64, 60, Schema.flags_metadata);
            writer.writeInt64(this.flags);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT64, 60, Schema.flags_metadata);
        }
        if (!canOmitFields || this.sqmId != Schema.sqmId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 70, Schema.sqmId_metadata);
            writer.writeString(this.sqmId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 70, Schema.sqmId_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        utc that = (utc) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:110:0x0104  */
    /* JADX WARN: Code duplicated, block: B:84:0x0099  */
    /* JADX WARN: Code duplicated, block: B:90:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:96:0x00cc  */
    protected boolean memberwiseCompareQuick(utc that) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        boolean equals5;
        boolean equals6 = 1 != 0 && super.memberwiseCompareQuick((Extension) that);
        if (equals6) {
            if ((this.stId == null) == (that.stId == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals7 = equals && (this.stId == null || this.stId.length() == that.stId.length());
        if (equals7) {
            if ((this.aId == null) == (that.aId == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals8 = equals2 && (this.aId == null || this.aId.length() == that.aId.length());
        if (equals8) {
            if ((this.raId == null) == (that.raId == null)) {
                equals3 = true;
            } else {
                equals3 = false;
            }
        } else {
            equals3 = false;
        }
        boolean equals9 = equals3 && (this.raId == null || this.raId.length() == that.raId.length());
        if (equals9) {
            if ((this.op == null) == (that.op == null)) {
                equals4 = true;
            } else {
                equals4 = false;
            }
        } else {
            equals4 = false;
        }
        boolean equals10 = equals4 && (this.op == null || this.op.length() == that.op.length());
        boolean equals11 = equals10 && this.cat == that.cat;
        boolean equals12 = equals11 && this.flags == that.flags;
        if (equals12) {
            if ((this.sqmId == null) == (that.sqmId == null)) {
                equals5 = true;
            } else {
                equals5 = false;
            }
        } else {
            equals5 = false;
        }
        return equals5 && (this.sqmId == null || this.sqmId.length() == that.sqmId.length());
    }

    protected boolean memberwiseCompareDeep(utc that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Extension) that);
        boolean equals2 = equals && (this.stId == null || this.stId.equals(that.stId));
        boolean equals3 = equals2 && (this.aId == null || this.aId.equals(that.aId));
        boolean equals4 = equals3 && (this.raId == null || this.raId.equals(that.raId));
        boolean equals5 = equals4 && (this.op == null || this.op.equals(that.op));
        return equals5 && (this.sqmId == null || this.sqmId.equals(that.sqmId));
    }
}
