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
import com.microsoft.xbox.xle.app.ImageUtil;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class xbox extends Extension {
    private String deviceType;
    private String eventSequence;
    private String expiryTimestamp;
    private String isDevelopmentAccount;
    private String isTestAccount;
    private String issueTimestamp;
    private String sandboxId;
    private String signedInUsers;
    private String sti;
    private String titleId;
    private String xblDeviceId;

    @Override // Microsoft.Telemetry.Extension
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo3clone() {
        return null;
    }

    public final String getSti() {
        return this.sti;
    }

    public final void setSti(String value) {
        this.sti = value;
    }

    public final String getEventSequence() {
        return this.eventSequence;
    }

    public final void setEventSequence(String value) {
        this.eventSequence = value;
    }

    public final String getIssueTimestamp() {
        return this.issueTimestamp;
    }

    public final void setIssueTimestamp(String value) {
        this.issueTimestamp = value;
    }

    public final String getExpiryTimestamp() {
        return this.expiryTimestamp;
    }

    public final void setExpiryTimestamp(String value) {
        this.expiryTimestamp = value;
    }

    public final String getSandboxId() {
        return this.sandboxId;
    }

    public final void setSandboxId(String value) {
        this.sandboxId = value;
    }

    public final String getDeviceType() {
        return this.deviceType;
    }

    public final void setDeviceType(String value) {
        this.deviceType = value;
    }

    public final String getXblDeviceId() {
        return this.xblDeviceId;
    }

    public final void setXblDeviceId(String value) {
        this.xblDeviceId = value;
    }

    public final String getSignedInUsers() {
        return this.signedInUsers;
    }

    public final void setSignedInUsers(String value) {
        this.signedInUsers = value;
    }

    public final String getIsDevelopmentAccount() {
        return this.isDevelopmentAccount;
    }

    public final void setIsDevelopmentAccount(String value) {
        this.isDevelopmentAccount = value;
    }

    public final String getIsTestAccount() {
        return this.isTestAccount;
    }

    public final void setIsTestAccount(String value) {
        this.isTestAccount = value;
    }

    public final String getTitleId() {
        return this.titleId;
    }

    public final void setTitleId(String value) {
        this.titleId = value;
    }

    public static class Schema {
        private static final Metadata deviceType_metadata;
        private static final Metadata eventSequence_metadata;
        private static final Metadata expiryTimestamp_metadata;
        private static final Metadata isDevelopmentAccount_metadata;
        private static final Metadata isTestAccount_metadata;
        private static final Metadata issueTimestamp_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata sandboxId_metadata;
        public static final SchemaDef schemaDef;
        private static final Metadata signedInUsers_metadata;
        private static final Metadata sti_metadata;
        private static final Metadata titleId_metadata;
        private static final Metadata xblDeviceId_metadata;

        static {
            metadata.setName("xbox");
            metadata.setQualified_name("Microsoft.Telemetry.Extensions.xbox");
            metadata.getAttributes().put("Description", "Describes the XBox related fields and might be populated by the console.");
            sti_metadata = new Metadata();
            sti_metadata.setName("sti");
            sti_metadata.getAttributes().put("Description", "XBox supporting token index.");
            eventSequence_metadata = new Metadata();
            eventSequence_metadata.setName("eventSequence");
            eventSequence_metadata.getAttributes().put("Description", "XBox event sequence.");
            issueTimestamp_metadata = new Metadata();
            issueTimestamp_metadata.setName("issueTimestamp");
            issueTimestamp_metadata.getAttributes().put("Description", "Xbox token issue timestamp.");
            expiryTimestamp_metadata = new Metadata();
            expiryTimestamp_metadata.setName("expiryTimestamp");
            expiryTimestamp_metadata.getAttributes().put("Description", "XBox token expiry timestamp.");
            sandboxId_metadata = new Metadata();
            sandboxId_metadata.setName("sandboxId");
            sandboxId_metadata.getAttributes().put("Description", "Xbox sandboxId.");
            deviceType_metadata = new Metadata();
            deviceType_metadata.setName("deviceType");
            deviceType_metadata.getAttributes().put("Description", "XBox device type.");
            xblDeviceId_metadata = new Metadata();
            xblDeviceId_metadata.setName("xblDeviceId");
            xblDeviceId_metadata.getAttributes().put("Description", "Xbox live deviceId.");
            signedInUsers_metadata = new Metadata();
            signedInUsers_metadata.setName("signedInUsers");
            signedInUsers_metadata.getAttributes().put("Description", "XBox signed in Xuids.");
            isDevelopmentAccount_metadata = new Metadata();
            isDevelopmentAccount_metadata.setName("isDevelopmentAccount");
            isDevelopmentAccount_metadata.getAttributes().put("Description", "XBox is development account.");
            isTestAccount_metadata = new Metadata();
            isTestAccount_metadata.setName("isTestAccount");
            isTestAccount_metadata.getAttributes().put("Description", "XBox is test account.");
            titleId_metadata = new Metadata();
            titleId_metadata.setName("titleId");
            titleId_metadata.getAttributes().put("Description", "XBox titleId.");
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
            field.setMetadata(sti_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(eventSequence_metadata);
            field2.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 30);
            field3.setMetadata(issueTimestamp_metadata);
            field3.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 40);
            field4.setMetadata(expiryTimestamp_metadata);
            field4.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 50);
            field5.setMetadata(sandboxId_metadata);
            field5.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field5);
            FieldDef field6 = new FieldDef();
            field6.setId((short) 60);
            field6.setMetadata(deviceType_metadata);
            field6.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field6);
            FieldDef field7 = new FieldDef();
            field7.setId((short) 70);
            field7.setMetadata(xblDeviceId_metadata);
            field7.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field7);
            FieldDef field8 = new FieldDef();
            field8.setId((short) 80);
            field8.setMetadata(signedInUsers_metadata);
            field8.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field8);
            FieldDef field9 = new FieldDef();
            field9.setId((short) 90);
            field9.setMetadata(isDevelopmentAccount_metadata);
            field9.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field9);
            FieldDef field10 = new FieldDef();
            field10.setId((short) 100);
            field10.setMetadata(isTestAccount_metadata);
            field10.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field10);
            FieldDef field11 = new FieldDef();
            field11.setId((short) 110);
            field11.setMetadata(titleId_metadata);
            field11.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field11);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.sti;
            case 20:
                return this.eventSequence;
            case 30:
                return this.issueTimestamp;
            case 40:
                return this.expiryTimestamp;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                return this.sandboxId;
            case 60:
                return this.deviceType;
            case 70:
                return this.xblDeviceId;
            case 80:
                return this.signedInUsers;
            case 90:
                return this.isDevelopmentAccount;
            case ImageUtil.TINY /* 100 */:
                return this.isTestAccount;
            case 110:
                return this.titleId;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.sti = (String) value;
                break;
            case 20:
                this.eventSequence = (String) value;
                break;
            case 30:
                this.issueTimestamp = (String) value;
                break;
            case 40:
                this.expiryTimestamp = (String) value;
                break;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                this.sandboxId = (String) value;
                break;
            case 60:
                this.deviceType = (String) value;
                break;
            case 70:
                this.xblDeviceId = (String) value;
                break;
            case 80:
                this.signedInUsers = (String) value;
                break;
            case 90:
                this.isDevelopmentAccount = (String) value;
                break;
            case ImageUtil.TINY /* 100 */:
                this.isTestAccount = (String) value;
                break;
            case 110:
                this.titleId = (String) value;
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
        reset("xbox", "Microsoft.Telemetry.Extensions.xbox");
    }

    @Override // Microsoft.Telemetry.Extension
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.sti = "";
        this.eventSequence = "";
        this.issueTimestamp = "";
        this.expiryTimestamp = "";
        this.sandboxId = "";
        this.deviceType = "";
        this.xblDeviceId = "";
        this.signedInUsers = "";
        this.isDevelopmentAccount = "";
        this.isTestAccount = "";
        this.titleId = "";
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
            this.sti = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.eventSequence = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.issueTimestamp = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.expiryTimestamp = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.sandboxId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.deviceType = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.xblDeviceId = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.signedInUsers = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.isDevelopmentAccount = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.isTestAccount = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.titleId = reader.readString();
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
                        this.sti = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.eventSequence = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 30:
                        this.issueTimestamp = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 40:
                        this.expiryTimestamp = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                        this.sandboxId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 60:
                        this.deviceType = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 70:
                        this.xblDeviceId = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 80:
                        this.signedInUsers = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 90:
                        this.isDevelopmentAccount = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case ImageUtil.TINY /* 100 */:
                        this.isTestAccount = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 110:
                        this.titleId = ReadHelper.readString(reader, fieldTag.type);
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
        if (!canOmitFields || this.sti != Schema.sti_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 10, Schema.sti_metadata);
            writer.writeString(this.sti);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 10, Schema.sti_metadata);
        }
        if (!canOmitFields || this.eventSequence != Schema.eventSequence_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 20, Schema.eventSequence_metadata);
            writer.writeString(this.eventSequence);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 20, Schema.eventSequence_metadata);
        }
        if (!canOmitFields || this.issueTimestamp != Schema.issueTimestamp_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 30, Schema.issueTimestamp_metadata);
            writer.writeString(this.issueTimestamp);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 30, Schema.issueTimestamp_metadata);
        }
        if (!canOmitFields || this.expiryTimestamp != Schema.expiryTimestamp_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 40, Schema.expiryTimestamp_metadata);
            writer.writeString(this.expiryTimestamp);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 40, Schema.expiryTimestamp_metadata);
        }
        if (!canOmitFields || this.sandboxId != Schema.sandboxId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 50, Schema.sandboxId_metadata);
            writer.writeString(this.sandboxId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 50, Schema.sandboxId_metadata);
        }
        if (!canOmitFields || this.deviceType != Schema.deviceType_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 60, Schema.deviceType_metadata);
            writer.writeString(this.deviceType);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 60, Schema.deviceType_metadata);
        }
        if (!canOmitFields || this.xblDeviceId != Schema.xblDeviceId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 70, Schema.xblDeviceId_metadata);
            writer.writeString(this.xblDeviceId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 70, Schema.xblDeviceId_metadata);
        }
        if (!canOmitFields || this.signedInUsers != Schema.signedInUsers_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 80, Schema.signedInUsers_metadata);
            writer.writeString(this.signedInUsers);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 80, Schema.signedInUsers_metadata);
        }
        if (!canOmitFields || this.isDevelopmentAccount != Schema.isDevelopmentAccount_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 90, Schema.isDevelopmentAccount_metadata);
            writer.writeString(this.isDevelopmentAccount);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 90, Schema.isDevelopmentAccount_metadata);
        }
        if (!canOmitFields || this.isTestAccount != Schema.isTestAccount_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 100, Schema.isTestAccount_metadata);
            writer.writeString(this.isTestAccount);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 100, Schema.isTestAccount_metadata);
        }
        if (!canOmitFields || this.titleId != Schema.titleId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 110, Schema.titleId_metadata);
            writer.writeString(this.titleId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 110, Schema.titleId_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        xbox that = (xbox) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:154:0x0108  */
    /* JADX WARN: Code duplicated, block: B:160:0x0122  */
    /* JADX WARN: Code duplicated, block: B:166:0x013c  */
    /* JADX WARN: Code duplicated, block: B:172:0x0156  */
    /* JADX WARN: Code duplicated, block: B:178:0x0170  */
    /* JADX WARN: Code duplicated, block: B:184:0x018a  */
    /* JADX WARN: Code duplicated, block: B:190:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:196:0x01be  */
    /* JADX WARN: Code duplicated, block: B:202:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:208:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:214:0x020c  */
    protected boolean memberwiseCompareQuick(xbox that) {
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
        boolean equals12 = 1 != 0 && super.memberwiseCompareQuick((Extension) that);
        if (equals12) {
            if ((this.sti == null) == (that.sti == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals13 = equals && (this.sti == null || this.sti.length() == that.sti.length());
        if (equals13) {
            if ((this.eventSequence == null) == (that.eventSequence == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals14 = equals2 && (this.eventSequence == null || this.eventSequence.length() == that.eventSequence.length());
        if (equals14) {
            if ((this.issueTimestamp == null) == (that.issueTimestamp == null)) {
                equals3 = true;
            } else {
                equals3 = false;
            }
        } else {
            equals3 = false;
        }
        boolean equals15 = equals3 && (this.issueTimestamp == null || this.issueTimestamp.length() == that.issueTimestamp.length());
        if (equals15) {
            if ((this.expiryTimestamp == null) == (that.expiryTimestamp == null)) {
                equals4 = true;
            } else {
                equals4 = false;
            }
        } else {
            equals4 = false;
        }
        boolean equals16 = equals4 && (this.expiryTimestamp == null || this.expiryTimestamp.length() == that.expiryTimestamp.length());
        if (equals16) {
            if ((this.sandboxId == null) == (that.sandboxId == null)) {
                equals5 = true;
            } else {
                equals5 = false;
            }
        } else {
            equals5 = false;
        }
        boolean equals17 = equals5 && (this.sandboxId == null || this.sandboxId.length() == that.sandboxId.length());
        if (equals17) {
            if ((this.deviceType == null) == (that.deviceType == null)) {
                equals6 = true;
            } else {
                equals6 = false;
            }
        } else {
            equals6 = false;
        }
        boolean equals18 = equals6 && (this.deviceType == null || this.deviceType.length() == that.deviceType.length());
        if (equals18) {
            if ((this.xblDeviceId == null) == (that.xblDeviceId == null)) {
                equals7 = true;
            } else {
                equals7 = false;
            }
        } else {
            equals7 = false;
        }
        boolean equals19 = equals7 && (this.xblDeviceId == null || this.xblDeviceId.length() == that.xblDeviceId.length());
        if (equals19) {
            if ((this.signedInUsers == null) == (that.signedInUsers == null)) {
                equals8 = true;
            } else {
                equals8 = false;
            }
        } else {
            equals8 = false;
        }
        boolean equals20 = equals8 && (this.signedInUsers == null || this.signedInUsers.length() == that.signedInUsers.length());
        if (equals20) {
            if ((this.isDevelopmentAccount == null) == (that.isDevelopmentAccount == null)) {
                equals9 = true;
            } else {
                equals9 = false;
            }
        } else {
            equals9 = false;
        }
        boolean equals21 = equals9 && (this.isDevelopmentAccount == null || this.isDevelopmentAccount.length() == that.isDevelopmentAccount.length());
        if (equals21) {
            if ((this.isTestAccount == null) == (that.isTestAccount == null)) {
                equals10 = true;
            } else {
                equals10 = false;
            }
        } else {
            equals10 = false;
        }
        boolean equals22 = equals10 && (this.isTestAccount == null || this.isTestAccount.length() == that.isTestAccount.length());
        if (equals22) {
            if ((this.titleId == null) == (that.titleId == null)) {
                equals11 = true;
            } else {
                equals11 = false;
            }
        } else {
            equals11 = false;
        }
        return equals11 && (this.titleId == null || this.titleId.length() == that.titleId.length());
    }

    protected boolean memberwiseCompareDeep(xbox that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Extension) that);
        boolean equals2 = equals && (this.sti == null || this.sti.equals(that.sti));
        boolean equals3 = equals2 && (this.eventSequence == null || this.eventSequence.equals(that.eventSequence));
        boolean equals4 = equals3 && (this.issueTimestamp == null || this.issueTimestamp.equals(that.issueTimestamp));
        boolean equals5 = equals4 && (this.expiryTimestamp == null || this.expiryTimestamp.equals(that.expiryTimestamp));
        boolean equals6 = equals5 && (this.sandboxId == null || this.sandboxId.equals(that.sandboxId));
        boolean equals7 = equals6 && (this.deviceType == null || this.deviceType.equals(that.deviceType));
        boolean equals8 = equals7 && (this.xblDeviceId == null || this.xblDeviceId.equals(that.xblDeviceId));
        boolean equals9 = equals8 && (this.signedInUsers == null || this.signedInUsers.equals(that.signedInUsers));
        boolean equals10 = equals9 && (this.isDevelopmentAccount == null || this.isDevelopmentAccount.equals(that.isDevelopmentAccount));
        boolean equals11 = equals10 && (this.isTestAccount == null || this.isTestAccount.equals(that.isTestAccount));
        return equals11 && (this.titleId == null || this.titleId.equals(that.titleId));
    }
}
