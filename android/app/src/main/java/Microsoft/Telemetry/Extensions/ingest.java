package Microsoft.Telemetry.Extensions;

import Microsoft.Telemetry.Extension;
import com.facebook.GraphRequest;
import com.microsoft.bond.BondDataType;
import com.microsoft.bond.BondMirror;
import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.FieldDef;
import com.microsoft.bond.Metadata;
import com.microsoft.bond.Modifier;
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
public class ingest extends Extension {
    private long auth;
    private String clientIp;
    private long quality;
    private String time;
    private String uploadTime;
    private String userAgent;

    @Override // Microsoft.Telemetry.Extension
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo3clone() {
        return null;
    }

    public final String getTime() {
        return this.time;
    }

    public final void setTime(String value) {
        this.time = value;
    }

    public final String getClientIp() {
        return this.clientIp;
    }

    public final void setClientIp(String value) {
        this.clientIp = value;
    }

    public final long getAuth() {
        return this.auth;
    }

    public final void setAuth(long value) {
        this.auth = value;
    }

    public final long getQuality() {
        return this.quality;
    }

    public final void setQuality(long value) {
        this.quality = value;
    }

    public final String getUploadTime() {
        return this.uploadTime;
    }

    public final void setUploadTime(String value) {
        this.uploadTime = value;
    }

    public final String getUserAgent() {
        return this.userAgent;
    }

    public final void setUserAgent(String value) {
        this.userAgent = value;
    }

    public static class Schema {
        private static final Metadata auth_metadata;
        private static final Metadata clientIp_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata quality_metadata;
        public static final SchemaDef schemaDef;
        private static final Metadata time_metadata;
        private static final Metadata uploadTime_metadata;
        private static final Metadata userAgent_metadata;

