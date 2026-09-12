package com.microsoft.xbox.idp.telemetry.utc;

import Microsoft.Telemetry.Data;
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
public class PageAction extends Data<CommonData> {
    private String actionName;
    private String pageName;

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo0clone() {
        return null;
    }

    public final String getActionName() {
        return this.actionName;
    }

    public final void setActionName(String value) {
        this.actionName = value;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final void setPageName(String value) {
        this.pageName = value;
    }

    public static class Schema {
        private static final Metadata actionName_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata pageName_metadata;
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("PageAction");
            metadata.setQualified_name("com.microsoft.xbox.idp.telemetry.utc.PageAction");
            metadata.getAttributes().put("Description", "OnlineId PageAction event");
            actionName_metadata = new Metadata();
            actionName_metadata.setName("actionName");
            actionName_metadata.setModifier(Modifier.Required);
            actionName_metadata.getAttributes().put("Description", "The name of the action taking place");
            pageName_metadata = new Metadata();
            pageName_metadata.setName("pageName");
            pageName_metadata.setModifier(Modifier.Required);
            pageName_metadata.getAttributes().put("Description", "The name of the page the action is taking place upon");
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
            structDef.setBase_def(Data.Schema.getTypeDef(schema));
            FieldDef field = new FieldDef();
            field.setId((short) 10);
            field.setMetadata(actionName_metadata);
            field.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(pageName_metadata);
            field2.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field2);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.actionName;
            case 20:
                return this.pageName;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.actionName = (String) value;
                break;
            case 20:
                this.pageName = (String) value;
                break;
        }
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        return null;
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public SchemaDef getSchema() {
        return getRuntimeSchema();
    }

    public static SchemaDef getRuntimeSchema() {
        return Schema.schemaDef;
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void reset() {
        reset("PageAction", "com.microsoft.xbox.idp.telemetry.utc.PageAction");
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.actionName = "";
        this.pageName = "";
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input) throws IOException {
        Marshaler.unmarshal(input, this);
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input, BondSerializable schema) throws IOException {
        Marshaler.unmarshal(input, (SchemaDef) schema, this);
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader) throws IOException {
        reader.readBegin();
        readNested(reader);
        reader.readEnd();
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void readNested(ProtocolReader reader) throws IOException {
        if (!reader.hasCapability(ProtocolCapability.TAGGED)) {
            readUntagged(reader, false);
        } else if (readTagged(reader, false)) {
            ReadHelper.skipPartialStruct(reader);
        }
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader, BondSerializable schema) throws IOException {
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base
    protected void readUntagged(ProtocolReader reader, boolean isBase) throws IOException {
        boolean canOmitFields = reader.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        reader.readStructBegin(isBase);
        super.readUntagged(reader, true);
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.actionName = reader.readWString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.pageName = reader.readWString();
        }
        reader.readStructEnd();
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base
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
                        this.actionName = ReadHelper.readWString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.pageName = ReadHelper.readWString(reader, fieldTag.type);
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

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void marshal(ProtocolWriter writer) throws IOException {
        Marshaler.marshal(this, writer);
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
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

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void writeNested(ProtocolWriter writer, boolean isBase) throws IOException {
        writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        super.writeNested(writer, true);
        writer.writeFieldBegin(BondDataType.BT_WSTRING, 10, Schema.actionName_metadata);
        writer.writeWString(this.actionName);
        writer.writeFieldEnd();
        writer.writeFieldBegin(BondDataType.BT_WSTRING, 20, Schema.pageName_metadata);
        writer.writeWString(this.pageName);
        writer.writeFieldEnd();
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        PageAction that = (PageAction) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x003f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0055  */
    protected boolean memberwiseCompareQuick(PageAction that) {
        boolean equals;
        boolean equals2;
        boolean equals3 = 1 != 0 && super.memberwiseCompareQuick((Data) that);
        if (equals3) {
            if ((this.actionName == null) == (that.actionName == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals4 = equals && (this.actionName == null || this.actionName.length() == that.actionName.length());
        if (equals4) {
            if ((this.pageName == null) == (that.pageName == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        return equals2 && (this.pageName == null || this.pageName.length() == that.pageName.length());
    }

    protected boolean memberwiseCompareDeep(PageAction that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Data) that);
        boolean equals2 = equals && (this.actionName == null || this.actionName.equals(that.actionName));
        return equals2 && (this.pageName == null || this.pageName.equals(that.pageName));
    }
}
