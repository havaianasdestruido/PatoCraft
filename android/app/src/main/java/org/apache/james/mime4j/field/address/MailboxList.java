package org.apache.james.mime4j.field.address;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MailboxList extends AbstractList<Mailbox> implements Serializable {
    private static final long serialVersionUID = 1;
    private final List<Mailbox> mailboxes;

    public MailboxList(List<Mailbox> mailboxes, boolean dontCopy) {
        if (mailboxes != null) {
            this.mailboxes = dontCopy ? mailboxes : new ArrayList(mailboxes);
        } else {
            this.mailboxes = Collections.emptyList();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.mailboxes.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public Mailbox get(int index) {
        return this.mailboxes.get(index);
    }

    public void print() {
        for (int i = 0; i < size(); i++) {
            Mailbox mailbox = get(i);
            System.out.println(mailbox.toString());
        }
    }
}
