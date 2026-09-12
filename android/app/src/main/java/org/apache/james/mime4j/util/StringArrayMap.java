package org.apache.james.mime4j.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class StringArrayMap implements Serializable {
    private static final long serialVersionUID = -5833051164281786907L;
    private final Map<String, Object> map = new HashMap();

    public static String asString(Object pValue) {
        if (pValue == null) {
            return null;
        }
        if (pValue instanceof String) {
            return (String) pValue;
        }
        if (pValue instanceof String[]) {
            return ((String[]) pValue)[0];
        }
        if (pValue instanceof List) {
            return (String) ((List) pValue).get(0);
        }
        throw new IllegalStateException("Invalid parameter class: " + pValue.getClass().getName());
    }

    public static String[] asStringArray(Object pValue) {
        if (pValue == null) {
            return null;
        }
        if (pValue instanceof String) {
            return new String[]{(String) pValue};
        }
        if (pValue instanceof String[]) {
            return (String[]) pValue;
        }
        if (pValue instanceof List) {
            List<?> l = (List) pValue;
            return (String[]) l.toArray(new String[l.size()]);
        }
        throw new IllegalStateException("Invalid parameter class: " + pValue.getClass().getName());
    }

    public static Enumeration<String> asStringEnum(final Object pValue) {
        if (pValue == null) {
            return null;
        }
        if (pValue instanceof String) {
            return new Enumeration<String>() { // from class: org.apache.james.mime4j.util.StringArrayMap.1
                private Object value;

                {
                    this.value = pValue;
                }

                @Override // java.util.Enumeration
                public boolean hasMoreElements() {
                    return this.value != null;
                }

                @Override // java.util.Enumeration
                public String nextElement() {
                    if (this.value == null) {
                        throw new NoSuchElementException();
                    }
                    String s = (String) this.value;
                    this.value = null;
                    return s;
                }
            };
        }
        if (pValue instanceof String[]) {
            final String[] values = (String[]) pValue;
            return new Enumeration<String>() { // from class: org.apache.james.mime4j.util.StringArrayMap.2
                private int offset;

                @Override // java.util.Enumeration
                public boolean hasMoreElements() {
                    return this.offset < values.length;
                }

                @Override // java.util.Enumeration
                public String nextElement() {
                    if (this.offset >= values.length) {
                        throw new NoSuchElementException();
                    }
                    String[] strArr = values;
                    int i = this.offset;
                    this.offset = i + 1;
                    return strArr[i];
                }
            };
        }
        if (pValue instanceof List) {
            List<String> stringList = (List) pValue;
            return Collections.enumeration(stringList);
        }
        throw new IllegalStateException("Invalid parameter class: " + pValue.getClass().getName());
    }

    public static Map<String, String[]> asMap(Map<String, Object> pMap) {
        Map<String, String[]> result = new HashMap<>(pMap.size());
        for (Map.Entry<String, Object> entry : pMap.entrySet()) {
            String[] value = asStringArray(entry.getValue());
            result.put(entry.getKey(), value);
        }
        return Collections.unmodifiableMap(result);
    }

    protected void addMapValue(Map<String, Object> pMap, String pName, String pValue) {
        Object o = pMap.get(pName);
        if (o == null) {
            o = pValue;
        } else if (o instanceof String) {
            List<Object> list = new ArrayList<>();
            list.add(o);
            list.add(pValue);
            o = list;
        } else if (o instanceof List) {
            List<String> stringList = (List) o;
            stringList.add(pValue);
        } else if (o instanceof String[]) {
            List<String> list2 = new ArrayList<>();
            String[] arr = (String[]) o;
            for (String str : arr) {
                list2.add(str);
            }
            list2.add(pValue);
            o = list2;
        } else {
            throw new IllegalStateException("Invalid object type: " + o.getClass().getName());
        }
        pMap.put(pName, o);
    }

    protected String convertName(String pName) {
        return pName.toLowerCase();
    }

    public String getValue(String pName) {
        return asString(this.map.get(convertName(pName)));
    }

    public String[] getValues(String pName) {
        return asStringArray(this.map.get(convertName(pName)));
    }

    public Enumeration<String> getValueEnum(String pName) {
        return asStringEnum(this.map.get(convertName(pName)));
    }

    public Enumeration<String> getNames() {
        return Collections.enumeration(this.map.keySet());
    }

    public Map<String, String[]> getMap() {
        return asMap(this.map);
    }

    public void addValue(String pName, String pValue) {
        addMapValue(this.map, convertName(pName), pValue);
    }

    public String[] getNameArray() {
        Collection<String> c = this.map.keySet();
        return (String[]) c.toArray(new String[c.size()]);
    }
}