        static {
            metadata.setName("ingest");
            metadata.setQualified_name("Microsoft.Telemetry.Extensions.ingest");
            metadata.getAttributes().put("Description", "Describes the fields added dynamically by the service. Clients should NOT use this section since it is adding dynamically by the service.");
            time_metadata = new Metadata();
            time_metadata.setName("time");
            time_metadata.setModifier(Modifier.Required);
            time_metadata.getAttributes().put("Name", "IngestDateTime");
            clientIp_metadata = new Metadata();
            clientIp_metadata.setName("clientIp");
            clientIp_metadata.setModifier(Modifier.Required);
            clientIp_metadata.getAttributes().put("Name", "ClientIp");
            auth_metadata = new Metadata();
            auth_metadata.setName("auth");
            auth_metadata.getAttributes().put("Name", "DataAuthorization");
            auth_metadata.getDefault_value().setInt_value(0L);
            quality_metadata = new Metadata();
            quality_metadata.setName("quality");
            quality_metadata.getAttributes().put("Name", "DataQuality");
            quality_metadata.getDefault_value().setInt_value(0L);
            uploadTime_metadata = new Metadata();
            uploadTime_metadata.setName("uploadTime");
            uploadTime_metadata.getAttributes().put("Name", "UploadDateTime");
            userAgent_metadata = new Metadata();
            userAgent_metadata.setName("userAgent");
            userAgent_metadata.getAttributes().put("Name", "UserAgent");
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
            field.setMetadata(time_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(clientIp_metadata);
            field2.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 30);
            field3.setMetadata(auth_metadata);
            field3.getType().setId(BondDataType.BT_INT64);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 40);
            field4.setMetadata(quality_metadata);
            field4.getType().setId(BondDataType.BT_INT64);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 50);
            field5.setMetadata(uploadTime_metadata);
            field5.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field5);
            FieldDef field6 = new FieldDef();
            field6.setId((short) 60);
            field6.setMetadata(userAgent_metadata);
            field6.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field6);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.time;
            case 20:
                return this.clientIp;
            case 30:
                return Long.valueOf(this.auth);
            case 40:
                return Long.valueOf(this.quality);
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                return this.uploadTime;
            case 60:
                return this.userAgent;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.time = (String) value;
                break;
            case 20:
                this.clientIp = (String) value;
                break;
            case 30:
                this.auth = ((Long) value).longValue();
                break;
            case 40:
                this.quality = ((Long) value).longValue();
                break;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                this.uploadTime = (String) value;
                break;
            case 60:
                this.userAgent = (String) value;
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
        reset("ingest", "Microsoft.Telemetry.Extensions.ingest");
    }

    @Override // Microsoft.Telemetry.Extension
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.time = "";
        this.clientIp = "";
        this.auth = 0L;
        this.quality = 0L;
        this.uploadTime = "";
        this.userAgent = "";
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
            this.time = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.clientIp = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.auth = reader.readInt64();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.quality = reader.readInt64();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.uploadTime = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.userAgent = reader.readString();
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
                        this.time = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.clientIp = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 30:
                        this.auth = ReadHelper.readInt64(reader, fieldTag.type);
                        break;
                    case 40:
                        this.quality = ReadHelper.readInt64(reader, fieldTag.type);
                        break;
                    case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                        this.uploadTime = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 60:
                        this.userAgent = ReadHelper.readString(reader, fieldTag.type);
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
        writer.writeFieldBegin(BondDataType.BT_STRING, 10, Schema.time_metadata);
        writer.writeString(this.time);
        writer.writeFieldEnd();
        writer.writeFieldBegin(BondDataType.BT_STRING, 20, Schema.clientIp_metadata);
        writer.writeString(this.clientIp);
        writer.writeFieldEnd();
        if (!canOmitFields || this.auth != Schema.auth_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT64, 30, Schema.auth_metadata);
            writer.writeInt64(this.auth);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT64, 30, Schema.auth_metadata);
        }
        if (!canOmitFields || this.quality != Schema.quality_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT64, 40, Schema.quality_metadata);
            writer.writeInt64(this.quality);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT64, 40, Schema.quality_metadata);
        }
        if (!canOmitFields || this.uploadTime != Schema.uploadTime_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 50, Schema.uploadTime_metadata);
            writer.writeString(this.uploadTime);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 50, Schema.uploadTime_metadata);
        }
        if (!canOmitFields || this.userAgent != Schema.userAgent_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 60, Schema.userAgent_metadata);
            writer.writeString(this.userAgent);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 60, Schema.userAgent_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        ingest that = (ingest) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0081  */
    /* JADX WARN: Code duplicated, block: B:77:0x0097  */
    /* JADX WARN: Code duplicated, block: B:85:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:91:0x00c7  */
    protected boolean memberwiseCompareQuick(ingest that) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        boolean equals5 = 1 != 0 && super.memberwiseCompareQuick((Extension) that);
        if (equals5) {
            if ((this.time == null) == (that.time == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals6 = equals && (this.time == null || this.time.length() == that.time.length());
        if (equals6) {
            if ((this.clientIp == null) == (that.clientIp == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals7 = equals2 && (this.clientIp == null || this.clientIp.length() == that.clientIp.length());
        boolean equals8 = equals7 && this.auth == that.auth;
        boolean equals9 = equals8 && this.quality == that.quality;
        if (equals9) {
            if ((this.uploadTime == null) == (that.uploadTime == null)) {
                equals3 = true;
            } else {
                equals3 = false;
            }
        } else {
            equals3 = false;
        }
        boolean equals10 = equals3 && (this.uploadTime == null || this.uploadTime.length() == that.uploadTime.length());
        if (equals10) {
            if ((this.userAgent == null) == (that.userAgent == null)) {
                equals4 = true;
            } else {
                equals4 = false;
            }
        } else {
            equals4 = false;
        }
        return equals4 && (this.userAgent == null || this.userAgent.length() == that.userAgent.length());
    }

    protected boolean memberwiseCompareDeep(ingest that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Extension) that);
        boolean equals2 = equals && (this.time == null || this.time.equals(that.time));
        boolean equals3 = equals2 && (this.clientIp == null || this.clientIp.equals(that.clientIp));
        boolean equals4 = equals3 && (this.uploadTime == null || this.uploadTime.equals(that.uploadTime));
        return equals4 && (this.userAgent == null || this.userAgent.equals(that.userAgent));
    }
}
