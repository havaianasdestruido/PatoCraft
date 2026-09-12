package com.microsoft.xbox.idp.telemetry.utc;

import Microsoft.Telemetry.Data;
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
public class ClientError extends Data<CommonData> {
    private String callStack;
    private String errorCode;
    private String errorName;
    private String errorText;
    private String pageName;

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable mo0clone() {
        return null;
    }

    public final String getErrorName() {
        return this.errorName;
    }

    public final void setErrorName(String value) {
        this.errorName = value;
    }

    public final String getErrorText() {
        return this.errorText;
    }

    public final void setErrorText(String value) {
        this.errorText = value;
    }

    public final String getErrorCode() {
        return this.errorCode;
    }

    public final void setErrorCode(String value) {
        this.errorCode = value;
    }

    public final String getCallStack() {
        return this.callStack;
    }

    public final void setCallStack(String value) {
        this.callStack = value;
    }

    public final String getPageName() {
        return this.pageName;
    }

    public final void setPageName(String value) {
        this.pageName = value;
    }

    public static class Schema {
        private static final Metadata callStack_metadata;
        private static final Metadata errorCode_metadata;
        private static final Metadata errorName_metadata;
        private static final Metadata errorText_metadata;
        public static final Metadata metadata = new Metadata();
        private static final Metadata pageName_metadata;
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("ClientError");
            metadata.setQualified_name("com.microsoft.xbox.idp.telemetry.utc.ClientError");
            metadata.getAttributes().put("Description", "OnlineId Client Error event");
            errorName_metadata = new Metadata();
            errorName_metadata.setName("errorName");
            errorName_metadata.setModifier(Modifier.Required);
            errorName_metadata.getAttributes().put("Description", "the name of the error-  Can be a specific name (such as UserCanceled) or Exception name (if exception handling)");
            errorText_metadata = new Metadata();
            errorText_metadata.setName("errorText");
            errorText_metadata.getAttributes().put("Description", "The text of the error message or exception, if applicable");
            errorCode_metadata = new Metadata();
            errorCode_metadata.setName("errorCode");
            errorCode_metadata.getAttributes().put("Description", "The code we get back in the exception, if applicable.");
            callStack_metadata = new Metadata();
            callStack_metadata.setName("callStack");
            callStack_metadata.getAttributes().put("Description", "Call stack if we have it.");
            pageName_metadata = new Metadata();
            pageName_metadata.setName("pageName");
            pageName_metadata.getAttributes().put("Description", "Most recent page shown");
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
            field.setMetadata(errorName_metadata);
            field.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field);
            FieldDef field2 = new FieldDef();
            field2.setId((short) 20);
            field2.setMetadata(errorText_metadata);
            field2.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field2);
            FieldDef field3 = new FieldDef();
            field3.setId((short) 30);
            field3.setMetadata(errorCode_metadata);
            field3.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field3);
            FieldDef field4 = new FieldDef();
            field4.setId((short) 40);
            field4.setMetadata(callStack_metadata);
            field4.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field4);
            FieldDef field5 = new FieldDef();
            field5.setId((short) 50);
            field5.setMetadata(pageName_metadata);
            field5.getType().setId(BondDataType.BT_WSTRING);
            structDef.getFields().add(field5);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 10:
                return this.errorName;
            case 20:
                return this.errorText;
            case 30:
                return this.errorCode;
            case 40:
                return this.callStack;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
                return this.pageName;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 10:
                this.errorName = (String) value;
                break;
            case 20:
                this.errorText = (String) value;
                break;
            case 30:
                this.errorCode = (String) value;
                break;
            case 40:
                this.callStack = (String) value;
                break;
            case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
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
        reset("ClientError", "com.microsoft.xbox.idp.telemetry.utc.ClientError");
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.errorName = "";
        this.errorText = "";
        this.errorCode = "";
        this.callStack = "";
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
            this.errorName = reader.readWString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.errorText = reader.readWString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.errorCode = reader.readWString();
        }
        if (!canOmitFields || !reader.readFieldOmitted()) {
            this.callStack = reader.readWString();
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
                        this.errorName = ReadHelper.readWString(reader, fieldTag.type);
                        break;
                    case 20:
                        this.errorText = ReadHelper.readWString(reader, fieldTag.type);
                        break;
                    case 30:
                        this.errorCode = ReadHelper.readWString(reader, fieldTag.type);
                        break;
                    case 40:
                        this.callStack = ReadHelper.readWString(reader, fieldTag.type);
                        break;
                    case GraphRequest.MAXIMUM_BATCH_SIZE /* 50 */:
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
        boolean canOmitFields = writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        super.writeNested(writer, true);
        writer.writeFieldBegin(BondDataType.BT_WSTRING, 10, Schema.errorName_metadata);
        writer.writeWString(this.errorName);
        writer.writeFieldEnd();
        if (!canOmitFields || this.errorText != Schema.errorText_metadata.getDefault_value().getWstring_value()) {
            writer.writeFieldBegin(BondDataType.BT_WSTRING, 20, Schema.errorText_metadata);
            writer.writeWString(this.errorText);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_WSTRING, 20, Schema.errorText_metadata);
        }
        if (!canOmitFields || this.errorCode != Schema.errorCode_metadata.getDefault_value().getWstring_value()) {
            writer.writeFieldBegin(BondDataType.BT_WSTRING, 30, Schema.errorCode_metadata);
            writer.writeWString(this.errorCode);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_WSTRING, 30, Schema.errorCode_metadata);
        }
        if (!canOmitFields || this.callStack != Schema.callStack_metadata.getDefault_value().getWstring_value()) {
            writer.writeFieldBegin(BondDataType.BT_WSTRING, 40, Schema.callStack_metadata);
            writer.writeWString(this.callStack);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_WSTRING, 40, Schema.callStack_metadata);
        }
        if (!canOmitFields || this.pageName != Schema.pageName_metadata.getDefault_value().getWstring_value()) {
            writer.writeFieldBegin(BondDataType.BT_WSTRING, 50, Schema.pageName_metadata);
            writer.writeWString(this.pageName);
            writer.writeFieldEnd();
        } else {
            writer.writeFieldOmitted(BondDataType.BT_WSTRING, 50, Schema.pageName_metadata);
        }
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Data, Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        ClientError that = (ClientError) obj;
        return memberwiseCompareQuick(that) && memberwiseCompareDeep(that);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:76:0x0081  */
    /* JADX WARN: Code duplicated, block: B:82:0x0097  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:94:0x00c3  */
    protected boolean memberwiseCompareQuick(ClientError that) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        boolean equals5;
        boolean equals6 = 1 != 0 && super.memberwiseCompareQuick((Data) that);
        if (equals6) {
            if ((this.errorName == null) == (that.errorName == null)) {
                equals = true;
            } else {
                equals = false;
            }
        } else {
            equals = false;
        }
        boolean equals7 = equals && (this.errorName == null || this.errorName.length() == that.errorName.length());
        if (equals7) {
            if ((this.errorText == null) == (that.errorText == null)) {
                equals2 = true;
            } else {
                equals2 = false;
            }
        } else {
            equals2 = false;
        }
        boolean equals8 = equals2 && (this.errorText == null || this.errorText.length() == that.errorText.length());
        if (equals8) {
            if ((this.errorCode == null) == (that.errorCode == null)) {
                equals3 = true;
            } else {
                equals3 = false;
            }
        } else {
            equals3 = false;
        }
        boolean equals9 = equals3 && (this.errorCode == null || this.errorCode.length() == that.errorCode.length());
        if (equals9) {
            if ((this.callStack == null) == (that.callStack == null)) {
                equals4 = true;
            } else {
                equals4 = false;
            }
        } else {
            equals4 = false;
        }
        boolean equals10 = equals4 && (this.callStack == null || this.callStack.length() == that.callStack.length());
        if (equals10) {
            if ((this.pageName == null) == (that.pageName == null)) {
                equals5 = true;
            } else {
                equals5 = false;
            }
        } else {
            equals5 = false;
        }
        return equals5 && (this.pageName == null || this.pageName.length() == that.pageName.length());
    }

    protected boolean memberwiseCompareDeep(ClientError that) {
        boolean equals = 1 != 0 && super.memberwiseCompareDeep((Data) that);
        boolean equals2 = equals && (this.errorName == null || this.errorName.equals(that.errorName));
        boolean equals3 = equals2 && (this.errorText == null || this.errorText.equals(that.errorText));
        boolean equals4 = equals3 && (this.errorCode == null || this.errorCode.equals(that.errorCode));
        boolean equals5 = equals4 && (this.callStack == null || this.callStack.equals(that.callStack));
        return equals5 && (this.pageName == null || this.pageName.equals(that.pageName));
    }
}
