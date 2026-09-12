package org.apache.james.mime4j.util;

import android.support.v4.view.MotionEventCompat;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.james.mime4j.field.ContentTypeField;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class MimeUtil {
    public static final String ENC_7BIT = "7bit";
    public static final String ENC_8BIT = "8bit";
    public static final String ENC_BASE64 = "base64";
    public static final String ENC_BINARY = "binary";
    public static final String ENC_QUOTED_PRINTABLE = "quoted-printable";
    public static final String MIME_HEADER_CONTENT_DESCRIPTION = "content-description";
    public static final String MIME_HEADER_CONTENT_DISPOSITION = "content-disposition";
    public static final String MIME_HEADER_CONTENT_ID = "content-id";
    public static final String MIME_HEADER_LANGAUGE = "content-language";
    public static final String MIME_HEADER_LOCATION = "content-location";
    public static final String MIME_HEADER_MD5 = "content-md5";
    public static final String MIME_HEADER_MIME_VERSION = "mime-version";
    public static final String PARAM_CREATION_DATE = "creation-date";
    public static final String PARAM_FILENAME = "filename";
    public static final String PARAM_MODIFICATION_DATE = "modification-date";
    public static final String PARAM_READ_DATE = "read-date";
    public static final String PARAM_SIZE = "size";
    private static final Log log = LogFactory.getLog(MimeUtil.class);
    private static final Random random = new Random();
    private static int counter = 0;
    private static final ThreadLocal<DateFormat> RFC822_DATE_FORMAT = new ThreadLocal<DateFormat>() { // from class: org.apache.james.mime4j.util.MimeUtil.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            return new Rfc822DateFormat();
        }
    };

    private MimeUtil() {
    }

    public static boolean isSameMimeType(String pType1, String pType2) {
        return (pType1 == null || pType2 == null || !pType1.equalsIgnoreCase(pType2)) ? false : true;
    }

    public static boolean isMessage(String pMimeType) {
        return pMimeType != null && pMimeType.equalsIgnoreCase(ContentTypeField.TYPE_MESSAGE_RFC822);
    }

    public static boolean isMultipart(String pMimeType) {
        return pMimeType != null && pMimeType.toLowerCase().startsWith(ContentTypeField.TYPE_MULTIPART_PREFIX);
    }

    public static boolean isBase64Encoding(String pTransferEncoding) {
        return ENC_BASE64.equalsIgnoreCase(pTransferEncoding);
    }

    public static boolean isQuotedPrintableEncoded(String pTransferEncoding) {
        return ENC_QUOTED_PRINTABLE.equalsIgnoreCase(pTransferEncoding);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x00be  */
    /* JADX WARN: Code duplicated, block: B:25:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d9 A[PHI: r22
  0x00d9: PHI (r22v6 'state' byte) = (r22v1 'state' byte), (r22v10 'state' byte) binds: [B:11:0x0060, B:31:0x00d7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e4 A[PHI: r22
  0x00e4: PHI (r22v3 'state' byte) = (r22v1 'state' byte), (r22v8 'state' byte) binds: [B:11:0x0060, B:35:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:40:0x010f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0063 A[SYNTHETIC] */
    public static Map<String, String> getHeaderParams(String pValue) {
        String main;
        String rest;
        boolean fallThrough;
        String pValue2 = unfold(pValue.trim());
        Map<String, String> result = new HashMap<>();
        if (pValue2.indexOf(";") == -1) {
            main = pValue2;
            rest = null;
        } else {
            main = pValue2.substring(0, pValue2.indexOf(";"));
            rest = pValue2.substring(main.length() + 1);
        }
        result.put("", main);
        if (rest != null) {
            char[] chars = rest.toCharArray();
            StringBuilder paramName = new StringBuilder(64);
            StringBuilder paramValue = new StringBuilder(64);
            byte state = 0;
            boolean escaped = false;
            for (char c : chars) {
                switch (state) {
                    case 0:
                        if (c == '=') {
                            log.error("Expected header param name, got '='");
                            state = 99;
                        } else {
                            paramName.setLength(0);
                            paramValue.setLength(0);
                            state = 1;
                            if (c == '=') {
                                if (paramName.length() == 0) {
                                    state = 99;
                                } else {
                                    state = 2;
                                }
                            } else {
                                paramName.append(c);
                            }
                        }
                        break;
                    case 1:
                        if (c == '=') {
                            if (paramName.length() == 0) {
                                state = 99;
                            } else {
                                state = 2;
                            }
                        } else {
                            paramName.append(c);
                        }
                        break;
                    case 2:
                        boolean fallThrough2 = false;
                        switch (c) {
                            case '\t':
                            case ' ':
                                break;
                            case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                                state = 4;
                                break;
                            default:
                                state = 3;
                                fallThrough2 = true;
                                break;
                        }
                        if (!fallThrough2) {
                            break;
                        } else {
                            fallThrough = false;
                            switch (c) {
                                case '\t':
                                case ' ':
                                case ';':
                                    result.put(paramName.toString().trim().toLowerCase(), paramValue.toString().trim());
                                    state = 5;
                                    fallThrough = true;
                                    break;
                                default:
                                    paramValue.append(c);
                                    break;
                            }
                            if (fallThrough) {
                                break;
                            } else {
                                switch (c) {
                                    case '\t':
                                    case ' ':
                                        break;
                                    case ';':
                                        state = 0;
                                        break;
                                    default:
                                        state = 99;
                                        break;
                                }
                            }
                        }
                        break;
                    case 3:
                        fallThrough = false;
                        switch (c) {
                            case '\t':
                            case ' ':
                            case ';':
                                result.put(paramName.toString().trim().toLowerCase(), paramValue.toString().trim());
                                state = 5;
                                fallThrough = true;
                                break;
                            default:
                                paramValue.append(c);
                                break;
                        }
                        if (fallThrough) {
                            break;
                        } else {
                            switch (c) {
                                case '\t':
                                case ' ':
                                    break;
                                case ';':
                                    state = 0;
                                    break;
                                default:
                                    state = 99;
                                    break;
                            }
                        }
                        break;
                    case 4:
                        switch (c) {
                            case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                                if (!escaped) {
                                    result.put(paramName.toString().trim().toLowerCase(), paramValue.toString());
                                    state = 5;
                                } else {
                                    escaped = false;
                                    paramValue.append(c);
                                }
                                break;
                            case '\\':
                                if (escaped) {
                                    paramValue.append('\\');
                                }
                                escaped = !escaped;
                                break;
                            default:
                                if (escaped) {
                                    paramValue.append('\\');
                                }
                                escaped = false;
                                paramValue.append(c);
                                break;
                        }
                        break;
                    case 5:
                        switch (c) {
                            case '\t':
                            case ' ':
                                break;
                            case ';':
                                state = 0;
                                break;
                            default:
                                state = 99;
                                break;
                        }
                        break;
                    case 99:
                        if (c == ';') {
                            state = 0;
                        }
                        break;
                }
            }
            if (state == 3) {
                result.put(paramName.toString().trim().toLowerCase(), paramValue.toString().trim());
            }
        }
        return result;
    }

    public static String createUniqueBoundary() {
        return "-=Part." + Integer.toHexString(nextCounterValue()) + '.' + Long.toHexString(random.nextLong()) + '.' + Long.toHexString(System.currentTimeMillis()) + '.' + Long.toHexString(random.nextLong()) + "=-";
    }

    public static String createUniqueMessageId(String hostName) {
        StringBuilder sb = new StringBuilder("<Mime4j.");
        sb.append(Integer.toHexString(nextCounterValue()));
        sb.append('.');
        sb.append(Long.toHexString(random.nextLong()));
        sb.append('.');
        sb.append(Long.toHexString(System.currentTimeMillis()));
        if (hostName != null) {
            sb.append('@');
            sb.append(hostName);
        }
        sb.append('>');
        return sb.toString();
    }

    public static String formatDate(Date date, TimeZone zone) {
        DateFormat df = RFC822_DATE_FORMAT.get();
        if (zone == null) {
            df.setTimeZone(TimeZone.getDefault());
        } else {
            df.setTimeZone(zone);
        }
        return df.format(date);
    }

    public static String fold(String s, int usedCharacters) {
        int length = s.length();
        if (usedCharacters + length > 76) {
            StringBuilder sb = new StringBuilder();
            int lastLineBreak = -usedCharacters;
            int wspIdx = indexOfWsp(s, 0);
            while (wspIdx != length) {
                int nextWspIdx = indexOfWsp(s, wspIdx + 1);
                if (nextWspIdx - lastLineBreak > 76) {
                    sb.append(s.substring(Math.max(0, lastLineBreak), wspIdx));
                    sb.append(CharsetUtil.CRLF);
                    lastLineBreak = wspIdx;
                }
                wspIdx = nextWspIdx;
            }
            sb.append(s.substring(Math.max(0, lastLineBreak)));
            return sb.toString();
        }
        return s;
    }

    public static String unfold(String s) {
        int length = s.length();
        for (int idx = 0; idx < length; idx++) {
            char c = s.charAt(idx);
            if (c == '\r' || c == '\n') {
                return unfold0(s, idx);
            }
        }
        return s;
    }

    private static String unfold0(String s, int crlfIdx) {
        int length = s.length();
        StringBuilder sb = new StringBuilder(length);
        if (crlfIdx > 0) {
            sb.append(s.substring(0, crlfIdx));
        }
        for (int idx = crlfIdx + 1; idx < length; idx++) {
            char c = s.charAt(idx);
            if (c != '\r' && c != '\n') {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    private static int indexOfWsp(String s, int fromIndex) {
        int len = s.length();
        int index = fromIndex;
        while (index < len) {
            char c = s.charAt(index);
            if (c != ' ' && c != '\t') {
                index++;
            } else {
                return index;
            }
        }
        return len;
    }

    private static synchronized int nextCounterValue() {
        int i;
        i = counter;
        counter = i + 1;
        return i;
    }

    private static final class Rfc822DateFormat extends SimpleDateFormat {
        private static final long serialVersionUID = 1;

        public Rfc822DateFormat() {
            super("EEE, d MMM yyyy HH:mm:ss ", Locale.US);
        }

        @Override // java.text.SimpleDateFormat, java.text.DateFormat
        public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition pos) {
            StringBuffer sb = super.format(date, toAppendTo, pos);
            int zoneMillis = this.calendar.get(15);
            int dstMillis = this.calendar.get(16);
            int minutes = ((zoneMillis + dstMillis) / 1000) / 60;
            if (minutes < 0) {
                sb.append('-');
                minutes = -minutes;
            } else {
                sb.append('+');
            }
            sb.append(String.format("%02d%02d", Integer.valueOf(minutes / 60), Integer.valueOf(minutes % 60)));
            return sb;
        }
    }
}
