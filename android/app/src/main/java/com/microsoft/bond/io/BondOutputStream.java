package com.microsoft.bond.io;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class BondOutputStream implements BondStream, Seekable {
    public abstract void write(byte b) throws IOException;

    public abstract void write(byte[] bArr) throws IOException;

    public abstract void write(byte[] bArr, int i, int i2) throws IOException;
}
