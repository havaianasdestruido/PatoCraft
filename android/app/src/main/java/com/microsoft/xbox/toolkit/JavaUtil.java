package com.microsoft.xbox.toolkit;

import android.graphics.Rect;
import android.text.format.DateUtils;
import android.view.View;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class JavaUtil {
    private static final String HEX_PREFIX = "0x";
    private static final Date MIN_DATE = new Date(100, 1, 1);
    private static final NumberFormat INTEGER_FORMATTER = NumberFormat.getIntegerInstance(Locale.getDefault());
    private static final NumberFormat PERCENT_FORMATTER = NumberFormat.getPercentInstance(Locale.getDefault());

    public static String getShortClassName(Class cls) {
        String name = cls.getName();
        String[] tokens = name.split("\\.");
        return tokens[tokens.length - 1];
    }

    public static boolean stringsEqual(String lhs, String rhs) {
        if ((lhs == null && rhs == null) || lhs == rhs) {
            return true;
        }
        return stringsEqualNonNull(lhs, rhs);
    }

    public static boolean stringsEqualNonNull(String lhs, String rhs) {
        boolean z = false;
        if (lhs == null || rhs == null) {
            return false;
        }
        if (lhs != null && rhs != null) {
            z = true;
        }
        XLEAssert.assertTrue(z);
        return lhs.equals(rhs);
    }

    public static boolean stringsEqualCaseInsensitive(String lhs, String rhs) {
        if (lhs == rhs) {
            return true;
        }
        if (lhs == null || rhs == null) {
            return false;
        }
        XLEAssert.assertTrue((lhs == null || rhs == null) ? false : true);
        return lhs.equalsIgnoreCase(rhs);
    }

    public static boolean stringsEqualNonNullCaseInsensitive(String lhs, String rhs) {
        if (lhs == null || rhs == null) {
            return false;
        }
        if (lhs == rhs) {
            return true;
        }
        XLEAssert.assertTrue((lhs == null || rhs == null) ? false : true);
        return lhs.equalsIgnoreCase(rhs);
    }

    public static boolean tryParseBoolean(String booleanString, boolean defaultValue) {
        try {
            boolean defaultValue2 = Boolean.parseBoolean(booleanString);
            return defaultValue2;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static int tryParseInteger(String integerString, int defaultValue) {
        try {
            int defaultValue2 = Integer.parseInt(integerString);
            return defaultValue2;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static long tryParseLong(String longString, long defaultValue) {
        try {
            long defaultValue2 = Long.parseLong(longString);
            return defaultValue2;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static double tryParseDouble(String doubleString, double defaultValue) {
        try {
            double defaultValue2 = Double.parseDouble(doubleString);
            return defaultValue2;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static String getLocalizedDateString(Date date) {
        try {
            return DateUtils.formatDateTime(XboxTcuiSdk.getApplicationContext(), date.getTime(), 131088);
        } catch (Exception e) {
            return null;
        }
    }

    public static String getTimeStringMMSS(long timeInSeconds) {
        return DateUtils.formatElapsedTime(timeInSeconds);
    }

    public static int parseInteger(String intString) {
        try {
            int value = Integer.parseInt(intString, 10);
            return value;
        } catch (Exception e) {
            return 0;
        }
    }

    private static boolean parseBoolean(String boolString) {
        try {
            boolean value = Boolean.parseBoolean(boolString);
            return value;
        } catch (Exception e) {
            return false;
        }
    }

    public static long parseHexLong(String hexLong) {
        if (hexLong == null) {
            return 0L;
        }
        if (hexLong.startsWith(HEX_PREFIX)) {
            return parseHexLongExpectHex(hexLong);
        }
        try {
            long value = Long.parseLong(hexLong, 16);
            return value;
        } catch (Exception e) {
            return 0L;
        }
    }

    private static long parseHexLongExpectHex(String hexLong) {
        XLEAssert.assertTrue(hexLong.startsWith(HEX_PREFIX));
        try {
            long value = Long.parseLong(hexLong.substring(HEX_PREFIX.length()), 16);
            return value;
        } catch (Exception e) {
            return 0L;
        }
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isTouchPointInsideView(float touchRawX, float touchRawY, View view) {
        int[] coordinates = new int[2];
        view.getLocationOnScreen(coordinates);
        Rect rect = new Rect(coordinates[0], coordinates[1], coordinates[0] + view.getWidth(), coordinates[1] + view.getHeight());
        return rect.contains((int) touchRawX, (int) touchRawY);
    }

    public static String urlEncode(String src) {
        try {
            return URLEncoder.encode(src, HttpURLConnectionBuilder.DEFAULT_CHARSET);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public static String urlDecode(String src) {
        try {
            return URLDecoder.decode(src, HttpURLConnectionBuilder.DEFAULT_CHARSET);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public static String stringToUpper(String value) {
        if (value == null) {
            return null;
        }
        return value.toUpperCase();
    }

    public static String stringToLower(String value) {
        if (value == null) {
            return null;
        }
        return value.toLowerCase();
    }

    public static boolean containsFlag(int value, int flagToCheck) {
        return (value & flagToCheck) == flagToCheck;
    }

    public static String concatenateStringsWithDelimiter(String str1, String str2, String str3, String delimiter) {
        return concatenateStringsWithDelimiter(str1, str2, str3, delimiter, true);
    }

    public static String concatenateStringsWithDelimiter(String str1, String str2, String str3, String delimiter, boolean addSpaceBeforeDelimiter) {
        String delimiter2 = (addSpaceBeforeDelimiter ? " " : "") + delimiter + " ";
        StringBuilder sb = new StringBuilder();
        if (!isNullOrEmpty(str1)) {
            sb.append(str1);
        }
        if (!isNullOrEmpty(str2)) {
            if (sb.length() > 0) {
                sb.append(delimiter2);
            }
            sb.append(str2);
        }
        if (!isNullOrEmpty(str3)) {
            if (sb.length() > 0) {
                sb.append(delimiter2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public static String concatenateStringsWithDelimiter(String delimiter, boolean addSpaceBeforeDelimiter, String... strs) {
        String delimiter2 = (addSpaceBeforeDelimiter ? " " : "") + delimiter + " ";
        StringBuilder sb = new StringBuilder();
        if (strs.length == 0) {
            return "";
        }
        for (int idx = 0; idx < strs.length; idx++) {
            if (!isNullOrEmpty(strs[idx])) {
                if (sb.length() > 0) {
                    sb.append(delimiter2);
                }
                sb.append(strs[idx]);
            }
        }
        return sb.toString();
    }

    public static String concatenateUrlWithLinkAndParam(String link, String param, String tag) {
        StringBuffer buffer = new StringBuffer();
        if (!isNullOrEmpty(link)) {
            buffer.append(link);
        }
        if (!isNullOrEmpty(param)) {
            if (buffer.length() > 0) {
                buffer.append(tag);
            }
            buffer.append(param);
        }
        return buffer.toString();
    }

    public static Date JSONDateToJavaDate(String input) {
        if (isNullOrEmpty(input)) {
            return null;
        }
        XLEAssert.assertTrue(input.substring(0, 6).equals("/Date("));
        int endidx = input.length();
        if (input.substring(input.length() - 7, input.length()).equals("+0000)/")) {
            endidx = input.length() - 7;
        } else if (input.substring(input.length() - 2, input.length()).equals(")/")) {
            endidx = input.length() - 2;
        } else {
            XLEAssert.assertTrue(false);
        }
        String millistr = input.substring(6, endidx);
        return new Date(Long.parseLong(millistr));
    }

    public static String JavaDateToJSONDate(Date javadate) {
        Calendar calendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        calendar.setTime(javadate);
        long ms = calendar.getTimeInMillis();
        String rv = String.format("/Date(%d)/", Long.valueOf(ms));
        return rv;
    }

    public static <T> List<T> listIteratorToList(ListIterator<T> i) {
        ArrayList<T> rv = new ArrayList<>();
        while (i != null && i.hasNext()) {
            rv.add(i.next());
        }
        return rv;
    }

    public static String pluralize(int count, String zeroString, String oneString, String nString) {
        switch (count) {
            case 0:
                return zeroString;
            case 1:
                return oneString;
            default:
                String zeroString2 = String.format(nString, Integer.valueOf(count));
                return zeroString2;
        }
    }

    public static int randInRange(Random r, int min, int max) {
        XLEAssert.assertTrue(max >= min);
        return r.nextInt(max - min) + min;
    }

    public static <T> ArrayList<T> sublistShuffle(ArrayList<T> srcarray, int dstsize) {
        Random r = new Random();
        ArrayList<T> rv = new ArrayList<>(dstsize);
        if (srcarray != null && srcarray.size() != 0) {
            if (srcarray.size() >= dstsize) {
                for (int i = 0; i < dstsize; i++) {
                    int swapi = randInRange(r, i, srcarray.size());
                    T tmp = srcarray.get(i);
                    srcarray.set(i, srcarray.get(swapi));
                    srcarray.set(swapi, tmp);
                    rv.add(srcarray.get(i));
                }
            } else {
                XLEAssert.assertTrue(srcarray.size() > 0 && srcarray.size() < dstsize);
                for (int i2 = 0; i2 < dstsize; i2++) {
                    int index = r.nextInt(srcarray.size());
                    rv.add(srcarray.get(index));
                }
            }
            XLEAssert.assertTrue(rv.size() == dstsize);
        }
        return rv;
    }

    public static String formatInteger(int i) {
        return INTEGER_FORMATTER.format(i);
    }

    public static String formatPercent(float f) {
        XLEAssert.assertTrue(f + " is not between 0 and 1", f >= 0.0f && f <= 1.0f);
        return PERCENT_FORMATTER.format(f);
    }

    public static void sleepDebug(long ms) {
    }

    public static int[] concatIntArrays(int[]... arrays) {
        if (arrays == null) {
            return null;
        }
        int finalSize = 0;
        for (int[] iArr : arrays) {
            finalSize += iArr.length;
        }
        int[] destArray = new int[finalSize];
        int destPos = 0;
        for (int[] a : arrays) {
            System.arraycopy(a, 0, destArray, destPos, a.length);
            destPos += a.length;
        }
        return destArray;
    }

    public static <T> boolean DeepCompareArrayList(ArrayList<T> one, ArrayList<T> two) {
        if (one == two) {
            return true;
        }
        if (one == null) {
            return two == null;
        }
        if (two != null && one.size() == two.size()) {
            for (int i = 0; i < one.size(); i++) {
                if (!one.get(i).equals(two.get(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static String surroundInQuotes(String str) {
        return "\"" + str + "\"";
    }

    public static String EnsureEncode(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        try {
            String decoded = URLDecoder.decode(str, HttpURLConnectionBuilder.DEFAULT_CHARSET);
            String encoded = URLEncoder.encode(decoded, HttpURLConnectionBuilder.DEFAULT_CHARSET);
            return encoded;
        } catch (UnsupportedEncodingException e) {
            return str;
        }
    }

    public static <T> boolean move(ArrayList<T> data, int fromPosition, int toPosition) {
        if (data == null || !isPositionInRange(data, fromPosition) || !isPositionInRange(data, toPosition)) {
            return false;
        }
        T dataFrom = data.get(fromPosition);
        if (fromPosition < toPosition) {
            for (int i = fromPosition; i < toPosition; i++) {
                data.set(i, data.get(i + 1));
            }
        } else {
            for (int i2 = fromPosition; i2 > toPosition; i2--) {
                data.set(i2, data.get(i2 - 1));
            }
        }
        data.set(toPosition, dataFrom);
        return true;
    }

    private static <T> boolean isPositionInRange(ArrayList<T> data, int position) {
        return position >= 0 && position < data.size();
    }

    public static String getCurrentStackTraceAsString() {
        StringBuilder builder = new StringBuilder();
        StackTraceElement[] elements = Thread.currentThread().getStackTrace();
        if (elements != null) {
            for (StackTraceElement elem : elements) {
                builder.append("\n\n \t " + elem.toString());
            }
        }
        return builder.toString();
    }

    public static Date convertToUTC(Date local) {
        if (local == null) {
            return null;
        }
        TimeZone tz = TimeZone.getDefault();
        Calendar cal = Calendar.getInstance();
        cal.setTime(local);
        cal.add(14, -tz.getOffset(local.getTime()));
        Date utc = cal.getTime();
        return utc;
    }

    public static boolean setFieldValue(Object to, String field, Object value) {
        try {
            Field f = to.getClass().getDeclaredField(field);
            f.setAccessible(true);
            f.set(to, value);
            return true;
        } catch (IllegalAccessException e) {
            return false;
        } catch (NoSuchFieldException e2) {
            return false;
        }
    }
}
