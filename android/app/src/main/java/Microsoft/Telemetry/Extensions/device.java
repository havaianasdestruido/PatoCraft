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
public class device extends Extension {
    private String authId;
    private String authSecId;
    private String deviceClass;
    private String id;
    private String localId;

    @Override // Microsoft.Telemetry.Extension
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo3clone() {
        return null;
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String value) {
        this.id = value;
    }

    public final String getLocalId() {
        return this.localId;
    }

    public final void setLocalId(String value) {
        this.localId = value;
    }

    public final String getAuthId() {
        return this.authId;
    }

    public final void setAuthId(String value) {
        this.authId = value;
    }

    public final String getAuthSecId() {
        return this.authSecId;
    }

    public final void setAuthSecId(String value) {
        this.authSecId = value;
    }

    public final String getDeviceClass() {
        return this.deviceClass;
    }

    public final void setDeviceClass(String value) {
        this.deviceClass = value;
    }

    public static class Schema {
        private static final Metadata authId_metadata;
        private static final Metadata authSecId_metadata;
        private static final Metadata deviceClass_metadata;
        private static final Metadata id_metadata;
        private static final Metadata localId_metadata;
        public static final Metadata metadata = new Metadata();
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("device");
            metadata.setQualified_name("Microsoft.Telemetry.Extensions.device");
            metadata.getAttributes().put("Description", "Describes the device related fields. See https://osgwiki.com/wiki/CommonSchema/device_id");
            id_metadata = new Metadata();
            id_metadata.setName("id");
            id_metadata.getAttributes().put("Description", "Unique device Id. Clients aren't expected to set this; instead the service will decide the best ID to use here. Clients may set this if they believe they have the best device ID already. Format is <NamespaceIdentifier>:<Id> for example, x:12345678.");
            localId_metadata = new Metadata();
            localId_metadata.setName("localId");
            localId_metadata.getAttributes().put("Description", "Local device identifier according to the client. Format is <NamespaceIdentifier>:<Id> for example, x:12345678.");
            authId_metadata = new Metadata();
            authId_metadata.setName("authId");
            authId_metadata.getAttributes().put("Description", "This is the ID of the device associated with this event, deduced from a token such as an MSA ticket or Xbox xtoken. For MSA tickets this is expected to be the MSA Global ID.");
            authId_metadata.getAttributes().put("Name", "DeviceAuthID");
            authSecId_metadata = new Metadata();
            authSecId_metadata.setName("authSecId");
            authSecId_metadata.getAttributes().put("Description", "This is the secondary ID of the device associated with this event, deduced from a token such as an MSA ticket or Xbox xtoken. For MSA tickets this is expected to be the MSA Hardware ID.");
            authSecId_metadata.getAttributes().put("Name", "DeviceAuthSecondID");
            deviceClass_metadata = new Metadata();
            deviceClass_metadata.setName("deviceClass");
            deviceClass_metadata.getAttributes().put("Description", "Platform of the device. Not to be confused with the Windows concept of device class which is different; Windows calls this Platform. See the Windows function RtlConvertPlatformInfoToString.  Legitimate values are: Windows.Universal, Windows.Windows8x, Windows.WindowsPhone8x, Windows.Desktop, Windows.Mobile, Windows.Xbox, Windows.PPI, Windows.IOT, Windows.IoTHeadless, Windows.Server, Windows.Analog, Windows.XBoxSRA, Windows.XBoxERA.");
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
            field.setMetadata(id_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(localId_metadata);
            field2.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 30);
            field3.setMetadata(authId_metadata);
            field3.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 40);
            field4.setMetadata(authSecId_metadata);
            field4.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 50);
            field5.setMetadata(deviceClass_metadata);
            field5.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field5);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.id;
            case 20:
                return this.localId;
            case 30:
                return this.authId;
            case 40:
                return this.authSecId;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                return this.deviceClass;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.id = (String) value;
                break;
            case 20:
                this.localId = (String) value;
                break;
            case 30:
                this.authId = (String) value;
                break;
            case 40:
                this.authSecId = (String) value;
                break;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                this.deviceClass = (String) value;
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
        reset("device", "Microsoft.Telemetry.Extensions.device");
    }

    @Override // Microsoft.Telemetry.Extension
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.id = "";
        this.localId = "";
        this.authId = "";
        this.authSecId = "";
        this.deviceClass = "";
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
            this.id = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.localId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.authId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.authSecId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.deviceClass = reader.readString();
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
                        this.id = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.localId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 30:
                        this.authId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 40:
                        this.authSecId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                        this.deviceClass = ReadHelper.readString(reader, fieldTag.type);
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
        if (!canOmitFields || this.id != Schema.id_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 10, Schema.id_metadata);
            writer.writeString(this.id);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 10, Schema.id_metadata);
        }
        if (!canOmitFields || this.localId != Schema.localId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 20, Schema.localId_metadata);
            writer.writeString(this.localId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 20, Schema.localId_metadata);
        }
        if (!canOmitFields || this.authId != Schema.authId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 30, Schema.authId_metadata);
            writer.writeString(this.authId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 30, Schema.authId_metadata);
        }
        if (!canOmitFields || this.authSecId != Schema.authSecId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 40, Schema.authSecId_metadata);
            writer.writeString(this.authSecId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 40, Schema.authSecId_metadata);
        }
        if (!canOmitFields || this.deviceClass != Schema.deviceClass_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 50, Schema.deviceClass_metadata);
            writer.writeString(this.deviceClass);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 50, Schema.deviceClass_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        device that = (device) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:76:0x0081  */
    /* JADX WARN: Code duplicated, block: B:82:0x0097  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:94:0x00c3  */
    protected boolean memberwiseCompareQuick(device that) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        boolean equals5;
        boolean equals6 = 1 != 0 && super.memberwiseCompareQuick((Extension) that);
        if (equals6) {
            if ((this.id == null) == (that.id == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals7 = equals && (this.id == null || this.id.length() == that.id.length());
        if (equals7) {
            if ((this.localId == null) == (that.localId == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals8 = equals2 && (this.localId == null || this.localId.length() == that.localId.length());
        if (equals8) {
            if ((this.authId == null) == (that.authId == null)) {
                equals3 = true;
            } else {
                equals3 = false;
            }
        } else {
            equals3 = false;
        }
        boolean equals9 = equals3 && (this.authId == null || this.authId.length() == that.authId.length());
        if (equals9) {
            if ((this.authSecId == null) == (that.authSecId == null)) {
                equals4 = true;
            } else {
                equals4 = false;
            }
        } else {
            equals4 = false;
        }
        boolean equals10 = equals4 && (this.authSecId == null || this.authSecId.length() == that.authSecId.length());
        if (equals10) {
            if ((this.deviceClass == null) == (that.deviceClass == null)) {
                equals5 = true;
            } else {
                equals5 = false;
            }
        } else {
            equals5 = false;
        }
        return equals5 && (this.deviceClass == null || this.deviceClass.length() == that.deviceClass.length());
    }

    protected boolean memberwiseCompareDeep(device that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Extension) that);
        boolean equals2 = equals && (this.id == null || this.id.equals(that.id));
        boolean equals3 = equals2 && (this.localId == null || this.localId.equals(that.localId));
        boolean equals4 = equals3 && (this.authId == null || this.authId.equals(that.authId));
        boolean equals5 = equals4 && (this.authSecId == null || this.authSecId.equals(that.authSecId));
        return equals5 && (this.deviceClass == null || this.deviceClass.equals(that.deviceClass));
    }
}
