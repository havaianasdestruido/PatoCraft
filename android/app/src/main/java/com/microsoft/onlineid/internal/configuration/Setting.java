package com.microsoft.onlineid.internal.configuration;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Setting<T> implements ISetting<T> {
    private final T _defaultValue;
    private final String _settingName;

    public Setting(String settingName, T defaultValue) {
        this._settingName = settingName;
        this._defaultValue = defaultValue;
    }

    @Override // com.microsoft.onlineid.internal.configuration.ISetting
    public String getSettingName() {
        return this._settingName;
    }

    @Override // com.microsoft.onlineid.internal.configuration.ISetting
    public T getDefaultValue() {
        return this._defaultValue;
    }
}
