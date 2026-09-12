package org.apache.james.mime4j.message;

import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.apache.james.mime4j.field.ContentDispositionField;
import org.apache.james.mime4j.field.ContentTransferEncodingField;
import org.apache.james.mime4j.field.ContentTypeField;
import org.apache.james.mime4j.field.Fields;
import org.apache.james.mime4j.parser.Field;
import org.apache.james.mime4j.util.MimeUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class Entity implements Disposable {
    private Body body;
    private Header header;
    private Entity parent;

    protected Entity() {
        this.header = null;
        this.body = null;
        this.parent = null;
    }

    protected Entity(Entity other) {
        this.header = null;
        this.body = null;
        this.parent = null;
        if (other.header != null) {
            this.header = new Header(other.header);
        }
        if (other.body != null) {
            Body bodyCopy = BodyCopier.copy(other.body);
            setBody(bodyCopy);
        }
    }

    public Entity getParent() {
        return this.parent;
    }

    public void setParent(Entity parent) {
        this.parent = parent;
    }

    public Header getHeader() {
        return this.header;
    }

    public void setHeader(Header header) {
        this.header = header;
    }

    public Body getBody() {
        return this.body;
    }

    public void setBody(Body body) {
        if (this.body != null) {
            throw new IllegalStateException("body already set");
        }
        this.body = body;
        body.setParent(this);
    }

    public Body removeBody() {
        if (this.body == null) {
            return null;
        }
        Body body = this.body;
        this.body = null;
        body.setParent(null);
        return body;
    }

    public void setMessage(Message message) {
        setBody(message, ContentTypeField.TYPE_MESSAGE_RFC822, null);
    }

    public void setMultipart(Multipart multipart) {
        String mimeType = ContentTypeField.TYPE_MULTIPART_PREFIX + multipart.getSubType();
        Map<String, String> parameters = Collections.singletonMap(ContentTypeField.PARAM_BOUNDARY, MimeUtil.createUniqueBoundary());
        setBody(multipart, mimeType, parameters);
    }

    public void setMultipart(Multipart multipart, Map<String, String> parameters) {
        String mimeType = ContentTypeField.TYPE_MULTIPART_PREFIX + multipart.getSubType();
        if (!parameters.containsKey(ContentTypeField.PARAM_BOUNDARY)) {
            Map<String, String> parameters2 = new HashMap<>(parameters);
            parameters2.put(ContentTypeField.PARAM_BOUNDARY, MimeUtil.createUniqueBoundary());
            parameters = parameters2;
        }
        setBody(multipart, mimeType, parameters);
    }

    public void setText(TextBody textBody) {
        setText(textBody, "plain");
    }

    public void setText(TextBody textBody, String subtype) {
        String mimeType = "text/" + subtype;
        Map<String, String> parameters = null;
        String mimeCharset = textBody.getMimeCharset();
        if (mimeCharset != null && !mimeCharset.equalsIgnoreCase("us-ascii")) {
            parameters = Collections.singletonMap(ContentTypeField.PARAM_CHARSET, mimeCharset);
        }
        setBody(textBody, mimeType, parameters);
    }

    public void setBody(Body body, String mimeType) {
        setBody(body, mimeType, null);
    }

    public void setBody(Body body, String mimeType, Map<String, String> parameters) {
        setBody(body);
        Header header = obtainHeader();
        header.setField(Fields.contentType(mimeType, parameters));
    }

    public String getMimeType() {
        ContentTypeField child = (ContentTypeField) getHeader().getField("Content-Type");
        ContentTypeField parent = getParent() != null ? (ContentTypeField) getParent().getHeader().getField("Content-Type") : null;
        return ContentTypeField.getMimeType(child, parent);
    }

    public String getCharset() {
        return ContentTypeField.getCharset((ContentTypeField) getHeader().getField("Content-Type"));
    }

    public String getContentTransferEncoding() {
        ContentTransferEncodingField f = (ContentTransferEncodingField) getHeader().getField("Content-Transfer-Encoding");
        return ContentTransferEncodingField.getEncoding(f);
    }

    public void setContentTransferEncoding(String contentTransferEncoding) {
        Header header = obtainHeader();
        header.setField(Fields.contentTransferEncoding(contentTransferEncoding));
    }

    public String getDispositionType() {
        ContentDispositionField field = (ContentDispositionField) obtainField("Content-Disposition");
        if (field == null) {
            return null;
        }
        return field.getDispositionType();
    }

    public void setContentDisposition(String dispositionType) {
        Header header = obtainHeader();
        header.setField(Fields.contentDisposition(dispositionType, null, -1L, null, null, null));
    }

    public void setContentDisposition(String dispositionType, String filename) {
        Header header = obtainHeader();
        header.setField(Fields.contentDisposition(dispositionType, filename, -1L, null, null, null));
    }

    public void setContentDisposition(String dispositionType, String filename, long size) {
        Header header = obtainHeader();
        header.setField(Fields.contentDisposition(dispositionType, filename, size, null, null, null));
    }

    public void setContentDisposition(String dispositionType, String filename, long size, Date creationDate, Date modificationDate, Date readDate) {
        Header header = obtainHeader();
        header.setField(Fields.contentDisposition(dispositionType, filename, size, creationDate, modificationDate, readDate));
    }

    public String getFilename() {
        ContentDispositionField field = (ContentDispositionField) obtainField("Content-Disposition");
        if (field == null) {
            return null;
        }
        return field.getFilename();
    }

    public void setFilename(String filename) {
        Header header = obtainHeader();
        ContentDispositionField field = (ContentDispositionField) header.getField("Content-Disposition");
        if (field == null) {
            if (filename != null) {
                header.setField(Fields.contentDisposition(ContentDispositionField.DISPOSITION_TYPE_ATTACHMENT, filename, -1L, null, null, null));
            }
        } else {
            String dispositionType = field.getDispositionType();
            Map<String, String> parameters = new HashMap<>(field.getParameters());
            if (filename == null) {
                parameters.remove("filename");
            } else {
                parameters.put("filename", filename);
            }
            header.setField(Fields.contentDisposition(dispositionType, parameters));
        }
    }

    public boolean isMimeType(String type) {
        return getMimeType().equalsIgnoreCase(type);
    }

    public boolean isMultipart() {
        ContentTypeField f = (ContentTypeField) getHeader().getField("Content-Type");
        return (f == null || f.getBoundary() == null || !getMimeType().startsWith(ContentTypeField.TYPE_MULTIPART_PREFIX)) ? false : true;
    }

    @Override // org.apache.james.mime4j.message.Disposable
    public void dispose() {
        if (this.body != null) {
            this.body.dispose();
        }
    }

    Header obtainHeader() {
        if (this.header == null) {
            this.header = new Header();
        }
        return this.header;
    }

    <F extends Field> F obtainField(String str) {
        Header header = getHeader();
        if (header == null) {
            return null;
        }
        return (F) header.getField(str);
    }
}
