package com.microsoft.bond.io;

import com.microsoft.bond.BondBlob;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class BondInputStream implements BondStream, Seekable {
    public abstract BondInputStream clone(boolean z) throws IOException;

    public abstract boolean isCloneable();

    public abstract byte read() throws IOException;

    public abstract int read(byte[] bArr, int i, int i2) throws IOException;

    public abstract BondBlob readBlob(int i) throws IOException;
}
