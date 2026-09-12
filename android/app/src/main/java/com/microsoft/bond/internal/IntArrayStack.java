package com.microsoft.bond.internal;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class IntArrayStack {
    private static final int DEFAULT_CAPACITY = 32;
    private int size;
    private int[] values;

    public IntArrayStack() {
        this(32);
    }

    public IntArrayStack(int capacity) {
        this.values = new int[capacity];
    }

    public int pop() {
        this.size--;
        return this.values[this.size];
    }

    public void push(int value) {
        ensureExtraCapacity(1);
        this.values[this.size] = value;
        this.size++;
    }

    public int get(int index) {
        return this.values[index];
    }

    public void set(int index, int value) {
        this.values[index] = value;
    }

    private void ensureExtraCapacity(int extraByteSize) {
        int requiredSize = this.size + extraByteSize;
        if (requiredSize > this.values.length) {
            int[] newValues = new int[requiredSize * 2];
            System.arraycopy(this.values, 0, newValues, 0, this.values.length);
            this.values = newValues;
        }
    }

    public int getSize() {
        return this.size;
    }

    public void clear() {
        this.size = 0;
    }
}
