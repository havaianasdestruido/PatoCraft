package com.microsoft.xbox.idp.model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public final class Privacy {

    public enum Key {
        None,
        ShareFriendList,
        ShareGameHistory,
        CommunicateUsingTextAndVoice,
        SharePresence,
        ShareProfile,
        ShareVideoAndMusicStatus,
        CommunicateUsingVideo,
        CollectVoiceData,
        ShareXboxMusicActivity,
        ShareExerciseInfo,
        ShareIdentity,
        ShareRecordedGameSessions,
        ShareIdentityTransitively,
        CanShareIdentity
    }

    public static class Setting {
        public Key setting;
        public Value value;
    }

    public enum Value {
        NotSet,
        Everyone,
        PeopleOnMyList,
        FriendCategoryShareIdentity,
        Blocked
    }

    public static class Settings {
        public Map<Key, Value> settings;

        public static Settings newWithMap() {
            Settings s = new Settings();
            s.settings = new HashMap();
            return s;
        }

        public boolean isSettingSet(Key key) {
            Value value;
            if (this.settings == null || (value = this.settings.get(key)) == null || value == Value.NotSet) {
                return false;
            }
            return true;
        }
    }

    public static GsonBuilder registerAdapters(GsonBuilder gson) {
        return gson.registerTypeAdapter(new TypeToken<Map<Key, Value>>() { // from class: com.microsoft.xbox.idp.model.Privacy.1
        }.getType(), new SettingsAdapter());
    }

    private static class SettingsAdapter extends TypeAdapter<Map<Key, Value>> {
        private SettingsAdapter() {
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter out, Map<Key, Value> value) throws IOException {
            Setting[] settings = new Setting[value.size()];
            int idx = -1;
            for (Map.Entry<Key, Value> e : value.entrySet()) {
                Setting s = new Setting();
                s.setting = e.getKey();
                s.value = e.getValue();
                idx++;
                settings[idx] = s;
            }
            new Gson().toJson(settings, Setting[].class, out);
        }

        @Override // com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
        public Map<Key, Value> read2(JsonReader in) throws IOException {
            Setting[] settings = (Setting[]) new Gson().fromJson(in, Setting[].class);
            Map<Key, Value> map = new HashMap<>();
            for (Setting s : settings) {
                if (s.setting != null && s.value != null) {
                    map.put(s.setting, s.value);
                }
            }
            return map;
        }
    }
}
