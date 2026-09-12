package com.microsoft.xbox.idp.model.serialization;

import android.text.TextUtils;
import android.util.Log;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UTCDateConverter {
    private static final int NO_MS_STRING_LENGTH = 19;
    private static final String TAG = UTCDateConverter.class.getSimpleName();
    private static SimpleDateFormat defaultFormatNoMs = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
    private static SimpleDateFormat defaultFormatMs = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.ENGLISH);
    private static SimpleDateFormat shortDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss", Locale.ENGLISH);
    private static SimpleDateFormat shortDateAlternateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.ENGLISH);

    public static synchronized Date convert(String value) {
        Date localTime = null;
        synchronized (UTCDateConverter.class) {
            if (!TextUtils.isEmpty(value)) {
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
                    Log.e(TAG, e.toString());
                }
            }
        }
        return localTime;
    }

    public static class UTCDateConverterJSONDeserializer implements JsonDeserializer<Date>, JsonSerializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) {
            String raw = json.getAsJsonPrimitive().getAsString();
            return UTCDateConverter.convert(raw);
        }

        @Override // com.google.gson.JsonSerializer
        public JsonElement serialize(Date src, Type typeOfSrc, JsonSerializationContext context) {
            return new JsonPrimitive(UTCDateConverter.defaultFormatNoMs.format(src));
        }
    }

    public static class UTCDateConverterShortDateFormatJSONDeserializer implements JsonDeserializer<Date> {
        @Override // com.google.gson.JsonDeserializer
        public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) {
            String raw = json.getAsJsonPrimitive().getAsString();
            TimeZone timeZone = TimeZone.getTimeZone("GMT");
            UTCDateConverter.shortDateFormat.setTimeZone(timeZone);
            try {
                return UTCDateConverter.shortDateFormat.parse(raw);
            } catch (ParseException e) {
                Log.d(UTCDateConverter.TAG, "failed to parse date " + raw);
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
            UTCDateConverter.shortDateFormat.setTimeZone(timeZone);
            try {
                result = UTCDateConverter.shortDateFormat.parse(raw);
            } catch (ParseException e) {
                Log.d(UTCDateConverter.TAG, "failed to parse short date " + raw);
            }
            if (result != null && result.getYear() + 1900 < 2000) {
                UTCDateConverter.shortDateAlternateFormat.setTimeZone(timeZone);
                try {
                    Date result2 = UTCDateConverter.shortDateAlternateFormat.parse(raw);
                    return result2;
                } catch (ParseException e2) {
                    Log.d(UTCDateConverter.TAG, "failed to parse alternate short date " + raw);
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
            UTCDateConverter.defaultFormatNoMs.setTimeZone(timeZone);
            try {
                return UTCDateConverter.defaultFormatNoMs.parse(raw);
            } catch (ParseException e) {
                Log.d(UTCDateConverter.TAG, "failed to parse date " + raw);
                return null;
            }
        }
    }
}
