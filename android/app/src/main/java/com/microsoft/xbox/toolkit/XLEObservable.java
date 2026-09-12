package com.microsoft.xbox.toolkit;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class XLEObservable<T> {
    private HashSet<XLEObserver<T>> data = new HashSet<>();

    public synchronized void addUniqueObserver(XLEObserver<T> observer) {
        if (!this.data.contains(observer)) {
            addObserver(observer);
        }
    }

    public synchronized void addObserver(XLEObserver<T> observer) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.data.add(observer);
    }

    public synchronized void removeObserver(XLEObserver<T> observer) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.data.remove(observer);
    }

    public synchronized void notifyObservers(AsyncResult<T> asyncResult) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        List<XLEObserver<T>> dataCopy = new ArrayList<>(this.data);
        for (XLEObserver<T> observer : dataCopy) {
            observer.update(asyncResult);
        }
    }

    protected synchronized void clearObserver() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        this.data.clear();
    }

    protected synchronized ArrayList<XLEObserver<T>> getObservers() {
        return new ArrayList<>(this.data);
    }
}
