package org.apache.james.mime4j.codec;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DecoderUtil {
    private static Log log = LogFactory.getLog(DecoderUtil.class);

    public static byte[] decodeBaseQuotedPrintable(String s) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {
            byte[] bytes = s.getBytes("US-ASCII");
            QuotedPrintableInputStream is = new QuotedPrintableInputStream(new ByteArrayInputStream(bytes));
            while (true) {
                int b = is.read();
                if (b == -1) {
                    break;
                }
                baos.write(b);
            }
        } catch (IOException e) {
            log.error(e);
        }
        return baos.toByteArray();
    }

    public static byte[] decodeBase64(String s) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {
            byte[] bytes = s.getBytes("US-ASCII");
            Base64InputStream is = new Base64InputStream(new ByteArrayInputStream(bytes));
            while (true) {
                int b = is.read();
                if (b == -1) {
                    break;
                }
                baos.write(b);
            }
        } catch (IOException e) {
            log.error(e);
        }
        return baos.toByteArray();
    }

    public static String decodeB(String encodedWord, String charset) throws UnsupportedEncodingException {
        return new String(decodeBase64(encodedWord), charset);
    }

    public static String decodeQ(String encodedWord, String charset) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder(128);
        for (int i = 0; i < encodedWord.length(); i++) {
            char c = encodedWord.charAt(i);
            if (c == '_') {
                sb.append("=20");
            } else {
                sb.append(c);
            }
        }
        return new String(decodeBaseQuotedPrintable(sb.toString()), charset);
    }

    public static String decodeEncodedWords(String body) {
        int previousEnd = 0;
        boolean previousWasEncoded = false;
        StringBuilder sb = new StringBuilder();
        while (true) {
            int begin = body.indexOf("=?", previousEnd);
            int end = begin == -1 ? -1 : body.indexOf("?=", begin + 2);
            if (end == -1) {
                break;
            }
            int end2 = end + 2;
            String sep = body.substring(previousEnd, begin);
            String decoded = decodeEncodedWord(body, begin, end2);
            if (decoded == null) {
                sb.append(sep);
                sb.append(body.substring(begin, end2));
            } else {
                if (!previousWasEncoded || !CharsetUtil.isWhitespace(sep)) {
                    sb.append(sep);
                }
                sb.append(decoded);
            }
            previousEnd = end2;
            previousWasEncoded = decoded != null;
        }
        if (previousEnd != 0) {
            sb.append(body.substring(previousEnd));
            return sb.toString();
        }
        return body;
    }

    private static String decodeEncodedWord(String body, int begin, int end) {
        int qm2;
        String strDecodeB = null;
        int qm1 = body.indexOf(63, begin + 2);
        if (qm1 != end - 2 && (qm2 = body.indexOf(63, qm1 + 1)) != end - 2) {
            String mimeCharset = body.substring(begin + 2, qm1);
            String encoding = body.substring(qm1 + 1, qm2);
            String encodedText = body.substring(qm2 + 1, end - 2);
            String charset = CharsetUtil.toJavaCharset(mimeCharset);
            if (charset == null) {
                if (log.isWarnEnabled()) {
                    log.warn("MIME charset '" + mimeCharset + "' in encoded word '" + body.substring(begin, end) + "' doesn't have a corresponding Java charset");
                }
            } else if (!CharsetUtil.isDecodingSupported(charset)) {
                if (log.isWarnEnabled()) {
                    log.warn("Current JDK doesn't support decoding of charset '" + charset + "' (MIME charset '" + mimeCharset + "' in encoded word '" + body.substring(begin, end) + "')");
                }
            } else if (encodedText.length() == 0) {
                if (log.isWarnEnabled()) {
                    log.warn("Missing encoded text in encoded word: '" + body.substring(begin, end) + "'");
                }
            } else {
                try {
                    if (encoding.equalsIgnoreCase("Q")) {
                        strDecodeB = decodeQ(encodedText, charset);
                    } else if (encoding.equalsIgnoreCase("B")) {
                        strDecodeB = decodeB(encodedText, charset);
                    } else if (log.isWarnEnabled()) {
                        log.warn("Warning: Unknown encoding in encoded word '" + body.substring(begin, end) + "'");
                    }
                } catch (UnsupportedEncodingException e) {
                    if (log.isWarnEnabled()) {
                        log.warn("Unsupported encoding in encoded word '" + body.substring(begin, end) + "'", e);
                    }
                } catch (RuntimeException e2) {
                    if (log.isWarnEnabled()) {
                        log.warn("Could not decode encoded word '" + body.substring(begin, end) + "'", e2);
                    }
                }
            }
        }
        return strDecodeB;
    }
}
