package com.microsoft.xbox.toolkit;

import java.util.HashSet;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ThreadSafePriorityQueue<T> {
    private Object syncObject = new Object();
    private PriorityQueue<T> queue = new PriorityQueue<>();
    private HashSet<T> hashSet = new HashSet<>();

    public void push(T v) {
        synchronized (this.syncObject) {
            if (!this.hashSet.contains(v)) {
                this.queue.add(v);
                this.hashSet.add(v);
                this.syncObject.notifyAll();
            }
        }
    }

    public T pop() {
        T rv = null;
        try {
            synchronized (this.syncObject) {
                while (this.queue.isEmpty()) {
                    this.syncObject.wait();
                }
                rv = this.queue.remove();
                this.hashSet.remove(rv);
            }
        } catch (InterruptedException e) {
        }
        return rv;
    }
}
