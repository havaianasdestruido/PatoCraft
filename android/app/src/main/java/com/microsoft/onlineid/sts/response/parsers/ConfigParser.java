package com.microsoft.onlineid.sts.response.parsers;

import android.text.TextUtils;
import com.microsoft.onlineid.internal.configuration.ISetting;
import com.microsoft.onlineid.sts.ServerConfig;
import com.microsoft.onlineid.sts.exception.StsParseException;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ConfigParser extends BasePullParser {
    static final String CfgNamespace = "http://schemas.microsoft.com/Passport/PPCRL";
    static final String DefaultNamespace = "http://www.w3.org/2000/09/xmldsig#";
    private final ServerConfig.Editor _editor;
    private final Map<String, ServerConfig.Endpoint> _endpointSettings;
    private final Map<String, ISetting<Integer>> _intSettings;
    private final Map<String, ISetting<Set<String>>> _stringSetSettings;
    private final Map<String, ISetting<String>> _stringSettings;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigParser(XmlPullParser underlyingParser, ServerConfig.Editor editor) {
        super(underlyingParser, "http://www.w3.org/2000/09/xmldsig#", "Signature");
        this._editor = editor;
        this._stringSettings = new HashMap();
        addSetting(this._stringSettings, ServerConfig.Version);
        this._intSettings = new HashMap();
        for (ServerConfig.Int setting : ServerConfig.Int.values()) {
            addSetting(this._intSettings, setting);
        }
        this._endpointSettings = new HashMap();
        for (ServerConfig.Endpoint setting2 : ServerConfig.Endpoint.values()) {
            addSetting(this._endpointSettings, setting2);
        }
        this._stringSetSettings = new HashMap();
        addSetting(this._stringSetSettings, ServerConfig.AndroidSsoCertificates);
    }

    protected <V, T extends ISetting<V>> void addSetting(Map<String, T> map, T setting) {
        map.put(setting.getSettingName(), setting);
    }

    @Override // com.microsoft.onlineid.sts.response.parsers.BasePullParser
    protected void onParse() throws XmlPullParserException, IOException, StsParseException {
        nextStartTag("cfg:Configuration");
        NodeScope configScope = getLocation();
        while (configScope.nextStartTagNoThrow()) {
            String name = getPrefixedTagName();
            if (name.equalsIgnoreCase("cfg:Settings") || name.equalsIgnoreCase("cfg:ServiceURIs") || name.equalsIgnoreCase("cfg:ServiceURIs1")) {
                parseSettings();
            } else {
                configScope.skipElement();
            }
        }
    }

    protected void parseSettings() throws XmlPullParserException, IOException, StsParseException {
        NodeScope settingsScope = getLocation();
        while (settingsScope.nextStartTagNoThrow()) {
            String elementName = this._parser.getName();
            if (!tryParseStringSetting(elementName) && !tryParseIntSetting(elementName) && !tryParseEndpointSetting(elementName) && !tryParseStringSetSetting(elementName)) {
                settingsScope.skipElement();
            }
        }
    }

    protected boolean tryParseStringSetting(String elementName) throws XmlPullParserException, StsParseException, IOException {
        ISetting<String> setting = this._stringSettings.get(elementName);
        if (setting == null) {
            return false;
        }
        this._editor.setString((ISetting<? extends String>) setting, nextRequiredText());
        return true;
    }

    protected boolean tryParseIntSetting(String elementName) throws XmlPullParserException, StsParseException, IOException {
        ISetting<Integer> setting = this._intSettings.get(elementName);
        if (setting == null) {
            return false;
        }
        this._editor.setInt((ISetting<? extends Integer>) setting, TextParsers.parseInt(nextRequiredText(), elementName));
        return true;
    }

    protected boolean tryParseEndpointSetting(String elementName) throws XmlPullParserException, StsParseException, IOException {
        ServerConfig.Endpoint setting = this._endpointSettings.get(elementName);
        if (setting == null) {
            return false;
        }
        this._editor.setUrl(setting, TextParsers.parseUrl(nextRequiredText(), elementName));
        return true;
    }

    protected boolean tryParseStringSetSetting(String elementName) throws XmlPullParserException, StsParseException, IOException {
        ISetting<Set<String>> setting = this._stringSetSettings.get(elementName);
        if (setting == null) {
            return false;
        }
        String value = nextRequiredText();
        if (!TextUtils.isEmpty(value)) {
            Set<String> values = new HashSet<>();
            TextUtils.SimpleStringSplitter splitter = new TextUtils.SimpleStringSplitter(',');
            splitter.setString(value);
            for (String element : splitter) {
                values.add(element);
            }
            this._editor.setStringSet((ISetting<? extends Set<String>>) setting, values);
        }
        return true;
    }
}
