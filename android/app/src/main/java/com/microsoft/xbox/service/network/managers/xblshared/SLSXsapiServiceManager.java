package com.microsoft.xbox.service.network.managers.xblshared;

import android.util.Log;
import android.util.Pair;
import com.microsoft.xbox.idp.util.HttpCall;
import com.microsoft.xbox.idp.util.HttpHeaders;
import com.microsoft.xbox.idp.util.HttpUtil;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderState;
import com.microsoft.xbox.service.model.friendfinder.LinkedAccountHelpers;
import com.microsoft.xbox.service.model.friendfinder.OptInStatus;
import com.microsoft.xbox.service.model.friendfinder.ShortCircuitProfileMessage;
import com.microsoft.xbox.service.model.friendfinder.UpdateThirdPartyTokenRequest;
import com.microsoft.xbox.service.model.privacy.PrivacySettings;
import com.microsoft.xbox.service.model.privacy.PrivacySettingsResult;
import com.microsoft.xbox.service.network.managers.AddFollowingUserResponseContainer;
import com.microsoft.xbox.service.network.managers.FamilySettings;
import com.microsoft.xbox.service.network.managers.IPeopleHubResult;
import com.microsoft.xbox.service.network.managers.IUserProfileResult;
import com.microsoft.xbox.service.network.managers.MutedListResultContainer;
import com.microsoft.xbox.service.network.managers.NeverListResultContainer;
import com.microsoft.xbox.service.network.managers.ProfilePreferredColor;
import com.microsoft.xbox.service.network.managers.ProfileSummaryResultContainer;
import com.microsoft.xbox.toolkit.GsonUtil;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.ProjectSpecificDataProvider;
import com.microsoft.xbox.toolkit.TcuiHttpUtil;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.network.XboxLiveEnvironment;
import com.microsoft.xbox.xle.app.FriendFinderSettings;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SLSXsapiServiceManager implements ISLSServiceManager {
    private static final String TAG = SLSXsapiServiceManager.class.getSimpleName();

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public FamilySettings getFamilySettings(String xuid) throws XLEException {
        return null;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean removeFriendFromShareIdentitySetting(String xuid, String postBody) throws XLEException {
        Log.i(TAG, "removeFriendFromShareIdentitySetting");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getRemoveUsersFromShareIdentityUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", url, ""), "4");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, Arrays.asList(204));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean addFriendToShareIdentitySetting(String xuid, String postBody) throws XLEException {
        Log.i(TAG, "addFriendToShareIdentitySetting");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getAddFriendsToShareIdentityUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", url, ""), "4");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, Arrays.asList(204));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean addUserToFavoriteList(String postBody) throws XLEException {
        Log.i(TAG, "addUserToFavoriteList");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getProfileFavoriteListUrl(), "add");
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", url, ""), "1");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, Arrays.asList(204));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean removeUserFromFavoriteList(String postBody) throws XLEException {
        Log.i(TAG, "removeUserFromFavoriteList");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getProfileFavoriteListUrl(), "remove");
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", url, ""), "1");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, Arrays.asList(204));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public AddFollowingUserResponseContainer.AddFollowingUserResponse addUserToFollowingList(String postBody) throws XLEException {
        Log.i(TAG, "addUserToFollowingList");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().updateProfileFollowingListUrl(), "add");
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", url, ""), "1");
        httpCall.setRequestBody(postBody);
        final AddFollowingUserResponseContainer.AddFollowingUserResponse result = new AddFollowingUserResponseContainer.AddFollowingUserResponse();
        final AtomicReference<Pair<Boolean, AddFollowingUserResponseContainer.AddFollowingUserResponse>> notifier = new AtomicReference<>();
        notifier.set(new Pair<>(false, null));
        httpCall.getResponseAsync(new HttpCall.Callback() { // from class: com.microsoft.xbox.service.network.managers.xblshared.SLSXsapiServiceManager.1
            @Override // com.microsoft.xbox.idp.util.HttpCall.Callback
            public void processResponse(int httpStatus, InputStream stream, HttpHeaders headers) throws Exception {
                synchronized (notifier) {
                    try {
                        if (httpStatus >= 200 || httpStatus <= 299) {
                            result.setAddFollowingRequestStatus(true);
                            notifier.set(new Pair(true, result));
                        } else {
                            AddFollowingUserResponseContainer.AddFollowingUserResponse response = (AddFollowingUserResponseContainer.AddFollowingUserResponse) GsonUtil.deserializeJson(stream, AddFollowingUserResponseContainer.AddFollowingUserResponse.class);
                            notifier.set(new Pair(true, response));
                        }
                        notifier.notify();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
        synchronized (notifier) {
            while (!((Boolean) notifier.get().first).booleanValue()) {
                try {
                    notifier.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        TcuiHttpUtil.throwIfNullOrFalse(notifier.get().second);
        return (AddFollowingUserResponseContainer.AddFollowingUserResponse) notifier.get().second;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public ProfileSummaryResultContainer.ProfileSummaryResult getProfileSummaryInfo(String xuid) throws XLEException {
        Log.i(TAG, "getProfileSummaryInfo");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        XLEAssert.assertTrue(!JavaUtil.isNullOrEmpty(xuid));
        String url = String.format(XboxLiveEnvironment.Instance().getProfileSummaryUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION);
        ProfileSummaryResultContainer.ProfileSummaryResult result = (ProfileSummaryResultContainer.ProfileSummaryResult) TcuiHttpUtil.getResponseSync(httpCall, ProfileSummaryResultContainer.ProfileSummaryResult.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean removeUserFromFollowingList(String postBody) throws XLEException {
        Log.i(TAG, "removeUserFromFollowingList");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().updateProfileFollowingListUrl(), "remove");
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", url, ""), "1");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, Arrays.asList(204));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public IUserProfileResult.UserProfileResult getUserProfileInfo(String postBody) throws XLEException {
        Log.i(TAG, "getUserProfileInfo");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = XboxLiveEnvironment.Instance().getUserProfileInfoUrl();
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", url, ""), XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION);
        httpCall.setRequestBody(postBody);
        IUserProfileResult.UserProfileResult result = (IUserProfileResult.UserProfileResult) TcuiHttpUtil.getResponseSync(httpCall, IUserProfileResult.UserProfileResult.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public int[] getXTokenPrivileges() throws XLEException {
        return new int[0];
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public ProfilePreferredColor getProfilePreferredColor(String url) throws XLEException {
        Log.i(TAG, "getProfilePreferredColor");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), "");
        ProfilePreferredColor result = (ProfilePreferredColor) TcuiHttpUtil.getResponseSync(httpCall, ProfilePreferredColor.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public PrivacySettingsResult getUserProfilePrivacySettings() throws XLEException {
        Log.i(TAG, "getUserProfilePrivacySettings");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = XboxLiveEnvironment.Instance().getUserProfileSettingUrlFormat();
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), "4");
        PrivacySettingsResult result = (PrivacySettingsResult) TcuiHttpUtil.getResponseSync(httpCall, PrivacySettingsResult.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public NeverListResultContainer.NeverListResult getNeverListInfo(String xuid) throws XLEException {
        Log.i(TAG, "getNeverListInfo");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        XLEAssert.assertTrue(!JavaUtil.isNullOrEmpty(xuid));
        String url = String.format(XboxLiveEnvironment.Instance().getProfileNeverListUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), "1");
        NeverListResultContainer.NeverListResult result = (NeverListResultContainer.NeverListResult) TcuiHttpUtil.getResponseSync(httpCall, NeverListResultContainer.NeverListResult.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean addUserToNeverList(String xuid, String postBody) throws XLEException {
        Log.i(TAG, "addUserToNeverList");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getProfileNeverListUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("PUT", url, ""), "1");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, new ArrayList(0));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean removeUserFromNeverList(String xuid, String postBody) throws XLEException {
        Log.i(TAG, "removeUserFromNeverList");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getProfileNeverListUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("DELETE", url, ""), "1");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, new ArrayList(0));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public MutedListResultContainer.MutedListResult getMutedListInfo(String xuid) throws XLEException {
        Log.i(TAG, "getMutedListInfo");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        XLEAssert.assertTrue(!JavaUtil.isNullOrEmpty(xuid));
        String url = String.format(XboxLiveEnvironment.Instance().getMutedServiceUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), "1");
        MutedListResultContainer.MutedListResult result = (MutedListResultContainer.MutedListResult) TcuiHttpUtil.getResponseSync(httpCall, MutedListResultContainer.MutedListResult.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean addUserToMutedList(String xuid, String postBody) throws XLEException {
        Log.i(TAG, "addUserToMutedList");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getMutedServiceUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("PUT", url, ""), "1");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, new ArrayList(0));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean removeUserFromMutedList(String xuid, String postBody) throws XLEException {
        Log.i(TAG, "removeUserFromMutedList");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getMutedServiceUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("DELETE", url, ""), "1");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, new ArrayList(0));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean submitFeedback(String xuid, String postBody) throws XLEException {
        Log.i(TAG, "submitFeedback");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getSubmitFeedbackUrlFormat(), xuid);
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("POST", url, ""), "101");
        httpCall.setRequestBody(postBody);
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, new ArrayList(202));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public FriendFinderSettings getFriendFinderSettings() throws XLEException {
        Log.i(TAG, "getFriendFinderSettings");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = XboxLiveEnvironment.Instance().getFriendFinderSettingsUrl();
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, "", false), "1");
        FriendFinderSettings result = (FriendFinderSettings) TcuiHttpUtil.getResponseSync(httpCall, FriendFinderSettings.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public FriendFinderState.FriendsFinderStateResult getPeopleHubFriendFinderState() throws XLEException {
        Log.i(TAG, "getPeopleHubFriendFinderState");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = XboxLiveEnvironment.Instance().getPeopleHubFriendFinderStateUrlFormat();
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), "1");
        httpCall.setCustomHeader("Accept-Language", ProjectSpecificDataProvider.getInstance().getLegalLocale());
        httpCall.setCustomHeader("X-XBL-Contract-Version", "1");
        httpCall.setCustomHeader("X-XBL-Market", ProjectSpecificDataProvider.getInstance().getRegion());
        FriendFinderState.FriendsFinderStateResult result = (FriendFinderState.FriendsFinderStateResult) TcuiHttpUtil.getResponseSync(httpCall, FriendFinderState.FriendsFinderStateResult.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public PrivacySettings.PrivacySetting getPrivacySetting(PrivacySettings.PrivacySettingId settingId) throws XLEException {
        Log.i(TAG, "getPrivacySetting");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getProfileSettingUrlFormat(), settingId.name());
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), "4");
        PrivacySettings.PrivacySetting result = (PrivacySettings.PrivacySetting) TcuiHttpUtil.getResponseSync(httpCall, PrivacySettings.PrivacySetting.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean setPrivacySettings(PrivacySettingsResult settings) throws XLEException {
        Log.i(TAG, "setPrivacySettings");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = XboxLiveEnvironment.Instance().getUserProfileSettingUrlFormat();
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("PUT", url, ""), "4");
        httpCall.setRequestBody(PrivacySettingsResult.getPrivacySettingRequestBody(settings));
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, Arrays.asList(201));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean setFriendFinderOptInStatus(LinkedAccountHelpers.LinkedAccountType type, OptInStatus optInStatus) throws XLEException {
        Log.i(TAG, "setFriendFinderOptInStatus");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getSetFriendFinderOptInStatusUrlFormat(), type.name());
        String query = optInStatus == OptInStatus.OptedIn ? "?status=OptedIn&waitForUpdate=true" : "?status=OptedOut";
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("PUT", url, query), "1");
        httpCall.setCustomHeader("Content-Length", "0");
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, Arrays.asList(204));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public boolean updateThirdPartyToken(LinkedAccountHelpers.LinkedAccountType type, String token) throws XLEException {
        Log.i(TAG, "updateThirdPartyToken");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = String.format(XboxLiveEnvironment.Instance().getUpdateThirdPartyTokenUrlFormat(), type.name());
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("PUT", url, ""), "1");
        httpCall.setRequestBody(UpdateThirdPartyTokenRequest.getUpdateThirdPartyTokenRequestBody(new UpdateThirdPartyTokenRequest(token)));
        boolean result = TcuiHttpUtil.getResponseSyncSucceeded(httpCall, Arrays.asList(204));
        TcuiHttpUtil.throwIfNullOrFalse(Boolean.valueOf(result));
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public IPeopleHubResult.PeopleHubPeopleSummary getPeopleHubRecommendations() throws XLEException {
        Log.i(TAG, "getPeopleHubRecommendations");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String url = XboxLiveEnvironment.Instance().getPeopleHubRecommendationsUrlFormat();
        HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), "1");
        httpCall.setCustomHeader("Accept-Language", ProjectSpecificDataProvider.getInstance().getLegalLocale());
        httpCall.setCustomHeader("X-XBL-Contract-Version", "1");
        httpCall.setCustomHeader("X-XBL-Market", ProjectSpecificDataProvider.getInstance().getRegion());
        IPeopleHubResult.PeopleHubPeopleSummary result = (IPeopleHubResult.PeopleHubPeopleSummary) TcuiHttpUtil.getResponseSync(httpCall, IPeopleHubResult.PeopleHubPeopleSummary.class);
        TcuiHttpUtil.throwIfNullOrFalse(result);
        return result;
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public ShortCircuitProfileMessage.ShortCircuitProfileResponse getMyShortCircuitProfile() throws XLEException {
        Log.i(TAG, "getMyShortCircuitProfile");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String rpsTicket = ProjectSpecificDataProvider.getInstance().getSCDRpsTicket();
        XLEAssert.assertFalse("Expected to have acquired a ticket already", JavaUtil.isNullOrEmpty(rpsTicket));
        if (JavaUtil.isNullOrEmpty(rpsTicket)) {
            throw new XLEException(2L);
        }
        String url = XboxLiveEnvironment.Instance().getShortCircuitProfileUrlFormat();
        HttpCall httpCall = new HttpCall("GET", url, "");
        httpCall.setCustomHeader("PS-MSAAuthTicket", rpsTicket);
        httpCall.setCustomHeader("PS-ApplicationId", "44445A65-4A71-4083-8C90-041A22856E69");
        httpCall.setCustomHeader("PS-Scenario", "Minecraft TCUI Friend Finder");
        httpCall.setCustomHeader("Content-Type", "application/x-www-form-urlencoded");
        String result = TcuiHttpUtil.getResponseBodySync(httpCall);
        if (JavaUtil.isNullOrEmpty(result)) {
            throw new XLEException(2L);
        }
        return ShortCircuitProfileMessage.ShortCircuitProfileResponse.parseJson(result);
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public ShortCircuitProfileMessage.ShortCircuitProfileResponse sendShortCircuitProfile(ShortCircuitProfileMessage.ShortCircuitProfileRequest request) throws XLEException {
        Log.i(TAG, "sendShortCircuitProfile");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String rpsTicket = ProjectSpecificDataProvider.getInstance().getSCDRpsTicket();
        XLEAssert.assertFalse("Expected to have acquired a ticket already", JavaUtil.isNullOrEmpty(rpsTicket));
        if (JavaUtil.isNullOrEmpty(rpsTicket)) {
            throw new XLEException(2L);
        }
        String url = XboxLiveEnvironment.Instance().getShortCircuitProfileUrlFormat();
        HttpCall httpCall = new HttpCall("POST", url, "");
        httpCall.setCustomHeader("PS-MSAAuthTicket", rpsTicket);
        httpCall.setCustomHeader("PS-ApplicationId", "44445A65-4A71-4083-8C90-041A22856E69");
        httpCall.setCustomHeader("PS-Scenario", "Minecraft TCUI Friend Finder");
        httpCall.setCustomHeader("Content-Type", "application/x-www-form-urlencoded");
        httpCall.setRequestBody(request.toString());
        String result = TcuiHttpUtil.getResponseBodySync(httpCall);
        if (JavaUtil.isNullOrEmpty(result)) {
            throw new XLEException(2L);
        }
        return ShortCircuitProfileMessage.ShortCircuitProfileResponse.parseJson(result);
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public ShortCircuitProfileMessage.UploadPhoneContactsResponse updatePhoneContacts(ShortCircuitProfileMessage.UploadPhoneContactsRequest request) throws XLEException {
        Log.i(TAG, "updatePhoneContacts");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        String rpsTicket = ProjectSpecificDataProvider.getInstance().getSCDRpsTicket();
        XLEAssert.assertFalse("Expected to have acquired a ticket already", JavaUtil.isNullOrEmpty(rpsTicket));
        if (JavaUtil.isNullOrEmpty(rpsTicket)) {
            throw new XLEException(2L);
        }
        String url = XboxLiveEnvironment.Instance().getUploadingPhoneContactsUrlFormat();
        HttpCall httpCall = new HttpCall("POST", url, "");
        httpCall.setCustomHeader("X-TicketToken", rpsTicket);
        httpCall.setCustomHeader("X-AppId", "44445A65-4A71-4083-8C90-041A22856E69");
        httpCall.setCustomHeader("X-Scenario", "Minecraft TCUI Friend Finder");
        httpCall.setCustomHeader("Content-Type", "application/x-www-form-urlencoded");
        httpCall.setRequestBody(request.toString());
        String result = TcuiHttpUtil.getResponseBodySync(httpCall);
        if (JavaUtil.isNullOrEmpty(result)) {
            throw new XLEException(2L);
        }
        return ShortCircuitProfileMessage.UploadPhoneContactsResponse.parseJson(result);
    }

    @Override // com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager
    public IUserProfileResult.UserProfileResult SearchGamertag(String gamertag) throws XLEException {
        Log.i(TAG, "SearchGamertag");
        XLEAssert.assertTrue(Thread.currentThread() != ThreadManager.UIThread);
        try {
            String url = String.format(XboxLiveEnvironment.Instance().getGamertagSearchUrlFormat(), URLEncoder.encode(gamertag.toLowerCase(), "utf-8"));
            HttpCall httpCall = HttpUtil.appendCommonParameters(new HttpCall("GET", url, ""), XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION);
            IUserProfileResult.UserProfileResult result = (IUserProfileResult.UserProfileResult) TcuiHttpUtil.getResponseSync(httpCall, IUserProfileResult.UserProfileResult.class);
            TcuiHttpUtil.throwIfNullOrFalse(result);
            return result;
        } catch (UnsupportedEncodingException e) {
            throw new XLEException(15L, e);
        }
    }
}
