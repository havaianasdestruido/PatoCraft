package com.microsoft.xbox.service.model.friendfinder;

import android.provider.Settings;
import com.appsflyer.ServerParameters;
import com.microsoft.xbox.service.network.managers.friendfinder.PhoneContactInfo;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.network.XLEHttpStatusAndStream;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ShortCircuitProfileMessage {

    public static class Application {
        public String name;
    }

    public enum MsgType {
        Add,
        AddXbox,
        Delete,
        PhoneVerification,
        Edit
    }

    public static class PhoneState {
        public boolean hasXboxApplication;
        public boolean isVerified;
    }

    public static class ShortCircuitProfileRequest {
        private String country;
        private MsgType msgType;
        private String phoneNumber;
        private String token;
        private boolean viaVoiceCall;

        public ShortCircuitProfileRequest(MsgType msgType, String phoneNumber, String country) {
            this.msgType = msgType;
            this.phoneNumber = phoneNumber;
            this.country = country;
        }

        public ShortCircuitProfileRequest(MsgType msgType, String phoneNumber, String country, boolean viaVoiceCall) {
            this.msgType = msgType;
            this.phoneNumber = phoneNumber;
            this.country = country;
            this.viaVoiceCall = viaVoiceCall;
        }

        public ShortCircuitProfileRequest(MsgType msgType, String phoneNumber, String country, String token) {
            this(msgType, phoneNumber, country);
            this.token = token;
        }

        public String toString() {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray attributes = new JSONArray();
                jSONObject.put("Attributes", attributes);
                JSONObject attribute = new JSONObject();
                attributes.put(attribute);
                attribute.put("Name", "PersonalContactProfile.Phones");
                switch (this.msgType) {
                    case Add:
                        attribute.put("Add", getAddMessageContent());
                        break;
                    case AddXbox:
                        attribute.put("Edit", getAddXboxMessageContent());
                        break;
                    case Edit:
                        attribute.put("Edit", getEditMessageContent());
                        break;
                    case Delete:
                        attribute.put("Delete", getDeleteMessageContent());
                        break;
                    case PhoneVerification:
                        attribute.put("Edit", getPhoneVerificationMessageContent());
                        break;
                }
                return jSONObject.toString();
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to create JSON object - " + e.getMessage(), false);
                return null;
            }
        }

        private JSONArray getAddMessageContent() {
            try {
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject = new JSONObject();
                jSONArray.put(jSONObject);
                jSONObject.put("Country", this.country);
                jSONObject.put("Label", "Phone_Other");
                jSONObject.put("Name", this.phoneNumber);
                jSONObject.put("Searchable", true);
                Locale deviceLocale = Locale.getDefault();
                jSONObject.put("VerifyLanguage", deviceLocale.toString());
                if (this.viaVoiceCall) {
                    jSONObject.put("VerifyMethod", "VOICE");
                } else {
                    jSONObject.put("VerifyMethod", "SMS");
                }
                JSONArray applications = new JSONArray();
                jSONObject.put("AddSearchableApplications", applications);
                JSONObject application = new JSONObject();
                applications.put(application);
                application.put("Name", "XBOX");
                return jSONArray;
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to create JSON object - " + e.getMessage(), false);
                return null;
            }
        }

        private JSONArray getEditMessageContent() {
            try {
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject = new JSONObject();
                jSONArray.put(jSONObject);
                jSONObject.put("Country", this.country);
                jSONObject.put("Name", this.phoneNumber);
                jSONObject.put("Searchable", true);
                Locale deviceLocale = Locale.getDefault();
                jSONObject.put("VerifyLanguage", deviceLocale.toString());
                if (this.viaVoiceCall) {
                    jSONObject.put("VerifyMethod", "VOICE");
                } else {
                    jSONObject.put("VerifyMethod", "SMS");
                }
                JSONArray applications = new JSONArray();
                jSONObject.put("AddSearchableApplications", applications);
                JSONObject application = new JSONObject();
                applications.put(application);
                application.put("Name", "XBOX");
                return jSONArray;
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to create JSON object - " + e.getMessage(), false);
                return null;
            }
        }

        private JSONArray getAddXboxMessageContent() {
            try {
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject = new JSONObject();
                jSONArray.put(jSONObject);
                jSONObject.put("Country", this.country);
                jSONObject.put("Name", this.phoneNumber);
                JSONArray applications = new JSONArray();
                jSONObject.put("AddSearchableApplications", applications);
                JSONObject application = new JSONObject();
                applications.put(application);
                application.put("Name", "XBOX");
                return jSONArray;
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to create JSON object - " + e.getMessage(), false);
                return null;
            }
        }

        private JSONArray getDeleteMessageContent() {
            try {
                JSONArray array = new JSONArray();
                JSONObject deleteJson = new JSONObject();
                array.put(deleteJson);
                deleteJson.put("Country", this.country);
                deleteJson.put("Name", this.phoneNumber);
                return array;
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to create JSON object - " + e.getMessage(), false);
                return null;
            }
        }

        private JSONArray getPhoneVerificationMessageContent() {
            try {
                JSONArray array = new JSONArray();
                JSONObject editJson = new JSONObject();
                array.put(editJson);
                editJson.put("Country", this.country);
                editJson.put("Name", this.phoneNumber);
                editJson.put("Token", this.token);
                return array;
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to create JSON object - " + e.getMessage(), false);
                return null;
            }
        }
    }

    public static class UploadPhoneContactsRequest {
        private ArrayList<PhoneContactInfo.Contact> contacts;
        private String phoneNumberNormalized;

        public UploadPhoneContactsRequest(ArrayList<PhoneContactInfo.Contact> contacts, String myPhoneNumber) {
            this.contacts = contacts;
            this.phoneNumberNormalized = PhoneContactInfo.sha2Encryption(myPhoneNumber);
        }

        public String toString() {
            String accountName = Settings.Secure.getString(XboxTcuiSdk.getContentResolver(), ServerParameters.ANDROID_ID);
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                jSONObject.put("Aliases", jSONArray);
                for (PhoneContactInfo.Contact contact : this.contacts) {
                    JSONObject contactJson = new JSONObject();
                    jSONArray.put(contactJson);
                    contactJson.put("Type", "phone");
                    JSONArray aliasJson = new JSONArray();
                    contactJson.put("Alias", aliasJson);
                    for (String phone : contact.phoneNumbers) {
                        aliasJson.put(PhoneContactInfo.sha2Encryption(phone));
                    }
                    JSONObject contactHandleJson = new JSONObject();
                    contactJson.put("ContactHandle", contactHandleJson);
                    contactHandleJson.put("SourceId", "DCON");
                    contactHandleJson.put("ObjectId", contact.id);
                    contactHandleJson.put("AccountName", accountName + "-" + contact.displayName);
                }
                return jSONObject.toString();
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to create JSON object - " + e.getMessage(), false);
                return null;
            }
        }
    }

    public static class UploadPhoneContactsResponse {
        private Set<String> aliases;
        public boolean isErrorResponse;

        private void foundAlias(String alias) {
            if (this.aliases == null) {
                this.aliases = new HashSet();
            }
            this.aliases.add(alias);
        }

        public Set<String> getXboxPhoneContacts() {
            return this.aliases;
        }

        public static UploadPhoneContactsResponse parseJson(String jsonStr) {
            JSONObject contactHandler;
            UploadPhoneContactsResponse response = new UploadPhoneContactsResponse();
            if (!JavaUtil.isNullOrEmpty(jsonStr)) {
                try {
                    JSONObject root = new JSONObject(jsonStr);
                    if (root.length() > 0) {
                        JSONArray aliases = root.getJSONArray("FoundAliases");
                        if (aliases != null && aliases.length() > 0) {
                            for (int i = 0; i < aliases.length(); i++) {
                                JSONObject aliasJson = aliases.getJSONObject(i);
                                if (!aliasJson.isNull("ContactHandle") && (contactHandler = aliasJson.getJSONObject("ContactHandle")) != null) {
                                    String objectId = contactHandler.optString("ObjectId");
                                    if (!JavaUtil.isNullOrEmpty(objectId)) {
                                        response.foundAlias(objectId);
                                    }
                                }
                            }
                        }
                        if (!root.isNull("error")) {
                            response.isErrorResponse = true;
                        }
                    }
                } catch (JSONException e) {
                    XLEAssert.assertTrue("Failed to parse JSON string - " + e.getMessage(), false);
                }
            }
            return response;
        }
    }

    public static class PhoneInfo {
        public ArrayList<Application> addSearchableApplications;
        public String country;
        public String countryName;
        public ArrayList<Application> deleteSearchableApplications;
        public boolean hasSearchableApplications;
        public String label;
        public String name;
        public boolean searchable;
        public ArrayList<Application> searchableApplications;
        public String source;
        public String state;
        public String suggestedVerifyMethod;
        public String type;

        public PhoneState isVerified(String phoneNumber) {
            this.name = this.name.replace("+", "");
            String phoneNumber2 = phoneNumber.replace("+", "");
            PhoneState phoneState = null;
            if (this.name != null && (this.name.contains(phoneNumber2) || phoneNumber2.contains(this.name))) {
                phoneState = new PhoneState();
                phoneState.isVerified = this.state.equalsIgnoreCase("Verified");
                for (Application app : this.searchableApplications) {
                    if (app.name.equalsIgnoreCase("XBOX")) {
                        phoneState.hasXboxApplication = true;
                    }
                }
            }
            return phoneState;
        }

        public static PhoneInfo parseJson(JSONObject jsonObject) {
            XLEAssert.assertNotNull(jsonObject);
            PhoneInfo info = new PhoneInfo();
            boolean gotValue = false;
            try {
                if (!jsonObject.isNull("_type")) {
                    info.type = jsonObject.getString("_type");
                    gotValue = true;
                }
                if (!jsonObject.isNull("Country")) {
                    info.country = jsonObject.getString("Country");
                    gotValue = true;
                }
                if (!jsonObject.isNull("CountryName")) {
                    info.countryName = jsonObject.getString("CountryName");
                    gotValue = true;
                }
                if (!jsonObject.isNull("Label")) {
                    info.label = jsonObject.getString("Label");
                    gotValue = true;
                }
                if (!jsonObject.isNull("Source")) {
                    info.source = jsonObject.getString("Source");
                    gotValue = true;
                }
                if (!jsonObject.isNull("State")) {
                    info.state = jsonObject.getString("State");
                    gotValue = true;
                }
                if (!jsonObject.isNull("SuggestedVerifyMethod")) {
                    info.suggestedVerifyMethod = jsonObject.getString("SuggestedVerifyMethod");
                    gotValue = true;
                }
                if (!jsonObject.isNull("Name")) {
                    info.name = jsonObject.getString("Name");
                    gotValue = true;
                }
                if (!jsonObject.isNull("SearchableApplications")) {
                    JSONArray appsJson = jsonObject.getJSONArray("SearchableApplications");
                    info.searchableApplications = new ArrayList<>();
                    for (int i = 0; i < appsJson.length(); i++) {
                        JSONObject appJson = appsJson.getJSONObject(i);
                        if (appJson != null) {
                            String name = appJson.getString("Name");
                            if (!JavaUtil.isNullOrEmpty(name)) {
                                Application app = new Application();
                                app.name = name;
                                info.searchableApplications.add(app);
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to parse JSON string - " + e.getMessage(), false);
            }
            if (!gotValue) {
                return null;
            }
            return info;
        }
    }

    public static class ErrorReturn {
        public String code;
        public int httpResult;
        public String message;
        public String phoneCountry;
        public String phoneNumber;
        public String subCode;

        public static ErrorReturn parseJson(JSONObject jsonObject) {
            XLEAssert.assertNotNull(jsonObject);
            ErrorReturn error = new ErrorReturn();
            try {
                if (!jsonObject.isNull("Code")) {
                    error.code = jsonObject.getString("Code");
                }
                if (!jsonObject.isNull("HttpResult")) {
                    error.httpResult = jsonObject.getInt("HttpResult");
                }
                if (!jsonObject.isNull("Message")) {
                    error.message = jsonObject.getString("Message");
                }
                if (!jsonObject.isNull("PhoneCountry")) {
                    error.phoneCountry = jsonObject.getString("PhoneCountry");
                }
                if (!jsonObject.isNull("PhoneNumber")) {
                    error.phoneNumber = jsonObject.getString("PhoneNumber");
                }
                if (!jsonObject.isNull("SubCode")) {
                    error.subCode = jsonObject.getString("SubCode");
                }
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to parse JSON string - " + e.getMessage(), false);
            }
            return error;
        }
    }

    public static class PhoneInfoAttribute {
        public Integer intValue;
        public String name;
        public String strValue;
        public ArrayList<PhoneInfo> value;

        public PhoneState isVerified(String phoneNumber) {
            if (this.value != null) {
                for (PhoneInfo info : this.value) {
                    PhoneState phoneState = info.isVerified(phoneNumber);
                    if (phoneState != null) {
                        return phoneState;
                    }
                }
            }
            return null;
        }

        public static PhoneInfoAttribute parseJson(JSONObject jsonObject) {
            XLEAssert.assertNotNull(jsonObject);
            PhoneInfoAttribute attribute = new PhoneInfoAttribute();
            try {
                if (!jsonObject.isNull("Name")) {
                    attribute.name = jsonObject.getString("Name");
                }
                if (!jsonObject.isNull("Value")) {
                    if (attribute.value == null) {
                        attribute.value = new ArrayList<>();
                    }
                    JSONArray obj = jsonObject.optJSONArray("Value");
                    if (obj != null) {
                        attribute.value = new ArrayList<>();
                        for (int i = 0; i < obj.length(); i++) {
                            PhoneInfo info = PhoneInfo.parseJson(obj.getJSONObject(i));
                            if (info != null) {
                                attribute.value.add(info);
                            }
                        }
                    } else {
                        int v = jsonObject.optInt("Value", -1);
                        if (v >= 0) {
                            attribute.intValue = Integer.valueOf(v);
                        } else {
                            String str = jsonObject.optString("Value");
                            if (str != null) {
                                attribute.strValue = str;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                XLEAssert.assertTrue("Failed to parse JSON string - " + e.getMessage(), false);
            }
            return attribute;
        }
    }

    public static class PhoneId {
        public String cid;
        public String puid;

        public static PhoneId parseJson(JSONObject jsonObject) {
            XLEAssert.assertNotNull(jsonObject);
            PhoneId phoneId = null;
            try {
                if (jsonObject.isNull("Cid")) {
                    if (0 == 0) {
                        phoneId = new PhoneId();
                    }
                    phoneId.cid = jsonObject.getString("Cid");
                }
                PhoneId phoneId2 = phoneId;
                try {
                    if (!jsonObject.isNull("Puid")) {
                        return phoneId2;
                    }
                    phoneId = phoneId2 == null ? new PhoneId() : phoneId2;
                    phoneId.puid = jsonObject.getString("Puid");
                    return phoneId;
                } catch (JSONException e) {
                    e = e;
                    phoneId = phoneId2;
                    XLEAssert.assertTrue("Failed to parse JSON string - " + e.getMessage(), false);
                    return phoneId;
                }
            } catch (JSONException e2) {
                e = e2;
            }
        }
    }

    public static class PhoneInfoView {
        public ArrayList<PhoneInfoAttribute> attributes;
        public PhoneId id;

        public PhoneState isVerified(String phoneNumber) {
            if (this.attributes != null) {
                for (PhoneInfoAttribute attribute : this.attributes) {
                    PhoneState phoneState = attribute.isVerified(phoneNumber);
                    if (phoneState != null) {
                        return phoneState;
                    }
                }
            }
            return null;
        }

        public static PhoneInfoView parseJson(JSONObject jsonObject) {
            XLEAssert.assertNotNull(jsonObject);
            PhoneInfoView view = null;
            try {
                if (!jsonObject.isNull("Id")) {
                    if (0 == 0) {
                        view = new PhoneInfoView();
                    }
                    JSONObject idJson = jsonObject.getJSONObject("Id");
                    view.id = PhoneId.parseJson(idJson);
                }
                PhoneInfoView view2 = view;
                try {
                    if (jsonObject.isNull("Attributes")) {
                        return view2;
                    }
                    view = view2 == null ? new PhoneInfoView() : view2;
                    JSONArray attributesJson = jsonObject.getJSONArray("Attributes");
                    view.attributes = new ArrayList<>();
                    for (int i = 0; i < attributesJson.length(); i++) {
                        PhoneInfoAttribute attribute = PhoneInfoAttribute.parseJson(attributesJson.getJSONObject(i));
                        if (attribute != null) {
                            view.attributes.add(attribute);
                        }
                    }
                    return view;
                } catch (JSONException e) {
                    e = e;
                    view = view2;
                    XLEAssert.assertTrue("Failed to parse JSON string - " + e.getMessage(), false);
                    return view;
                }
            } catch (JSONException e2) {
                e = e2;
            }
        }
    }

    public static class ShortCircuitProfileResponse {
        public ErrorReturn error;
        public ArrayList<PhoneInfoView> views;

        public PhoneState isVerified(String phoneNumber) {
            if (this.views != null) {
                for (PhoneInfoView info : this.views) {
                    PhoneState phoneState = info.isVerified(phoneNumber);
                    if (phoneState != null) {
                        return phoneState;
                    }
                }
            }
            return null;
        }

        public String getXboxNumber() {
            if (this.views != null) {
                for (PhoneInfoView infoView : this.views) {
                    if (infoView.attributes != null) {
                        for (PhoneInfoAttribute attribute : infoView.attributes) {
                            if (attribute.value != null) {
                                for (PhoneInfo info : attribute.value) {
                                    String phoneNumber = info.name;
                                    if (info.name != null) {
                                        for (Application app : info.searchableApplications) {
                                            if (app.name.equalsIgnoreCase("XBOX")) {
                                                return phoneNumber;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }

        public static ShortCircuitProfileResponse parseJson(String jsonStr) {
            ShortCircuitProfileResponse response;
            JSONArray errors;
            ShortCircuitProfileResponse response2 = new ShortCircuitProfileResponse();
            if (!JavaUtil.isNullOrEmpty(jsonStr)) {
                try {
                    JSONObject root = new JSONObject(jsonStr);
                    if (root.length() <= 0) {
                        return response2;
                    }
                    JSONArray views = root.getJSONArray("Views");
                    if (views == null || views.length() <= 0) {
                        response = response2;
                    } else {
                        response = new ShortCircuitProfileResponse();
                        try {
                            response.views = new ArrayList<>();
                            for (int i = 0; i < views.length(); i++) {
                                JSONObject view = views.getJSONObject(i);
                                PhoneInfoView phoneInfoView = PhoneInfoView.parseJson(view);
                                if (phoneInfoView != null) {
                                    response.views.add(phoneInfoView);
                                }
                            }
                        } catch (JSONException e) {
                            e = e;
                            response2 = response;
                            XLEAssert.assertTrue("Failed to parse JSON string - " + e.getMessage(), false);
                        }
                    }
                    if (root.isNull("Errors") || (errors = root.getJSONArray("Errors")) == null || errors.length() <= 0) {
                        response2 = response;
                    } else {
                        response2 = new ShortCircuitProfileResponse();
                        response2.error = ErrorReturn.parseJson(errors.getJSONObject(0));
                    }
                } catch (JSONException e2) {
                    e = e2;
                }
                XLEAssert.assertTrue("Failed to parse JSON string - " + e.getMessage(), false);
            }
            return response2;
        }
    }

    public static String getMessage(XLEHttpStatusAndStream stream) {
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(stream.stream, HttpURLConnectionBuilder.DEFAULT_CHARSET), 4096);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = reader.readLine();
                if (line != null) {
                    sb.append(line + "\n");
                } else {
                    String message = sb.toString();
                    return message;
                }
            }
        } catch (IOException ioe) {
            XLEAssert.assertTrue("Failed to read ShortCircuitProfileMessage string - " + ioe.getMessage(), false);
            return null;
        }
    }
}
