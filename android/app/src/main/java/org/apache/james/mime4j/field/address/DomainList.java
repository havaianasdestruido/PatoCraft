package org.apache.james.mime4j.field.address;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DomainList extends AbstractList<String> implements Serializable {
    private static final long serialVersionUID = 1;
    private final List<String> domains;

    public DomainList(List<String> domains, boolean dontCopy) {
        if (domains != null) {
            this.domains = dontCopy ? domains : new ArrayList(domains);
        } else {
            this.domains = Collections.emptyList();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.domains.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int index) {
        return this.domains.get(index);
    }

    public String toRouteString() {
        StringBuilder sb = new StringBuilder();
        for (String domain : this.domains) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append("@");
            sb.append(domain);
        }
        return sb.toString();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return toRouteString();
    }
}
