package net.hockeyapp.android.utils;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SimpleMultipartEntity {
    private static final char[] BOUNDARY_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private String mBoundary;
    private boolean mIsSetFirst = false;
    private boolean mIsSetLast = false;
    private ByteArrayOutputStream mOut = new ByteArrayOutputStream();

    public SimpleMultipartEntity() {
        StringBuffer buffer = new StringBuffer();
        Random rand = new Random();
        for (int i = 0; i < 30; i++) {
            buffer.append(BOUNDARY_CHARS[rand.nextInt(BOUNDARY_CHARS.length)]);
        }
        this.mBoundary = buffer.toString();
    }

    public String getBoundary() {
        return this.mBoundary;
    }

    public void writeFirstBoundaryIfNeeds() throws IOException {
        if (!this.mIsSetFirst) {
            this.mOut.write(("--" + this.mBoundary + CharsetUtil.CRLF).getBytes());
        }
        this.mIsSetFirst = true;
    }

    public void writeLastBoundaryIfNeeds() {
        if (!this.mIsSetLast) {
            try {
                this.mOut.write(("\r\n--" + this.mBoundary + "--\r\n").getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.mIsSetLast = true;
        }
    }

    public void addPart(String key, String value) throws IOException {
        writeFirstBoundaryIfNeeds();
        this.mOut.write(("Content-Disposition: form-data; name=\"" + key + "\"\r\n").getBytes());
        this.mOut.write("Content-Type: text/plain; charset=UTF-8\r\n".getBytes());
        this.mOut.write("Content-Transfer-Encoding: 8bit\r\n\r\n".getBytes());
        this.mOut.write(value.getBytes());
        this.mOut.write(("\r\n--" + this.mBoundary + CharsetUtil.CRLF).getBytes());
    }

    public void addPart(String key, File value, boolean lastFile) throws IOException {
        addPart(key, value.getName(), new FileInputStream(value), lastFile);
    }

    public void addPart(String key, String fileName, InputStream fin, boolean lastFile) throws IOException {
        addPart(key, fileName, fin, "application/octet-stream", lastFile);
    }

    public void addPart(String key, String fileName, InputStream fin, String type, boolean lastFile) throws IOException {
        writeFirstBoundaryIfNeeds();
        try {
            String type2 = "Content-Type: " + type + CharsetUtil.CRLF;
            this.mOut.write(("Content-Disposition: form-data; name=\"" + key + "\"; filename=\"" + fileName + "\"\r\n").getBytes());
            this.mOut.write(type2.getBytes());
            this.mOut.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
            byte[] tmp = new byte[4096];
            while (true) {
                int l = fin.read(tmp);
                if (l == -1) {
                    break;
                } else {
                    this.mOut.write(tmp, 0, l);
                }
            }
            this.mOut.flush();
            if (lastFile) {
                writeLastBoundaryIfNeeds();
            } else {
                this.mOut.write(("\r\n--" + this.mBoundary + CharsetUtil.CRLF).getBytes());
            }
        } finally {
            try {
                fin.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public long getContentLength() {
        writeLastBoundaryIfNeeds();
        return this.mOut.toByteArray().length;
    }

    public String getContentType() {
        return "multipart/form-data; boundary=" + getBoundary();
    }

    public ByteArrayOutputStream getOutputStream() {
        writeLastBoundaryIfNeeds();
        return this.mOut;
    }
}
