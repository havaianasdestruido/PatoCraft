package Microsoft.Telemetry;

import android.support.v4.media.TransportMediator;
import com.facebook.GraphRequest;
import com.facebook.share.internal.ShareConstants;
import com.microsoft.bond.BondDataType;
import com.microsoft.bond.BondMirror;
import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.Bonded;
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
import com.microsoft.xbox.xle.app.ImageUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Envelope implements BondSerializable, BondMirror {
    private String appId;
    private String appVer;
    private String cV;
    private Bonded<Base> data;
    private String epoch;
    private HashMap<String, Bonded<Extension>> ext;
    private long flags;
    private String iKey;
    private String name;
    private String os;
    private String osVer;
    private double popSample;
    private long seqNum;
    private HashMap<String, String> tags;
    private String time;
    private String ver;

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m2clone() {
        return null;
    }

    public final String getVer() {
        return this.ver;
    }

    public final void setVer(String value) {
        this.ver = value;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String value) {
        this.name = value;
    }

    public final String getTime() {
        return this.time;
    }

    public final void setTime(String value) {
        this.time = value;
    }

    public final double getPopSample() {
        return this.popSample;
    }

    public final void setPopSample(double value) {
        this.popSample = value;
    }

    public final String getEpoch() {
        return this.epoch;
    }

    public final void setEpoch(String value) {
        this.epoch = value;
    }

    public final long getSeqNum() {
        return this.seqNum;
    }

    public final void setSeqNum(long value) {
        this.seqNum = value;
    }

    public final String getIKey() {
        return this.iKey;
    }

    public final void setIKey(String value) {
        this.iKey = value;
    }

    public final long getFlags() {
        return this.flags;
    }

    public final void setFlags(long value) {
        this.flags = value;
    }

    public final String getOs() {
        return this.os;
    }

    public final void setOs(String value) {
        this.os = value;
    }

    public final String getOsVer() {
        return this.osVer;
    }

    public final void setOsVer(String value) {
        this.osVer = value;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final void setAppId(String value) {
        this.appId = value;
    }

    public final String getAppVer() {
        return this.appVer;
    }

    public final void setAppVer(String value) {
        this.appVer = value;
    }

    public final String getCV() {
        return this.cV;
    }

    public final void setCV(String value) {
        this.cV = value;
    }

    public final HashMap<String, String> getTags() {
        return this.tags;
    }

    public final void setTags(HashMap<String, String> value) {
        this.tags = value;
    }

    public final HashMap<String, Bonded<Extension>> getExt() {
        return this.ext;
    }

    public final void setExt(HashMap<String, Bonded<Extension>> value) {
        this.ext = value;
    }

    public final Bonded<Base> getData() {
        return this.data;
    }

    public final void setData(Bonded<Base> value) {
        this.data = value;
    }

    public static class Schema {
        private static final Metadata appId_metadata;
        private static final Metadata appVer_metadata;
        private static final Metadata cV_metadata;
        private static final Metadata data_metadata;
        private static final Metadata epoch_metadata;
        private static final Metadata ext_metadata;
        private static final Metadata flags_metadata;
        private static final Metadata iKey_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata name_metadata;
        private static final Metadata osVer_metadata;
        private static final Metadata os_metadata;
        private static final Metadata popSample_metadata;
        public static final SchemaDef schemaDef;
        private static final Metadata seqNum_metadata;
        private static final Metadata tags_metadata;
        private static final Metadata time_metadata;
        private static final Metadata ver_metadata;

        static {
            metadata.setName("Envelope");
            metadata.setQualified_name("Microsoft.Telemetry.Envelope");
            metadata.getAttributes().put("Description", "System variables for a telemetry item (Part A)");
            ver_metadata = new Metadata();
            ver_metadata.setName("ver");
            ver_metadata.setModifier(Modifier.Required);
            ver_metadata.getAttributes().put("Name", "SchemaVersion");
            name_metadata = new Metadata();
            name_metadata.setName("name");
            name_metadata.setModifier(Modifier.Required);
            name_metadata.getAttributes().put("Name", "DataTypeName");
            time_metadata = new Metadata();
            time_metadata.setName("time");
            time_metadata.setModifier(Modifier.Required);
            time_metadata.getAttributes().put("Name", "DateTime");
            popSample_metadata = new Metadata();
            popSample_metadata.setName("popSample");
            popSample_metadata.getAttributes().put("Name", "SamplingRate");
            popSample_metadata.getDefault_value().setDouble_value(100.0d);
            epoch_metadata = new Metadata();
            epoch_metadata.setName("epoch");
            epoch_metadata.getAttributes().put("Name", "Epoch");
            seqNum_metadata = new Metadata();
            seqNum_metadata.setName("seqNum");
            seqNum_metadata.getAttributes().put("Name", "SequenceNumber");
            seqNum_metadata.getDefault_value().setInt_value(0L);
            iKey_metadata = new Metadata();
            iKey_metadata.setName("iKey");
            iKey_metadata.getAttributes().put("Name", "InstrumentationKey");
            flags_metadata = new Metadata();
            flags_metadata.setName("flags");
            flags_metadata.getAttributes().put("Name", "TelemetryProperties");
            flags_metadata.getDefault_value().setInt_value(0L);
            os_metadata = new Metadata();
            os_metadata.setName("os");
            os_metadata.getAttributes().put("Name", "OsPlatform");
            osVer_metadata = new Metadata();
            osVer_metadata.setName("osVer");
            osVer_metadata.getAttributes().put("Name", "OsVersion");
            appId_metadata = new Metadata();
            appId_metadata.setName("appId");
            appId_metadata.getAttributes().put("Name", "ApplicationId");
            appVer_metadata = new Metadata();
            appVer_metadata.setName("appVer");
            appVer_metadata.getAttributes().put("Name", "ApplicationVersion");
            cV_metadata = new Metadata();
            cV_metadata.setName("cV");
            cV_metadata.getAttributes().put("Name", "CorrelationVector");
            tags_metadata = new Metadata();
            tags_metadata.setName("tags");
            tags_metadata.getAttributes().put("Name", "Tags");
            ext_metadata = new Metadata();
            ext_metadata.setName("ext");
            ext_metadata.getAttributes().put("Name", "Extensions");
            data_metadata = new Metadata();
            data_metadata.setName(ShareConstants.WEB_DIALOG_PARAM_DATA);
            data_metadata.getAttributes().put("Name", "TelemetryData");
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
            field.setId((short) 10);
            field.setMetadata(ver_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(name_metadata);
            field2.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 30);
            field3.setMetadata(time_metadata);
            field3.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 40);
            field4.setMetadata(popSample_metadata);
            field4.getType().setId(BondDataType.BT_DOUBLE);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 50);
            field5.setMetadata(epoch_metadata);
            field5.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field5);
            FieldDef field6 = new FieldDef();
            field6.setId((short) 60);
            field6.setMetadata(seqNum_metadata);
            field6.getType().setId(BondDataType.BT_INT64);
            structDef.getFields().add(field6);
            FieldDef field7 = new FieldDef();
            field7.setId((short) 70);
            field7.setMetadata(iKey_metadata);
            field7.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field7);
            FieldDef field8 = new FieldDef();
            field8.setId((short) 80);
            field8.setMetadata(flags_metadata);
            field8.getType().setId(BondDataType.BT_INT64);
            structDef.getFields().add(field8);
            FieldDef field9 = new FieldDef();
            field9.setId((short) 90);
            field9.setMetadata(os_metadata);
            field9.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field9);
            FieldDef field10 = new FieldDef();
            field10.setId((short) 100);
            field10.setMetadata(osVer_metadata);
            field10.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field10);
            FieldDef field11 = new FieldDef();
            field11.setId((short) 110);
            field11.setMetadata(appId_metadata);
            field11.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field11);
            FieldDef field12 = new FieldDef();
            field12.setId((short) 120);
            field12.setMetadata(appVer_metadata);
            field12.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field12);
            FieldDef field13 = new FieldDef();
            field13.setId((short) 130);
            field13.setMetadata(cV_metadata);
            field13.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field13);
            FieldDef field14 = new FieldDef();
            field14.setId((short) 500);
            field14.setMetadata(tags_metadata);
            field14.getType().setId(BondDataType.BT_MAP);
            field14.getType().setKey(new TypeDef());
            field14.getType().setElement(new TypeDef());
            field14.getType().getKey().setId(BondDataType.BT_STRING);
            field14.getType().getElement().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field14);
            FieldDef field15 = new FieldDef();
            field15.setId((short) 510);
            field15.setMetadata(ext_metadata);
            field15.getType().setId(BondDataType.BT_MAP);
            field15.getType().setKey(new TypeDef());
            field15.getType().setElement(new TypeDef());
            field15.getType().getKey().setId(BondDataType.BT_STRING);
            field15.getType().setElement(Extension.Schema.getTypeDef(schema));
            structDef.getFields().add(field15);
            FieldDef field16 = new FieldDef();
            field16.setId((short) 999);
            field16.setMetadata(data_metadata);
            field16.setType(Base.Schema.getTypeDef(schema));
            structDef.getFields().add(field16);
            return pos;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.ver;
            case 20:
                return this.name;
            case 30:
                return this.time;
            case 40:
                return Double.valueOf(this.popSample);
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                return this.epoch;
            case 60:
                return Long.valueOf(this.seqNum);
            case 70:
                return this.iKey;
            case 80:
                return Long.valueOf(this.flags);
            case 90:
                return this.os;
            case ImageUtil.TINY /* 100 */:
                return this.osVer;
            case 110:
                return this.appId;
            case 120:
                return this.appVer;
            case TransportMediator.KEYCODE_MEDIA_RECORD /* 130 */:
                return this.cV;
            case 500:
                return this.tags;
            case 510:
                return this.ext;
            case 999:
                return this.data;
            default:
                return null;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.ver = (String) value;
                break;
            case 20:
                this.name = (String) value;
                break;
            case 30:
                this.time = (String) value;
                break;
            case 40:
                this.popSample = ((Double) value).doubleValue();
                break;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                this.epoch = (String) value;
                break;
            case 60:
                this.seqNum = ((Long) value).longValue();
                break;
            case 70:
                this.iKey = (String) value;
                break;
            case 80:
                this.flags = ((Long) value).longValue();
                break;
            case 90:
                this.os = (String) value;
                break;
            case ImageUtil.TINY /* 100 */:
                this.osVer = (String) value;
                break;
            case 110:
                this.appId = (String) value;
                break;
            case 120:
                this.appVer = (String) value;
                break;
            case TransportMediator.KEYCODE_MEDIA_RECORD /* 130 */:
                this.cV = (String) value;
                break;
            case 500:
                this.tags = (HashMap) value;
                break;
            case 510:
                this.ext = (HashMap) value;
                break;
            case 999:
                this.data = (Bonded) value;
                break;
        }
    }

    @Override // com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        if (Extension.Schema.metadata == structDef.getMetadata()) {
            return new Extension();
        }
        if (Base.Schema.metadata == structDef.getMetadata()) {
            return new Base();
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

    public Envelope() {
        reset();
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        reset("Envelope", "Microsoft.Telemetry.Envelope");
    }

    protected void reset(String name, String qualifiedName) {
        this.ver = "";
        this.name = "";
        this.time = "";
        this.popSample = 100.0d;
        this.epoch = "";
        this.seqNum = 0L;
        this.iKey = "";
        this.flags = 0L;
        this.os = "";
        this.osVer = "";
        this.appId = "";
        this.appVer = "";
        this.cV = "";
        if (this.tags == null) {
            this.tags = new HashMap<>();
        } else {
            this.tags.clear();
        }
        if (this.ext == null) {
            this.ext = new HashMap<>();
        } else {
            this.ext.clear();
        }
        this.data = new Bonded<>();
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
            this.ver = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.name = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.time = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.popSample = reader.readDouble();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.epoch = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.seqNum = reader.readInt64();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.iKey = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.flags = reader.readInt64();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.os = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.osVer = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.appId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.appVer = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.cV = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            readFieldImpl_tags(reader, BondDataType.BT_MAP);
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            readFieldImpl_ext(reader, BondDataType.BT_MAP);
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.data.read(reader);
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
                    case 10:
                        this.ver = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.name = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 30:
                        this.time = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 40:
                        this.popSample = ReadHelper.readDouble(reader, fieldTag.type);
                        break;
                    case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                        this.epoch = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 60:
                        this.seqNum = ReadHelper.readInt64(reader, fieldTag.type);
                        break;
                    case 70:
                        this.iKey = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 80:
                        this.flags = ReadHelper.readInt64(reader, fieldTag.type);
                        break;
                    case 90:
                        this.os = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case ImageUtil.TINY /* 100 */:
                        this.osVer = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 110:
                        this.appId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 120:
                        this.appVer = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case TransportMediator.KEYCODE_MEDIA_RECORD /* 130 */:
                        this.cV = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 500:
                        readFieldImpl_tags(reader, fieldTag.type);
                        break;
                    case 510:
                        readFieldImpl_ext(reader, fieldTag.type);
                        break;
                    case 999:
                        ReadHelper.validateType(fieldTag.type, BondDataType.BT_STRUCT);
                        this.data.readNested(reader);
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

    private void readFieldImpl_tags(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        ReadHelper.validateType(typeInPayload, BondDataType.BT_MAP);
        ProtocolReader.MapTag tag1 = reader.readMapContainerBegin();
        for (int i2 = 0; i2 < tag1.size; i2++) {
            String key3 = ReadHelper.readString(reader, tag1.keyType);
            String val4 = ReadHelper.readString(reader, tag1.valueType);
            this.tags.put(key3, val4);
        }
        reader.readContainerEnd();
    }

    private void readFieldImpl_ext(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        ReadHelper.validateType(typeInPayload, BondDataType.BT_MAP);
        ProtocolReader.MapTag tag1 = reader.readMapContainerBegin();
        ReadHelper.validateType(tag1.valueType, BondDataType.BT_STRUCT);
        for (int i2 = 0; i2 < tag1.size; i2++) {
            Bonded<Extension> val4 = new Bonded<>();
            String key3 = ReadHelper.readString(reader, tag1.keyType);
            val4.readNested(reader);
            this.ext.put(key3, val4);
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
        writer.writeFieldBegin(BondDataType.BT_STRING, 10, Schema.ver_metadata);
        writer.writeString(this.ver);
        writer.writeFieldEnd();
        writer.writeFieldBegin(BondDataType.BT_STRING, 20, Schema.name_metadata);
        writer.writeString(this.name);
        writer.writeFieldEnd();
        writer.writeFieldBegin(BondDataType.BT_STRING, 30, Schema.time_metadata);
        writer.writeString(this.time);
        writer.writeFieldEnd();
        if (!canOmitFields || this.popSample != Schema.popSample_metadata.getDefault_value().getDouble_value()) {
            writer.writeFieldBegin(BondDataType.BT_DOUBLE, 40, Schema.popSample_metadata);
            writer.writeDouble(this.popSample);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_DOUBLE, 40, Schema.popSample_metadata);
        }
        if (!canOmitFields || this.epoch != Schema.epoch_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 50, Schema.epoch_metadata);
            writer.writeString(this.epoch);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 50, Schema.epoch_metadata);
        }
        if (!canOmitFields || this.seqNum != Schema.seqNum_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT64, 60, Schema.seqNum_metadata);
            writer.writeInt64(this.seqNum);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT64, 60, Schema.seqNum_metadata);
        }
        if (!canOmitFields || this.iKey != Schema.iKey_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 70, Schema.iKey_metadata);
            writer.writeString(this.iKey);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 70, Schema.iKey_metadata);
        }
        if (!canOmitFields || this.flags != Schema.flags_metadata.getDefault_value().getInt_value()) {
            writer.writeFieldBegin(BondDataType.BT_INT64, 80, Schema.flags_metadata);
            writer.writeInt64(this.flags);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_INT64, 80, Schema.flags_metadata);
        }
        if (!canOmitFields || this.os != Schema.os_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 90, Schema.os_metadata);
            writer.writeString(this.os);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 90, Schema.os_metadata);
        }
        if (!canOmitFields || this.osVer != Schema.osVer_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 100, Schema.osVer_metadata);
            writer.writeString(this.osVer);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 100, Schema.osVer_metadata);
        }
        if (!canOmitFields || this.appId != Schema.appId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 110, Schema.appId_metadata);
            writer.writeString(this.appId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 110, Schema.appId_metadata);
        }
        if (!canOmitFields || this.appVer != Schema.appVer_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 120, Schema.appVer_metadata);
            writer.writeString(this.appVer);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 120, Schema.appVer_metadata);
        }
        if (!canOmitFields || this.cV != Schema.cV_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, TransportMediator.KEYCODE_MEDIA_RECORD, Schema.cV_metadata);
            writer.writeString(this.cV);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, TransportMediator.KEYCODE_MEDIA_RECORD, Schema.cV_metadata);
        }
        int size11 = this.tags.size();
        if (!canOmitFields || size11 != 0) {
            writer.writeFieldBegin(BondDataType.BT_MAP, 500, Schema.tags_metadata);
            writer.writeContainerBegin(this.tags.size(), BondDataType.BT_STRING, BondDataType.BT_STRING);
            for (Map.Entry<String, String> e12 : this.tags.entrySet()) {
                writer.writeString(e12.getKey());
                writer.writeString(e12.getValue());
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_MAP, 500, Schema.tags_metadata);
        }
        int size13 = this.ext.size();
        if (!canOmitFields || size13 != 0) {
            writer.writeFieldBegin(BondDataType.BT_MAP, 510, Schema.ext_metadata);
            writer.writeContainerBegin(this.ext.size(), BondDataType.BT_STRING, BondDataType.BT_STRUCT);
            for (Map.Entry<String, Bonded<Extension>> e14 : this.ext.entrySet()) {
                writer.writeString(e14.getKey());
                e14.getValue().writeNested(writer, false);
            }
            writer.writeContainerEnd();
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_MAP, 510, Schema.ext_metadata);
        }
        writer.writeFieldBegin(BondDataType.BT_STRUCT, 999, Schema.data_metadata);
        this.data.writeNested(writer, false);
        writer.writeFieldEnd();
        writer.writeStructEnd(isBase);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        Envelope that = (Envelope) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:176:0x013b  */
    /* JADX WARN: Code duplicated, block: B:182:0x0155  */
    /* JADX WARN: Code duplicated, block: B:188:0x016f  */
    /* JADX WARN: Code duplicated, block: B:197:0x0194  */
    /* JADX WARN: Code duplicated, block: B:204:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:211:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:217:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:223:0x0202  */
    /* JADX WARN: Code duplicated, block: B:229:0x021c  */
    /* JADX WARN: Code duplicated, block: B:235:0x0236  */
    /* JADX WARN: Code duplicated, block: B:241:0x0250  */
    /* JADX WARN: Code duplicated, block: B:247:0x026a  */
    protected boolean memberwiseCompareQuick(Envelope that) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        boolean equals5;
        boolean equals6;
        boolean equals7;
        boolean equals8;
        boolean equals9;
        boolean equals10;
        boolean equals11;
        boolean equals12;
        if (1 == 0) {
            equals = false;
        } else {
            if ((this.ver == null) == (that.ver == null)) {
                equals = true;
            } else {
                equals = false;
            }
        }
        boolean equals13 = equals && (this.ver == null || this.ver.length() == that.ver.length());
        if (equals13) {
            if ((this.name == null) == (that.name == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals14 = equals2 && (this.name == null || this.name.length() == that.name.length());
        if (equals14) {
            if ((this.time == null) == (that.time == null)) {
                equals3 = true;
            } else {
                equals3 = false;
            }
        } else {
            equals3 = false;
        }
        boolean equals15 = equals3 && (this.time == null || this.time.length() == that.time.length());
        boolean equals16 = equals15 && (!Double.isNaN(this.popSample) ? this.popSample != that.popSample : !Double.isNaN(that.popSample));
        if (equals16) {
            if ((this.epoch == null) == (that.epoch == null)) {
                equals4 = true;
            } else {
                equals4 = false;
            }
        } else {
            equals4 = false;
        }
        boolean equals17 = equals4 && (this.epoch == null || this.epoch.length() == that.epoch.length());
        boolean equals18 = equals17 && this.seqNum == that.seqNum;
        if (equals18) {
            if ((this.iKey == null) == (that.iKey == null)) {
                equals5 = true;
            } else {
                equals5 = false;
            }
        } else {
            equals5 = false;
        }
        boolean equals19 = equals5 && (this.iKey == null || this.iKey.length() == that.iKey.length());
        boolean equals20 = equals19 && this.flags == that.flags;
        if (equals20) {
            if ((this.os == null) == (that.os == null)) {
                equals6 = true;
            } else {
                equals6 = false;
            }
        } else {
            equals6 = false;
        }
        boolean equals21 = equals6 && (this.os == null || this.os.length() == that.os.length());
        if (equals21) {
            if ((this.osVer == null) == (that.osVer == null)) {
                equals7 = true;
            } else {
                equals7 = false;
            }
        } else {
            equals7 = false;
        }
        boolean equals22 = equals7 && (this.osVer == null || this.osVer.length() == that.osVer.length());
        if (equals22) {
            if ((this.appId == null) == (that.appId == null)) {
                equals8 = true;
            } else {
                equals8 = false;
            }
        } else {
            equals8 = false;
        }
        boolean equals23 = equals8 && (this.appId == null || this.appId.length() == that.appId.length());
        if (equals23) {
            if ((this.appVer == null) == (that.appVer == null)) {
                equals9 = true;
            } else {
                equals9 = false;
            }
        } else {
            equals9 = false;
        }
        boolean equals24 = equals9 && (this.appVer == null || this.appVer.length() == that.appVer.length());
        if (equals24) {
            if ((this.cV == null) == (that.cV == null)) {
                equals10 = true;
            } else {
                equals10 = false;
            }
        } else {
            equals10 = false;
        }
        boolean equals25 = equals10 && (this.cV == null || this.cV.length() == that.cV.length());
        if (equals25) {
            if ((this.tags == null) == (that.tags == null)) {
                equals11 = true;
            } else {
                equals11 = false;
            }
        } else {
            equals11 = false;
        }
        boolean equals26 = equals11 && (this.tags == null || this.tags.size() == that.tags.size());
        if (equals26) {
            if ((this.ext == null) == (that.ext == null)) {
                equals12 = true;
            } else {
                equals12 = false;
            }
        } else {
            equals12 = false;
        }
        return equals12 && (this.ext == null || this.ext.size() == that.ext.size());
    }

    /* JADX WARN: Code duplicated, block: B:134:0x0193  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b5  */
    protected boolean memberwiseCompareDeep(Envelope that) {
        boolean equals;
        boolean equals2;
        boolean equals3 = 1 != 0 && (this.ver == null || this.ver.equals(that.ver));
        boolean equals4 = equals3 && (this.name == null || this.name.equals(that.name));
        boolean equals5 = equals4 && (this.time == null || this.time.equals(that.time));
        boolean equals6 = equals5 && (this.epoch == null || this.epoch.equals(that.epoch));
        boolean equals7 = equals6 && (this.iKey == null || this.iKey.equals(that.iKey));
        boolean equals8 = equals7 && (this.os == null || this.os.equals(that.os));
        boolean equals9 = equals8 && (this.osVer == null || this.osVer.equals(that.osVer));
        boolean equals10 = equals9 && (this.appId == null || this.appId.equals(that.appId));
        boolean equals11 = equals10 && (this.appVer == null || this.appVer.equals(that.appVer));
        boolean equals12 = equals11 && (this.cV == null || this.cV.equals(that.cV));
        if (equals12 && this.tags != null && this.tags.size() != 0) {
            for (Map.Entry<String, String> e3 : this.tags.entrySet()) {
                String val1 = e3.getValue();
                String val2 = that.tags.get(e3.getKey());
                equals12 = equals12 && that.tags.containsKey(e3.getKey());
                if (equals12) {
                    if (!equals12) {
                        equals2 = false;
                    } else if ((val1 == null) == (val2 == null)) {
                        equals2 = true;
                    } else {
                        equals2 = false;
                    }
                    boolean equals13 = equals2 && (val1 == null || val1.length() == val2.length());
                    equals12 = equals13 && (val1 == null || val1.equals(val2));
                }
                if (!equals12) {
                    break;
                }
            }
        }
        if (equals12 && this.ext != null && this.ext.size() != 0) {
            for (Map.Entry<String, Bonded<Extension>> e6 : this.ext.entrySet()) {
                Bonded<Extension> val4 = e6.getValue();
                Bonded<Extension> val5 = that.ext.get(e6.getKey());
                equals12 = equals12 && that.ext.containsKey(e6.getKey());
                if (equals12) {
                    if (!equals12) {
                        equals = false;
                    } else if ((val4 == null) == (val5 == null)) {
                        equals = true;
                    } else {
                        equals = false;
                    }
                    equals12 = equals && (val4 == null || val4.memberwiseCompare(val5));
                }
                if (!equals12) {
                    break;
                }
            }
        }
        return equals12 && (this.data == null || this.data.memberwiseCompare(that.data));
    }
}
