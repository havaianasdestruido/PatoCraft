package org.apache.james.mime4j.parser;

import java.io.IOException;
import java.io.InputStream;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.codec.Base64InputStream;
import org.apache.james.mime4j.codec.QuotedPrintableInputStream;
import org.apache.james.mime4j.descriptor.BodyDescriptor;
import org.apache.james.mime4j.io.BufferedLineReaderInputStream;
import org.apache.james.mime4j.io.LimitedInputStream;
import org.apache.james.mime4j.io.LineNumberSource;
import org.apache.james.mime4j.io.LineReaderInputStream;
import org.apache.james.mime4j.io.LineReaderInputStreamAdaptor;
import org.apache.james.mime4j.io.MimeBoundaryInputStream;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.ContentUtil;
import org.apache.james.mime4j.util.MimeUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MimeEntity extends AbstractEntity {
    private static final int T_IN_BODYPART = -2;
    private static final int T_IN_MESSAGE = -3;
    private LineReaderInputStreamAdaptor dataStream;
    private final BufferedLineReaderInputStream inbuffer;
    private final LineNumberSource lineSource;
    private MimeBoundaryInputStream mimeStream;
    private int recursionMode;
    private boolean skipHeader;
    private byte[] tmpbuf;

    public MimeEntity(LineNumberSource lineSource, BufferedLineReaderInputStream inbuffer, BodyDescriptor parent, int startState, int endState, MimeEntityConfig config) {
        super(parent, startState, endState, config);
        this.lineSource = lineSource;
        this.inbuffer = inbuffer;
        this.dataStream = new LineReaderInputStreamAdaptor(inbuffer, config.getMaxLineLen());
        this.skipHeader = false;
    }

    public MimeEntity(LineNumberSource lineSource, BufferedLineReaderInputStream inbuffer, BodyDescriptor parent, int startState, int endState) {
        this(lineSource, inbuffer, parent, startState, endState, new MimeEntityConfig());
    }

    public int getRecursionMode() {
        return this.recursionMode;
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public void setRecursionMode(int recursionMode) {
        this.recursionMode = recursionMode;
    }

    public void skipHeader(String contentType) {
        if (this.state != 0) {
            throw new IllegalStateException("Invalid state: " + stateToString(this.state));
        }
        this.skipHeader = true;
        ByteSequence raw = ContentUtil.encode("Content-Type: " + contentType);
        this.body.addField(new RawField(raw, 12));
    }

    @Override // org.apache.james.mime4j.parser.AbstractEntity
    protected int getLineNumber() {
        if (this.lineSource == null) {
            return -1;
        }
        return this.lineSource.getLineNumber();
    }

    @Override // org.apache.james.mime4j.parser.AbstractEntity
    protected LineReaderInputStream getDataStream() {
        return this.dataStream;
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public EntityStateMachine advance() throws MimeException, IOException {
        switch (this.state) {
            case -3:
            case 7:
            case 12:
                this.state = this.endState;
                return null;
            case -2:
                advanceToBoundary();
                if (this.mimeStream.eof() && !this.mimeStream.isLastPart()) {
                    monitor(Event.MIME_BODY_PREMATURE_END);
                } else if (!this.mimeStream.isLastPart()) {
                    clearMimeStream();
                    createMimeStream();
                    this.state = -2;
                    return nextMimeEntity();
                }
                clearMimeStream();
                this.state = 9;
                return null;
            case -1:
            case 1:
            case 2:
            case 11:
            default:
                if (this.state == this.endState) {
                    this.state = -1;
                    return null;
                }
                throw new IllegalStateException("Invalid state: " + stateToString(this.state));
            case 0:
                if (this.skipHeader) {
                    this.state = 5;
                } else {
                    this.state = 3;
                }
                return null;
            case 3:
            case 4:
                this.state = parseField() ? 4 : 5;
                return null;
            case 5:
                String mimeType = this.body.getMimeType();
                if (this.recursionMode == 3) {
                    this.state = 12;
                } else if (MimeUtil.isMultipart(mimeType)) {
                    this.state = 6;
                    clearMimeStream();
                } else {
                    if (this.recursionMode != 1 && MimeUtil.isMessage(mimeType)) {
                        this.state = -3;
                        return nextMessage();
                    }
                    this.state = 12;
                }
                return null;
            case 6:
                if (this.dataStream.isUsed()) {
                    advanceToBoundary();
                    this.state = 7;
                } else {
                    createMimeStream();
                    this.state = 8;
                }
                return null;
            case 8:
                advanceToBoundary();
                if (this.mimeStream.isLastPart()) {
                    clearMimeStream();
                    this.state = 7;
                    return null;
                }
                clearMimeStream();
                createMimeStream();
                this.state = -2;
                return nextMimeEntity();
            case 9:
                this.state = 7;
                return null;
            case 10:
                this.state = 3;
                return null;
        }
    }

    private void createMimeStream() throws MimeException, IOException {
        String boundary = this.body.getBoundary();
        int bufferSize = boundary.length() * 2;
        if (bufferSize < 4096) {
            bufferSize = 4096;
        }
        try {
            if (this.mimeStream != null) {
                this.mimeStream = new MimeBoundaryInputStream(new BufferedLineReaderInputStream(this.mimeStream, bufferSize, this.config.getMaxLineLen()), boundary);
            } else {
                this.inbuffer.ensureCapacity(bufferSize);
                this.mimeStream = new MimeBoundaryInputStream(this.inbuffer, boundary);
            }
            this.dataStream = new LineReaderInputStreamAdaptor(this.mimeStream, this.config.getMaxLineLen());
        } catch (IllegalArgumentException e) {
            throw new MimeException(e.getMessage(), e);
        }
    }

    private void clearMimeStream() {
        this.mimeStream = null;
        this.dataStream = new LineReaderInputStreamAdaptor(this.inbuffer, this.config.getMaxLineLen());
    }

    private void advanceToBoundary() throws IOException {
        if (!this.dataStream.eof()) {
            if (this.tmpbuf == null) {
                this.tmpbuf = new byte[2048];
            }
            InputStream instream = getLimitedContentStream();
            while (instream.read(this.tmpbuf) != -1) {
            }
        }
    }

    private EntityStateMachine nextMessage() {
        InputStream instream;
        String transferEncoding = this.body.getTransferEncoding();
        if (MimeUtil.isBase64Encoding(transferEncoding)) {
            this.log.debug("base64 encoded message/rfc822 detected");
            instream = new Base64InputStream(this.dataStream);
        } else if (MimeUtil.isQuotedPrintableEncoded(transferEncoding)) {
            this.log.debug("quoted-printable encoded message/rfc822 detected");
            instream = new QuotedPrintableInputStream(this.dataStream);
        } else {
            instream = this.dataStream;
        }
        if (this.recursionMode == 2) {
            return new RawEntity(instream);
        }
        MimeEntity message = new MimeEntity(this.lineSource, new BufferedLineReaderInputStream(instream, 4096, this.config.getMaxLineLen()), this.body, 0, 1, this.config);
        message.setRecursionMode(this.recursionMode);
        return message;
    }

    private EntityStateMachine nextMimeEntity() {
        if (this.recursionMode == 2) {
            return new RawEntity(this.mimeStream);
        }
        BufferedLineReaderInputStream stream = new BufferedLineReaderInputStream(this.mimeStream, 4096, this.config.getMaxLineLen());
        MimeEntity mimeentity = new MimeEntity(this.lineSource, stream, this.body, 10, 11, this.config);
        mimeentity.setRecursionMode(this.recursionMode);
        return mimeentity;
    }

    private InputStream getLimitedContentStream() {
        long maxContentLimit = this.config.getMaxContentLen();
        return maxContentLimit >= 0 ? new LimitedInputStream(this.dataStream, maxContentLimit) : this.dataStream;
    }

    @Override // org.apache.james.mime4j.parser.EntityStateMachine
    public InputStream getContentStream() {
        switch (this.state) {
            case 6:
            case 8:
            case 9:
            case 12:
                return getLimitedContentStream();
            case 7:
            case 10:
            case 11:
            default:
                throw new IllegalStateException("Invalid state: " + stateToString(this.state));
        }
    }
}
