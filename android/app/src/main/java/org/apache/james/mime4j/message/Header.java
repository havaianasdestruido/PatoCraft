package org.apache.james.mime4j.message;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.MimeIOException;
import org.apache.james.mime4j.parser.AbstractContentHandler;
import org.apache.james.mime4j.parser.Field;
import org.apache.james.mime4j.parser.MimeStreamParser;
import org.apache.james.mime4j.util.CharsetUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Header implements Iterable<Field> {
    private List<Field> fields = new LinkedList();
    private Map<String, List<Field>> fieldMap = new HashMap();

    public Header() {
    }

    public Header(Header other) {
        for (Field otherField : other.fields) {
            addField(otherField);
        }
    }

    public Header(InputStream is) throws IOException {
        final MimeStreamParser parser = new MimeStreamParser();
        parser.setContentHandler(new AbstractContentHandler() { // from class: org.apache.james.mime4j.message.Header.1
            @Override // org.apache.james.mime4j.parser.AbstractContentHandler, org.apache.james.mime4j.parser.ContentHandler
            public void endHeader() {
                parser.stop();
            }

            @Override // org.apache.james.mime4j.parser.AbstractContentHandler, org.apache.james.mime4j.parser.ContentHandler
            public void field(Field field) throws MimeException {
                Header.this.addField(field);
            }
        });
        try {
            parser.parse(is);
        } catch (MimeException ex) {
            throw new MimeIOException(ex);
        }
    }

    public void addField(Field field) {
        List<Field> values = this.fieldMap.get(field.getName().toLowerCase());
        if (values == null) {
            values = new LinkedList<>();
            this.fieldMap.put(field.getName().toLowerCase(), values);
        }
        values.add(field);
        this.fields.add(field);
    }

    public List<Field> getFields() {
        return Collections.unmodifiableList(this.fields);
    }

    public Field getField(String name) {
        List<Field> l = this.fieldMap.get(name.toLowerCase());
        if (l == null || l.isEmpty()) {
            return null;
        }
        return l.get(0);
    }

    public List<Field> getFields(String name) {
        String lowerCaseName = name.toLowerCase();
        List<Field> l = this.fieldMap.get(lowerCaseName);
        if (l == null || l.isEmpty()) {
            List<Field> results = Collections.emptyList();
            return results;
        }
        List<Field> results2 = Collections.unmodifiableList(l);
        return results2;
    }

    @Override // java.lang.Iterable
    public Iterator<Field> iterator() {
        return Collections.unmodifiableList(this.fields).iterator();
    }

    public int removeFields(String name) {
        String lowerCaseName = name.toLowerCase();
        List<Field> removed = this.fieldMap.remove(lowerCaseName);
        if (removed == null || removed.isEmpty()) {
            return 0;
        }
        Iterator<Field> iterator = this.fields.iterator();
        while (iterator.hasNext()) {
            Field field = iterator.next();
            if (field.getName().equalsIgnoreCase(name)) {
                iterator.remove();
            }
        }
        return removed.size();
    }

    public void setField(Field field) {
        String lowerCaseName = field.getName().toLowerCase();
        List<Field> l = this.fieldMap.get(lowerCaseName);
        if (l == null || l.isEmpty()) {
            addField(field);
            return;
        }
        l.clear();
        l.add(field);
        int firstOccurrence = -1;
        int index = 0;
        Iterator<Field> iterator = this.fields.iterator();
        while (iterator.hasNext()) {
            Field f = iterator.next();
            if (f.getName().equalsIgnoreCase(field.getName())) {
                iterator.remove();
                if (firstOccurrence == -1) {
                    firstOccurrence = index;
                }
            }
            index++;
        }
        this.fields.add(firstOccurrence, field);
    }

    public String toString() {
        StringBuilder str = new StringBuilder(128);
        for (Field field : this.fields) {
            str.append(field.toString());
            str.append(CharsetUtil.CRLF);
        }
        return str.toString();
    }
}
