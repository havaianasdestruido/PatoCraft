package com.microsoft.xbox.service.model.serialization;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.microsoft.xbox.toolkit.JavaUtil;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCDateConverterGson {
    private static final int NO_MS_STRING_LENGTH = 19;
    private static SimpleDateFormat defaultFormatNoMs = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
    private static SimpleDateFormat defaultFormatMs = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.ENGLISH);
    private static SimpleDateFormat shortDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss", Locale.ENGLISH);
    private static SimpleDateFormat shortDateAlternateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.ENGLISH);

    public static synchronized Date convert(String value) {
        Date localTime = null;
        synchronized (UTCDateConverterGson.class) {
            if (!JavaUtil.isNullOrEmpty(value)) {
                if (value.endsWith("Z")) {
                    value = value.replace("Z", "");
                }
                TimeZone timeZone = null;
                if (value.endsWith("+00:00")) {
                    value = value.replace("+00:00", "");
                } else if (value.endsWith("+01:00")) {
                    value = value.replace("+01:00", "");
                    timeZone = TimeZone.getTimeZone("GMT+01:00");
                } else if (value.contains(".")) {
                    value = value.replaceAll("([.][0-9]{3})[0-9]*$", "$1");
                }
                boolean noMsDate = value.length() == 19;
                if (timeZone == null) {
                    timeZone = TimeZone.getTimeZone("GMT");
                }
                try {
                    if (noMsDate) {
                        defaultFormatNoMs.setTimeZone(timeZone);
                        localTime = defaultFormatNoMs.parse(value);
                    } else {
                        defaultFormatMs.setTimeZone(timeZone);
                        localTime = defaultFormatMs.parse(value);
                    }
                } catch (ParseException e) {
                }
            }
        }
        return localTime;
    }

    public static class UTCDateConverterJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) {
            String raw = json.getAsJsonPrimitive().getAsString();
            return UTCDateConverterGson.convert(raw);
        }
    }

    public static class UTCDateConverterShortDateFormatJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) {
            String raw = json.getAsJsonPrimitive().getAsString();
            TimeZone timeZone = TimeZone.getTimeZone("GMT");
            UTCDateConverterGson.shortDateFormat.setTimeZone(timeZone);
            try {
                return UTCDateConverterGson.shortDateFormat.parse(raw);
            } catch (ParseException e) {
                return null;
            }
        }
    }

    public static class UTCDateConverterShortDateAlternateFormatJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) {
            String raw = json.getAsJsonPrimitive().getAsString();
            Date result = null;
            TimeZone timeZone = TimeZone.getTimeZone("GMT");
            UTCDateConverterGson.shortDateFormat.setTimeZone(timeZone);
            try {
                result = UTCDateConverterGson.shortDateFormat.parse(raw);
            } catch (ParseException e) {
            }
            if (result != null && result.getYear() + 1900 < 2000) {
                UTCDateConverterGson.shortDateAlternateFormat.setTimeZone(timeZone);
                try {
                    Date result2 = UTCDateConverterGson.shortDateAlternateFormat.parse(raw);
                    return result2;
                } catch (ParseException e2) {
                    return result;
                }
            }
            return result;
        }
    }

    public static class UTCRoundtripDateConverterJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) {
            String raw = json.getAsJsonPrimitive().getAsString();
            if (raw.endsWith("Z")) {
                raw = raw.replace("Z", "");
            }
            TimeZone timeZone = null;
            if (0 == 0) {
                timeZone = TimeZone.getTimeZone("GMT");
            }
            UTCDateConverterGson.defaultFormatNoMs.setTimeZone(timeZone);
            try {
                return UTCDateConverterGson.defaultFormatNoMs.parse(raw);
            } catch (ParseException e) {
                return null;
            }
        }
    }
}
