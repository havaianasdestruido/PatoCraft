package org.apache.james.mime4j.descriptor;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.james.mime4j.field.ContentTypeField;
import org.apache.james.mime4j.parser.Field;
import org.apache.james.mime4j.util.MimeUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DefaultBodyDescriptor implements MutableBodyDescriptor {
    private static final String DEFAULT_MEDIA_TYPE = "text";
    private static final String DEFAULT_MIME_TYPE = "text/plain";
    private static final String DEFAULT_SUB_TYPE = "plain";
    private static final String EMAIL_MESSAGE_MIME_TYPE = "message/rfc822";
    private static final String MEDIA_TYPE_MESSAGE = "message";
    private static final String MEDIA_TYPE_TEXT = "text";
    private static final String SUB_TYPE_EMAIL = "rfc822";
    private static final String US_ASCII = "us-ascii";
    private static Log log = LogFactory.getLog(DefaultBodyDescriptor.class);
    private String boundary;
    private String charset;
    private long contentLength;
    private boolean contentTransferEncSet;
    private boolean contentTypeSet;
    private String mediaType;
    private String mimeType;
    private Map<String, String> parameters;
    private String subType;
    private String transferEncoding;

    public DefaultBodyDescriptor() {
        this(null);
    }

    public DefaultBodyDescriptor(BodyDescriptor parent) {
        this.mediaType = "text";
        this.subType = DEFAULT_SUB_TYPE;
        this.mimeType = "text/plain";
        this.boundary = null;
        this.charset = US_ASCII;
        this.transferEncoding = MimeUtil.ENC_7BIT;
        this.parameters = new HashMap();
        this.contentLength = -1L;
        if (parent != null && MimeUtil.isSameMimeType(ContentTypeField.TYPE_MULTIPART_DIGEST, parent.getMimeType())) {
            this.mimeType = "message/rfc822";
            this.subType = SUB_TYPE_EMAIL;
            this.mediaType = "message";
        } else {
            this.mimeType = "text/plain";
            this.subType = DEFAULT_SUB_TYPE;
            this.mediaType = "text";
        }
    }

    @Override // org.apache.james.mime4j.descriptor.MutableBodyDescriptor
    public void addField(Field field) {
        String name = field.getName();
        String value = field.getBody();
        String name2 = name.trim().toLowerCase();
        if (name2.equals("content-transfer-encoding") && !this.contentTransferEncSet) {
            this.contentTransferEncSet = true;
            String value2 = value.trim().toLowerCase();
            if (value2.length() > 0) {
                this.transferEncoding = value2;
                return;
            }
            return;
        }
        if (name2.equals("content-length") && this.contentLength == -1) {
            try {
                this.contentLength = Long.parseLong(value.trim());
            } catch (NumberFormatException e) {
                log.error("Invalid content-length: " + value);
            }
        } else if (name2.equals("content-type") && !this.contentTypeSet) {
            parseContentType(value);
        }
    }

    private void parseContentType(String value) {
        this.contentTypeSet = true;
        Map<String, String> params = MimeUtil.getHeaderParams(value);
        String main = params.get("");
        String type = null;
        String subtype = null;
        if (main != null) {
            main = main.toLowerCase().trim();
            int index = main.indexOf(47);
            boolean valid = false;
            if (index != -1) {
                type = main.substring(0, index).trim();
                subtype = main.substring(index + 1).trim();
                if (type.length() > 0 && subtype.length() > 0) {
                    main = type + "/" + subtype;
                    valid = true;
                }
            }
            if (!valid) {
                main = null;
                type = null;
                subtype = null;
            }
        }
        String b = params.get(ContentTypeField.PARAM_BOUNDARY);
        if (main != null && ((main.startsWith(ContentTypeField.TYPE_MULTIPART_PREFIX) && b != null) || !main.startsWith(ContentTypeField.TYPE_MULTIPART_PREFIX))) {
            this.mimeType = main;
            this.subType = subtype;
            this.mediaType = type;
        }
        if (MimeUtil.isMultipart(this.mimeType)) {
            this.boundary = b;
        }
        String c = params.get(ContentTypeField.PARAM_CHARSET);
        this.charset = null;
        if (c != null) {
            String c2 = c.trim();
            if (c2.length() > 0) {
                this.charset = c2.toLowerCase();
            }
        }
        if (this.charset == null && "text".equals(this.mediaType)) {
            this.charset = US_ASCII;
        }
        this.parameters.putAll(params);
        this.parameters.remove("");
        this.parameters.remove(ContentTypeField.PARAM_BOUNDARY);
        this.parameters.remove(ContentTypeField.PARAM_CHARSET);
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // org.apache.james.mime4j.descriptor.BodyDescriptor
    public String getBoundary() {
        return this.boundary;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getCharset() {
        return this.charset;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public Map<String, String> getContentTypeParameters() {
        return this.parameters;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getTransferEncoding() {
        return this.transferEncoding;
    }

    public String toString() {
        return this.mimeType;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public long getContentLength() {
        return this.contentLength;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getMediaType() {
        return this.mediaType;
    }

    @Override // org.apache.james.mime4j.descriptor.ContentDescriptor
    public String getSubType() {
        return this.subType;
    }
}
