package com.microsoft.onlineid;

import android.os.Bundle;
import com.microsoft.onlineid.internal.AppProperties;
import com.microsoft.onlineid.internal.Strings;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class OnlineIdConfiguration {
    private Bundle _values;

    public enum PreferredSignUpMemberNameType {
        None(null),
        EasiOnly("easi"),
        Email("easi2"),
        Outlook("wld2"),
        Telephone("phone2"),
        TelephoneOnly("phone"),
        TelephoneEvenIfBlank("phone3");

        private final String _qsValue;

        PreferredSignUpMemberNameType(String qsValue) {
            this._qsValue = qsValue;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static PreferredSignUpMemberNameType fromString(String string) {
            for (PreferredSignUpMemberNameType type : values()) {
                if (Strings.equalsIgnoreCase(string, type.toString())) {
                    return type;
                }
            }
            return None;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this._qsValue;
        }
    }

    public OnlineIdConfiguration() {
        this(PreferredSignUpMemberNameType.None);
    }

    public OnlineIdConfiguration(PreferredSignUpMemberNameType preferredSignUpMemberNameType) {
        this._values = new Bundle();
        setPreferredSignUpMemberNameType(preferredSignUpMemberNameType);
    }

    public OnlineIdConfiguration set(String key, String value) {
        if (value != null) {
            this._values.putString(key, value);
        } else {
            this._values.remove(key);
        }
        return this;
    }

    public String get(String key) {
        return this._values.getString(key);
    }

    public Bundle asBundle() {
        return new Bundle(this._values);
    }

    public PreferredSignUpMemberNameType getPreferredSignUpMemberNameType() {
        return PreferredSignUpMemberNameType.fromString(get(AppProperties.PreferredMembernameTypeKey));
    }

    public OnlineIdConfiguration setPreferredSignUpMemberNameType(PreferredSignUpMemberNameType type) {
        String value = type != null ? type.toString() : null;
        set(AppProperties.PreferredMembernameTypeKey, value);
        return this;
    }

    public String getCobrandingId() {
        return get(AppProperties.CobrandIdKey);
    }

    public OnlineIdConfiguration setCobrandingId(String cobrandingId) {
        set(AppProperties.CobrandIdKey, cobrandingId);
        return this;
    }

    public OnlineIdConfiguration setShouldGatherWebTelemetry(boolean requestWebTelemetry) {
        set(AppProperties.ClientWebTelemetryRequestedKey, requestWebTelemetry ? "1" : null);
        return this;
    }

    public boolean getShouldGatherWebTelemetry() {
        return "1".equals(get(AppProperties.ClientWebTelemetryRequestedKey));
    }
}
