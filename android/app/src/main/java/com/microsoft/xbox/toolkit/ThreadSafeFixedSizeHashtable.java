package com.microsoft.xbox.toolkit;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ThreadSafeFixedSizeHashtable<K, V> {
    private final int maxSize;
    private PriorityQueue<ThreadSafeFixedSizeHashtable<K, V>.KeyTuple> fifo = new PriorityQueue<>();
    private Hashtable<K, V> hashtable = new Hashtable<>();
    private Object syncObject = new Object();
    private int count = 0;

    private class KeyTuple implements Comparable<ThreadSafeFixedSizeHashtable<K, V>.KeyTuple> {
        private int index;
        private K key;

        public KeyTuple(K key, int index) {
            this.index = 0;
            this.key = key;
            this.index = index;
        }

        @Override // java.lang.Comparable
        public int compareTo(ThreadSafeFixedSizeHashtable<K, V>.KeyTuple rhs) {
            return this.index - rhs.index;
        }

        public K getKey() {
            return this.key;
        }
    }

    public ThreadSafeFixedSizeHashtable(int maxSize) {
        this.maxSize = maxSize;
        if (maxSize <= 0) {
            throw new IllegalArgumentException();
        }
    }

    public void put(K key, V value) {
        if (key != null && value != null) {
            synchronized (this.syncObject) {
                if (!this.hashtable.containsKey(key)) {
                    this.count++;
                    this.fifo.add(new KeyTuple(key, this.count));
                    this.hashtable.put(key, value);
                    cleanupIfNecessary();
                }
            }
        }
    }

    public V get(K key) {
        V v;
        if (key == null) {
            return null;
        }
        synchronized (this.syncObject) {
            v = this.hashtable.get(key);
        }
        return v;
    }

    public void remove(K key) {
        if (key != null) {
            synchronized (this.syncObject) {
                if (this.hashtable.containsKey(key)) {
                    this.hashtable.remove(key);
                    ThreadSafeFixedSizeHashtable<K, V>.KeyTuple matchKeyTuple = null;
                    for (ThreadSafeFixedSizeHashtable<K, V>.KeyTuple keyTuple : this.fifo) {
                        if (((KeyTuple) keyTuple).key.equals(key)) {
                            matchKeyTuple = keyTuple;
                            break;
                        }
                    }
                    if (matchKeyTuple != null) {
                        this.fifo.remove(matchKeyTuple);
                    }
                }
            }
        }
    }

    public Enumeration<V> elements() {
        return this.hashtable.elements();
    }

    public Enumeration<K> keys() {
        return this.hashtable.keys();
    }

    private void cleanupIfNecessary() {
        XLEAssert.assertTrue(this.hashtable.size() == this.fifo.size());
        while (this.hashtable.size() > this.maxSize) {
            ThreadSafeFixedSizeHashtable<K, V>.KeyTuple oldest = this.fifo.remove();
            this.hashtable.remove(oldest.getKey());
            XLEAssert.assertTrue(this.hashtable.size() == this.fifo.size());
        }
    }
}
