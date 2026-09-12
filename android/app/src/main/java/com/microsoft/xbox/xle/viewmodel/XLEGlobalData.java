package com.microsoft.xbox.xle.viewmodel;

import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.MultiSelection;
import com.microsoft.xbox.toolkit.ProjectSpecificDataProvider;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.xle.app.activity.ActivityBase;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class XLEGlobalData {
    private static final int MAX_SEARCH_TEXT_LENGTH = 120;
    private boolean autoLoginStarted;
    private Class<? extends ActivityBase> defaultScreenClass;
    private long errorCodeForLogin;
    private boolean forceRefreshProfile;
    private HashSet<Class<? extends ViewModelBase>> forceRefreshVMs;
    private boolean friendListUpdated;
    private boolean hideCollectionFilter;
    private boolean isLoggedIn;
    private boolean isOffline;
    private boolean launchTitleIsBrowser;
    private String pivotTitle;
    private Class<? extends ViewModelBase> searchFilterSetterClass;
    private String searchTag;
    private String selectedAchievementKey;
    private String selectedDataSource;
    private String selectedGamertag;
    private ArrayList<URI> selectedImages;
    private MultiSelection<FriendSelectorItem> selectedRecipients;
    private String selectedXuid;
    private boolean showLoginError;
    private long titleId;

    private XLEGlobalData() {
        this.isOffline = true;
        this.friendListUpdated = false;
        this.launchTitleIsBrowser = false;
        this.hideCollectionFilter = false;
    }

    private static class XLEGlobalDataHolder {
        public static final XLEGlobalData instance = new XLEGlobalData();

        private XLEGlobalDataHolder() {
        }
    }

    public static XLEGlobalData getInstance() {
        return XLEGlobalDataHolder.instance;
    }

    public long getLastLoginError() {
        long error = this.errorCodeForLogin;
        this.errorCodeForLogin = 0L;
        return error;
    }

    public void setLoginErrorCode(long errorCode) {
        this.errorCodeForLogin = errorCode;
    }

    public String getSelectedGamertag() {
        return this.selectedGamertag;
    }

    public void setSelectedGamertag(String gamertag) {
        this.selectedGamertag = gamertag;
    }

    public void setSelectedImages(ArrayList<URI> imageUrl) {
        this.selectedImages = imageUrl;
    }

    public ArrayList<URI> getSelectedImages() {
        return this.selectedImages;
    }

    public String getSelectedXuid() {
        return JavaUtil.isNullOrEmpty(this.selectedXuid) ? ProjectSpecificDataProvider.getInstance().getXuidString() : this.selectedXuid;
    }

    public MultiSelection<FriendSelectorItem> getSelectedRecipients() {
        if (this.selectedRecipients == null) {
            this.selectedRecipients = new MultiSelection<>();
        }
        return this.selectedRecipients;
    }

    public void AddForceRefresh(Class<? extends ViewModelBase> vmclass) {
        XLEAssert.assertIsUIThread();
        if (this.forceRefreshVMs == null) {
            this.forceRefreshVMs = new HashSet<>();
        }
        this.forceRefreshVMs.add(vmclass);
    }

    public boolean CheckDrainShouldRefresh(Class<? extends ViewModelBase> vmclass) {
        return this.forceRefreshVMs != null && this.forceRefreshVMs.remove(vmclass);
    }

    public void setSelectedXuid(String xuid) {
        this.selectedXuid = xuid;
    }

    public String getSelectedAchievementKey() {
        return this.selectedAchievementKey;
    }

    public void setSelectedAchievementKey(String key) {
        this.selectedAchievementKey = key;
    }

    public String getSelectedDataSource() {
        return this.selectedDataSource;
    }

    public void setSelectedDataSource(String dataSource) {
        this.selectedDataSource = dataSource;
    }

    public boolean getIsLoggedIn() {
        return this.isLoggedIn;
    }

    public void setLoggedIn(boolean value) {
        this.isLoggedIn = value;
    }

    public boolean getShowLoginError() {
        boolean val = this.showLoginError;
        this.showLoginError = false;
        return val;
    }

    public void setShowLoginError(boolean value) {
        this.showLoginError = value;
    }

    public boolean getIsOffline() {
        return this.isOffline;
    }

    public boolean getIsOnline() {
        return !this.isOffline;
    }

    public void setIsOffline(boolean value) {
        this.isOffline = value;
    }

    public void resetGlobalParameters() {
        this.selectedGamertag = null;
        this.selectedAchievementKey = null;
        this.selectedDataSource = null;
        this.isLoggedIn = false;
        this.showLoginError = false;
        this.isOffline = true;
        this.searchTag = null;
        this.selectedImages = null;
        this.titleId = 0L;
        this.forceRefreshVMs = null;
    }

    public void setFriendListUpdated(boolean updated) {
        this.friendListUpdated = updated;
    }

    public boolean getFriendListUpdated() {
        return this.friendListUpdated;
    }

    public void setForceRefreshProfile(boolean forceRefresh) {
        this.forceRefreshProfile = forceRefresh;
    }

    public boolean getForceRefreshProfile() {
        return this.forceRefreshProfile;
    }

    public String getSearchTag() {
        return this.searchTag;
    }

    public void setSearchTag(String searchTag) {
        if (searchTag != null && searchTag.length() > MAX_SEARCH_TEXT_LENGTH) {
            this.searchTag = searchTag.substring(0, MAX_SEARCH_TEXT_LENGTH);
        } else {
            this.searchTag = searchTag;
        }
    }

    public Class<? extends ViewModelBase> getSearchFilterSetterClass() {
        return this.searchFilterSetterClass;
    }

    public void setAutoLoginStarted(boolean autoLoginStarted) {
        this.autoLoginStarted = autoLoginStarted;
    }

    public boolean getAutoLoginStarted() {
        return this.autoLoginStarted;
    }

    public Class<? extends ActivityBase> getDefaultScreenClass() {
        return this.defaultScreenClass;
    }

    public void setDefaultScreenClass(Class<? extends ActivityBase> screenClass) {
        this.defaultScreenClass = screenClass;
    }

    public void setLaunchTitleIsBrowser(boolean v) {
        this.launchTitleIsBrowser = v;
    }

    public boolean getLaunchTitleIsBrowser() {
        return this.launchTitleIsBrowser;
    }

    public String getPivotTitle() {
        return this.pivotTitle;
    }

    public void setPivotTitle(String pivotTitle) {
        this.pivotTitle = pivotTitle;
    }

    public void setHideCollectionFilter(boolean isHide) {
        this.hideCollectionFilter = isHide;
    }

    public boolean getHideCollectionFilter() {
        return this.hideCollectionFilter;
    }

    public long getSelectedTitleId() {
        return this.titleId;
    }

    public void setSelectedTitleId(long titleId) {
        this.titleId = titleId;
    }
}
