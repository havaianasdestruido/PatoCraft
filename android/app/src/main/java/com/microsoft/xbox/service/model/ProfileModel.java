package com.microsoft.xbox.service.model;

import android.util.Log;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderState;
import com.microsoft.xbox.service.model.privacy.PrivacySettingsResult;
import com.microsoft.xbox.service.model.sls.AddShareIdentityRequest;
import com.microsoft.xbox.service.model.sls.FavoriteListRequest;
import com.microsoft.xbox.service.model.sls.FeedbackType;
import com.microsoft.xbox.service.model.sls.MutedListRequest;
import com.microsoft.xbox.service.model.sls.NeverListRequest;
import com.microsoft.xbox.service.model.sls.SubmitFeedbackRequest;
import com.microsoft.xbox.service.model.sls.UserProfileRequest;
import com.microsoft.xbox.service.model.sls.UserProfileSetting;
import com.microsoft.xbox.service.network.managers.AddFollowingUserResponseContainer;
import com.microsoft.xbox.service.network.managers.FamilySettings;
import com.microsoft.xbox.service.network.managers.FollowingSummaryResult;
import com.microsoft.xbox.service.network.managers.IFollowerPresenceResult;
import com.microsoft.xbox.service.network.managers.IPeopleHubResult;
import com.microsoft.xbox.service.network.managers.IUserProfileResult;
import com.microsoft.xbox.service.network.managers.MutedListResultContainer;
import com.microsoft.xbox.service.network.managers.NeverListResultContainer;
import com.microsoft.xbox.service.network.managers.ProfileSummaryResultContainer;
import com.microsoft.xbox.service.network.managers.ServiceManagerFactory;
import com.microsoft.xbox.service.network.managers.friendfinder.FacebookManager;
import com.microsoft.xbox.service.network.managers.xblshared.ISLSServiceManager;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.AsyncResult;
import com.microsoft.xbox.toolkit.DataLoadUtil;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.ProjectSpecificDataProvider;
import com.microsoft.xbox.toolkit.SingleEntryLoadingStatus;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.ThreadSafeFixedSizeHashtable;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEErrorCode;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.XLERValueHelper;
import com.microsoft.xbox.toolkit.network.IDataLoaderRunnable;
import com.microsoft.xbox.toolkit.network.XLEThreadPool;
import com.microsoft.xbox.toolkit.network.XboxLiveEnvironment;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xbox.xle.viewmodel.ShareRealNameSettingFilter;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Enumeration;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProfileModel extends ModelBase<ProfileData> {
    private static final int MAX_PROFILE_MODELS = 20;
    private static final long friendsDataLifetime = 180000;
    private static ProfileModel meProfileInstance = null;
    private static ThreadSafeFixedSizeHashtable<String, ProfileModel> profileModelCache = new ThreadSafeFixedSizeHashtable<>(20);
    private static final long profilePresenceDataLifetime = 180000;
    private AddFollowingUserResponseContainer.AddFollowingUserResponse addUserToFollowingResponse;
    private ArrayList<FollowersData> favorites;
    private String firstName;
    private ArrayList<FollowersData> following;
    private ArrayList<FollowingSummaryResult.People> followingSummaries;
    private String lastName;
    private Date lastRefreshMutedList;
    private Date lastRefreshNeverList;
    private Date lastRefreshPeopleHubRecommendations;
    private Date lastRefreshPresenceData;
    private Date lastRefreshProfileSummary;
    private MutedListResultContainer.MutedListResult mutedList;
    private NeverListResultContainer.NeverListResult neverList;
    private IPeopleHubResult.PeopleHubPersonSummary peopleHubPersonSummary;
    private ArrayList<FollowersData> peopleHubRecommendations;
    private IPeopleHubResult.PeopleHubPeopleSummary peopleHubRecommendationsRaw;
    private IFollowerPresenceResult.UserPresence presenceData;
    private SingleEntryLoadingStatus presenceDataLoadingStatus;
    private String profileImageUrl;
    private ProfileSummaryResultContainer.ProfileSummaryResult profileSummary;
    private SingleEntryLoadingStatus profileSummaryLoadingStatus;
    private IUserProfileResult.ProfileUser profileUser;
    private boolean shareRealName;
    private String shareRealNameStatus;
    private boolean sharingRealNameTransitively;
    private String xuid;
    private SingleEntryLoadingStatus mutedListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus neverListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus addingUserToNeverListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus removingUserFromNeverListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus addingUserToFavoriteListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus addingUserToShareIdentityListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus removingUserFromShareIdentityListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus removingUserFromFavoriteListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus addingUserToFollowingListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus removingUserFromFollowingListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus addingUserToMutedListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus removingUserFromMutedListLoadingStatus = new SingleEntryLoadingStatus();
    private SingleEntryLoadingStatus submitFeedbackForUserLoadingStatus = new SingleEntryLoadingStatus();

    private ProfileModel(String xuid) {
        this.xuid = xuid;
    }

    public static ProfileModel getMeProfileModel() {
        if (ProjectSpecificDataProvider.getInstance().getXuidString() == null) {
            return null;
        }
        if (meProfileInstance == null) {
            meProfileInstance = new ProfileModel(ProjectSpecificDataProvider.getInstance().getXuidString());
        }
        return meProfileInstance;
    }

    public static ProfileModel getProfileModel(String xuid) {
        if (JavaUtil.isNullOrEmpty(xuid)) {
            throw new IllegalArgumentException();
        }
        if (JavaUtil.stringsEqualCaseInsensitive(xuid, ProjectSpecificDataProvider.getInstance().getXuidString())) {
            if (meProfileInstance == null) {
                meProfileInstance = new ProfileModel(xuid);
            }
            return meProfileInstance;
        }
        ProfileModel model = profileModelCache.get(xuid);
        if (model == null) {
            ProfileModel model2 = new ProfileModel(xuid);
            profileModelCache.put(xuid, model2);
            return model2;
        }
        return model;
    }

    public String getXuid() {
        return this.xuid;
    }

    public String getAccountTier() {
        return getProfileSettingValue(UserProfileSetting.AccountTier);
    }

    public String getAppDisplayName() {
        return getProfileSettingValue(UserProfileSetting.AppDisplayName);
    }

    public String getGamerScore() {
        return getProfileSettingValue(UserProfileSetting.Gamerscore);
    }

    public String getLocation() {
        return getProfileSettingValue(UserProfileSetting.Location);
    }

    public String getBio() {
        return getProfileSettingValue(UserProfileSetting.Bio);
    }

    public String getRealName() {
        if (this.shareRealName) {
            return getProfileSettingValue(UserProfileSetting.RealName);
        }
        return null;
    }

    private String getProfileImageUrl() {
        if (this.profileImageUrl != null) {
            return this.profileImageUrl;
        }
        this.profileImageUrl = getProfileSettingValue(UserProfileSetting.GameDisplayPicRaw);
        return this.profileImageUrl;
    }

    public ArrayList<FollowersData> getFollowingData() {
        return this.following;
    }

    public String getGamerPicImageUrl() {
        return getProfileImageUrl();
    }

    public int getNumberOfFollowing() {
        if (this.profileSummary != null) {
            return this.profileSummary.targetFollowingCount;
        }
        return 0;
    }

    public int getNumberOfFollowers() {
        if (this.profileSummary != null) {
            return this.profileSummary.targetFollowerCount;
        }
        return 0;
    }

    public int getPreferedColor() {
        return (this.profileUser == null || this.profileUser.colors == null) ? getDefaultColor() : this.profileUser.colors.getPrimaryColor();
    }

    public ArrayList<URI> getWatermarkUris() {
        ArrayList<URI> uriArrayList = new ArrayList<>();
        String tenureLevel = getProfileSettingValue(UserProfileSetting.TenureLevel);
        if (!JavaUtil.isNullOrEmpty(tenureLevel) && !tenureLevel.equalsIgnoreCase("0")) {
            try {
                String tenureWatermarkUrlFormat = XboxLiveEnvironment.Instance().getTenureWatermarkUrlFormat();
                Object[] objArr = new Object[1];
                if (tenureLevel.length() == 1) {
                    tenureLevel = "0" + tenureLevel;
                }
                objArr[0] = tenureLevel;
                uriArrayList.add(new URI(String.format(tenureWatermarkUrlFormat, objArr)));
            } catch (URISyntaxException ex) {
                XLEAssert.fail("Failed to create URI for tenure watermark: " + ex.toString());
            }
        }
        String otherWatermarks = getProfileSettingValue(UserProfileSetting.Watermarks);
        if (!JavaUtil.isNullOrEmpty(otherWatermarks)) {
            for (String watermark : otherWatermarks.split("\\|")) {
                try {
                    uriArrayList.add(new URI(XboxLiveEnvironment.Instance().getWatermarkUrl(watermark)));
                } catch (URISyntaxException ex2) {
                    XLEAssert.fail("Failed to create URI for watermark " + watermark + " : " + ex2.toString());
                }
            }
        }
        return uriArrayList;
    }

    public boolean isMeProfile() {
        return isMeXuid(this.xuid);
    }

    public boolean isCallerFollowingTarget() {
        return this.profileSummary != null && this.profileSummary.isCallerFollowingTarget;
    }

    public boolean isTargetFollowingCaller() {
        return this.profileSummary != null && this.profileSummary.isTargetFollowingCaller;
    }

    public boolean hasCallerMarkedTargetAsFavorite() {
        return this.profileSummary != null && this.profileSummary.hasCallerMarkedTargetAsFavorite;
    }

    public boolean hasCallerMarkedTargetAsIdentityShared() {
        return this.profileSummary != null && this.profileSummary.hasCallerMarkedTargetAsIdentityShared;
    }

    public static boolean isMeXuid(String xuid) {
        String myXuid = ProjectSpecificDataProvider.getInstance().getXuidString();
        return (myXuid == null || xuid == null || xuid.compareToIgnoreCase(myXuid) != 0) ? false : true;
    }

    public static int getDefaultColor() {
        return XboxTcuiSdk.getResources().getColor(XLERValueHelper.getColorRValue("XboxOneGreen"));
    }

    public ProfileSummaryResultContainer.ProfileSummaryResult getProfileSummaryData() {
        return this.profileSummary;
    }

    public String getShareRealNameStatus() {
        return this.shareRealNameStatus;
    }

    public String getGamerTag() {
        return getProfileSettingValue(UserProfileSetting.Gamertag);
    }

    private String getProfileSettingValue(UserProfileSetting settingId) {
        if (this.profileUser != null && this.profileUser.settings != null) {
            for (IUserProfileResult.Settings setting : this.profileUser.settings) {
                if (setting.id != null && setting.id.equals(settingId.toString())) {
                    return setting.value;
                }
            }
        }
        return null;
    }

    public NeverListResultContainer.NeverListResult getNeverListData() {
        return this.neverList;
    }

    public MutedListResultContainer.MutedListResult getMutedList() {
        return this.mutedList;
    }

    public IFollowerPresenceResult.UserPresence getPresenceData() {
        return this.presenceData;
    }

    public int getMaturityLevel() {
        if (this.profileUser != null) {
            return this.profileUser.getMaturityLevel();
        }
        return 0;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public static boolean hasPrivilegeToAddFriend() {
        return hasPrivilege(XPrivilegeConstants.XPRIVILEGE_ADD_FRIEND);
    }

    public static boolean hasPrivilegeToSendMessage() {
        return hasPrivilege(XPrivilegeConstants.XPRIVILEGE_COMMUNICATIONS);
    }

    private static boolean hasPrivilege(String prv) {
        String privileges = ProjectSpecificDataProvider.getInstance().getPrivileges();
        return !JavaUtil.isNullOrEmpty(privileges) && privileges.contains(prv);
    }

    public ArrayList<FollowersData> getFavorites() {
        return this.favorites;
    }

    public IPeopleHubResult.PeopleHubPersonSummary getPeopleHubPersonSummary() {
        return this.peopleHubPersonSummary;
    }

    public AddFollowingUserResponseContainer.AddFollowingUserResponse getAddUserToFollowingResult() {
        return this.addUserToFollowingResponse;
    }

    public IPeopleHubResult.PeopleHubPeopleSummary getPeopleHubRecommendationsRawData() {
        return this.peopleHubRecommendationsRaw;
    }

    public static void reset() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        Enumeration<ProfileModel> e = profileModelCache.elements();
        while (e.hasMoreElements()) {
            e.nextElement().clearObserver();
        }
        if (meProfileInstance != null) {
            meProfileInstance.clearObserver();
            meProfileInstance = null;
        }
        profileModelCache = new ThreadSafeFixedSizeHashtable<>(20);
    }

    public boolean shouldRefreshProfileSummary() {
        return XLEUtil.shouldRefresh(this.lastRefreshProfileSummary, this.lifetime);
    }

    public boolean shouldRefreshPresenceData() {
        return XLEUtil.shouldRefresh(this.lastRefreshPresenceData, this.lifetime);
    }

    public void loadAsync(boolean forceRefresh) {
        loadInternal(forceRefresh, UpdateType.MeProfileData, new GetProfileRunner(this, this.xuid, false));
    }

    public AsyncResult<ProfileData> loadSync(boolean forceRefresh) {
        return loadSync(forceRefresh, false);
    }

    public AsyncResult<ProfileData> loadSync(boolean forceRefresh, boolean loadEssentialsOnly) {
        return super.loadData(forceRefresh, new GetProfileRunner(this, this.xuid, loadEssentialsOnly));
    }

    public AsyncResult<IFollowerPresenceResult.UserPresence> loadPresenceData(boolean forceRefresh) {
        if (this.presenceDataLoadingStatus == null) {
            this.presenceDataLoadingStatus = new SingleEntryLoadingStatus();
        }
        return DataLoadUtil.Load(forceRefresh, 180000L, this.lastRefreshPresenceData, this.presenceDataLoadingStatus, new GetPresenceDataRunner(this, this.xuid));
    }

    public AsyncResult<IPeopleHubResult.PeopleHubPeopleSummary> loadPeopleHubRecommendations(boolean forceRefresh) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        return DataLoadUtil.Load(forceRefresh, 180000L, this.lastRefreshPeopleHubRecommendations, new SingleEntryLoadingStatus(), new GetPeopleHubRecommendationRunner(this, this.xuid));
    }

    public AsyncResult<Boolean> removeUserFromShareIdentity(boolean forceRefresh, ArrayList<String> users) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.removingUserFromShareIdentityListLoadingStatus, new RemoveUsersFromShareIdentityListRunner(this, users));
    }

    public AsyncResult<Boolean> addUserToShareIdentity(boolean forceRefresh, ArrayList<String> users) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.addingUserToShareIdentityListLoadingStatus, new AddUsersToShareIdentityListRunner(this, users));
    }

    public AsyncResult<Boolean> addUserToFavoriteList(boolean forceRefresh, String favoriteUserXuid) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        XLEAssert.assertNotNull(favoriteUserXuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.addingUserToFavoriteListLoadingStatus, new AddUserToFavoriteListRunner(this, favoriteUserXuid));
    }

    public AsyncResult<Boolean> removeUserFromFavoriteList(boolean forceRefresh, String favoriteUserXuid) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        XLEAssert.assertNotNull(favoriteUserXuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.removingUserFromFavoriteListLoadingStatus, new RemoveUserFromFavoriteListRunner(this, favoriteUserXuid));
    }

    public AsyncResult<AddFollowingUserResponseContainer.AddFollowingUserResponse> addUserToFollowingList(boolean forceRefresh, String followingUserXuid) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        XLEAssert.assertNotNull(followingUserXuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.addingUserToFollowingListLoadingStatus, new AddUserToFollowingListRunner(this, followingUserXuid));
    }

    public AsyncResult<ProfileSummaryResultContainer.ProfileSummaryResult> loadProfileSummary(boolean forceRefresh) {
        if (this.profileSummaryLoadingStatus == null) {
            this.profileSummaryLoadingStatus = new SingleEntryLoadingStatus();
        }
        return DataLoadUtil.Load(forceRefresh, this.lifetime, this.lastRefreshProfileSummary, this.profileSummaryLoadingStatus, new GetProfileSummaryRunner(this, this.xuid));
    }

    public AsyncResult<Boolean> removeUserFromFollowingList(boolean forceRefresh, String followingUserXuid) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        XLEAssert.assertNotNull(followingUserXuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.removingUserFromFollowingListLoadingStatus, new RemoveUserFromFollowingListRunner(this, followingUserXuid));
    }

    public AsyncResult<NeverListResultContainer.NeverListResult> loadUserNeverList(boolean forceRefresh) {
        return DataLoadUtil.Load(forceRefresh, this.lifetime, this.lastRefreshNeverList, this.neverListLoadingStatus, new GetNeverListRunner(this, this.xuid));
    }

    public AsyncResult<Boolean> addUserToNeverList(boolean forceRefresh, String blockUserXuid) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        XLEAssert.assertNotNull(blockUserXuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.addingUserToNeverListLoadingStatus, new PutUserToNeverListRunner(this, this.xuid, blockUserXuid));
    }

    public AsyncResult<Boolean> removeUserFromNeverList(boolean forceRefresh, String unblockUserXuid) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        XLEAssert.assertNotNull(unblockUserXuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.removingUserFromNeverListLoadingStatus, new RemoveUserFromNeverListRunner(this, this.xuid, unblockUserXuid));
    }

    public AsyncResult<MutedListResultContainer.MutedListResult> loadUserMutedList(boolean forceRefresh) {
        return DataLoadUtil.Load(forceRefresh, this.lifetime, this.lastRefreshMutedList, this.mutedListLoadingStatus, new GetMutedListRunner(this, this.xuid));
    }

    public AsyncResult<Boolean> addUserToMutedList(boolean forceRefresh, String mutedUserXuid) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        XLEAssert.assertNotNull(mutedUserXuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.addingUserToMutedListLoadingStatus, new PutUserToMutedListRunner(this, this.xuid, mutedUserXuid));
    }

    public AsyncResult<Boolean> removeUserFromMutedList(boolean forceRefresh, String mutedUserXuid) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        XLEAssert.assertNotNull(mutedUserXuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.removingUserFromMutedListLoadingStatus, new RemoveUserFromMutedListRunner(this, this.xuid, mutedUserXuid));
    }

    public AsyncResult<Boolean> submitFeedbackForUser(boolean forceRefresh, FeedbackType feedbackType, String textReason) {
        XLEAssert.assertIsNotUIThread();
        XLEAssert.assertNotNull(this.xuid);
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.submitFeedbackForUserLoadingStatus, new SubmitFeedbackForUserRunner(this, this.xuid, feedbackType, textReason));
    }

    private void onGetPeopleHubPersonDataCompleted(AsyncResult<IPeopleHubResult.PeopleHubPersonSummary> result) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS) {
            this.peopleHubPersonSummary = result.getResult();
        }
    }

    public ArrayList<FollowingSummaryResult.People> getProfileFollowingSummaryData() {
        return this.followingSummaries;
    }

    public void setProfileFollowingSummaryData(ArrayList<FollowingSummaryResult.People> people) {
        this.followingSummaries = people;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromShareIdentityCompleted(AsyncResult<Boolean> result, ArrayList<String> xuids) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue()) {
            for (String xuid : xuids) {
                ProfileModel m = getProfileModel(xuid);
                ProfileSummaryResultContainer.ProfileSummaryResult p = m.getProfileSummaryData();
                if (p != null) {
                    p.hasCallerMarkedTargetAsIdentityShared = false;
                }
            }
            ProfileModel meModel = getMeProfileModel();
            ArrayList<FollowingSummaryResult.People> followingSummaries = meModel.getProfileFollowingSummaryData();
            if (!XLEUtil.isNullOrEmpty(followingSummaries)) {
                for (String xuid2 : xuids) {
                    for (FollowingSummaryResult.People person : followingSummaries) {
                        if (person.xuid.equalsIgnoreCase(xuid2)) {
                            person.isIdentityShared = false;
                            break;
                        }
                    }
                }
                meModel.setProfileFollowingSummaryData(followingSummaries);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUserToShareIdentityCompleted(AsyncResult<Boolean> result, ArrayList<String> xuids) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue()) {
            for (String xuid : xuids) {
                ProfileModel m = getProfileModel(xuid);
                ProfileSummaryResultContainer.ProfileSummaryResult p = m.getProfileSummaryData();
                if (p != null) {
                    p.hasCallerMarkedTargetAsIdentityShared = true;
                }
            }
            ProfileModel meModel = getMeProfileModel();
            ArrayList<FollowingSummaryResult.People> followingSummaries = meModel.getProfileFollowingSummaryData();
            if (!XLEUtil.isNullOrEmpty(followingSummaries)) {
                for (String xuid2 : xuids) {
                    for (FollowingSummaryResult.People person : followingSummaries) {
                        if (person.xuid.equalsIgnoreCase(xuid2)) {
                            person.isIdentityShared = true;
                            break;
                        }
                    }
                }
                meModel.setProfileFollowingSummaryData(followingSummaries);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUserToFavoriteListCompleted(AsyncResult<Boolean> result, String xuid) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue() && this.following != null) {
            ArrayList<FollowersData> newFavoritesData = new ArrayList<>();
            for (FollowersData fdata : this.following) {
                if (fdata.xuid.equals(xuid)) {
                    fdata.isFavorite = true;
                }
                if (fdata.isFavorite) {
                    newFavoritesData.add(fdata);
                }
            }
            Collections.sort(newFavoritesData, new FollowingAndFavoritesComparator());
            this.favorites = newFavoritesData;
            notifyObservers(new AsyncResult(new UpdateData(UpdateType.UpdateFriend, true), this, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromFavoriteListCompleted(AsyncResult<Boolean> result, String xuid) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue() && this.following != null) {
            ArrayList<FollowersData> newFavoritesData = new ArrayList<>();
            for (FollowersData fdata : this.following) {
                if (fdata.xuid.equals(xuid)) {
                    fdata.isFavorite = false;
                }
                if (fdata.isFavorite) {
                    newFavoritesData.add(fdata);
                }
            }
            this.favorites = newFavoritesData;
            notifyObservers(new AsyncResult(new UpdateData(UpdateType.UpdateFriend, true), this, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUserToFollowingListCompleted(AsyncResult<AddFollowingUserResponseContainer.AddFollowingUserResponse> result, String xuid) {
        ProfileModel newUserProfileModel = getProfileModel(xuid);
        XLEAssert.assertNotNull(newUserProfileModel);
        this.addUserToFollowingResponse = result.getResult();
        if (result.getStatus() == AsyncActionStatus.SUCCESS && this.addUserToFollowingResponse != null && this.addUserToFollowingResponse.getAddFollowingRequestStatus()) {
            boolean isAlreadyFollowing = false;
            ArrayList<FollowersData> newFollowersData = new ArrayList<>();
            if (this.following != null) {
                for (FollowersData fdata : this.following) {
                    newFollowersData.add(fdata);
                    if (fdata.xuid.equals(xuid)) {
                        isAlreadyFollowing = true;
                    }
                }
            }
            if (!isAlreadyFollowing) {
                FollowersData newFollowingUser = new FollowersData();
                newFollowingUser.xuid = xuid;
                newFollowingUser.isFavorite = false;
                newFollowingUser.status = UserStatus.Offline;
                newFollowingUser.userProfileData = new UserProfileData();
                newFollowingUser.userProfileData.accountTier = newUserProfileModel.getAccountTier();
                newFollowingUser.userProfileData.appDisplayName = newUserProfileModel.getAppDisplayName();
                newFollowingUser.userProfileData.gamerScore = newUserProfileModel.getGamerScore();
                newFollowingUser.userProfileData.gamerTag = newUserProfileModel.getGamerTag();
                newFollowingUser.userProfileData.profileImageUrl = newUserProfileModel.getProfileImageUrl();
                newFollowersData.add(newFollowingUser);
                Collections.sort(newFollowersData, new FollowingAndFavoritesComparator());
            }
            this.following = newFollowersData;
            notifyObservers(new AsyncResult(new UpdateData(UpdateType.UpdateFriend, true), this, null));
            return;
        }
        if (result.getStatus() != AsyncActionStatus.SUCCESS || (this.addUserToFollowingResponse.code != 1028 && !this.addUserToFollowingResponse.getAddFollowingRequestStatus())) {
            this.addUserToFollowingResponse = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetProfileSummaryCompleted(AsyncResult<ProfileSummaryResultContainer.ProfileSummaryResult> result) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS) {
            ProfileSummaryResultContainer.ProfileSummaryResult data = result.getResult();
            this.lastRefreshProfileSummary = new Date();
            this.profileSummary = data;
            notifyObservers(new AsyncResult(new UpdateData(UpdateType.ActivityAlertsSummary, true), this, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromFollowingListCompleted(AsyncResult<Boolean> result, String xuid) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue() && this.following != null) {
            ArrayList<FollowersData> newFollowersData = new ArrayList<>();
            ArrayList<FollowersData> newFavoritesData = new ArrayList<>();
            for (FollowersData fData : this.following) {
                if (!fData.xuid.equals(xuid)) {
                    newFollowersData.add(fData);
                    if (fData.isFavorite) {
                        newFavoritesData.add(fData);
                    }
                }
            }
            this.following = newFollowersData;
            this.favorites = newFavoritesData;
            notifyObservers(new AsyncResult(new UpdateData(UpdateType.UpdateFriend, true), this, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetPresenceDataCompleted(AsyncResult<IFollowerPresenceResult.UserPresence> result) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS) {
            this.lastRefreshPresenceData = new Date();
            this.presenceData = result.getResult();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetNeverListCompleted(AsyncResult<NeverListResultContainer.NeverListResult> result) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS) {
            NeverListResultContainer.NeverListResult data = result.getResult();
            this.lastRefreshNeverList = new Date();
            if (data != null) {
                this.neverList = data;
            } else {
                this.neverList = new NeverListResultContainer.NeverListResult();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPutUserToNeverListCompleted(AsyncResult<Boolean> result, String xuid) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue()) {
            if (this.neverList == null) {
                this.neverList = new NeverListResultContainer.NeverListResult();
            }
            if (!this.neverList.contains(xuid)) {
                this.neverList.add(xuid);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromNeverListCompleted(AsyncResult<Boolean> result, String xuid) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue() && this.neverList != null && this.neverList.contains(xuid)) {
            this.neverList.remove(xuid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetMutedListCompleted(AsyncResult<MutedListResultContainer.MutedListResult> result) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS) {
            MutedListResultContainer.MutedListResult data = result.getResult();
            this.lastRefreshMutedList = new Date();
            if (data != null) {
                this.mutedList = data;
            } else {
                this.mutedList = new MutedListResultContainer.MutedListResult();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPutUserToMutedListCompleted(AsyncResult<Boolean> result, String xuid) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue()) {
            if (this.mutedList == null) {
                this.mutedList = new MutedListResultContainer.MutedListResult();
            }
            if (!this.mutedList.contains(xuid)) {
                this.mutedList.add(xuid);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromMutedListCompleted(AsyncResult<Boolean> result, String xuid) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS && result.getResult().booleanValue() && this.mutedList != null && this.mutedList.contains(xuid)) {
            this.mutedList.remove(xuid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSubmitFeedbackForUserCompleted(AsyncResult<Boolean> result) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetPeopleHubRecommendationsCompleted(AsyncResult<IPeopleHubResult.PeopleHubPeopleSummary> result) {
        if (result.getStatus() == AsyncActionStatus.SUCCESS) {
            IPeopleHubResult.PeopleHubPeopleSummary data = result.getResult();
            if (data == null) {
                this.peopleHubRecommendationsRaw = null;
                this.peopleHubRecommendations = null;
            } else {
                this.peopleHubRecommendationsRaw = data;
                FriendFinderState.FriendsFinderStateResult friendFinderState = FacebookManager.getInstance().getFacebookFriendFinderState();
                buildRecommendationsList(friendFinderState != null && friendFinderState.getLinkedAccountOptInStatus() == FriendFinderState.LinkedAccountOptInStatus.ShowPrompt);
                this.lastRefreshPeopleHubRecommendations = new Date();
            }
        }
    }

    private void buildRecommendationsList(boolean showLinkToFacebbokButton) {
        this.peopleHubRecommendations = new ArrayList<>();
        if (showLinkToFacebbokButton) {
            RecommendationsPeopleData linkButton = new RecommendationsPeopleData(true, FollowersData.DummyType.DUMMY_LINK_TO_FACEBOOK);
            this.peopleHubRecommendations.add(0, linkButton);
        }
        if (this.peopleHubRecommendationsRaw != null && !XLEUtil.isNullOrEmpty(this.peopleHubRecommendationsRaw.people)) {
            for (IPeopleHubResult.PeopleHubPersonSummary person : this.peopleHubRecommendationsRaw.people) {
                RecommendationsPeopleData recommendation = new RecommendationsPeopleData(person);
                this.peopleHubRecommendations.add(recommendation);
            }
        }
    }

    @Override // com.microsoft.xbox.service.model.ModelBase, com.microsoft.xbox.toolkit.ModelData
    public void updateWithNewData(AsyncResult<ProfileData> asyncResult) {
        ProfileData profileData;
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        super.updateWithNewData(asyncResult);
        if (asyncResult.getStatus() == AsyncActionStatus.SUCCESS && (profileData = asyncResult.getResult()) != null) {
            this.shareRealName = isMeProfile() ? profileData.getShareRealName() : true;
            this.shareRealNameStatus = profileData.getShareRealNameStatus();
            Log.i("ProfileModel", "shareRealNameStatus: " + this.shareRealNameStatus);
            this.sharingRealNameTransitively = profileData.getSharingRealNameTransitively();
            IUserProfileResult.UserProfileResult userProfileResult = profileData.getProfileResult();
            if (userProfileResult != null && userProfileResult.profileUsers != null) {
                this.profileUser = userProfileResult.profileUsers.get(0);
                this.profileImageUrl = null;
            }
        }
        notifyObservers(new AsyncResult(new UpdateData(UpdateType.ProfileData, true), this, asyncResult.getException()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWithProfileData(AsyncResult<ProfileData> asyncResult, boolean attemptedToLoadEssentialDataOnly) {
        updateWithNewData(asyncResult);
        if (attemptedToLoadEssentialDataOnly) {
            invalidateData();
        }
    }

    private class GetProfileRunner extends IDataLoaderRunnable<ProfileData> {
        private ProfileModel caller;
        private boolean loadEssentialsOnly;
        private String xuid;

        public GetProfileRunner(ProfileModel caller, String xuid, boolean loadEssentialsOnly) {
            this.caller = caller;
            this.xuid = xuid;
            this.loadEssentialsOnly = loadEssentialsOnly;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public ProfileData buildData() throws XLEException {
            final ISLSServiceManager serviceManager = ServiceManagerFactory.getInstance().getSLSServiceManager();
            ArrayList<String> xuids = new ArrayList<>();
            xuids.add(this.xuid);
            UserProfileRequest profileRequest = new UserProfileRequest(xuids, this.loadEssentialsOnly);
            IUserProfileResult.UserProfileResult response = serviceManager.getUserProfileInfo(UserProfileRequest.getUserProfileRequestBody(profileRequest));
            if (ProjectSpecificDataProvider.getInstance().getXuidString().equalsIgnoreCase(this.xuid)) {
                if (response != null && response.profileUsers != null && response.profileUsers.size() > 0) {
                    final IUserProfileResult.ProfileUser profileUser = response.profileUsers.get(0);
                    profileUser.setPrivilieges(serviceManager.getXTokenPrivileges());
                    try {
                        String url = profileUser.getSettingValue(UserProfileSetting.PreferredColor);
                        if (url != null && url.length() > 0) {
                            profileUser.colors = serviceManager.getProfilePreferredColor(url);
                        }
                    } catch (Throwable th) {
                    }
                    XLEThreadPool.networkOperationsThreadPool.run(new Runnable() { // from class: com.microsoft.xbox.service.model.ProfileModel.GetProfileRunner.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                FamilySettings familySettings = serviceManager.getFamilySettings(GetProfileRunner.this.xuid);
                                if (familySettings != null && familySettings.familyUsers != null) {
                                    for (int i = 0; i < familySettings.familyUsers.size(); i++) {
                                        if (familySettings.familyUsers.get(i).xuid.equalsIgnoreCase(GetProfileRunner.this.xuid)) {
                                            profileUser.canViewTVAdultContent = familySettings.familyUsers.get(i).canViewTVAdultContent;
                                            profileUser.setmaturityLevel(familySettings.familyUsers.get(i).maturityLevel);
                                            return;
                                        }
                                    }
                                }
                            } catch (Throwable th2) {
                            }
                        }
                    });
                }
            } else if (response != null && response.profileUsers != null && response.profileUsers.size() > 0) {
                IUserProfileResult.ProfileUser profileUser2 = response.profileUsers.get(0);
                try {
                    String url2 = profileUser2.getSettingValue(UserProfileSetting.PreferredColor);
                    if (url2 != null && url2.length() > 0) {
                        profileUser2.colors = serviceManager.getProfilePreferredColor(url2);
                    }
                } catch (Throwable th2) {
                }
            }
            boolean shareRealName = false;
            String shareRealNameStatus = null;
            boolean sharingRealNameTransitively = false;
            if (this.xuid != null && this.xuid.compareToIgnoreCase(ProjectSpecificDataProvider.getInstance().getXuidString()) == 0) {
                try {
                    PrivacySettingsResult privacyResult = serviceManager.getUserProfilePrivacySettings();
                    shareRealNameStatus = privacyResult.getShareRealNameStatus();
                    shareRealName = ShareRealNameSettingFilter.Blocked.toString().compareTo(shareRealNameStatus) != 0;
                    sharingRealNameTransitively = privacyResult.getSharingRealNameTransitively();
                } catch (Exception e) {
                }
            }
            return new ProfileData(response, shareRealName, shareRealNameStatus, sharingRealNameTransitively);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<ProfileData> result) {
            this.caller.updateWithProfileData(result, this.loadEssentialsOnly);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_GET_USER_PROFILE_INFO;
        }
    }

    private class FollowingAndFavoritesComparator implements Comparator<FollowersData> {
        private FollowingAndFavoritesComparator() {
        }

        @Override // java.util.Comparator
        public int compare(FollowersData object1, FollowersData object2) {
            return object1.userProfileData.appDisplayName.compareToIgnoreCase(object2.userProfileData.appDisplayName);
        }
    }

    private class RemoveUsersFromShareIdentityListRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private ArrayList<String> userIds;

        public RemoveUsersFromShareIdentityListRunner(ProfileModel caller, ArrayList<String> users) {
            this.caller = caller;
            this.userIds = users;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            String postBody = AddShareIdentityRequest.getAddShareIdentityRequestBody(new AddShareIdentityRequest(this.userIds));
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().removeFriendFromShareIdentitySetting(this.caller.xuid, postBody));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_REMOVE_FROM_SHARE_IDENTIY;
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onRemoveUserFromShareIdentityCompleted(result, this.userIds);
        }
    }

    private class AddUsersToShareIdentityListRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private ArrayList<String> userIds;

        public AddUsersToShareIdentityListRunner(ProfileModel caller, ArrayList<String> users) {
            this.caller = caller;
            this.userIds = users;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            String postBody = AddShareIdentityRequest.getAddShareIdentityRequestBody(new AddShareIdentityRequest(this.userIds));
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().addFriendToShareIdentitySetting(this.caller.xuid, postBody));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_ADD_TO_SHARE_IDENTIY;
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onAddUserToShareIdentityCompleted(result, this.userIds);
        }
    }

    private class AddUserToFavoriteListRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private String favoriteUserXuid;

        public AddUserToFavoriteListRunner(ProfileModel caller, String favoriteUserXuid) {
            this.caller = caller;
            this.favoriteUserXuid = favoriteUserXuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            ArrayList<String> xuids = new ArrayList<>();
            xuids.add(this.favoriteUserXuid);
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().addUserToFavoriteList(FavoriteListRequest.getFavoriteListRequestBody(new FavoriteListRequest(xuids))));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onAddUserToFavoriteListCompleted(result, this.favoriteUserXuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_ADD_USER_TO_FAVORITELIST;
        }
    }

    private class RemoveUserFromFavoriteListRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private String favoriteUserXuid;

        public RemoveUserFromFavoriteListRunner(ProfileModel caller, String favoriteUserXuid) {
            this.caller = caller;
            this.favoriteUserXuid = favoriteUserXuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            ArrayList<String> xuids = new ArrayList<>();
            xuids.add(this.favoriteUserXuid);
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().removeUserFromFavoriteList(FavoriteListRequest.getFavoriteListRequestBody(new FavoriteListRequest(xuids))));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onRemoveUserFromFavoriteListCompleted(result, this.favoriteUserXuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_REMOVE_USER_FROM_FAVORITELIST;
        }
    }

    private class AddUserToFollowingListRunner extends IDataLoaderRunnable<AddFollowingUserResponseContainer.AddFollowingUserResponse> {
        private ProfileModel caller;
        private String followingUserXuid;

        public AddUserToFollowingListRunner(ProfileModel caller, String followingUserXuid) {
            this.caller = caller;
            this.followingUserXuid = followingUserXuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public AddFollowingUserResponseContainer.AddFollowingUserResponse buildData() throws XLEException {
            ArrayList<String> xuids = new ArrayList<>();
            xuids.add(this.followingUserXuid);
            return ServiceManagerFactory.getInstance().getSLSServiceManager().addUserToFollowingList(FavoriteListRequest.getFavoriteListRequestBody(new FavoriteListRequest(xuids)));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<AddFollowingUserResponseContainer.AddFollowingUserResponse> result) {
            this.caller.onAddUserToFollowingListCompleted(result, this.followingUserXuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_ADD_FRIEND;
        }
    }

    private class GetProfileSummaryRunner extends IDataLoaderRunnable<ProfileSummaryResultContainer.ProfileSummaryResult> {
        private ProfileModel caller;
        private String xuid;

        public GetProfileSummaryRunner(ProfileModel caller, String xuid) {
            this.caller = caller;
            this.xuid = xuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public ProfileSummaryResultContainer.ProfileSummaryResult buildData() throws XLEException {
            return ServiceManagerFactory.getInstance().getSLSServiceManager().getProfileSummaryInfo(this.xuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<ProfileSummaryResultContainer.ProfileSummaryResult> result) {
            this.caller.onGetProfileSummaryCompleted(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_GET_USER_PROFILE_INFO;
        }
    }

    private class RemoveUserFromFollowingListRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private String followingUserXuid;

        public RemoveUserFromFollowingListRunner(ProfileModel caller, String followingUserXuid) {
            this.caller = caller;
            this.followingUserXuid = followingUserXuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            ArrayList<String> xuids = new ArrayList<>();
            xuids.add(this.followingUserXuid);
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().removeUserFromFollowingList(FavoriteListRequest.getFavoriteListRequestBody(new FavoriteListRequest(xuids))));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onRemoveUserFromFollowingListCompleted(result, this.followingUserXuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_REMOVE_FRIEND;
        }
    }

    private class GetPresenceDataRunner extends IDataLoaderRunnable<IFollowerPresenceResult.UserPresence> {
        private ProfileModel caller;
        private String xuid;

        public GetPresenceDataRunner(ProfileModel caller, String xuid) {
            this.caller = caller;
            this.xuid = xuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public IFollowerPresenceResult.UserPresence buildData() throws XLEException {
            return null;
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<IFollowerPresenceResult.UserPresence> result) {
            this.caller.onGetPresenceDataCompleted(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_GET_PROFILE_PRESENCE_DATA;
        }
    }

    private class GetNeverListRunner extends IDataLoaderRunnable<NeverListResultContainer.NeverListResult> {
        private ProfileModel caller;
        private String xuid;

        public GetNeverListRunner(ProfileModel caller, String xuid) {
            this.caller = caller;
            this.xuid = xuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public NeverListResultContainer.NeverListResult buildData() throws XLEException {
            return ServiceManagerFactory.getInstance().getSLSServiceManager().getNeverListInfo(this.xuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<NeverListResultContainer.NeverListResult> result) {
            this.caller.onGetNeverListCompleted(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_GET_NEVERLIST_DATA;
        }
    }

    private class PutUserToNeverListRunner extends IDataLoaderRunnable<Boolean> {
        private String blockUserXuid;
        private ProfileModel caller;
        private String xuid;

        public PutUserToNeverListRunner(ProfileModel caller, String xuid, String blockUserXuid) {
            this.caller = caller;
            this.xuid = xuid;
            this.blockUserXuid = blockUserXuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            NeverListRequest neverListRequest = new NeverListRequest(Long.parseLong(this.blockUserXuid));
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().addUserToNeverList(this.xuid, NeverListRequest.getNeverListRequestBody(neverListRequest)));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onPutUserToNeverListCompleted(result, this.blockUserXuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_BLOCK_USER;
        }
    }

    private class RemoveUserFromNeverListRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private String unblockUserXuid;
        private String xuid;

        public RemoveUserFromNeverListRunner(ProfileModel caller, String xuid, String unblockUserXuid) {
            this.caller = caller;
            this.xuid = xuid;
            this.unblockUserXuid = unblockUserXuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            NeverListRequest neverListRequest = new NeverListRequest(Long.parseLong(this.unblockUserXuid));
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().removeUserFromNeverList(this.xuid, NeverListRequest.getNeverListRequestBody(neverListRequest)));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onRemoveUserFromNeverListCompleted(result, this.unblockUserXuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_REMOVE_USER_FROM_NEVERLIST;
        }
    }

    private class GetMutedListRunner extends IDataLoaderRunnable<MutedListResultContainer.MutedListResult> {
        private ProfileModel caller;
        private String xuid;

        public GetMutedListRunner(ProfileModel caller, String xuid) {
            this.caller = caller;
            this.xuid = xuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public MutedListResultContainer.MutedListResult buildData() throws XLEException {
            return ServiceManagerFactory.getInstance().getSLSServiceManager().getMutedListInfo(this.xuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<MutedListResultContainer.MutedListResult> result) {
            this.caller.onGetMutedListCompleted(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_GET_MUTED_LIST;
        }
    }

    private class PutUserToMutedListRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private String mutedUserXuid;
        private String xuid;

        public PutUserToMutedListRunner(ProfileModel caller, String xuid, String mutedUserXuid) {
            this.caller = caller;
            this.xuid = xuid;
            this.mutedUserXuid = mutedUserXuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            MutedListRequest mutedListRequest = new MutedListRequest(Long.parseLong(this.mutedUserXuid));
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().addUserToMutedList(this.xuid, MutedListRequest.getNeverListRequestBody(mutedListRequest)));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onPutUserToMutedListCompleted(result, this.mutedUserXuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_MUTE_USER;
        }
    }

    private class RemoveUserFromMutedListRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private String unmutedUserXuid;
        private String xuid;

        public RemoveUserFromMutedListRunner(ProfileModel caller, String xuid, String unmutedUserXuid) {
            this.caller = caller;
            this.xuid = xuid;
            this.unmutedUserXuid = unmutedUserXuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            MutedListRequest mutedListRequest = new MutedListRequest(Long.parseLong(this.unmutedUserXuid));
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().removeUserFromMutedList(this.xuid, MutedListRequest.getNeverListRequestBody(mutedListRequest)));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onRemoveUserFromMutedListCompleted(result, this.unmutedUserXuid);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_UNMUTE_USER;
        }
    }

    private class SubmitFeedbackForUserRunner extends IDataLoaderRunnable<Boolean> {
        private ProfileModel caller;
        private FeedbackType feedbackType;
        private String textReason;
        private String xuid;

        public SubmitFeedbackForUserRunner(ProfileModel caller, String xuid, FeedbackType feedbackType, String textReason) {
            this.caller = caller;
            this.xuid = xuid;
            this.feedbackType = feedbackType;
            this.textReason = textReason;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public Boolean buildData() throws XLEException {
            SubmitFeedbackRequest request = new SubmitFeedbackRequest(Long.parseLong(this.xuid), null, this.feedbackType, this.textReason, null, null);
            return Boolean.valueOf(ServiceManagerFactory.getInstance().getSLSServiceManager().submitFeedback(this.xuid, SubmitFeedbackRequest.getSubmitFeedbackRequestBody(request)));
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<Boolean> result) {
            this.caller.onSubmitFeedbackForUserCompleted(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_SUBMIT_FEEDBACK;
        }
    }

    private class GetPeopleHubRecommendationRunner extends IDataLoaderRunnable<IPeopleHubResult.PeopleHubPeopleSummary> {
        private ProfileModel caller;
        private String xuid;

        public GetPeopleHubRecommendationRunner(ProfileModel caller, String xuid) {
            this.caller = caller;
            this.xuid = xuid;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public IPeopleHubResult.PeopleHubPeopleSummary buildData() throws XLEException {
            IPeopleHubResult.PeopleHubPeopleSummary result = new IPeopleHubResult.PeopleHubPeopleSummary();
            if (!JavaUtil.isNullOrEmpty(this.xuid) && this.xuid.equalsIgnoreCase(ProjectSpecificDataProvider.getInstance().getXuidString())) {
                return ServiceManagerFactory.getInstance().getSLSServiceManager().getPeopleHubRecommendations();
            }
            return result;
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<IPeopleHubResult.PeopleHubPeopleSummary> result) {
            this.caller.onGetPeopleHubRecommendationsCompleted(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return 11L;
        }
    }
}
