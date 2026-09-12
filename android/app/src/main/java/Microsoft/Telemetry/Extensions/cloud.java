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
public class cloud extends Extension {
    private String deploymentUnit;
    private String environment;
    private String location;
    private String name;
    private String role;
    private String roleInstance;
    private String roleVer;

    @Override // Microsoft.Telemetry.Extension
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo3clone() {
        return null;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String value) {
        this.name = value;
    }

    public final String getRole() {
        return this.role;
    }

    public final void setRole(String value) {
        this.role = value;
    }

    public final String getRoleInstance() {
        return this.roleInstance;
    }

    public final void setRoleInstance(String value) {
        this.roleInstance = value;
    }

    public final String getLocation() {
        return this.location;
    }

    public final void setLocation(String value) {
        this.location = value;
    }

    public final String getRoleVer() {
        return this.roleVer;
    }

    public final void setRoleVer(String value) {
        this.roleVer = value;
    }

    public final String getEnvironment() {
        return this.environment;
    }

    public final void setEnvironment(String value) {
        this.environment = value;
    }

    public final String getDeploymentUnit() {
        return this.deploymentUnit;
    }

    public final void setDeploymentUnit(String value) {
        this.deploymentUnit = value;
    }

    public static class Schema {
        private static final Metadata deploymentUnit_metadata;
        private static final Metadata environment_metadata;
        private static final Metadata location_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata name_metadata;
        private static final Metadata roleInstance_metadata;
        private static final Metadata roleVer_metadata;
        private static final Metadata role_metadata;
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("cloud");
            metadata.setQualified_name("Microsoft.Telemetry.Extensions.cloud");
            metadata.getAttributes().put("Description", "Describes the service related fields populated by the cloud service.");
            name_metadata = new Metadata();
            name_metadata.setName("name");
            name_metadata.setModifier(Modifier.Required);
            name_metadata.getAttributes().put("Description", "Name of the service.");
            role_metadata = new Metadata();
            role_metadata.setName("role");
            role_metadata.setModifier(Modifier.Required);
            role_metadata.getAttributes().put("Description", "Service role.");
            roleInstance_metadata = new Metadata();
            roleInstance_metadata.setName("roleInstance");
            roleInstance_metadata.setModifier(Modifier.Required);
            roleInstance_metadata.getAttributes().put("Description", "Instance id of the deployed role instance generating the event.");
            location_metadata = new Metadata();
            location_metadata.setName("location");
            location_metadata.setModifier(Modifier.Required);
            location_metadata.getAttributes().put("Description", "Deployed location of the role instance (canonical name of datacenter, e.g. 'East US')");
            roleVer_metadata = new Metadata();
            roleVer_metadata.setName("roleVer");
            roleVer_metadata.getAttributes().put("Description", "Build version of the role. Recommended formats are either semantic version, or NT style: <MajorVersion>.<MinorVersion>.<Optional MileStone?>, <BuildNumber>.<Architecture>.<Branch>.<yyMMdd-hhmm>, e.g. 130.0.4590.3525.amd64fre.rd_fabric_n.140618-1229.");
            environment_metadata = new Metadata();
            environment_metadata.setName("environment");
            environment_metadata.getAttributes().put("Description", "Service deployment environment or topology (e.g. Prod, PPE, ChinaProd).");
            deploymentUnit_metadata = new Metadata();
            deploymentUnit_metadata.setName("deploymentUnit");
            deploymentUnit_metadata.getAttributes().put("Description", "Service deployment or scale unit (for partitioned services).");
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
            field.setMetadata(name_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(role_metadata);
            field2.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 30);
            field3.setMetadata(roleInstance_metadata);
            field3.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 40);
            field4.setMetadata(location_metadata);
            field4.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 50);
            field5.setMetadata(roleVer_metadata);
            field5.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field5);
            FieldDef field6 = new FieldDef();
            field6.setId((short) 60);
            field6.setMetadata(environment_metadata);
            field6.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field6);
            FieldDef field7 = new FieldDef();
            field7.setId((short) 70);
            field7.setMetadata(deploymentUnit_metadata);
            field7.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field7);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.name;
            case 20:
                return this.role;
            case 30:
                return this.roleInstance;
            case 40:
                return this.location;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                return this.roleVer;
            case 60:
                return this.environment;
            case 70:
                return this.deploymentUnit;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.name = (String) value;
                break;
            case 20:
                this.role = (String) value;
                break;
            case 30:
                this.roleInstance = (String) value;
                break;
            case 40:
                this.location = (String) value;
                break;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                this.roleVer = (String) value;
                break;
            case 60:
                this.environment = (String) value;
                break;
            case 70:
                this.deploymentUnit = (String) value;
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
        reset("cloud", "Microsoft.Telemetry.Extensions.cloud");
    }

    @Override // Microsoft.Telemetry.Extension
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.name = "";
        this.role = "";
        this.roleInstance = "";
        this.location = "";
        this.roleVer = "";
        this.environment = "";
        this.deploymentUnit = "";
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
            this.name = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.role = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.roleInstance = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.location = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.roleVer = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.environment = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.deploymentUnit = reader.readString();
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
                        this.name = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.role = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 30:
                        this.roleInstance = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 40:
                        this.location = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                        this.roleVer = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 60:
                        this.environment = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 70:
                        this.deploymentUnit = ReadHelper.readString(reader, fieldTag.type);
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
        writer.writeFieldBegin(BondDataType.BT_STRING, 10, Schema.name_metadata);
        writer.writeString(this.name);
        writer.writeFieldEnd();
        writer.writeFieldBegin(BondDataType.BT_STRING, 20, Schema.role_metadata);
        writer.writeString(this.role);
        writer.writeFieldEnd();
        writer.writeFieldBegin(BondDataType.BT_STRING, 30, Schema.roleInstance_metadata);
        writer.writeString(this.roleInstance);
        writer.writeFieldEnd();
        writer.writeFieldBegin(BondDataType.BT_STRING, 40, Schema.location_metadata);
        writer.writeString(this.location);
        writer.writeFieldEnd();
        if (!canOmitFields || this.roleVer != Schema.roleVer_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 50, Schema.roleVer_metadata);
            writer.writeString(this.roleVer);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 50, Schema.roleVer_metadata);
        }
        if (!canOmitFields || this.environment != Schema.environment_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 60, Schema.environment_metadata);
            writer.writeString(this.environment);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 60, Schema.environment_metadata);
        }
        if (!canOmitFields || this.deploymentUnit != Schema.deploymentUnit_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 70, Schema.deploymentUnit_metadata);
            writer.writeString(this.deploymentUnit);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 70, Schema.deploymentUnit_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        cloud that = (cloud) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:108:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:114:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:120:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:126:0x0118  */
    /* JADX WARN: Code duplicated, block: B:132:0x0132  */
    /* JADX WARN: Code duplicated, block: B:138:0x014c  */
    protected boolean memberwiseCompareQuick(cloud that) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        boolean equals5;
        boolean equals6;
        boolean equals7;
        boolean equals8 = 1 != 0 && super.memberwiseCompareQuick((Extension) that);
        if (equals8) {
            if ((this.name == null) == (that.name == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals9 = equals && (this.name == null || this.name.length() == that.name.length());
        if (equals9) {
            if ((this.role == null) == (that.role == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals10 = equals2 && (this.role == null || this.role.length() == that.role.length());
        if (equals10) {
            if ((this.roleInstance == null) == (that.roleInstance == null)) {
                equals3 = true;
            } else {
                equals3 = false;
            }
        } else {
            equals3 = false;
        }
        boolean equals11 = equals3 && (this.roleInstance == null || this.roleInstance.length() == that.roleInstance.length());
        if (equals11) {
            if ((this.location == null) == (that.location == null)) {
                equals4 = true;
            } else {
                equals4 = false;
            }
        } else {
            equals4 = false;
        }
        boolean equals12 = equals4 && (this.location == null || this.location.length() == that.location.length());
        if (equals12) {
            if ((this.roleVer == null) == (that.roleVer == null)) {
                equals5 = true;
            } else {
                equals5 = false;
            }
        } else {
            equals5 = false;
        }
        boolean equals13 = equals5 && (this.roleVer == null || this.roleVer.length() == that.roleVer.length());
        if (equals13) {
            if ((this.environment == null) == (that.environment == null)) {
                equals6 = true;
            } else {
                equals6 = false;
            }
        } else {
            equals6 = false;
        }
        boolean equals14 = equals6 && (this.environment == null || this.environment.length() == that.environment.length());
        if (equals14) {
            if ((this.deploymentUnit == null) == (that.deploymentUnit == null)) {
                equals7 = true;
            } else {
                equals7 = false;
            }
        } else {
            equals7 = false;
        }
        return equals7 && (this.deploymentUnit == null || this.deploymentUnit.length() == that.deploymentUnit.length());
    }

    protected boolean memberwiseCompareDeep(cloud that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Extension) that);
        boolean equals2 = equals && (this.name == null || this.name.equals(that.name));
        boolean equals3 = equals2 && (this.role == null || this.role.equals(that.role));
        boolean equals4 = equals3 && (this.roleInstance == null || this.roleInstance.equals(that.roleInstance));
        boolean equals5 = equals4 && (this.location == null || this.location.equals(that.location));
        boolean equals6 = equals5 && (this.roleVer == null || this.roleVer.equals(that.roleVer));
        boolean equals7 = equals6 && (this.environment == null || this.environment.equals(that.environment));
        return equals7 && (this.deploymentUnit == null || this.deploymentUnit.equals(that.deploymentUnit));
    }
}
