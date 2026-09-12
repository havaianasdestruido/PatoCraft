package com.microsoft.cll.android;

import java.util.Random;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class CorrelationVector {
    private String baseVector;
    private int currentVector;
    private final String base64CharSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    private final int id0Length = 16;
    boolean isInitialized = false;

    public void Init() {
        this.baseVector = SeedCorrelationVector();
        this.currentVector = 1;
        this.isInitialized = true;
    }

    private boolean CanExtend() {
        int vectorSize = (int) Math.floor(Math.log10(this.currentVector) + 1.0d);
        return (((this.baseVector.length() + 1) + vectorSize) + 1) + 1 <= SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXCORRELATIONVECTORLENGTH);
    }

    private boolean CanIncrement(int newVector) {
        if (newVector - 1 == Integer.MAX_VALUE) {
            return false;
        }
        int vectorSize = (int) Math.floor(Math.log10(newVector) + 1.0d);
        return (this.baseVector.length() + vectorSize) + 1 <= SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXCORRELATIONVECTORLENGTH);
    }

    public synchronized String Extend() {
        if (!this.isInitialized) {
            Init();
        }
        if (CanExtend()) {
            this.baseVector = GetValue();
            this.currentVector = 1;
        }
        return GetValue();
    }

    public String GetValue() {
        if (this.isInitialized) {
            return this.baseVector + "." + this.currentVector;
        }
        return null;
    }

    public synchronized String Increment() {
        if (!this.isInitialized) {
            Init();
        }
        int newVector = this.currentVector + 1;
        if (CanIncrement(newVector)) {
            this.currentVector = newVector;
        }
        return GetValue();
    }

    boolean IsValid(String vector) {
        return vector.length() <= SettingsStore.getCllSettingsAsInt(SettingsStore.Settings.MAXCORRELATIONVECTORLENGTH) && vector.matches("^[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/]{16}(.[0-9]+)+$");
    }

    private String SeedCorrelationVector() {
        String result = "";
        Random r = new Random();
        for (int i = 0; i < 16; i++) {
            result = result + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(r.nextInt("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".length()));
        }
        return result;
    }

    public synchronized void SetValue(String vector) {
        if (IsValid(vector)) {
            int lastDot = vector.lastIndexOf(".");
            this.baseVector = vector.substring(0, lastDot);
            this.currentVector = Integer.parseInt(vector.substring(lastDot + 1));
            this.isInitialized = true;
        } else {
            throw new IllegalArgumentException("Cannot set invalid correlation vector value");
        }
    }
}
