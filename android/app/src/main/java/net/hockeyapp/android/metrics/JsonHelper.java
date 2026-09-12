package net.hockeyapp.android.metrics;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.hockeyapp.android.metrics.model.IJsonSerializable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class JsonHelper {
    private static final String[] CONTROL_CHARACTERS = new String[128];
    private static final int CONTROL_CHARACTER_RANGE = 128;

    static {
        for (int i = 0; i <= 31; i++) {
            CONTROL_CHARACTERS[i] = String.format("\\u%04X", Integer.valueOf(i));
        }
        CONTROL_CHARACTERS[34] = "\\\"";
        CONTROL_CHARACTERS[92] = "\\\\";
        CONTROL_CHARACTERS[8] = "\\b";
        CONTROL_CHARACTERS[12] = "\\f";
        CONTROL_CHARACTERS[10] = "\\n";
        CONTROL_CHARACTERS[13] = "\\r";
        CONTROL_CHARACTERS[9] = "\\t";
    }

    private JsonHelper() {
    }

    private static String escapeJSON(String input) {
        StringBuilder builder = new StringBuilder();
        builder.append("\"");
        for (int i = 0; i < input.length(); i++) {
            char charIndex = input.charAt(i);
            if (charIndex < 128) {
                String replacement = CONTROL_CHARACTERS[charIndex];
                if (replacement == null) {
                    builder.append(charIndex);
                } else {
                    builder.append(replacement);
                }
            } else if (charIndex == 8232) {
                builder.append("\\u2028");
            } else if (charIndex == 8233) {
                builder.append("\\u2029");
            } else {
                builder.append(charIndex);
            }
        }
        builder.append("\"");
        return builder.toString();
    }

    public static String convert(Integer value) {
        return Integer.toString(value.intValue());
    }

    public static String convert(Long value) {
        return Long.toString(value.longValue());
    }

    public static String convert(char value) {
        return Character.toString(value);
    }

    public static String convert(Float value) {
        return Float.toString(value.floatValue());
    }

    public static String convert(Double value) {
        return Double.toString(value.doubleValue());
    }

    public static String convert(boolean value) {
        return Boolean.toString(value);
    }

    public static String convert(String value) {
        if (value == null) {
            return "null";
        }
        if (value.length() == 0) {
            return "\"\"";
        }
        return escapeJSON(value);
    }

    public static void writeJsonSerializable(Writer writer, IJsonSerializable value) throws IOException {
        if (value != null) {
            value.serialize(writer);
        }
    }

    public static <T> void writeDictionary(Writer writer, Map<String, T> map) throws IOException {
        if (map == null || map.isEmpty()) {
            writer.write("null");
            return;
        }
        Set<String> keys = map.keySet();
        Iterator<String> iterator = keys.iterator();
        if (iterator.hasNext()) {
            writer.write("{");
            String key = iterator.next();
            T item = map.get(key);
            writer.write("\"" + key + "\"");
            writer.write(":");
            writeItem(writer, item);
            while (iterator.hasNext()) {
                String key2 = iterator.next();
                writer.write(",");
                writer.write("\"" + key2 + "\"");
                writer.write(":");
                T item2 = map.get(key2);
                writeItem(writer, item2);
            }
            writer.write("}");
        }
    }

    public static <T extends IJsonSerializable> void writeList(Writer writer, List<T> list) throws IOException {
        if (list == null || list.isEmpty()) {
            writer.write("null");
            return;
        }
        Iterator<T> iterator = list.iterator();
        if (iterator.hasNext()) {
            writer.write("[");
            IJsonSerializable item = iterator.next();
            item.serialize(writer);
            while (iterator.hasNext()) {
                IJsonSerializable item2 = iterator.next();
                writer.write(",");
                item2.serialize(writer);
            }
            writer.write("]");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void writeItem(Writer writer, T t) throws IOException {
        if (t != 0) {
            if (t instanceof String) {
                writer.write(convert((String) t));
                return;
            }
            if (t instanceof Double) {
                writer.write(convert((Double) t));
                return;
            }
            if (t instanceof Integer) {
                writer.write(convert((Integer) t));
                return;
            } else if (t instanceof Long) {
                writer.write(convert((Long) t));
                return;
            } else {
                if (t instanceof IJsonSerializable) {
                    ((IJsonSerializable) t).serialize(writer);
                    return;
                }
                throw new IOException("Cannot serialize: " + t.toString());
            }
        }
        writer.write("null");
    }
}
