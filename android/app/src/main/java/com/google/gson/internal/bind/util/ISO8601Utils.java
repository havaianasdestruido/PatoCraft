package com.google.gson.internal.bind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean millis) {
        return format(date, millis, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean millis, TimeZone tz) {
        Calendar calendar = new GregorianCalendar(tz, Locale.US);
        calendar.setTime(date);
        int capacity = "yyyy-MM-ddThh:mm:ss".length();
        StringBuilder formatted = new StringBuilder(capacity + (millis ? ".sss".length() : 0) + (tz.getRawOffset() == 0 ? "Z".length() : "+hh:mm".length()));
        padInt(formatted, calendar.get(1), "yyyy".length());
        formatted.append('-');
        padInt(formatted, calendar.get(2) + 1, "MM".length());
        formatted.append('-');
        padInt(formatted, calendar.get(5), "dd".length());
        formatted.append('T');
        padInt(formatted, calendar.get(11), "hh".length());
        formatted.append(':');
        padInt(formatted, calendar.get(12), "mm".length());
        formatted.append(':');
        padInt(formatted, calendar.get(13), "ss".length());
        if (millis) {
            formatted.append('.');
            padInt(formatted, calendar.get(14), "sss".length());
        }
        int offset = tz.getOffset(calendar.getTimeInMillis());
        if (offset != 0) {
            int hours = Math.abs((offset / 60000) / 60);
            int minutes = Math.abs((offset / 60000) % 60);
            formatted.append(offset < 0 ? '-' : '+');
            padInt(formatted, hours, "hh".length());
            formatted.append(':');
            padInt(formatted, minutes, "mm".length());
        } else {
            formatted.append('Z');
        }
        return formatted.toString();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0150  */
    /* JADX WARN: Code duplicated, block: B:51:0x0157  */
    /* JADX WARN: Code duplicated, block: B:53:0x015d  */
    /* JADX WARN: Code duplicated, block: B:84:0x02f1  */
    public static Date parse(String date, ParsePosition pos) throws ParseException {
        Exception fail;
        String input;
        String msg;
        int offset;
        TimeZone timezone;
        char c;
        try {
            int offset2 = pos.getIndex();
            int offset3 = offset2 + 4;
            int year = parseInt(date, offset2, offset3);
            if (checkOffset(date, offset3, '-')) {
                offset3++;
            }
            int offset4 = offset3 + 2;
            int month = parseInt(date, offset3, offset4);
            int offset5 = checkOffset(date, offset4, '-') ? offset4 + 1 : offset4;
            int offset6 = offset5 + 2;
            int day = parseInt(date, offset5, offset6);
            int hour = 0;
            int minutes = 0;
            int seconds = 0;
            int milliseconds = 0;
            boolean hasT = checkOffset(date, offset6, 'T');
            if (!hasT && date.length() <= offset6) {
                Calendar calendar = new GregorianCalendar(year, month - 1, day);
                pos.setIndex(offset6);
                return calendar.getTime();
            }
            if (hasT) {
                int offset7 = offset6 + 1;
                int offset8 = offset7 + 2;
                hour = parseInt(date, offset7, offset8);
                if (checkOffset(date, offset8, ':')) {
                    offset8++;
                }
                int offset9 = offset8 + 2;
                minutes = parseInt(date, offset8, offset9);
                int offset10 = checkOffset(date, offset9, ':') ? offset9 + 1 : offset9;
                if (date.length() <= offset10 || (c = date.charAt(offset10)) == 'Z' || c == '+' || c == '-') {
                    offset6 = offset10;
                } else {
                    offset6 = offset10 + 2;
                    seconds = parseInt(date, offset10, offset6);
                    if (seconds > 59 && seconds < 63) {
                        seconds = 59;
                    }
                    if (checkOffset(date, offset6, '.')) {
                        int offset11 = offset6 + 1;
                        int endOffset = indexOfNonDigit(date, offset11 + 1);
                        int parseEndOffset = Math.min(endOffset, offset11 + 3);
                        int fraction = parseInt(date, offset11, parseEndOffset);
                        switch (parseEndOffset - offset11) {
                            case 1:
                                milliseconds = fraction * 100;
                                break;
                            case 2:
                                milliseconds = fraction * 10;
                                break;
                            default:
                                milliseconds = fraction;
                                break;
                        }
                        offset6 = endOffset;
                    }
                }
            }
            if (date.length() <= offset6) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char timezoneIndicator = date.charAt(offset6);
            if (timezoneIndicator == 'Z') {
                timezone = TIMEZONE_UTC;
                offset = offset6 + 1;
            } else if (timezoneIndicator == '+' || timezoneIndicator == '-') {
                String timezoneOffset = date.substring(offset6);
                offset = offset6 + timezoneOffset.length();
                if ("+0000".equals(timezoneOffset) || "+00:00".equals(timezoneOffset)) {
                    timezone = TIMEZONE_UTC;
                } else {
                    String timezoneId = "GMT" + timezoneOffset;
                    timezone = TimeZone.getTimeZone(timezoneId);
                    String act = timezone.getID();
                    if (!act.equals(timezoneId)) {
                        String cleaned = act.replace(":", "");
                        if (!cleaned.equals(timezoneId)) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + timezoneId + " given, resolves to " + timezone.getID());
                        }
                    }
                }
            } else {
                throw new IndexOutOfBoundsException("Invalid time zone indicator '" + timezoneIndicator + "'");
            }
            Calendar calendar2 = new GregorianCalendar(timezone);
            calendar2.setLenient(false);
            calendar2.set(1, year);
            calendar2.set(2, month - 1);
            calendar2.set(5, day);
            calendar2.set(11, hour);
            calendar2.set(12, minutes);
            calendar2.set(13, seconds);
            calendar2.set(14, milliseconds);
            pos.setIndex(offset);
            return calendar2.getTime();
        } catch (IndexOutOfBoundsException e) {
            fail = e;
            if (date == null) {
                input = null;
            } else {
                input = '\"' + date + "'";
            }
            msg = fail.getMessage();
            if (msg != null || msg.isEmpty()) {
                msg = "(" + fail.getClass().getName() + ")";
            }
            ParseException ex = new ParseException("Failed to parse date [" + input + "]: " + msg, pos.getIndex());
            ex.initCause(fail);
            throw ex;
        } catch (NumberFormatException e2) {
            fail = e2;
            if (date == null) {
                input = null;
            } else {
                input = '\"' + date + "'";
            }
            msg = fail.getMessage();
            if (msg != null) {
                msg = "(" + fail.getClass().getName() + ")";
            } else {
                msg = "(" + fail.getClass().getName() + ")";
            }
            ParseException ex2 = new ParseException("Failed to parse date [" + input + "]: " + msg, pos.getIndex());
            ex2.initCause(fail);
            throw ex2;
        } catch (IllegalArgumentException e3) {
            fail = e3;
            if (date == null) {
                input = null;
            } else {
                input = '\"' + date + "'";
            }
            msg = fail.getMessage();
            if (msg != null) {
                msg = "(" + fail.getClass().getName() + ")";
            } else {
                msg = "(" + fail.getClass().getName() + ")";
            }
            ParseException ex3 = new ParseException("Failed to parse date [" + input + "]: " + msg, pos.getIndex());
            ex3.initCause(fail);
            throw ex3;
        }
    }

    private static boolean checkOffset(String value, int offset, char expected) {
        return offset < value.length() && value.charAt(offset) == expected;
    }

    private static int parseInt(String value, int beginIndex, int endIndex) throws NumberFormatException {
        int i;
        if (beginIndex < 0 || endIndex > value.length() || beginIndex > endIndex) {
            throw new NumberFormatException(value);
        }
        int result = 0;
        if (beginIndex >= endIndex) {
            i = beginIndex;
        } else {
            i = beginIndex + 1;
            int digit = Character.digit(value.charAt(beginIndex), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + value.substring(beginIndex, endIndex));
            }
            result = -digit;
        }
        while (i < endIndex) {
            int i2 = i + 1;
            int digit2 = Character.digit(value.charAt(i), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + value.substring(beginIndex, endIndex));
            }
            result = (result * 10) - digit2;
            i = i2;
        }
        return -result;
    }

    private static void padInt(StringBuilder buffer, int value, int length) {
        String strValue = Integer.toString(value);
        for (int i = length - strValue.length(); i > 0; i--) {
            buffer.append('0');
        }
        buffer.append(strValue);
    }

    private static int indexOfNonDigit(String string, int offset) {
        int i = offset;
        while (i < string.length()) {
            char c = string.charAt(i);
            if (c >= '0' && c <= '9') {
                i++;
            } else {
                return i;
            }
        }
        int i2 = string.length();
        return i2;
    }
}
