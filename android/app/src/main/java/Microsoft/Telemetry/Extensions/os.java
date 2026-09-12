package Microsoft.Telemetry.Extensions;

import Microsoft.Telemetry.Extension;
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
public class os extends Extension {
    private String expId;
    private String locale;

    @Override // Microsoft.Telemetry.Extension
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo3clone() {
        return null;
    }

    public final String getLocale() {
        return this.locale;
    }

    public final void setLocale(String value) {
        this.locale = value;
    }

    public final String getExpId() {
        return this.expId;
    }

    public final void setExpId(String value) {
        this.expId = value;
    }

    public static class Schema {
        private static final Metadata expId_metadata;
        private static final Metadata locale_metadata;
        public static final Metadata metadata = new Metadata();
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("os");
            metadata.setQualified_name("Microsoft.Telemetry.Extensions.os");
            metadata.getAttributes().put("Description", "Describes the OS properties that would be populated by the client.");
            locale_metadata = new Metadata();
            locale_metadata.setName("locale");
            locale_metadata.getAttributes().put("Description", "OS locale, set by the user, in the Windows locale format. Example, en-US for US English. Refer RFC 4646 for the format.");
            expId_metadata = new Metadata();
            expId_metadata.setName("expId");
            expId_metadata.getAttributes().put("Description", "Comma delimited list of experiment ids for experiments installed on the OS. Format is <NamespaceIdentifier>:<ExperimentId> for example, m:12345.");
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
            field.setMetadata(locale_metadata);
            field.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(expId_metadata);
            field2.getType().setId(BondDataType.BT_STRING);
            structDef.getFields().add(field2);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.locale;
            case 20:
                return this.expId;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.locale = (String) value;
                break;
            case 20:
                this.expId = (String) value;
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
        reset("os", "Microsoft.Telemetry.Extensions.os");
    }

    @Override // Microsoft.Telemetry.Extension
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.locale = "";
        this.expId = "";
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
            this.locale = reader.readString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.expId = reader.readString();
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
                        this.locale = ReadHelper.readString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.expId = ReadHelper.readString(reader, fieldTag.type);
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
        if (!canOmitFields || this.locale != Schema.locale_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 10, Schema.locale_metadata);
            writer.writeString(this.locale);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 10, Schema.locale_metadata);
        }
        if (!canOmitFields || this.expId != Schema.expId_metadata.getDefault_value().getString_value()) {
            writer.writeFieldBegin(BondDataType.BT_STRING, 20, Schema.expId_metadata);
            writer.writeString(this.expId);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_STRING, 20, Schema.expId_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Extension, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        os that = (os) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x003f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0055  */
    protected boolean memberwiseCompareQuick(os that) {
        boolean equals;
        boolean equals2;
        boolean equals3 = 1 != 0 && super.memberwiseCompareQuick((Extension) that);
        if (equals3) {
            if ((this.locale == null) == (that.locale == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals4 = equals && (this.locale == null || this.locale.length() == that.locale.length());
        if (equals4) {
            if ((this.expId == null) == (that.expId == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        return equals2 && (this.expId == null || this.expId.length() == that.expId.length());
    }

    protected boolean memberwiseCompareDeep(os that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Extension) that);
        boolean equals2 = equals && (this.locale == null || this.locale.equals(that.locale));
        return equals2 && (this.expId == null || this.expId.equals(that.expId));
    }
}
