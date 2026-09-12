package com.mojang.android;

public class StringValue {
    private String value;

    public StringValue() {
        this.value = "";
    }

    public StringValue(String value) {
        this.value = value;
    }

    public String getStringValue() {
        return this.value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}