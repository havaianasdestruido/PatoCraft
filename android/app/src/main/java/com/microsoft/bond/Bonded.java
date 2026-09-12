package com.microsoft.bond;

import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.internal.Marshaler;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Bonded<T extends BondSerializable> implements BondSerializable {
    private ProtocolReader Data;
    private T Value;

    public Bonded() {
    }

    public Bonded(ProtocolReader data) throws IOException {
        read(data);
    }

    public Bonded(ProtocolReader data, SchemaDef schema) throws IOException {
        read(data, schema);
    }

    public Bonded(T value) {
        this.Value = value;
    }

    public T getValue() {
        return this.Value;
    }

    public void deserialize(BondSerializable value) throws IOException {
        value.read(this.Data);
    }

    @Override // com.microsoft.bond.BondSerializable
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BondSerializable m9clone() {
        if (this.Data != null) {
            try {
                return new Bonded(this.Data.cloneReader());
            } catch (IOException e) {
                return null;
            }
        }
        return new Bonded(this.Value);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void reset() {
        this.Value = null;
        this.Data = null;
    }

    @Override // com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader) throws IOException {
        readNested(reader);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void read(ProtocolReader reader, BondSerializable schema) throws IOException {
        readNested(reader);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void readNested(ProtocolReader reader) throws IOException {
        this.Value = null;
        this.Data = reader.cloneReader();
        reader.skip(BondDataType.BT_STRUCT);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input) throws IOException {
        Marshaler.unmarshal(input, this);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void unmarshal(InputStream input, BondSerializable schema) throws IOException {
        Marshaler.unmarshal(input, (SchemaDef) schema, this);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void write(ProtocolWriter writer) throws IOException {
        if (this.Data != null) {
            Transcoder.transcode(writer, this.Data.cloneReader());
        } else {
            this.Value.write(writer);
        }
    }

    @Override // com.microsoft.bond.BondSerializable
    public void writeNested(ProtocolWriter writer, boolean isBase) throws IOException {
        write(writer);
    }

    @Override // com.microsoft.bond.BondSerializable
    public void marshal(ProtocolWriter writer) throws IOException {
        Marshaler.marshal(this, writer);
    }

    @Override // com.microsoft.bond.BondSerializable
    public boolean memberwiseCompare(Object that) {
        if (this.Value != null) {
            return this.Value.memberwiseCompare(that);
        }
        return false;
    }
}
