package com.microsoft.xbox.xle.app;

import android.content.res.Configuration;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.toolkit.GsonUtil;
import com.microsoft.xbox.toolkit.IProjectSpecificDataProvider;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.network.XboxLiveEnvironment;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XleProjectSpecificDataProvider implements IProjectSpecificDataProvider {
    private String androidId;
    private boolean gotSettings;
    private boolean isMeAdult;
    private String meXuid;
    private String privileges;
    private String scdRpsTicket;
    private String[][] serviceLocales;
    private static XleProjectSpecificDataProvider instance = new XleProjectSpecificDataProvider();
    private static final String[][] displayLocales = {new String[]{"zh_SG", "zh", "CN"}, new String[]{"zh_CN", "zh", "CN"}, new String[]{"zh_HK", "zh", "TW"}, new String[]{"zh_TW", "zh", "TW"}, new String[]{"da", "da", "DK"}, new String[]{"nl", "nl", "NL"}, new String[]{"en", "en", "GB"}, new String[]{"en_US", "en", "US"}, new String[]{"fi", "fi", "FI"}, new String[]{"fr", "fr", "FR"}, new String[]{"de", "de", "DE"}, new String[]{"it", "it", "IT"}, new String[]{"ja", "ja", "JP"}, new String[]{"ko", "ko", "KR"}, new String[]{"nb", "nb", "NO"}, new String[]{"pl", "pl", "PL"}, new String[]{"pt_PT", "pt", "PT"}, new String[]{"pt", "pt", "BR"}, new String[]{"ru", "ru", "RU"}, new String[]{"es_ES", "es", "ES"}, new String[]{"es", "es", "MX"}, new String[]{"sv", "sv", "SE"}, new String[]{"tr", "tr", "TR"}};
    private Hashtable<String, String> serviceLocaleMapTable = new Hashtable<>();
    private Set<String> musicBlocked = new HashSet();
    private Set<String> videoBlocked = new HashSet();
    private Set<String> purchaseBlocked = new HashSet();
    private Set<String> blockFeaturedChild = new HashSet();
    private Set<String> promotionalRestrictedRegions = new HashSet();

    private XleProjectSpecificDataProvider() {
        this.serviceLocales = new String[][]{new String[]{"es_AR", "es-AR"}, new String[]{"AR", "es-AR"}, new String[]{"en_AU", "en-AU"}, new String[]{"AU", "en-AU"}, new String[]{"de_AT", "de-AT"}, new String[]{"AT", "de-AT"}, new String[]{"fr_BE", "fr-BE"}, new String[]{"nl_BE", "nl-BE"}, new String[]{"BE", "fr-BE"}, new String[]{"pt_BR", "pt-BR"}, new String[]{"BR", "pt-BR"}, new String[]{"en_CA", "en-CA"}, new String[]{"fr_CA", "fr-CA"}, new String[]{"CA", "en-CA"}, new String[]{"en_CZ", "en-CZ"}, new String[]{"CZ", "en-CZ"}, new String[]{"da_DK", "da-DK"}, new String[]{"DK", "da-DK"}, new String[]{"fi_FI", "fi-FI"}, new String[]{"FI", "fi-FI"}, new String[]{"fr_FR", "fr-FR"}, new String[]{"FR", "fr-FR"}, new String[]{"de_DE", "de-DE"}, new String[]{"DE", "de-DE"}, new String[]{"en_GR", "en-GR"}, new String[]{"GR", "en-GR"}, new String[]{"en_HK", "en-HK"}, new String[]{"zh_HK", "zh-HK"}, new String[]{"HK", "en-HK"}, new String[]{"en_HU", "en-HU"}, new String[]{"HU", "en-HU"}, new String[]{"en_IN", "en-IN"}, new String[]{"IN", "en-IN"}, new String[]{"en_GB", "en-GB"}, new String[]{"GB", "en-GB"}, new String[]{"en_IL", "en-IL"}, new String[]{"IL", "en-IL"}, new String[]{"it_IT", "it-IT"}, new String[]{"IT", "it-IT"}, new String[]{"ja_JP", "ja-JP"}, new String[]{"JP", "ja-JP"}, new String[]{"zh_CN", "zh-CN"}, new String[]{"CN", "zh-CN"}, new String[]{"es_MX", "es-MX"}, new String[]{"MX", "es-MX"}, new String[]{"es_CL", "es-CL"}, new String[]{"CL", "es-CL"}, new String[]{"es_CO", "es-CO"}, new String[]{"CO", "es-CO"}, new String[]{"nl_NL", "nl-NL"}, new String[]{"NL", "nl-NL"}, new String[]{"en_NZ", "en-NZ"}, new String[]{"NZ", "en-NZ"}, new String[]{"nb_NO", "nb-NO"}, new String[]{"NO", "nb-NO"}, new String[]{"pl_PL", "pl-PL"}, new String[]{"PL", "pl-PL"}, new String[]{"pt_PT", "pt-PT"}, new String[]{"PT", "pt-PT"}, new String[]{"ru_RU", "ru-RU"}, new String[]{"RU", "ru-RU"}, new String[]{"en_SA", "en-SA"}, new String[]{"SA", "en-SA"}, new String[]{"en_SG", "en-SG"}, new String[]{"zh_SG", "zh-SG"}, new String[]{"SG", "en-SG"}, new String[]{"en_SK", "en-SK"}, new String[]{"SK", "en-SK"}, new String[]{"en_ZA", "en-ZA"}, new String[]{"ZA", "en-ZA"}, new String[]{"ko_KR", "ko-KR"}, new String[]{"KR", "ko-KR"}, new String[]{"es_ES", "es-ES"}, new String[]{"es", "es-ES"}, new String[]{"de_CH", "de-CH"}, new String[]{"fr_CH", "fr-CH"}, new String[]{"CH", "fr-CH"}, new String[]{"zh_TW", "zh-TW"}, new String[]{"TW", "zh-TW"}, new String[]{"en_AE", "en-AE"}, new String[]{"AE", "en-AE"}, new String[]{"en_US", "en-US"}, new String[]{"US", "en-US"}, new String[]{"sv_SE", "sv-SE"}, new String[]{"SE", "sv-SE"}, new String[]{"tr_Tr", "tr-TR"}, new String[]{"Tr", "tr-TR"}, new String[]{"en_IE", "en-IE"}, new String[]{"IE", "en-IE"}};
        for (int i = 0; i < this.serviceLocales.length; i++) {
            this.serviceLocaleMapTable.put(this.serviceLocales[i][0], this.serviceLocales[i][1]);
        }
        this.serviceLocales = (String[][]) null;
    }

    public static XleProjectSpecificDataProvider getInstance() {
        return instance;
    }

    public void ensureDisplayLocale() {
        Locale mapLocale = null;
        Locale deviceLocale = Locale.getDefault();
        String localeStr = deviceLocale.toString();
        String language = deviceLocale.getLanguage();
        String region = deviceLocale.getCountry();
        for (int i = 0; i < displayLocales.length; i++) {
            if (displayLocales[i][0].equals(localeStr)) {
                if (!displayLocales[i][1].equals(language) || !displayLocales[i][2].equals(region)) {
                    mapLocale = new Locale(displayLocales[i][1], displayLocales[i][2]);
                    break;
                }
                return;
            }
        }
        if (mapLocale == null) {
            for (int i2 = 0; i2 < displayLocales.length; i2++) {
                if (displayLocales[i2][0].equals(language)) {
                    mapLocale = new Locale(displayLocales[i2][1], displayLocales[i2][2]);
                    break;
                }
            }
        }
        if (mapLocale != null) {
            DisplayMetrics dm = XboxTcuiSdk.getResources().getDisplayMetrics();
            Configuration conf = XboxTcuiSdk.getResources().getConfiguration();
            conf.locale = mapLocale;
            XboxTcuiSdk.getResources().updateConfiguration(conf, dm);
        }
    }

    private void addRegions(String locales, Set<String> blockSet) {
        if (!JavaUtil.isNullOrEmpty(locales)) {
            String[] list = locales.split("[|]");
            if (!XLEUtil.isNullOrEmpty(list)) {
                blockSet.clear();
                for (String region : list) {
                    if (!JavaUtil.isNullOrEmpty(region)) {
                        blockSet.add(region);
                    }
                }
            }
        }
    }

    public void processContentBlockedList(SmartglassSettings settings) {
        addRegions(settings.VIDEO_BLOCKED, this.videoBlocked);
        addRegions(settings.MUSIC_BLOCKED, this.musicBlocked);
        addRegions(settings.PURCHASE_BLOCKED, this.purchaseBlocked);
        addRegions(settings.BLOCK_FEATURED_CHILD, this.blockFeaturedChild);
        addRegions(settings.PROMOTIONAL_CONTENT_RESTRICTED_REGIONS, this.promotionalRestrictedRegions);
        this.gotSettings = true;
    }

    public boolean gotSettings() {
        return this.gotSettings;
    }

    public void setIsMeAdult(boolean isAdult) {
        this.isMeAdult = isAdult;
    }

    public boolean isMeAdult() {
        return this.isMeAdult;
    }

    public int getMeMaturityLevel() {
        ProfileModel meProfile = ProfileModel.getMeProfileModel();
        if (meProfile != null) {
            return meProfile.getMaturityLevel();
        }
        return 0;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getRegion() {
        return Locale.getDefault().getCountry();
    }

    public boolean isMusicBlocked() {
        return true;
    }

    public boolean isVideoBlocked() {
        return true;
    }

    public boolean isPurchaseBlocked() {
        return this.purchaseBlocked.contains(getRegion());
    }

    public boolean isFeaturedBlocked() {
        return !isMeAdult() && this.blockFeaturedChild.contains(getRegion());
    }

    public boolean isPromotionalRestricted() {
        return !isMeAdult() && this.promotionalRestrictedRegions.contains(getRegion());
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getXuidString() {
        return this.meXuid;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public void setXuidString(String xuid) {
        this.meXuid = xuid;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getPrivileges() {
        return this.privileges;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public void setPrivileges(String privileges) {
        this.privileges = privileges;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getSCDRpsTicket() {
        return this.scdRpsTicket;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public void setSCDRpsTicket(String ticket) {
        this.scdRpsTicket = ticket;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getLegalLocale() {
        return getConnectedLocale();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getCombinedContentRating() {
        return "";
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getMembershipLevel() {
        return ProfileModel.getMeProfileModel().getAccountTier() == null ? "Gold" : ProfileModel.getMeProfileModel().getAccountTier();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getAllowExplicitContent() {
        return true;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getInitializeComplete() {
        return getXuidString() != null;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getIsFreeAccount() {
        return false;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getIsXboxMusicSupported() {
        return true;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getWindowsLiveClientId() {
        switch (XboxLiveEnvironment.Instance().getEnvironment()) {
            case PROD:
                return "0000000048093EE3";
            case VINT:
            case DNET:
            case PARTNERNET:
                return "0000000068036303";
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getVersionCheckUrl() {
        switch (XboxLiveEnvironment.Instance().getEnvironment()) {
            case PROD:
            case PARTNERNET:
                return "http://www.xbox.com/en-US/Platform/Android/XboxLIVE/sgversion";
            case VINT:
            case DNET:
                return "http://www.rtm.vint.xbox.com/en-US/Platform/Android/XboxLIVE/sgversion";
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getAutoSuggestdDataSource() {
        return "bbxall2";
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public void resetModels(boolean clearEverything) {
        ProfileModel.reset();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean getIsForXboxOne() {
        return true;
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getCurrentSandboxID() {
        return "PROD";
    }

    private String getDeviceLocale() {
        Locale deviceLocale = Locale.getDefault();
        String localeStr = deviceLocale.toString();
        if (this.serviceLocaleMapTable.containsKey(localeStr)) {
            return this.serviceLocaleMapTable.get(localeStr);
        }
        String region = deviceLocale.getCountry();
        if (!JavaUtil.isNullOrEmpty(region) && this.serviceLocaleMapTable.containsKey(region)) {
            return this.serviceLocaleMapTable.get(region);
        }
        return "en-US";
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public boolean isDeviceLocaleKnown() {
        Locale deviceLocale = Locale.getDefault();
        String localeStr = deviceLocale.toString();
        if (this.serviceLocaleMapTable.containsKey(localeStr)) {
            return true;
        }
        String region = deviceLocale.getCountry();
        return !JavaUtil.isNullOrEmpty(region) && this.serviceLocaleMapTable.containsKey(region);
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getConnectedLocale() {
        return getDeviceLocale();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getConnectedLocale(boolean fromEdsCall) {
        return getConnectedLocale();
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public int getVersionCode() {
        return 1;
    }

    private class ContentRestrictions {
        public int version = 2;
        public Data data = new Data();

        public class Data {
            public String geographicRegion;
            public int maxAgeRating;
            public int preferredAgeRating;
            public boolean restrictPromotionalContent;

            public Data() {
            }
        }

        public ContentRestrictions(String region, int ageRating, boolean restrictPromotionalContent) {
            this.data.geographicRegion = region;
            Data data = this.data;
            this.data.preferredAgeRating = ageRating;
            data.maxAgeRating = ageRating;
            this.data.restrictPromotionalContent = restrictPromotionalContent;
        }
    }

    @Override // com.microsoft.xbox.toolkit.IProjectSpecificDataProvider
    public String getContentRestrictions() {
        String region = getRegion();
        int maturityLevel = getMeMaturityLevel();
        if (!JavaUtil.isNullOrEmpty(region) && maturityLevel != 255) {
            ContentRestrictions contentRestriction = new ContentRestrictions(region, maturityLevel, isPromotionalRestricted());
            String jsonString = GsonUtil.toJsonString(contentRestriction);
            if (!JavaUtil.isNullOrEmpty(jsonString)) {
                return Base64.encodeToString(jsonString.getBytes(), 2);
            }
        }
        return null;
    }
}
