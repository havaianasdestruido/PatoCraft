package Microsoft.Telemetry;

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
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Data<TDomain extends BondSerializable> extends Base {
    private TDomain baseData;
    private Class<TDomain> generic_type_TDomain;

    @Override // Microsoft.Telemetry.Base
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable mo0clone() {
        return null;
    }

    public final TDomain getBaseData() {
        return this.baseData;
    }

    public final void setBaseData(TDomain value) {
        this.baseData = value;
    }

    public static class Schema {
        private static final Metadata baseData_metadata;
        public static final Metadata metadata = new Metadata();
        public static final SchemaDef schemaDef;

        static {
            metadata.setName("Data");
            metadata.setQualified_name("Microsoft.Telemetry.Data");
            metadata.getAttributes().put("Description", "Data struct to contain both B and C sections.");
            baseData_metadata = new Metadata();
            baseData_metadata.setName("baseData");
            baseData_metadata.setModifier(Modifier.Required);
            baseData_metadata.getAttributes().put("Name", "Item");
            baseData_metadata.getAttributes().put("Description", "Container for data item (B section).");
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
            structDef.setBase_def(Base.Schema.getTypeDef(schema));
            FieldDef field = new FieldDef();
            field.setId((short) 20);
            field.setMetadata(baseData_metadata);
            field.getType().setId(BondDataType.BT_STRUCT);
            structDef.getFields().add(field);
            return pos;
        }
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public Object getField(FieldDef fieldDef) {
        switch (fieldDef.getId()) {
            case 20:
                return this.baseData;
            default:
                return null;
        }
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public void setField(FieldDef fieldDef, Object value) {
        switch (fieldDef.getId()) {
            case 20:
                this.baseData = (TDomain) value;
                break;
        }
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public BondMirror createInstance(StructDef structDef) {
        return null;
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondMirror
    public SchemaDef getSchema() {
        return getRuntimeSchema();
    }

    public static SchemaDef getRuntimeSchema() {
        return Schema.schemaDef;
    }

    public Data() {
        Type[] genericTypes = getGenericTypeArguments();
        int i = 0 + 1;
        this.generic_type_TDomain = (Class) genericTypes[0];
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void reset() {
        reset("Data", "Microsoft.Telemetry.Data");
    }

    @Override // Microsoft.Telemetry.Base
    protected void reset(String name, String qualifiedName) {
        super.reset(name, qualifiedName);
        this.baseData = null;
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input) throws IOException {
        Marshaler.unmarshal(input, this);
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input, BondSerializable schema) throws IOException {
        Marshaler.unmarshal(input, (SchemaDef) schema, this);
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader) throws IOException {
        reader.readBegin();
        readNested(reader);
        reader.readEnd();
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void readNested(ProtocolReader reader) throws IOException {
        if (!reader.hasCapability(ProtocolCapability.TAGGED)) {
            readUntagged(reader, false);
        } else if (readTagged(reader, false)) {
            ReadHelper.skipPartialStruct(reader);
        }
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader, BondSerializable schema) throws IOException {
    }

    @Override // Microsoft.Telemetry.Base
    protected void readUntagged(ProtocolReader reader, boolean isBase) throws IOException {
        boolean canOmitFields = reader.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        reader.readStructBegin(isBase);
        super.readUntagged(reader, true);
        if (!canOmitFields || !reader.readFieldOmitted()) {
            readFieldImpl_baseData(reader, BondDataType.BT_STRUCT);
        }
        reader.readStructEnd();
    }

    @Override // Microsoft.Telemetry.Base
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
                    case 20:
                        readFieldImpl_baseData(reader, fieldTag.type);
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

    private void readFieldImpl_baseData(ProtocolReader reader, BondDataType typeInPayload) throws IOException {
        try {
            this.baseData = this.generic_type_TDomain.newInstance();
            this.baseData.readNested(reader);
        } catch (IllegalAccessException e) {
        } catch (InstantiationException e2) {
        }
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void marshal(ProtocolWriter writer) throws IOException {
        Marshaler.marshal(this, writer);
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
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

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public void writeNested(ProtocolWriter writer, boolean isBase) throws IOException {
        writer.hasCapability(ProtocolCapability.CAN_OMIT_FIELDS);
        writer.writeStructBegin(Schema.metadata, isBase);
        super.writeNested(writer, true);
        writer.writeFieldBegin(BondDataType.BT_STRUCT, 20, Schema.baseData_metadata);
        this.baseData.writeNested(writer, false);
        writer.writeFieldEnd();
        writer.writeStructEnd(isBase);
    }

    @Override // Microsoft.Telemetry.Base, com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object obj) {
        if (obj == null) {
            return false;
        }
        Data<TDomain> that = (Data) obj;
        return memberwiseCompareQuick((Data) that) && memberwiseCompareDeep((Data) that);
    }

    protected boolean memberwiseCompareQuick(Data<TDomain> that) {
        return 1 != 0 && super.memberwiseCompareQuick((Base) that);
    }

    protected boolean memberwiseCompareDeep(Data<TDomain> that) {
        return 1 != 0 && super.memberwiseCompareDeep((Base) that);
    }

    private Type[] getGenericTypeArguments() {
        ParameterizedType superclass = (ParameterizedType) getClass().getGenericSuperclass();
        Type[] actualTypeArguments = superclass.getActualTypeArguments();
        return actualTypeArguments;
    }
}
