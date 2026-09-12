package com.microsoft.xbox.service.network.managers.friendfinder;

import android.content.ContentResolver;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import com.microsoft.xbox.service.model.XPrivilegeConstants;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Set;
import net.hockeyapp.android.utils.HttpURLConnectionBuilder;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class PhoneContactInfo {
    public static final int MinimumPhoneLength = 7;
    private static PhoneContactInfo instance = new PhoneContactInfo();
    private ArrayList<Contact> contacts;
    private final String[][] countryCodes = {new String[]{"93", "AF", ""}, new String[]{"355", "AL", ""}, new String[]{"213", "DZ", ""}, new String[]{"376", "AD", ""}, new String[]{"244", "AO", ""}, new String[]{"672", "AQ", ""}, new String[]{"54", "AR", ""}, new String[]{"374", "AM", ""}, new String[]{"297", "AW", ""}, new String[]{"61", "AU", ""}, new String[]{"43", "AT", ""}, new String[]{"994", "AZ", ""}, new String[]{"973", "BH", ""}, new String[]{"880", "BD", ""}, new String[]{"375", "BY", ""}, new String[]{"32", "BE", ""}, new String[]{"501", "BZ", ""}, new String[]{"229", "BJ", ""}, new String[]{"975", "BT", ""}, new String[]{"591", "BO", ""}, new String[]{"387", "BA", ""}, new String[]{"267", "BW", ""}, new String[]{"55", "BR", ""}, new String[]{"673", "BN", ""}, new String[]{"359", "BG", ""}, new String[]{"226", "BF", ""}, new String[]{"95", "MM", ""}, new String[]{"257", "BI", ""}, new String[]{"855", "KH", ""}, new String[]{"237", "CM", ""}, new String[]{"1", "CA", ""}, new String[]{"238", "CV", ""}, new String[]{"236", "CF", ""}, new String[]{"235", "TD", ""}, new String[]{"56", "CL", ""}, new String[]{"86", "CN", ""}, new String[]{"61", "CX", ""}, new String[]{"61", "CC", ""}, new String[]{"57", "CO", ""}, new String[]{"269", "KM", ""}, new String[]{"242", "CG", ""}, new String[]{"243", "CD", ""}, new String[]{"682", "CK", ""}, new String[]{"506", "CR", ""}, new String[]{"385", "HR", ""}, new String[]{"53", "CU", ""}, new String[]{"357", "CY", ""}, new String[]{"420", "CZ", ""}, new String[]{"45", "DK", ""}, new String[]{"253", "DJ", ""}, new String[]{"670", "TL", ""}, new String[]{"593", "EC", ""}, new String[]{"20", "EG", ""}, new String[]{"503", "SV", ""}, new String[]{"240", "GQ", ""}, new String[]{"291", "ER", ""}, new String[]{"372", "EE", ""}, new String[]{"251", "ET", ""}, new String[]{"500", "FK", ""}, new String[]{"298", "FO", ""}, new String[]{"679", "FJ", ""}, new String[]{"358", "FI", ""}, new String[]{"33", "FR", ""}, new String[]{"689", "PF", ""}, new String[]{"241", "GA", ""}, new String[]{"220", "GM", ""}, new String[]{"995", "GE", ""}, new String[]{"49", "DE", ""}, new String[]{"233", "GH", ""}, new String[]{"350", "GI", ""}, new String[]{"30", "GR", ""}, new String[]{"299", "GL", ""}, new String[]{"502", "GT", ""}, new String[]{"224", "GN", ""}, new String[]{XPrivilegeConstants.XPRIVILEGE_PURCHASE_CONTENT, "GW", ""}, new String[]{"592", "GY", ""}, new String[]{"509", "HT", ""}, new String[]{"504", "HN", ""}, new String[]{"852", "HK", ""}, new String[]{"36", "HU", ""}, new String[]{"91", "IN", ""}, new String[]{"62", "ID", ""}, new String[]{"98", "IR", ""}, new String[]{"964", "IQ", ""}, new String[]{"353", "IE", ""}, new String[]{"44", "IM", ""}, new String[]{"972", "IL", ""}, new String[]{"39", "IT", ""}, new String[]{"225", "CI", ""}, new String[]{"81", "JP", ""}, new String[]{"962", "JO", ""}, new String[]{"7", "KZ", ""}, new String[]{"254", "KE", ""}, new String[]{"686", "KI", ""}, new String[]{"965", "KW", ""}, new String[]{"996", "KG", ""}, new String[]{"856", "LA", ""}, new String[]{"371", "LV", ""}, new String[]{"961", "LB", ""}, new String[]{"266", "LS", ""}, new String[]{"231", "LR", ""}, new String[]{"218", "LY", ""}, new String[]{"423", "LI", ""}, new String[]{"370", "LT", ""}, new String[]{"352", "LU", ""}, new String[]{"853", "MO", ""}, new String[]{"389", "MK", ""}, new String[]{"261", "MG", ""}, new String[]{"265", "MW", ""}, new String[]{"60", "MY", ""}, new String[]{"960", "MV", ""}, new String[]{"223", "ML", ""}, new String[]{"356", "MT", ""}, new String[]{"692", "MH", ""}, new String[]{"222", "MR", ""}, new String[]{"230", "MU", ""}, new String[]{"262", "YT", ""}, new String[]{"52", "MX", ""}, new String[]{"691", "FM", ""}, new String[]{"373", "MD", ""}, new String[]{"377", "MC", ""}, new String[]{"976", "MN", ""}, new String[]{"382", "ME", ""}, new String[]{"212", "MA", ""}, new String[]{"258", "MZ", ""}, new String[]{"264", "NA", ""}, new String[]{"674", "NR", ""}, new String[]{"977", "NP", ""}, new String[]{"31", "NL", ""}, new String[]{"599", "AN", ""}, new String[]{"687", "NC", ""}, new String[]{"64", "NZ", ""}, new String[]{"505", "NI", ""}, new String[]{"227", "NE", ""}, new String[]{"234", "NG", ""}, new String[]{"683", "NU", ""}, new String[]{"850", "KP", ""}, new String[]{"47", "NO", ""}, new String[]{"968", "OM", ""}, new String[]{"92", "PK", ""}, new String[]{"680", "PW", ""}, new String[]{"507", "PA", ""}, new String[]{"675", "PG", ""}, new String[]{"595", "PY", ""}, new String[]{"51", "PE", ""}, new String[]{"63", "PH", ""}, new String[]{"870", "PN", ""}, new String[]{"48", "PL", ""}, new String[]{"351", "PT", ""}, new String[]{"1", "PR", ""}, new String[]{"974", "QA", ""}, new String[]{"40", "RO", ""}, new String[]{"7", "RU", ""}, new String[]{"250", "RW", ""}, new String[]{"590", "BL", ""}, new String[]{"685", "WS", ""}, new String[]{"378", "SM", ""}, new String[]{"239", "ST", ""}, new String[]{"966", "SA", ""}, new String[]{XPrivilegeConstants.XPRIVILEGE_PII_ACCESS, "SN", ""}, new String[]{"381", "RS", ""}, new String[]{"248", "SC", ""}, new String[]{"232", "SL", ""}, new String[]{"65", "SG", ""}, new String[]{"421", "SK", ""}, new String[]{"386", "SI", ""}, new String[]{"677", "SB", ""}, new String[]{XPrivilegeConstants.XPRIVILEGE_COMMUNICATIONS, "SO", ""}, new String[]{"27", "ZA", ""}, new String[]{"82", "KR", ""}, new String[]{"34", "ES", ""}, new String[]{"94", "LK", ""}, new String[]{"290", "SH", ""}, new String[]{"508", "PM", ""}, new String[]{XPrivilegeConstants.XPRIVILEGE_PROFILE_VIEWING, "SD", ""}, new String[]{"597", "SR", ""}, new String[]{"268", "SZ", ""}, new String[]{"46", "SE", ""}, new String[]{"41", "CH", ""}, new String[]{"963", "SY", ""}, new String[]{"886", "TW", ""}, new String[]{"992", "TJ", ""}, new String[]{XPrivilegeConstants.XPRIVILEGE_ADD_FRIEND, "TZ", ""}, new String[]{"66", "TH", ""}, new String[]{"228", "TG", ""}, new String[]{"690", "TK", ""}, new String[]{"676", "TO", ""}, new String[]{"216", "TN", ""}, new String[]{"90", "TR", ""}, new String[]{"993", "TM", ""}, new String[]{"688", "TV", ""}, new String[]{"971", "AE", ""}, new String[]{"256", "UG", ""}, new String[]{"44", "GB", ""}, new String[]{"380", "UA", ""}, new String[]{"598", "UY", ""}, new String[]{"1", "US", ""}, new String[]{"998", "UZ", ""}, new String[]{"678", "VU", ""}, new String[]{"39", "VA", ""}, new String[]{"58", "VE", ""}, new String[]{"84", "VN", ""}, new String[]{"681", "WF", ""}, new String[]{"967", "YE", ""}, new String[]{"260", "ZM", ""}, new String[]{"263", "ZW", ""}};
    private boolean isXboxContactsUpdated;
    private String phoneNumberFromSim;
    private String profilePhoneNumber;
    private String region;
    private String userEnteredNumber;

    public class Contact {
        public String displayName;
        public String id;
        public boolean isOnXbox;
        public boolean isSelected;
        public ArrayList<String> phoneNumbers;

        public Contact(String id, String displayName) {
            this.id = id;
            this.displayName = displayName;
        }

        public void addPhoneNumber(String number) {
            if (this.phoneNumbers == null) {
                this.phoneNumbers = new ArrayList<>();
            }
            this.phoneNumbers.add(number);
        }
    }

    private PhoneContactInfo() {
        for (int i = 0; i < this.countryCodes.length; i++) {
            Locale local = new Locale("", this.countryCodes[i][1]);
            String countryName = local.getDisplayCountry();
            XLEAssert.assertFalse("Failed to get country name : " + this.countryCodes[i][1], JavaUtil.isNullOrEmpty(countryName));
            this.countryCodes[i][2] = countryName;
        }
    }

    public static PhoneContactInfo getInstance() {
        return instance;
    }

    public boolean isXboxContactsUpdated() {
        return this.isXboxContactsUpdated;
    }

    public static String normalizePhoneNumber(String phoneNumber) {
        if (phoneNumber == null || phoneNumber.length() < 7) {
            return null;
        }
        String phoneNumber2 = phoneNumber.toLowerCase();
        if (phoneNumber2.indexOf("ext") >= 0 || phoneNumber2.indexOf("x") >= 0) {
            return null;
        }
        StringBuffer sb = new StringBuffer(phoneNumber2.length());
        for (int i = 0; i < phoneNumber2.length(); i++) {
            char c = phoneNumber2.charAt(i);
            if (Character.isDigit(c)) {
                sb.append(c);
            }
        }
        if (sb.length() >= 7) {
            return sb.toString();
        }
        return null;
    }

    public static String sha2Encryption(String msg) {
        if (!JavaUtil.isNullOrEmpty(msg)) {
            try {
                MessageDigest digest = MessageDigest.getInstance("SHA-256");
                digest.reset();
                byte[] byteData = digest.digest(msg.getBytes(HttpURLConnectionBuilder.DEFAULT_CHARSET));
                return Base64.encodeToString(byteData, 0, byteData.length, 10);
            } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
                return null;
            }
        }
        return msg;
    }

    public String getCountryCode() {
        String region = getRegion();
        return getContryCodeFromRegion(region);
    }

    public String getPhoneNumberFromSim() {
        if (this.phoneNumberFromSim == null) {
            try {
                TelephonyManager manager = (TelephonyManager) XboxTcuiSdk.getSystemService("phone");
                String phoneNumber = manager.getLine1Number();
                String region = getRegion();
                if (!JavaUtil.isNullOrEmpty(phoneNumber) && !JavaUtil.isNullOrEmpty(region)) {
                    String countryCode = getCountryCode();
                    if (phoneNumber.startsWith(countryCode)) {
                        this.region = region;
                        this.phoneNumberFromSim = phoneNumber.substring(countryCode.length());
                    }
                }
            } catch (SecurityException e) {
                this.phoneNumberFromSim = "";
            }
        }
        return this.phoneNumberFromSim;
    }

    public void setUserEnteredNumber(String number) {
        this.userEnteredNumber = number;
    }

    public String getUserEnteredNumber() {
        return this.userEnteredNumber;
    }

    public void setProfileNumber(String number) {
        this.profilePhoneNumber = number;
    }

    public String getProfileNumber() {
        return this.profilePhoneNumber;
    }

    public String getRegionWithCode() {
        String region = getInstance().getRegion();
        String code = getInstance().getCountryCode();
        if (JavaUtil.isNullOrEmpty(region) || JavaUtil.isNullOrEmpty(code)) {
            return null;
        }
        return region + "-" + code;
    }

    public String getRegion() {
        if (this.region == null) {
            TelephonyManager manager = (TelephonyManager) XboxTcuiSdk.getSystemService("phone");
            this.region = manager.getSimCountryIso().toUpperCase();
        }
        if (JavaUtil.isNullOrEmpty(this.region)) {
            this.region = Locale.getDefault().getCountry();
        }
        return this.region;
    }

    public ArrayList<Contact> getContacts() {
        if (this.contacts == null) {
            try {
                ContentResolver cr = XboxTcuiSdk.getContentResolver();
                Cursor contactCuror = cr.query(ContactsContract.Contacts.CONTENT_URI, null, null, null, null);
                if (contactCuror == null) {
                    return null;
                }
                while (contactCuror.moveToNext()) {
                    String id = contactCuror.getString(contactCuror.getColumnIndex("_id"));
                    String name = contactCuror.getString(contactCuror.getColumnIndex("display_name"));
                    if (Integer.parseInt(contactCuror.getString(contactCuror.getColumnIndex("has_phone_number"))) > 0) {
                        Cursor phoneCursor = cr.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id = ?", new String[]{id}, null);
                        Contact contact = null;
                        String countryCode = getCountryCode();
                        while (phoneCursor.moveToNext()) {
                            String phoneNumber = phoneCursor.getString(phoneCursor.getColumnIndex("data1"));
                            if (!JavaUtil.isNullOrEmpty(phoneNumber)) {
                                String phoneNumber2 = normalizePhoneNumber(phoneNumber);
                                if (!JavaUtil.isNullOrEmpty(phoneNumber2)) {
                                    if (contact == null) {
                                        contact = new Contact(id, name);
                                    }
                                    contact.addPhoneNumber(phoneNumber2);
                                    if (!JavaUtil.isNullOrEmpty(countryCode) && !phoneNumber2.startsWith(countryCode)) {
                                        contact.addPhoneNumber(countryCode + phoneNumber2);
                                    }
                                }
                            }
                        }
                        if (contact != null && !XLEUtil.isNullOrEmpty(contact.phoneNumbers)) {
                            if (this.contacts == null) {
                                this.contacts = new ArrayList<>();
                            }
                            this.contacts.add(contact);
                        }
                        phoneCursor.close();
                    }
                }
                contactCuror.close();
            } catch (SecurityException e) {
                return null;
            }
        }
        return this.contacts;
    }

    public void updateXboxContacts(Set<String> aliases) {
        this.isXboxContactsUpdated = true;
        if (!XLEUtil.isNullOrEmpty(aliases)) {
            Enumeration iter = Collections.enumeration(this.contacts);
            while (iter.hasMoreElements() && !aliases.isEmpty()) {
                Contact contact = (Contact) iter.nextElement();
                if (aliases.contains(contact.id)) {
                    aliases.remove(contact.id);
                    contact.isOnXbox = true;
                }
            }
        }
    }

    public ArrayList<String> getCountryNames() {
        ArrayList<String> countries = new ArrayList<>();
        for (int i = 0; i < this.countryCodes.length; i++) {
            countries.add(this.countryCodes[i][2]);
        }
        Collections.sort(countries);
        return countries;
    }

    public String getRegionFromCountryName(String countryName) {
        for (int i = 0; i < this.countryCodes.length; i++) {
            if (TextUtils.equals(countryName, this.countryCodes[i][2])) {
                return this.countryCodes[i][1];
            }
        }
        return null;
    }

    public String getContryCodeFromRegion(String region) {
        for (int i = 0; i < this.countryCodes.length; i++) {
            if (TextUtils.equals(region, this.countryCodes[i][1])) {
                return this.countryCodes[i][0];
            }
        }
        return null;
    }

    public String getCountryNameFromRegion(String region) {
        for (int i = 0; i < this.countryCodes.length; i++) {
            if (TextUtils.equals(region, this.countryCodes[i][1])) {
                return this.countryCodes[i][2];
            }
        }
        return null;
    }
}
