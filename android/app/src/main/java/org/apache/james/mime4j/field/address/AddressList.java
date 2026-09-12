package org.apache.james.mime4j.field.address;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.io.StringReader;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.james.mime4j.field.address.parser.AddressListParser;
import org.apache.james.mime4j.field.address.parser.ParseException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class AddressList extends AbstractList<Address> implements Serializable {
    private static final long serialVersionUID = 1;
    private final List<? extends Address> addresses;

    public AddressList(List<? extends Address> addresses, boolean dontCopy) {
        if (addresses != null) {
            this.addresses = dontCopy ? addresses : new ArrayList(addresses);
        } else {
            this.addresses = Collections.emptyList();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.addresses.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public Address get(int index) {
        return this.addresses.get(index);
    }

    public MailboxList flatten() {
        boolean groupDetected = false;
        for (Address addr : this.addresses) {
            if (!(addr instanceof Mailbox)) {
                groupDetected = true;
                break;
            }
        }
        if (!groupDetected) {
            return new MailboxList(this.addresses, true);
        }
        List<Mailbox> results = new ArrayList<>();
        for (Address addr2 : this.addresses) {
            addr2.addMailboxesTo(results);
        }
        return new MailboxList(results, false);
    }

    public void print() {
        for (Address addr : this.addresses) {
            System.out.println(addr.toString());
        }
    }

    public static AddressList parse(String rawAddressList) throws ParseException {
        AddressListParser parser = new AddressListParser(new StringReader(rawAddressList));
        return Builder.getInstance().buildAddressList(parser.parseAddressList());
    }

    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        while (true) {
            try {
                System.out.print("> ");
                String line = reader.readLine();
                if (line.length() == 0 || line.toLowerCase().equals("exit") || line.toLowerCase().equals("quit")) {
                    System.out.println("Goodbye.");
                    return;
                } else {
                    AddressList list = parse(line);
                    list.print();
                }
            } catch (Exception e) {
                e.printStackTrace();
                Thread.sleep(300L);
            }
        }
    }
}
