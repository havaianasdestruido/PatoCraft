package Microsoft.Telemetry.Extensions;

import Microsoft.Telemetry.Extension;
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
public class sll extends Extension {
    private TracingEventLevel level;
    private String libVer;

    @Override // Microsoft.Telemetry.Extension
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo3clone() {
        return null;
    }

    public final String getLibVer() {
        return this.libVer;
    }

    public final void setLibVer(String value) {
        this.libVer = value;
    }

    public final TracingEventLevel getLevel() {
        return this.level;
    }

    public final void setLevel(TracingEventLevel value) {
        this.level = value;
    }

    public static class Schema {
        private static final Metadata level_metadata;
        private static final Metadata libVer_metadata;
        public static final Metadata metadata = new Metadata();
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("sll");
            metadata.setQualified_name("Microsoft.Telemetry.Extensions.sll");
            metadata.getAttributes().put("Description", "Describes the fields related to a service logging library implementation.");
            libVer_metadata = new Metadata();
            libVer_metadata.setName("libVer");
            libVer_metadata.getAttributes().put("Description", "Service Logging Library version");
            level_metadata = new Metadata();
            level_metadata.setName("level");
            level_metadata.setModifier(Modifier.Required);
            level_metadata.getAttributes().put("Description", "Severity level for service event");
            level_metadata.getDefault_value().setInt_value(TracingEventLevel.None.getValue());
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
            field.setMetadata(libVer_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(level_metadata);
            field2.getType().setId(BondDataType.BT_INT32);
            structDef.getFields().add(field2);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.libVer;
            case 20:
                return this.level;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.libVer = (String) value;
                break;
            case 20:
                this.level = (TracingEventLevel) value;
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
        reset("sll", "Microsoft.Telemetry.Extensions.sll");
    }

    @Override // Microsoft.Telemetry.Extension
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.libVer = "";
        this.level = TracingEventLevel.None;
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
            this.libVer = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.level = TracingEventLevel.fromValue(reader.readInt32());
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
                        this.libVer = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.level = TracingEventLevel.fromValue(ReadHelper.readInt32(reader, fieldTag.type));
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
        if (!canOmitFields || this.libVer != Schema.libVer_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 10, Schema.libVer_metadata);
            writer.writeString(this.libVer);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 10, Schema.libVer_metadata);
        }
        writer.writeFieldBegin(BondDataType.BT_INT32, 20, Schema.level_metadata);
        writer.writeInt32(this.level.getValue());
        writer.writeFieldEnd();
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        sll that = (sll) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0032  */
    protected boolean memberwiseCompareQuick(sll that) {
        boolean equals;
        boolean equals2 = 1 != 0 && super.memberwiseCompareQuick((Extension) that);
        if (equals2) {
            if ((this.libVer == null) == (that.libVer == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals3 = equals && (this.libVer == null || this.libVer.length() == that.libVer.length());
        return equals3 && this.level == that.level;
    }

    protected boolean memberwiseCompareDeep(sll that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Extension) that);
        return equals && (this.libVer == null || this.libVer.equals(that.libVer));
    }
}
