package org.apache.james.mime4j.codec;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.BitSet;
import java.util.Locale;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class EncoderUtil {
    private static final char BASE64_PAD = '=';
    private static final int ENCODED_WORD_MAX_LENGTH = 75;
    private static final String ENC_WORD_PREFIX = "=?";
    private static final String ENC_WORD_SUFFIX = "?=";
    private static final int MAX_USED_CHARACTERS = 50;
    private static final byte[] BASE64_TABLE = Base64OutputStream.BASE64_TABLE;
    private static final BitSet Q_REGULAR_CHARS = initChars("=_?");
    private static final BitSet Q_RESTRICTED_CHARS = initChars("=_?\"#$%&'(),.:;<>@[\\]^`{|}~");
    private static final BitSet TOKEN_CHARS = initChars("()<>@,;:\\\"/[]?=");
    private static final BitSet ATEXT_CHARS = initChars("()<>@.,;:\\\"[]");

    public enum Encoding {
        B,
        Q
    }

    public enum Usage {
        TEXT_TOKEN,
        WORD_ENTITY
    }

    private static BitSet initChars(String specials) {
        BitSet bs = new BitSet(128);
        for (char ch = '!'; ch < 127; ch = (char) (ch + 1)) {
            if (specials.indexOf(ch) == -1) {
                bs.set(ch);
            }
        }
        return bs;
    }

    private EncoderUtil() {
    }

    public static String encodeAddressDisplayName(String displayName) {
        if (!isAtomPhrase(displayName)) {
            if (hasToBeEncoded(displayName, 0)) {
                return encodeEncodedWord(displayName, Usage.WORD_ENTITY);
            }
            return quote(displayName);
        }
        return displayName;
    }

    public static String encodeAddressLocalPart(String localPart) {
        return isDotAtomText(localPart) ? localPart : quote(localPart);
    }

    public static String encodeHeaderParameter(String name, String value) {
        String name2 = name.toLowerCase(Locale.US);
        return isToken(value) ? name2 + "=" + value : name2 + "=" + quote(value);
    }

    public static String encodeIfNecessary(String text, Usage usage, int usedCharacters) {
        if (hasToBeEncoded(text, usedCharacters)) {
            return encodeEncodedWord(text, usage, usedCharacters);
        }
        return text;
    }

    public static boolean hasToBeEncoded(String text, int usedCharacters) {
        if (text == null) {
            throw new IllegalArgumentException();
        }
        if (usedCharacters < 0 || usedCharacters > 50) {
            throw new IllegalArgumentException();
        }
        int nonWhiteSpaceCount = usedCharacters;
        for (int idx = 0; idx < text.length(); idx++) {
            char ch = text.charAt(idx);
            if (ch == '\t' || ch == ' ') {
                nonWhiteSpaceCount = 0;
            } else {
                nonWhiteSpaceCount++;
                if (nonWhiteSpaceCount > 77 || ch < ' ' || ch >= 127) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String encodeEncodedWord(String text, Usage usage) {
        return encodeEncodedWord(text, usage, 0, null, null);
    }

    public static String encodeEncodedWord(String text, Usage usage, int usedCharacters) {
        return encodeEncodedWord(text, usage, usedCharacters, null, null);
    }

    public static String encodeEncodedWord(String text, Usage usage, int usedCharacters, Charset charset, Encoding encoding) {
        if (text == null) {
            throw new IllegalArgumentException();
        }
        if (usedCharacters < 0 || usedCharacters > 50) {
            throw new IllegalArgumentException();
        }
        if (charset == null) {
            charset = determineCharset(text);
        }
        String mimeCharset = CharsetUtil.toMimeCharset(charset.name());
        if (mimeCharset == null) {
            throw new IllegalArgumentException("Unsupported charset");
        }
        byte[] bytes = encode(text, charset);
        if (encoding == null) {
            encoding = determineEncoding(bytes, usage);
        }
        if (encoding == Encoding.B) {
            String prefix = ENC_WORD_PREFIX + mimeCharset + "?B?";
            return encodeB(prefix, text, usedCharacters, charset, bytes);
        }
        String prefix2 = ENC_WORD_PREFIX + mimeCharset + "?Q?";
        return encodeQ(prefix2, text, usage, usedCharacters, charset, bytes);
    }

    public static String encodeB(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        int idx = 0;
        int end = bytes.length;
        while (idx < end - 2) {
            int data = ((bytes[idx] & 255) << 16) | ((bytes[idx + 1] & 255) << 8) | (bytes[idx + 2] & 255);
            sb.append((char) BASE64_TABLE[(data >> 18) & 63]);
            sb.append((char) BASE64_TABLE[(data >> 12) & 63]);
            sb.append((char) BASE64_TABLE[(data >> 6) & 63]);
            sb.append((char) BASE64_TABLE[data & 63]);
            idx += 3;
        }
        if (idx == end - 2) {
            int data2 = ((bytes[idx] & 255) << 16) | ((bytes[idx + 1] & 255) << 8);
            sb.append((char) BASE64_TABLE[(data2 >> 18) & 63]);
            sb.append((char) BASE64_TABLE[(data2 >> 12) & 63]);
            sb.append((char) BASE64_TABLE[(data2 >> 6) & 63]);
            sb.append(BASE64_PAD);
        } else if (idx == end - 1) {
            int data3 = (bytes[idx] & 255) << 16;
            sb.append((char) BASE64_TABLE[(data3 >> 18) & 63]);
            sb.append((char) BASE64_TABLE[(data3 >> 12) & 63]);
            sb.append(BASE64_PAD);
            sb.append(BASE64_PAD);
        }
        return sb.toString();
    }

    public static String encodeQ(byte[] bytes, Usage usage) {
        BitSet qChars = usage == Usage.TEXT_TOKEN ? Q_REGULAR_CHARS : Q_RESTRICTED_CHARS;
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            int v = b & 255;
            if (v == 32) {
                sb.append('_');
            } else if (!qChars.get(v)) {
                sb.append(BASE64_PAD);
                sb.append(hexDigit(v >>> 4));
                sb.append(hexDigit(v & 15));
            } else {
                sb.append((char) v);
            }
        }
        return sb.toString();
    }

    public static boolean isToken(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int idx = 0; idx < length; idx++) {
            char ch = str.charAt(idx);
            if (!TOKEN_CHARS.get(ch)) {
                return false;
            }
        }
        return true;
    }

    private static boolean isAtomPhrase(String str) {
        boolean containsAText = false;
        int length = str.length();
        for (int idx = 0; idx < length; idx++) {
            char ch = str.charAt(idx);
            if (ATEXT_CHARS.get(ch)) {
                containsAText = true;
            } else if (!CharsetUtil.isWhitespace(ch)) {
                return false;
            }
        }
        return containsAText;
    }

    private static boolean isDotAtomText(String str) {
        char prev = '.';
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int idx = 0; idx < length; idx++) {
            char ch = str.charAt(idx);
            if (ch == '.') {
                if (prev == '.' || idx == length - 1) {
                    return false;
                }
            } else if (!ATEXT_CHARS.get(ch)) {
                return false;
            }
            prev = ch;
        }
        return true;
    }

    private static String quote(String str) {
        String escaped = str.replaceAll("[\\\\\"]", "\\\\$0");
        return "\"" + escaped + "\"";
    }

    private static String encodeB(String prefix, String text, int usedCharacters, Charset charset, byte[] bytes) {
        int encodedLength = bEncodedLength(bytes);
        int totalLength = prefix.length() + encodedLength + ENC_WORD_SUFFIX.length();
        if (totalLength <= 75 - usedCharacters) {
            return prefix + encodeB(bytes) + ENC_WORD_SUFFIX;
        }
        String part1 = text.substring(0, text.length() / 2);
        byte[] bytes1 = encode(part1, charset);
        String word1 = encodeB(prefix, part1, usedCharacters, charset, bytes1);
        String part2 = text.substring(text.length() / 2);
        byte[] bytes2 = encode(part2, charset);
        String word2 = encodeB(prefix, part2, 0, charset, bytes2);
        return word1 + " " + word2;
    }

    private static int bEncodedLength(byte[] bytes) {
        return ((bytes.length + 2) / 3) * 4;
    }

    private static String encodeQ(String prefix, String text, Usage usage, int usedCharacters, Charset charset, byte[] bytes) {
        int encodedLength = qEncodedLength(bytes, usage);
        int totalLength = prefix.length() + encodedLength + ENC_WORD_SUFFIX.length();
        if (totalLength <= 75 - usedCharacters) {
            return prefix + encodeQ(bytes, usage) + ENC_WORD_SUFFIX;
        }
        String part1 = text.substring(0, text.length() / 2);
        byte[] bytes1 = encode(part1, charset);
        String word1 = encodeQ(prefix, part1, usage, usedCharacters, charset, bytes1);
        String part2 = text.substring(text.length() / 2);
        byte[] bytes2 = encode(part2, charset);
        String word2 = encodeQ(prefix, part2, usage, 0, charset, bytes2);
        return word1 + " " + word2;
    }

    private static int qEncodedLength(byte[] bytes, Usage usage) {
        BitSet qChars = usage == Usage.TEXT_TOKEN ? Q_REGULAR_CHARS : Q_RESTRICTED_CHARS;
        int count = 0;
        for (byte b : bytes) {
            int v = b & 255;
            if (v == 32) {
                count++;
            } else if (!qChars.get(v)) {
                count += 3;
            } else {
                count++;
            }
        }
        return count;
    }

    private static byte[] encode(String text, Charset charset) {
        ByteBuffer buffer = charset.encode(text);
        byte[] bytes = new byte[buffer.limit()];
        buffer.get(bytes);
        return bytes;
    }

    private static Charset determineCharset(String text) {
        boolean ascii = true;
        int len = text.length();
        for (int index = 0; index < len; index++) {
            char ch = text.charAt(index);
            if (ch > 255) {
                return CharsetUtil.UTF_8;
            }
            if (ch > 127) {
                ascii = false;
            }
        }
        return ascii ? CharsetUtil.US_ASCII : CharsetUtil.ISO_8859_1;
    }

    private static Encoding determineEncoding(byte[] bytes, Usage usage) {
        if (bytes.length == 0) {
            return Encoding.Q;
        }
        BitSet qChars = usage == Usage.TEXT_TOKEN ? Q_REGULAR_CHARS : Q_RESTRICTED_CHARS;
        int qEncoded = 0;
        for (byte b : bytes) {
            int v = b & 255;
            if (v != 32 && !qChars.get(v)) {
                qEncoded++;
            }
        }
        int percentage = (qEncoded * 100) / bytes.length;
        return percentage > 30 ? Encoding.B : Encoding.Q;
    }

    private static char hexDigit(int i) {
        return i < 10 ? (char) (i + 48) : (char) ((i - 10) + 65);
    }
}
