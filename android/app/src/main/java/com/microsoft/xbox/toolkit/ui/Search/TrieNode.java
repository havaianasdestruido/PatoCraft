package com.microsoft.xbox.toolkit.ui.Search;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class TrieNode {
    public boolean IsWord;
    public Hashtable<Character, TrieNode> MoreNodes = new Hashtable<>(26);
    public List<String> Words = new ArrayList();

    public void accept(ITrieNodeVisitor visitor) {
        if (visitor != null) {
            visitor.visit(this);
        }
        if (this.MoreNodes != null) {
            Enumeration<Character> keys = this.MoreNodes.keys();
            while (keys.hasMoreElements()) {
                char key = keys.nextElement().charValue();
                this.MoreNodes.get(Character.valueOf(key)).accept(visitor);
            }
        }
    }
}
