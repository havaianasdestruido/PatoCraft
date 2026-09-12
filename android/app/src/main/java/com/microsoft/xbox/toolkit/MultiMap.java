package com.microsoft.xbox.toolkit;

import java.util.HashSet;
import java.util.Hashtable;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MultiMap<K, V> {
    private Hashtable<K, HashSet<V>> data = new Hashtable<>();
    private Hashtable<V, K> dataInverse = new Hashtable<>();

    public HashSet<V> get(K key) {
        return this.data.get(key);
    }

    public int size() {
        return this.data.size();
    }

    public int TESTsizeDegenerate() {
        int count = 0;
        for (K key : this.data.keySet()) {
            if (this.data.get(key).size() == 0) {
                count++;
            }
        }
        return count;
    }

    public void clear() {
        this.data.clear();
        this.dataInverse.clear();
    }

    public boolean containsKey(K key) {
        return this.data.containsKey(key);
    }

    public boolean containsValue(V value) {
        return getKey(value) != null;
    }

    public K getKey(V value) {
        return this.dataInverse.get(value);
    }

    public void removeValue(V view) {
        K key = getKey(view);
        this.data.get(key).remove(view);
        this.dataInverse.remove(view);
        removeKeyIfEmpty(key);
    }

    public void removeKey(K key) {
        for (V value : this.data.get(key)) {
            XLEAssert.assertTrue(this.dataInverse.containsKey(value));
            this.dataInverse.remove(value);
        }
        this.data.remove(key);
    }

    public void put(K key, V value) {
        if (this.data.get(key) == null) {
            this.data.put(key, new HashSet<>());
        }
        XLEAssert.assertTrue(!this.dataInverse.containsKey(value));
        this.data.get(key).add(value);
        this.dataInverse.put(value, key);
    }

    public boolean keyValueMatches(K key, V value) {
        HashSet<V> vset = get(key);
        if (vset == null) {
            return false;
        }
        return vset.contains(value);
    }

    private void removeKeyIfEmpty(K key) {
        HashSet<V> vset = get(key);
        if (vset != null && vset.isEmpty()) {
            this.data.remove(key);
        }
    }
}
