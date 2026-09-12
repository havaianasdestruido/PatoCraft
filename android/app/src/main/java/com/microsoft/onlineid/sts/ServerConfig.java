package com.microsoft.onlineid.sts;

import android.content.Context;
import android.content.SharedPreferences;
import com.microsoft.onlineid.internal.configuration.AbstractSettings;
import com.microsoft.onlineid.internal.configuration.Environment;
import com.microsoft.onlineid.internal.configuration.ISetting;
import com.microsoft.onlineid.internal.configuration.Setting;
import com.microsoft.onlineid.internal.configuration.Settings;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ServerConfig extends AbstractSettings {
    public static Setting<Set<String>> AndroidSsoCertificates = null;
    public static final String DefaultConfigVersion = "1";
    private static String Domain = null;
    public static Setting<String> EnvironmentName = null;
    public static Setting<Integer> NgcCloudPinLength = null;
    static final String StorageName = "ServerConfig";
    public static Setting<String> Version = new Setting<>("ConfigVersion", "1");

    public enum KnownEnvironment {
        Production("production", "https://go.microsoft.com/fwlink/?LinkId=398559"),
        Int("int", "https://go.microsoft.com/fwlink/?LinkId=398560");

        private final Environment _environment;

        KnownEnvironment(String name, String configUrl) {
            try {
                this._environment = new Environment(name, new URL(configUrl));
            } catch (MalformedURLException e) {
                throw new IllegalArgumentException("Invalid known environment URL: " + configUrl);
            }
        }

        public Environment getEnvironment() {
            return this._environment;
        }
    }

    static {
        EnvironmentName = new Setting<>("environment", Settings.isDebugBuild() ? "int" : "production");
        Domain = Settings.isDebugBuild() ? "live-int.com" : "live.com";
        NgcCloudPinLength = new Setting<>("cloud_pin_length", 4);
        AndroidSsoCertificates = new Setting<>("AndroidSsoCerts", new HashSet(Arrays.asList("sX6CAbEo4edMwCNRCrfqA6wn3eUNMtgQ6hV3dY8cwJg=", "g2b69yfcSDF6LzoMN/oSfz81YZTPuy9LYo7H5qGnXA8=", "uSUTbz6nwKGVFpChqzE5ENqB9AmUqFNC7GIoiPEocFE=", "oHlCFSeKVn6IevbN4BWl6IQU72QPfas4VaPneWWL53g=", "fVOTUco5wnynBkCeWptrBi25v43D2MqmE3Bnrn9otec=", "KEg2GpweMt8dPi7Wp7nmelJc+KE7Fk+ABslHlXj3Rt4=", "7r0PFuYpr4uDgb/t/dZJYF/pD3Y/XLe6Rz657vlNmvE=", "Mb5ACW+THNfxHV4mLSssQ3xEOF+07LwQE9ladDWBb5w=", "6EPuPaEZXWr7icqjznQnsI/AH9h4ok+lbpYsNccdXnA=", "rQZmwqojBROk1Pc/okKkWGzY7WcmodDdVCUHcv2blgU=")));
    }

    public enum Int implements ISetting<Integer> {
        ConnectTimeout("ConnectTimeout", 10000),
        SendTimeout("SendTimeout", 30000),
        ReceiveTimeout("ReceiveTimeout", 30000),
        BackupSlaveCount("BackupSlaveCount", 3),
        MaxSecondsBetweenBackups("MaxSecondsBetweenBackups", 259200),
        MinSecondsBetweenConfigDownloads("MinSecondsBetweenConfigDownloads", 28800),
        MaxTriesForSsoRequestToSingleService("MaxTriesForSsoRequestToSingleService", 2),
        MaxTriesForSsoRequestWithFallback("MaxTriesForSsoRequestWithFallback", 4);

        private final Integer _defaultValue;
        private final String _settingName;

        Int(String settingName, int defaultValue) {
            this._settingName = settingName;
            this._defaultValue = Integer.valueOf(defaultValue);
        }

        @Override // com.microsoft.onlineid.internal.configuration.ISetting
        public String getSettingName() {
            return this._settingName;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.onlineid.internal.configuration.ISetting
        public Integer getDefaultValue() {
            return this._defaultValue;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unexpected branching in enum static init block */
    public static final class Endpoint implements ISetting<URL> {
        private static final /* synthetic */ Endpoint[] $VALUES;
        public static final Endpoint ApproveSession;
        public static final Endpoint Configuration;
        public static final Endpoint ConnectMsa;
        public static final Endpoint ConnectPartner;
        public static final Endpoint DeviceProvision;
        public static final Endpoint ListSessions;
        public static final Endpoint ManageApprover;
        public static final Endpoint ManageLoginKeys;
        public static final Endpoint Refresh;
        public static final Endpoint RemoteConnect;
        public static final Endpoint SignInMsa;
        public static final Endpoint SignInPartner;
        public static final Endpoint SignupMsa;
        public static final Endpoint SignupPartner;
        public static final Endpoint SignupWReplyMsa;
        public static final Endpoint SignupWReplyPartner;
        public static final Endpoint Sts;
        private final URL _defaultValue;
        private final String _settingName;

        public static Endpoint valueOf(String name) {
            return (Endpoint) Enum.valueOf(Endpoint.class, name);
        }

        public static Endpoint[] values() {
            return (Endpoint[]) $VALUES.clone();
        }

        static {
            String externalForm;
            if (Settings.isDebugBuild()) {
                externalForm = KnownEnvironment.Int.getEnvironment().getConfigUrl().toExternalForm();
            } else {
                externalForm = KnownEnvironment.Production.getEnvironment().getConfigUrl().toExternalForm();
            }
            Configuration = new Endpoint("Configuration", 0, "ConfigUrl", externalForm);
            Sts = new Endpoint("Sts", 1, "WLIDSTS_WCF", "https://login." + ServerConfig.Domain + ":443/RST2.srf");
            DeviceProvision = new Endpoint("DeviceProvision", 2, "DeviceAddService", "https://login." + ServerConfig.Domain + "/ppsecure/deviceaddcredential.srf");
            ManageApprover = new Endpoint("ManageApprover", 3, "ManageApprover", "https://login." + ServerConfig.Domain + "/ManageApprover.srf");
            ManageLoginKeys = new Endpoint("ManageLoginKeys", 4, "ManageLoginKeys", "https://login." + ServerConfig.Domain + "/ManageLoginKeys.srf");
            ListSessions = new Endpoint("ListSessions", 5, "ListSessions", "https://login." + ServerConfig.Domain + "/ListSessions.srf");
            ApproveSession = new Endpoint("ApproveSession", 6, "ApproveSession", "https://login." + ServerConfig.Domain + "/ApproveSession.srf");
            ConnectMsa = new Endpoint("ConnectMsa", 7, "CPConnect", "https://login." + ServerConfig.Domain + "/ppsecure/InlineConnect.srf?id=80601");
            ConnectPartner = new Endpoint("ConnectPartner", 8, "CompleteAccountConnect", "https://login." + ServerConfig.Domain + "/ppsecure/InlineConnect.srf?id=80604");
            SignInMsa = new Endpoint("SignInMsa", 9, "CPSignInAuthUp", "https://login." + ServerConfig.Domain + "/ppsecure/InlineLogin.srf?id=80601");
            SignInPartner = new Endpoint("SignInPartner", 10, "CompleteAccountSignIn", "https://login." + ServerConfig.Domain + "/ppsecure/InlineLogin.srf?id=80604");
            SignupMsa = new Endpoint("SignupMsa", 11, "SignupMsa", "https://signup." + ServerConfig.Domain + "/signup?id=80601");
            SignupPartner = new Endpoint("SignupPartner", 12, "SignupPartner", "https://signup." + ServerConfig.Domain + "/signup?id=80604");
            SignupWReplyMsa = new Endpoint("SignupWReplyMsa", 13, "SignupWReplyMsa", "https://login." + ServerConfig.Domain + "/ppsecure/InlineLogin.srf?id=80601&actionid=7");
            SignupWReplyPartner = new Endpoint("SignupWReplyPartner", 14, "SignupWReplyPartner", "https://login." + ServerConfig.Domain + "/ppsecure/InlineLogin.srf?id=80604&actionid=7");
            Refresh = new Endpoint("Refresh", 15, "URL_AccountSettings", "https://account." + ServerConfig.Domain + "/");
            RemoteConnect = new Endpoint("RemoteConnect", 16, "RemoteConnect", "https://login." + ServerConfig.Domain + "/RemoteConnectClientAuth.srf");
            $VALUES = new Endpoint[]{Configuration, Sts, DeviceProvision, ManageApprover, ManageLoginKeys, ListSessions, ApproveSession, ConnectMsa, ConnectPartner, SignInMsa, SignInPartner, SignupMsa, SignupPartner, SignupWReplyMsa, SignupWReplyPartner, Refresh, RemoteConnect};
        }

        private Endpoint(String str, int i, String settingName, String defaultValue) {
            super(str, i);
            this._settingName = settingName;
            try {
                this._defaultValue = new URL(defaultValue);
            } catch (MalformedURLException e) {
                throw new IllegalArgumentException("Default value for ServerConfig.Url with name '" + settingName + "' is not a valid URL.");
            }
        }

        @Override // com.microsoft.onlineid.internal.configuration.ISetting
        public String getSettingName() {
            return this._settingName;
        }

        @Override // com.microsoft.onlineid.internal.configuration.ISetting
        public URL getDefaultValue() {
            return this._defaultValue;
        }
    }

    public ServerConfig(Context applicationContext) {
        super(applicationContext, StorageName);
    }

    @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings
    public Editor edit() {
        return new Editor(this._preferences.edit());
    }

    @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings
    public int getInt(ISetting<? extends Integer> setting) {
        return super.getInt(setting);
    }

    @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings
    public String getString(ISetting<? extends String> setting) {
        return super.getString(setting);
    }

    @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings
    public Set<String> getStringSet(ISetting<? extends Set<String>> setting) {
        return super.getStringSet(setting);
    }

    @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings
    protected boolean getBoolean(ISetting<? extends Boolean> setting) {
        return super.getBoolean(setting);
    }

    public URL getUrl(Endpoint setting) {
        try {
            String value = this._preferences.getString(setting.getSettingName(), null);
            return value != null ? new URL(value) : setting.getDefaultValue();
        } catch (MalformedURLException ex) {
            throw new IllegalStateException("Stored URL for setting " + setting.getSettingName() + " is invalid.", ex);
        }
    }

    public Environment getEnvironment() {
        return new Environment(getString(EnvironmentName), getUrl(Endpoint.Configuration));
    }

    public Environment getDefaultEnvironment() {
        return new Environment(EnvironmentName.getDefaultValue(), Endpoint.Configuration.getDefaultValue());
    }

    public Integer getNgcCloudPinLength() {
        return Integer.valueOf(getInt(NgcCloudPinLength));
    }

    public boolean markDownloadNeeded() {
        return edit().setString((ISetting<? extends String>) Version, "1").commit();
    }

    public static class Editor extends AbstractSettings.Editor {
        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public /* bridge */ /* synthetic */ AbstractSettings.Editor setBoolean(ISetting iSetting, boolean z) {
            return setBoolean((ISetting<? extends Boolean>) iSetting, z);
        }

        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public /* bridge */ /* synthetic */ AbstractSettings.Editor setInt(ISetting iSetting, int i) {
            return setInt((ISetting<? extends Integer>) iSetting, i);
        }

        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public /* bridge */ /* synthetic */ AbstractSettings.Editor setString(ISetting iSetting, String str) {
            return setString((ISetting<? extends String>) iSetting, str);
        }

        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public /* bridge */ /* synthetic */ AbstractSettings.Editor setStringSet(ISetting iSetting, Set set) {
            return setStringSet((ISetting<? extends Set<String>>) iSetting, (Set<String>) set);
        }

        private Editor(SharedPreferences.Editor editor) {
            super(editor);
        }

        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public Editor clear() {
            super.clear();
            return this;
        }

        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public Editor setInt(ISetting<? extends Integer> setting, int value) {
            super.setInt(setting, value);
            return this;
        }

        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public Editor setString(ISetting<? extends String> setting, String value) {
            super.setString(setting, value);
            return this;
        }

        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public Editor setStringSet(ISetting<? extends Set<String>> setting, Set<String> value) {
            super.setStringSet(setting, value);
            return this;
        }

        @Override // com.microsoft.onlineid.internal.configuration.AbstractSettings.Editor
        public Editor setBoolean(ISetting<? extends Boolean> setting, boolean value) {
            super.setBoolean(setting, value);
            return this;
        }

        public Editor setUrl(Endpoint setting, URL value) {
            this._editor.putString(setting.getSettingName(), value.toExternalForm());
            return this;
        }
    }
}
