package org.apache.http.entity.mime.content;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
@NotThreadSafe
public class FileBody extends AbstractContentBody {
    private final File file;

    public FileBody(File file, String mimeType) {
        super(mimeType);
        if (file == null) {
            throw new IllegalArgumentException("File may not be null");
        }
        this.file = file;
    }

    public FileBody(File file) {
        this(file, "application/octet-stream");
    }

    public InputStream getInputStream() throws IOException {
        return new FileInputStream(this.file);
    }

    @Deprecated
    public void writeTo(OutputStream out, int mode) throws IOException {
        writeTo(out);
    }

    @Override // org.apache.james.mime4j.message.SingleBody
    public void writeTo(OutputStream out) throws IOException {
        if (out == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        InputStream in = new FileInputStream(this.file);
        try {
            byte[] tmp = new byte[4096];
            while (true) {
                int l = in.read(tmp);
                if (l != -1) {
                    out.write(tmp, 0, l);
                } else {
                    out.flush();
                    return;
                }
            }
        } finally {
            in.close();
        }
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getTransferEncoding() {
        return "binary";
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getCharset() {
        return null;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public long getContentLength() {
        return this.file.length();
    }

    @Override // org.apache.http.entity.mime.content.ContentBody
    public String getFilename() {
        return this.file.getName();
    }

    public File getFile() {
        return this.file;
    }
}
