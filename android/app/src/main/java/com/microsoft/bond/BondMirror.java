package com.microsoft.bond;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public interface BondMirror {
    BondMirror createInstance(StructDef structDef);

    Object getField(FieldDef fieldDef);

    SchemaDef getSchema();

    void setField(FieldDef fieldDef, Object obj);
}
