package org.apache.james.mime4j.storage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import org.apache.james.mime4j.util.ByteArrayBuffer;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ThresholdStorageProvider extends AbstractStorageProvider {
    private final StorageProvider backend;
    private final int thresholdSize;

    public ThresholdStorageProvider(StorageProvider backend) {
        this(backend, 2048);
    }

    public ThresholdStorageProvider(StorageProvider backend, int thresholdSize) {
        if (backend == null) {
            throw new IllegalArgumentException();
        }
        if (thresholdSize < 1) {
            throw new IllegalArgumentException();
        }
        this.backend = backend;
        this.thresholdSize = thresholdSize;
    }

    @Override // org.apache.james.mime4j.storage.StorageProvider
    public StorageOutputStream createStorageOutputStream() {
        return new ThresholdStorageOutputStream();
    }

    private final class ThresholdStorageOutputStream extends StorageOutputStream {
        private final ByteArrayBuffer head;
        private StorageOutputStream tail;

        public ThresholdStorageOutputStream() {
            int bufferSize = Math.min(ThresholdStorageProvider.this.thresholdSize, 1024);
            this.head = new ByteArrayBuffer(bufferSize);
        }

        @Override // org.apache.james.mime4j.storage.StorageOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            if (this.tail != null) {
                this.tail.close();
            }
        }

        @Override // org.apache.james.mime4j.storage.StorageOutputStream
        protected void write0(byte[] buffer, int offset, int length) throws IOException {
            int remainingHeadSize = ThresholdStorageProvider.this.thresholdSize - this.head.length();
            if (remainingHeadSize > 0) {
                int n = Math.min(remainingHeadSize, length);
                this.head.append(buffer, offset, n);
                offset += n;
                length -= n;
            }
            if (length > 0) {
                if (this.tail == null) {
                    this.tail = ThresholdStorageProvider.this.backend.createStorageOutputStream();
                }
                this.tail.write(buffer, offset, length);
            }
        }

        @Override // org.apache.james.mime4j.storage.StorageOutputStream
        protected Storage toStorage0() throws IOException {
            return this.tail == null ? new MemoryStorageProvider.MemoryStorage(this.head.buffer(), this.head.length()) : new ThresholdStorage(this.head.buffer(), this.head.length(), this.tail.toStorage());
        }
    }

    private static final class ThresholdStorage implements Storage {
        private byte[] head;
        private final int headLen;
        private Storage tail;

        public ThresholdStorage(byte[] head, int headLen, Storage tail) {
            this.head = head;
            this.headLen = headLen;
            this.tail = tail;
        }

        @Override // org.apache.james.mime4j.storage.Storage
        public void delete() {
            if (this.head != null) {
                this.head = null;
                this.tail.delete();
                this.tail = null;
            }
        }

        @Override // org.apache.james.mime4j.storage.Storage
        public InputStream getInputStream() throws IOException {
            if (this.head == null) {
                throw new IllegalStateException("storage has been deleted");
            }
            InputStream headStream = new ByteArrayInputStream(this.head, 0, this.headLen);
            InputStream tailStream = this.tail.getInputStream();
            return new SequenceInputStream(headStream, tailStream);
        }
    }
}
