package com.microsoft.xbox.xle.app.activity.FriendFinder;

import com.microsoft.xbox.service.model.friendfinder.FriendFinderModel;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.service.model.friendfinder.LinkedAccountHelpers;
import com.microsoft.xbox.service.model.friendfinder.OptInStatus;
import com.microsoft.xbox.service.model.privacy.PrivacySettings;
import com.microsoft.xbox.service.model.privacy.PrivacySettingsResult;
import com.microsoft.xbox.service.network.managers.ServiceManagerFactory;
import com.microsoft.xbox.service.network.managers.friendfinder.FacebookManager;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class LinkFacebookAccountViewModel extends ViewModelBase {
    private LinkFacebookAccountAsyncTask linkAccountAsyncTask;

    public LinkFacebookAccountViewModel(ScreenLayout screenLayout) {
        super(screenLayout);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onStart() {
        super.onStart();
        XLEAssert.assertTrue(FacebookManager.getFacebookManagerReady().getIsReady());
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStartOverride() {
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onRehydrate() {
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStopOverride() {
        cancelActiveTasks();
    }

    private void cancelActiveTasks() {
        if (this.linkAccountAsyncTask != null) {
            this.linkAccountAsyncTask.cancel();
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean isBusy() {
        return true;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void load(boolean forceRefresh) {
        cancelActiveTasks();
        this.linkAccountAsyncTask = new LinkFacebookAccountAsyncTask();
        this.linkAccountAsyncTask.load(true);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean onBackButtonPressed() {
        UTCFriendFinder.trackBackButtonPressed(getScreen().getName(), FriendFinderType.FACEBOOK);
        return super.onBackButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLinkAccountAsyncTaskCompleted(AsyncActionStatus status) {
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                FriendFinderModel.getInstance().loadAsync(true);
                try {
                    ActivityParameters parameters = new ActivityParameters();
                    parameters.putFriendFinderType(FriendFinderType.FACEBOOK);
                    UTCFriendFinder.trackFacebookLoginSuccessful(((FriendFinderLinkScreen) getScreen()).getActivityName());
                    NavigationManager.getInstance().PopScreensAndReplace(1, FriendFinderSuggestionsScreen.class, false, true, false, parameters);
                } catch (XLEException e) {
                    return;
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                FacebookManager.getInstance().resetFacebookToken(true);
                showError(R.string.Service_ErrorText);
                NavigationManager.getInstance().OnBackButtonPressed();
                break;
        }
    }

    protected class LinkFacebookAccountAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        protected LinkFacebookAccountAsyncTask() {
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            return false;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return null;
        }

        private boolean needUpdatePrivacy(PrivacySettings.PrivacySetting privacySetting) {
            PrivacySettings.PrivacySettingValue privacyValue = privacySetting.getPrivacySettingValue();
            return privacyValue == PrivacySettings.PrivacySettingValue.NotSet || privacyValue == PrivacySettings.PrivacySettingValue.Blocked;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Code duplicated, block: B:10:0x003d A[Catch: XLEException -> 0x0070, TryCatch #0 {XLEException -> 0x0070, blocks: (B:2:0x0000, B:4:0x0010, B:6:0x0016, B:8:0x003a, B:10:0x003d, B:12:0x0055, B:13:0x0058, B:15:0x006a, B:16:0x006d), top: B:21:0x0000 }] */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            AsyncActionStatus asyncActionStatus;
            try {
                PrivacySettings.PrivacySetting setting = ServiceManagerFactory.getInstance().getSLSServiceManager().getPrivacySetting(PrivacySettings.PrivacySettingId.ShareIdentity);
                if (setting != null && needUpdatePrivacy(setting)) {
                    ArrayList<PrivacySettings.PrivacySetting> newSettings = new ArrayList<>();
                    newSettings.add(new PrivacySettings.PrivacySetting(PrivacySettings.PrivacySettingId.ShareIdentity, PrivacySettings.PrivacySettingValue.FriendCategoryShareIdentity));
                    if (!ServiceManagerFactory.getInstance().getSLSServiceManager().setPrivacySettings(new PrivacySettingsResult(newSettings))) {
                        asyncActionStatus = AsyncActionStatus.FAIL;
                    } else if (ServiceManagerFactory.getInstance().getSLSServiceManager().updateThirdPartyToken(LinkedAccountHelpers.LinkedAccountType.Facebook, FacebookManager.getInstance().getTokenString())) {
                        asyncActionStatus = AsyncActionStatus.FAIL;
                    } else {
                        asyncActionStatus = AsyncActionStatus.SUCCESS;
                    }
                } else if (ServiceManagerFactory.getInstance().getSLSServiceManager().updateThirdPartyToken(LinkedAccountHelpers.LinkedAccountType.Facebook, FacebookManager.getInstance().getTokenString()) || !ServiceManagerFactory.getInstance().getSLSServiceManager().setFriendFinderOptInStatus(LinkedAccountHelpers.LinkedAccountType.Facebook, OptInStatus.OptedIn)) {
                    asyncActionStatus = AsyncActionStatus.FAIL;
                } else {
                    asyncActionStatus = AsyncActionStatus.SUCCESS;
                }
                return asyncActionStatus;
            } catch (XLEException e) {
                return AsyncActionStatus.FAIL;
            }
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus status) {
            LinkFacebookAccountViewModel.this.onLinkAccountAsyncTaskCompleted(status);
        }
    }
}
