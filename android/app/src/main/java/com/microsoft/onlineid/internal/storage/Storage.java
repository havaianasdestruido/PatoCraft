package com.microsoft.onlineid.internal.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.microsoft.onlineid.internal.Objects;
import com.microsoft.onlineid.internal.Strings;
import com.microsoft.onlineid.internal.configuration.Settings;
import com.microsoft.onlineid.internal.log.Logger;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class Storage {
    static final String DefaultStorageName = "com.microsoft.onlineid";
    private final String _currentPackageName;
    private final SharedPreferences _preferences;

    public Storage(Context applicationContext) {
        Objects.verifyArgumentNotNull(applicationContext, "applicationContext");
        this._preferences = applicationContext.getSharedPreferences(DefaultStorageName, 0);
        this._currentPackageName = applicationContext.getPackageName();
    }

    public Storage(Context applicationContext, String name) {
        Objects.verifyArgumentNotNull(applicationContext, "applicationContext");
        Strings.verifyArgumentNotNullOrEmpty(name, "name");
        this._preferences = applicationContext.getSharedPreferences(name, 0);
        this._currentPackageName = applicationContext.getPackageName();
    }

    public String readString(String key) {
        return readString(key, null);
    }

    public String readString(String key, String defaultValue) {
        return this._preferences.getString(key, defaultValue);
    }

    public Set<String> readStringSet(String key) {
        return this._preferences.getStringSet(key, Collections.emptySet());
    }

    public <T> T readObject(String key, ISerializer<T> serializer) {
        T result = null;
        boolean success = false;
        try {
            String encoded = readString(key, null);
            if (encoded != null) {
                result = serializer.deserialize(encoded);
            }
            success = true;
        } catch (IOException e) {
            Logger.warning("Object in storage was corrupt.", e);
        } catch (ClassCastException e2) {
            Logger.warning("Object in storage was not of expected type.", e2);
        }
        if (!success) {
            edit().remove(key).apply();
        }
        return result;
    }

    public long readLong(String key, long defaultValue) {
        return this._preferences.getLong(key, defaultValue);
    }

    public boolean readBoolean(String key, boolean defaultValue) {
        return this._preferences.getBoolean(key, defaultValue);
    }

    public Editor edit() {
        return new Editor(this._preferences.edit());
    }

    public static class Editor {
        private final SharedPreferences.Editor _editor;

        public Editor(SharedPreferences.Editor editor) {
            this._editor = editor;
        }

        public void apply() {
            this._editor.apply();
        }

        public boolean commit() {
            return this._editor.commit();
        }

        public Editor clear() {
            this._editor.clear();
            return this;
        }

        public Editor remove(String key) {
            this._editor.remove(key);
            return this;
        }

        public Editor writeString(String key, String value) {
            this._editor.putString(key, value);
            return this;
        }

        public Editor writeStringSet(String key, Set<String> value) {
            this._editor.putStringSet(key, value);
            return this;
        }

        public <T> Editor writeObject(String key, T object, ISerializer<T> serializer) throws StorageException {
            if (object != null) {
                try {
                    this._editor.putString(key, serializer.serialize(object));
                } catch (IOException ex) {
                    throw new StorageException(ex);
                }
            }
            return this;
        }

        public Editor writeLong(String key, long value) {
            this._editor.putLong(key, value);
            return this;
        }

        public Editor writeBoolean(String key, boolean value) {
            this._editor.putBoolean(key, value);
            return this;
        }
    }

    protected void blockForCommit() {
        edit().commit();
    }

    protected void dumpContents() {
        if (Settings.isDebugBuild()) {
            Logger.info("Current storage values in " + this._currentPackageName + ":");
            for (Map.Entry<String, ?> entry : this._preferences.getAll().entrySet()) {
                Logger.info("  > " + entry.getKey() + ": " + entry.getValue().toString());
            }
        }
    }
}
