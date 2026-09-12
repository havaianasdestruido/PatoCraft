package com.microsoft.cll.android;

import android.support.v4.view.MotionEventCompat;
import android.util.Base64;
import com.microsoft.bond.BondBlob;
import com.microsoft.bond.BondDataType;
import com.microsoft.bond.BondSerializable;
import com.microsoft.bond.Metadata;
import com.microsoft.bond.ProtocolCapability;
import com.microsoft.bond.ProtocolWriter;
import java.io.IOException;
import java.util.Stack;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class JsonProtocol extends ProtocolWriter {
    private static final char ESCAPE_CHAR = '\\';
    private static final String NUMERIC_ESCAPE_STRING = "\\u";
    private final Stack<Boolean> containerIsTyped = new Stack<>();
    private boolean inContainer;
    private boolean isKey;
    private final StringBuilder stringBuilder;
    private static final Stack<BondDataType> keyTypes = new Stack<>();
    private static final Stack<BondDataType> valueTypes = new Stack<>();
    private static final Stack<Boolean> inContainerStack = new Stack<>();
    private static final char[] HEX_CHARACTERS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public JsonProtocol(StringBuilder stringBuilder) {
        this.stringBuilder = stringBuilder;
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeVersion() throws IOException {
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeBegin() {
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeEnd() {
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeStructBegin(BondSerializable metadata, boolean isBase) {
        if (!isBase) {
            this.stringBuilder.append('{');
        }
        inContainerStack.push(false);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeStructEnd(boolean isBase) {
        if (!isBase) {
            removeLastComma();
            this.stringBuilder.append('}');
            if (inContainerStack.size() > 1) {
                appendComma();
            }
        }
        inContainerStack.pop();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFieldBegin(BondDataType type, int id, BondSerializable metadata) throws IOException {
        Metadata bondMetadata = metadata instanceof Metadata ? (Metadata) metadata : null;
        if (bondMetadata != null) {
            writeJsonFieldName(bondMetadata.getName());
        }
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFieldEnd() {
        appendComma();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFieldOmitted(BondDataType type, int id, BondSerializable metadata) throws IOException {
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerBegin(int i, BondDataType bondDataType) throws IOException {
        this.stringBuilder.append('[');
        this.containerIsTyped.push(Boolean.TRUE);
        inContainerStack.push(true);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerBegin(int i, BondDataType keyType, BondDataType valueType) throws IOException {
        this.stringBuilder.append('{');
        this.containerIsTyped.push(Boolean.FALSE);
        this.inContainer = true;
        this.isKey = true;
        keyTypes.push(keyType);
        valueTypes.push(valueType);
        inContainerStack.push(true);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeContainerEnd() throws IOException {
        removeLastComma();
        this.stringBuilder.append(this.containerIsTyped.pop().booleanValue() ? ']' : '}');
        this.inContainer = false;
        this.isKey = false;
        keyTypes.pop();
        inContainerStack.pop();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeBool(boolean b) throws IOException {
        this.stringBuilder.append(b);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeString(String s) throws IOException {
        if (inContainerStack.peek().booleanValue() && !keyTypes.empty() && keyTypes.peek() == BondDataType.BT_STRING) {
            if (this.isKey) {
                writeJsonFieldName(s);
            } else if (!this.isKey) {
                actuallyWriteString(s);
            }
            if (valueTypes.peek() == BondDataType.BT_STRING) {
                this.isKey = !this.isKey;
                return;
            }
            return;
        }
        actuallyWriteString(s);
    }

    private void actuallyWriteString(String s) {
        if (s == null) {
            appendEscaped("null");
            appendInContainer();
        } else {
            this.stringBuilder.append('\"');
            appendEscaped(s);
            this.stringBuilder.append('\"');
            appendInContainer();
        }
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeWString(String s) throws IOException {
        writeString(s);
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeFloat(float v) throws IOException {
        this.stringBuilder.append(v);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeDouble(double v) throws IOException {
        this.stringBuilder.append(v);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeBlob(BondBlob bondBlob) throws IOException {
        this.stringBuilder.append(Base64.encode(bondBlob.getBuffer(), 0));
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt8(byte b) throws IOException {
        this.stringBuilder.append((int) b);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt16(short i) throws IOException {
        this.stringBuilder.append((int) i);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt32(int i) throws IOException {
        this.stringBuilder.append(i);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeUInt64(long l) throws IOException {
        this.stringBuilder.append(l);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt8(byte b) throws IOException {
        this.stringBuilder.append((int) b);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt16(short i) throws IOException {
        this.stringBuilder.append((int) i);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt32(int i) throws IOException {
        this.stringBuilder.append(i);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public void writeInt64(long l) throws IOException {
        this.stringBuilder.append(l);
        appendInContainer();
    }

    @Override // com.microsoft.bond.ProtocolWriter
    public boolean hasCapability(ProtocolCapability capability) {
        if (capability == ProtocolCapability.CAN_OMIT_FIELDS) {
            return true;
        }
        return super.hasCapability(capability);
    }

    public String toString() {
        return this.stringBuilder.toString();
    }

    private void appendInContainer() {
        if (this.inContainer) {
            appendComma();
        }
    }

    private void appendComma() {
        if (this.stringBuilder.length() > 0 && this.stringBuilder.charAt(this.stringBuilder.length() - 1) != ',') {
            this.stringBuilder.append(',');
        }
    }

    private void removeLastComma() {
        if (this.stringBuilder.length() > 0 && this.stringBuilder.charAt(this.stringBuilder.length() - 1) == ',') {
            this.stringBuilder.deleteCharAt(this.stringBuilder.length() - 1);
        }
    }

    private void writeJsonFieldName(String fieldName) {
        this.stringBuilder.append("\"");
        appendEscaped(fieldName);
        this.stringBuilder.append("\":");
    }

    private void appendEscaped(String value) {
        int parseIndex;
        int parseIndex2 = this.stringBuilder.length();
        this.stringBuilder.append(value);
        int length = this.stringBuilder.length();
        int parseIndex3 = parseIndex2;
        while (parseIndex3 < length) {
            char current = this.stringBuilder.charAt(parseIndex3);
            switch (current) {
                case '\t':
                    int parseIndex4 = parseIndex3 + 1;
                    this.stringBuilder.insert(parseIndex3, ESCAPE_CHAR);
                    this.stringBuilder.setCharAt(parseIndex4, 't');
                    length++;
                    parseIndex = parseIndex4 + 1;
                    break;
                case '\n':
                    int parseIndex5 = parseIndex3 + 1;
                    this.stringBuilder.insert(parseIndex3, ESCAPE_CHAR);
                    this.stringBuilder.setCharAt(parseIndex5, 'n');
                    length++;
                    parseIndex = parseIndex5 + 1;
                    break;
                case '\r':
                    int parseIndex6 = parseIndex3 + 1;
                    this.stringBuilder.insert(parseIndex3, ESCAPE_CHAR);
                    this.stringBuilder.setCharAt(parseIndex6, 'r');
                    length++;
                    parseIndex = parseIndex6 + 1;
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    int parseIndex7 = parseIndex3 + 1;
                    this.stringBuilder.insert(parseIndex3, ESCAPE_CHAR);
                    this.stringBuilder.setCharAt(parseIndex7, '\"');
                    length++;
                    parseIndex = parseIndex7 + 1;
                    break;
                case '\\':
                    this.stringBuilder.insert(parseIndex3, ESCAPE_CHAR);
                    parseIndex = parseIndex3 + 2;
                    length++;
                    break;
                default:
                    if (Character.isISOControl(current)) {
                        int parseIndex8 = parseIndex3 + 1;
                        this.stringBuilder.insert(parseIndex3, NUMERIC_ESCAPE_STRING);
                        int parseIndex9 = parseIndex8 + 1;
                        this.stringBuilder.setCharAt(parseIndex8, HEX_CHARACTERS[(current >> '\f') & 15]);
                        int parseIndex10 = parseIndex9 + 1;
                        this.stringBuilder.insert(parseIndex9, HEX_CHARACTERS[(current >> '\b') & 15]);
                        int parseIndex11 = parseIndex10 + 1;
                        this.stringBuilder.insert(parseIndex10, HEX_CHARACTERS[(current >> 4) & 15]);
                        parseIndex = parseIndex11 + 1;
                        this.stringBuilder.insert(parseIndex11, HEX_CHARACTERS[current & 15]);
                        length += 5;
                    } else {
                        parseIndex = parseIndex3 + 1;
                    }
                    break;
            }
            parseIndex3 = parseIndex;
        }
    }
}
