package com.microsoft.xbox.toolkit.network;

import com.microsoft.xbox.toolkit.XLEAssert;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XboxLiveEnvironment {
    public static final String NEVER_LIST_CONTRACT_VERSION = "1";
    public static final String SHARE_IDENTITY_CONTRACT_VERSION = "4";
    public static final String SOCIAL_SERVICE_GENERAL_CONTRACT_VERSION = "1";
    public static final String USER_PROFILE_CONTRACT_VERSION = "2";
    public static final String USER_PROFILE_PRIVACY_SETTINGS_CONTRACT_VERSION = "4";
    private static XboxLiveEnvironment instance = new XboxLiveEnvironment();
    private Environment environment = Environment.PROD;
    private final boolean useProxy = false;

    public enum Environment {
        STUB,
        VINT,
        CERTNET,
        PARTNERNET,
        PROD,
        DNET
    }

    public static XboxLiveEnvironment Instance() {
        return instance;
    }

    public String getUserProfileInfoUrl() {
        switch (this.environment) {
            case VINT:
            case DNET:
                return "https://profile.dnet.xboxlive.com/users/batch/profile/settings";
            case PARTNERNET:
                return "https://profile.dnet.xboxlive.com/users/batch/profile/settings";
            case PROD:
                return "https://profile.xboxlive.com/users/batch/profile/settings";
            default:
                throw new UnsupportedOperationException();
        }
    }

    public String getAddFriendsToShareIdentityUrlFormat() {
        switch (this.environment) {
            case VINT:
            case DNET:
                return "https://social.dnet.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=add";
            case PARTNERNET:
            default:
                throw new UnsupportedOperationException();
            case PROD:
                return "https://social.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=add";
        }
    }

    public String getRemoveUsersFromShareIdentityUrlFormat() {
        switch (this.environment) {
            case VINT:
            case DNET:
                return "https://social.dnet.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=remove";
            case PARTNERNET:
            default:
                throw new UnsupportedOperationException();
            case PROD:
                return "https://social.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=remove";
        }
    }

    public String getProfileNeverListUrlFormat() {
        switch (this.environment) {
            case VINT:
            case DNET:
                return "https://privacy.dnet.xboxlive.com/users/xuid(%s)/people/never";
            case PARTNERNET:
                return "https://privacy.dnet.xboxlive.com/users/xuid(%s)/people/never";
            case PROD:
                return "https://privacy.xboxlive.com/users/xuid(%s)/people/never";
            default:
                throw new UnsupportedOperationException();
        }
    }

    public String getProfileFavoriteListUrl() {
        switch (this.environment) {
            case VINT:
            case DNET:
                return "https://social.dnet.xboxlive.com/users/me/people/favorites/xuids?method=%s";
            case PARTNERNET:
                return "https://social.dnet.xboxlive.com/users/me/people/favorites/xuids?method=%s";
            case PROD:
                return "https://social.xboxlive.com/users/me/people/favorites/xuids?method=%s";
            default:
                throw new UnsupportedOperationException();
        }
    }

    public String updateProfileFollowingListUrl() {
        switch (this.environment) {
            case VINT:
            case DNET:
                return "https://social.dnet.xboxlive.com/users/me/people/xuids?method=%s";
            case PARTNERNET:
                return "https://social.dnet.xboxlive.com/users/me/people/xuids?method=%s";
            case PROD:
                return "https://social.xboxlive.com/users/me/people/xuids?method=%s";
            default:
                throw new UnsupportedOperationException();
        }
    }

    public String getProfileSummaryUrlFormat() {
        switch (this.environment) {
            case VINT:
            case DNET:
                return "https://social.dnet.xboxlive.com/users/xuid(%s)/summary";
            case PARTNERNET:
            default:
                throw new UnsupportedOperationException();
            case PROD:
                return "https://social.xboxlive.com/users/xuid(%s)/summary";
        }
    }

    public void setEnvironment(Environment environment) {
        this.environment = environment;
    }

    public Environment getEnvironment() {
        return this.environment;
    }

    public boolean getProxyEnabled() {
        return false;
    }

    public String getTenureWatermarkUrlFormat() {
        return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/tenure/%s.png";
    }

    public String getWatermarkUrl(String watermark) {
        switch (watermark.toLowerCase()) {
            case "cheater":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/cheater.png";
            case "xboxoriginalteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxoriginalteam.png";
            case "xboxlivelaunchteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxlivelaunchteam.png";
            case "launchteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/launchteam.png";
            case "nxeteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/nxeteam.png";
            case "kinectteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/kinectteam.png";
            case "xboxoneteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxoneteam.png";
            case "xboxnxoeteam":
                return "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxnxoeteam.png";
            default:
                XLEAssert.fail("Unsupported watermark value: " + watermark);
                return "";
        }
    }

    public String getMutedServiceUrlFormat() {
        return "https://privacy.xboxlive.com/users/xuid(%s)/people/mute";
    }

    public String getSubmitFeedbackUrlFormat() {
        return "https://reputation.xboxlive.com/users/xuid(%s)/feedback";
    }

    public String getUserProfileSettingUrlFormat() {
        return "https://privacy.xboxlive.com/users/me/privacy/settings";
    }

    public String getFriendFinderSettingsUrl() {
        return "https://settings.xboxlive.com/settings/feature/friendfinder/settings";
    }

    public String getPeopleHubFriendFinderStateUrlFormat() {
        return "https://peoplehub.xboxlive.com/users/me/friendfinder";
    }

    public String getProfileSettingUrlFormat() {
        return "https://privacy.xboxlive.com/users/me/privacy/settings/%s";
    }

    public String getSetFriendFinderOptInStatusUrlFormat() {
        return "https://friendfinder.xboxlive.com/users/me/networks/%s/optin";
    }

    public String getUpdateThirdPartyTokenUrlFormat() {
        return "https://thirdpartytokens.xboxlive.com/users/me/networks/%s/token";
    }

    public String getPeopleHubRecommendationsUrlFormat() {
        return "https://peoplehub.xboxlive.com/users/me/people/recommendations";
    }

    public String getShortCircuitProfileUrlFormat() {
        return "https://pf.directory.live.com/profile/mine/System.ShortCircuitProfile.json";
    }

    public String getUploadingPhoneContactsUrlFormat() {
        return "https://people.directory.live.com/people/ExternalSCDLookup";
    }

    public String getGamertagSearchUrlFormat() {
        switch (this.environment) {
            case VINT:
            case DNET:
                return "https://profile.dnet.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep";
            case PARTNERNET:
                return "https://profile.dnet.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep";
            case PROD:
                return "https://profile.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep";
            default:
                throw new UnsupportedOperationException();
        }
    }
}
