package org.simpleframework.xml.stream;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
class OutputStack extends ArrayList<OutputNode> {
    private final Set active;

    public OutputStack(Set active) {
        this.active = active;
    }

    public OutputNode pop() {
        int size = size();
        if (size <= 0) {
            return null;
        }
        return purge(size - 1);
    }

    public OutputNode top() {
        int size = size();
        if (size <= 0) {
            return null;
        }
        return get(size - 1);
    }

    public OutputNode bottom() {
        int size = size();
        if (size <= 0) {
            return null;
        }
        return get(0);
    }

    public OutputNode push(OutputNode value) {
        this.active.add(value);
        add(value);
        return value;
    }

    public OutputNode purge(int index) {
        OutputNode node = remove(index);
        if (node != null) {
            this.active.remove(node);
        }
        return node;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<OutputNode> iterator() {
        return new Sequence();
    }

    private class Sequence implements Iterator<OutputNode> {
        private int cursor;

        public Sequence() {
            this.cursor = OutputStack.this.size();
        }

        @Override // java.util.Iterator
        public OutputNode next() {
            if (!hasNext()) {
                return null;
            }
            OutputStack outputStack = OutputStack.this;
            int i = this.cursor - 1;
            this.cursor = i;
            return outputStack.get(i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.cursor > 0;
        }

        @Override // java.util.Iterator
        public void remove() {
            OutputStack.this.purge(this.cursor);
        }
    }
}
