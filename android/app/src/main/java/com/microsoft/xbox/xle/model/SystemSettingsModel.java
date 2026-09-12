package com.microsoft.xbox.xle.model;

import android.os.Build;
import com.microsoft.xbox.service.model.ModelBase;
import com.microsoft.xbox.service.model.serialization.Version;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.AsyncResult;
import com.microsoft.xbox.toolkit.DataLoadUtil;
import com.microsoft.xbox.toolkit.ProjectSpecificDataProvider;
import com.microsoft.xbox.toolkit.SingleEntryLoadingStatus;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEErrorCode;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.network.IDataLoaderRunnable;
import com.microsoft.xbox.xle.app.FriendFinderSettings;
import com.microsoft.xbox.xle.app.SmartglassSettings;
import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SystemSettingsModel extends ModelBase<Version> {
    private FriendFinderSettings friendFinderSettings;
    private final SingleEntryLoadingStatus friendFinderSettingsLoadingStatus;
    private final HashSet<String> hiddenMruItems;
    private int latestVersion;
    private String marketUrl;
    private int minRequiredOSVersion;
    private int minVersion;
    private int[] remoteControlSpecialTitleIds;
    private SmartglassSettings smartglassSettings;
    private final SingleEntryLoadingStatus smartglassSettingsLoadingStatus;
    private OnUpdateExistListener updateExistListener;

    public interface OnUpdateExistListener {
        void onMustUpdate();

        void onOptionalUpdate();
    }

    private SystemSettingsModel() {
        this.minRequiredOSVersion = 0;
        this.minVersion = 0;
        this.latestVersion = 0;
        this.hiddenMruItems = new HashSet<>();
        this.smartglassSettingsLoadingStatus = new SingleEntryLoadingStatus();
        this.friendFinderSettingsLoadingStatus = new SingleEntryLoadingStatus();
    }

    public static SystemSettingsModel getInstance() {
        return SystemSettingsModelContainer.instance;
    }

    private static class SystemSettingsModelContainer {
        private static SystemSettingsModel instance = new SystemSettingsModel();

        private SystemSettingsModelContainer() {
        }
    }

    public void setOnUpdateExistListener(OnUpdateExistListener listener) {
        this.updateExistListener = listener;
    }

    public boolean getHasUpdate(int currentVersionCode) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        return Build.VERSION.SDK_INT >= this.minRequiredOSVersion && getLatestVersion() > currentVersionCode;
    }

    public boolean getMustUpdate(int currentVersionCode) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        return Build.VERSION.SDK_INT >= this.minRequiredOSVersion && getMinimumVersion() > currentVersionCode;
    }

    public int[] getRemoteControlSpecialTitleIds() {
        return this.remoteControlSpecialTitleIds;
    }

    public String getMarketUrl() {
        return this.marketUrl;
    }

    public boolean isInHiddenMruItems(String titleId) {
        return this.hiddenMruItems.contains(titleId);
    }

    public int getLatestVersion() {
        return this.latestVersion;
    }

    private int getMinimumVersion() {
        return this.minVersion;
    }

    public void loadAsync(boolean forceRefresh) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        DataLoadUtil.StartLoadFromUI(forceRefresh, this.lifetime, null, this.smartglassSettingsLoadingStatus, new GetSmartglassSettingsRunner(this));
        DataLoadUtil.StartLoadFromUI(forceRefresh, this.lifetime, null, this.friendFinderSettingsLoadingStatus, new GetFriendFinderSettingsRunner(this));
    }

    public AsyncResult<SmartglassSettings> loadSystemSettings(boolean forceRefresh) {
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.smartglassSettingsLoadingStatus, new GetSmartglassSettingsRunner(this));
    }

    public AsyncResult<FriendFinderSettings> loadFriendFinderSettings(boolean forceRefresh) {
        return DataLoadUtil.Load(forceRefresh, this.lifetime, null, this.friendFinderSettingsLoadingStatus, new GetFriendFinderSettingsRunner(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetSmartglassSettingsCompleted(AsyncResult<SmartglassSettings> result) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (result.getStatus() == AsyncActionStatus.SUCCESS) {
            this.smartglassSettings = result.getResult();
            if (this.smartglassSettings != null) {
                this.minRequiredOSVersion = this.smartglassSettings.ANDROID_VERSIONMINOS;
                this.minVersion = this.smartglassSettings.ANDROID_VERSIONMIN;
                this.latestVersion = this.smartglassSettings.ANDROID_VERSIONLATEST;
                this.marketUrl = this.smartglassSettings.ANDROID_VERSIONURL;
                populateHiddenMruItems(this.smartglassSettings.HIDDEN_MRU_ITEMS);
                populateRemoteControlSpecialTitleIds(this.smartglassSettings.REMOTE_CONTROL_SPECIALS);
                if (this.updateExistListener != null) {
                    if (getMustUpdate(ProjectSpecificDataProvider.getInstance().getVersionCode())) {
                        this.updateExistListener.onMustUpdate();
                    } else if (getHasUpdate(ProjectSpecificDataProvider.getInstance().getVersionCode())) {
                        this.updateExistListener.onOptionalUpdate();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetFriendFinderSettingsCompleted(AsyncResult<FriendFinderSettings> result) {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        if (result.getStatus() == AsyncActionStatus.SUCCESS) {
            this.friendFinderSettings = result.getResult();
            if (this.friendFinderSettings != null) {
                this.friendFinderSettings.getIconsFromJson(this.friendFinderSettings.ICONS);
            }
        }
    }

    private void populateHiddenMruItems(String list) {
        String[] buf;
        this.hiddenMruItems.clear();
        if (list != null && (buf = list.split(",")) != null) {
            for (String titleId : buf) {
                this.hiddenMruItems.add(titleId);
            }
        }
    }

    private void populateRemoteControlSpecialTitleIds(String commaDelimited) {
        String[] buf;
        if (commaDelimited != null && (buf = commaDelimited.split(",")) != null) {
            this.remoteControlSpecialTitleIds = new int[buf.length];
            int length = buf.length;
            int i = 0;
            int index = 0;
            while (i < length) {
                String titleId = buf[i];
                int id = 0;
                try {
                    id = Integer.parseInt(titleId);
                } catch (NumberFormatException e) {
                }
                this.remoteControlSpecialTitleIds[index] = id;
                i++;
                index++;
            }
        }
    }

    private class GetSmartglassSettingsRunner extends IDataLoaderRunnable<SmartglassSettings> {
        private final SystemSettingsModel caller;

        public GetSmartglassSettingsRunner(SystemSettingsModel caller) {
            this.caller = caller;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public SmartglassSettings buildData() throws XLEException {
            return null;
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<SmartglassSettings> result) {
            this.caller.onGetSmartglassSettingsCompleted(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_GET_SETTINGS;
        }
    }

    private class GetFriendFinderSettingsRunner extends IDataLoaderRunnable<FriendFinderSettings> {
        private final SystemSettingsModel caller;

        public GetFriendFinderSettingsRunner(SystemSettingsModel caller) {
            this.caller = caller;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public FriendFinderSettings buildData() throws XLEException {
            return null;
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPreExecute() {
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public void onPostExcute(AsyncResult<FriendFinderSettings> result) {
            this.caller.onGetFriendFinderSettingsCompleted(result);
        }

        @Override // com.microsoft.xbox.toolkit.network.IDataLoaderRunnable
        public long getDefaultErrorCode() {
            return XLEErrorCode.FAILED_TO_GET_SETTINGS;
        }
    }
}
