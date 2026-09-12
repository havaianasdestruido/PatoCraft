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
public class PageView extends Data<CommonData> {
    private String fromPage;
    private String pageName;

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base
    /* JADX INFO: renamed from: clone */
    public BondSerializable mo0clone() {
        return null;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final void setPageName(String value) {
        this.pageName = value;
    }

    public final String getFromPage() {
        return this.fromPage;
    }

    public final void setFromPage(String value) {
        this.fromPage = value;
    }

    public static class Schema {
        private static final Metadata fromPage_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata pageName_metadata;
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("PageView");
            metadata.setQualified_name("com.microsoft.xbox.idp.telemetry.utc.PageView");
            metadata.getAttributes().put("Description", "OnlineId PageView event");
            pageName_metadata = new Metadata();
            pageName_metadata.setName("pageName");
            pageName_metadata.setModifier(Modifier.Required);
            pageName_metadata.getAttributes().put("Description", "The name of the currently viewed page");
            fromPage_metadata = new Metadata();
            fromPage_metadata.setName("fromPage");
            fromPage_metadata.setModifier(Modifier.Required);
            fromPage_metadata.getAttributes().put("Description", "The name of the previously viewed page (aka Referer Page Uri)");
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
            field.setMetadata(pageName_metadata);
            field.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(fromPage_metadata);
            field2.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field2);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.pageName;
            case 20:
                return this.fromPage;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.pageName = (String) value;
                break;
            case 20:
                this.fromPage = (String) value;
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
        reset("PageView", "com.microsoft.xbox.idp.telemetry.utc.PageView");
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.pageName = "";
        this.fromPage = "";
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
            this.pageName = reader.readWString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.fromPage = reader.readWString();
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
                        this.pageName = ReadHelper.readWString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.fromPage = ReadHelper.readWString(reader, fieldTag.type);
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
        writer.writeFieldBegin(BondDataType.BT_WSTRING, 10, Schema.pageName_metadata);
        writer.writeWString(this.pageName);
        writer.writeFieldEnd();
        writer.writeFieldBegin(BondDataType.BT_WSTRING, 20, Schema.fromPage_metadata);
        writer.writeWString(this.fromPage);
        writer.writeFieldEnd();
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        PageView that = (PageView) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x003f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0055  */
    protected boolean memberwiseCompareQuick(PageView that) {
        boolean equals;
        boolean equals2;
        boolean equals3 = 1 != 0 && super.memberwiseCompareQuick((Data) that);
        if (equals3) {
            if ((this.pageName == null) == (that.pageName == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals4 = equals && (this.pageName == null || this.pageName.length() == that.pageName.length());
        if (equals4) {
            if ((this.fromPage == null) == (that.fromPage == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        return equals2 && (this.fromPage == null || this.fromPage.length() == that.fromPage.length());
    }

    protected boolean memberwiseCompareDeep(PageView that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Data) that);
        boolean equals2 = equals && (this.pageName == null || this.pageName.equals(that.pageName));
        return equals2 && (this.fromPage == null || this.fromPage.equals(that.fromPage));
    }
}
