package com.microsoft.xbox.xle.app.activity.Profile;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.microsoft.xbox.service.model.FollowersData;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.network.managers.AddFollowingUserResponseContainer;
import com.microsoft.xbox.service.network.managers.MutedListResultContainer;
import com.microsoft.xbox.service.network.managers.NeverListResultContainer;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.ThreadManager;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.SGProjectSpecificDialogManager;
import com.microsoft.xbox.xle.app.activity.ReportUserScreen;
import com.microsoft.xbox.xle.app.adapter.ProfileScreenAdapter;
import com.microsoft.xbox.xle.telemetry.helpers.UTCChangeRelationship;
import com.microsoft.xbox.xle.telemetry.helpers.UTCPeopleHub;
import com.microsoft.xbox.xle.viewmodel.ChangeFriendshipDialogViewModel;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xbox.xle.viewmodel.XLEGlobalData;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxAppDeepLinker;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ProfileScreenViewModel extends ViewModelBase {
    private static final String TAG = ProfileScreenViewModel.class.getSimpleName();
    private AddUserToFollowingListAsyncTask addUserToFollowingListAsyncTask;
    private AddUserToMutedListAsyncTask addUserToMutedListAsyncTask;
    private AddUserToNeverListAsyncTask addUserToNeverListAsyncTask;
    private AddUserToShareIdentityListAsyncTask addUserToShareIdentityListAsyncTask;
    private FollowersData basicData;
    private ChangeFriendshipDialogViewModel changeFriendshipDialogViewModel;
    private HashSet<ChangeFriendshipFormOptions> changeFriendshipForm;
    private boolean isAddingUserToBlockList;
    private boolean isAddingUserToFollowingList;
    private boolean isAddingUserToMutedList;
    private boolean isAddingUserToShareIdentityList;
    private boolean isBlocked;
    private boolean isFavorite;
    private boolean isFollowing;
    private boolean isLoadingUserMutedList;
    private boolean isLoadingUserNeverList;
    private boolean isLoadingUserProfile;
    private boolean isMuted;
    private boolean isRemovingUserFromBlockList;
    private boolean isRemovingUserFromMutedList;
    private boolean isShowingFailureDialog;
    private LoadUserProfileAsyncTask loadMeProfileTask;
    private LoadUserMutedListAsyncTask loadUserMutedListTask;
    private LoadUserNeverListAsyncTask loadUserNeverListTask;
    private LoadUserProfileAsyncTask loadUserProfileTask;
    protected ProfileModel model;
    private RemoveUserFromMutedListAsyncTask removeUserFromMutedListAsyncTask;
    private RemoveUserToNeverListAsyncTask removeUserToNeverListAsyncTask;

    public enum ChangeFriendshipFormOptions {
        ShouldAddUserToFriendList,
        ShouldRemoveUserFromFriendList,
        ShouldAddUserToFavoriteList,
        ShouldRemoveUserFromFavoriteList,
        ShouldAddUserToShareIdentityList,
        ShouldRemoveUserFromShareIdentityList
    }

    public ProfileScreenViewModel(ScreenLayout screen) {
        super(screen);
        this.changeFriendshipForm = new HashSet<>();
        this.isFollowing = false;
        this.isFavorite = false;
        this.isBlocked = false;
        this.isMuted = false;
        String profileXuid = NavigationManager.getInstance().getActivityParameters().getSelectedProfile();
        this.model = ProfileModel.getProfileModel(profileXuid);
        this.adapter = new ProfileScreenAdapter(this);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onRehydrate() {
        this.adapter = new ProfileScreenAdapter(this);
    }

    public String getGamerTag() {
        return this.model.getGamerTag();
    }

    public String getGamerScore() {
        return this.model.getGamerScore();
    }

    public String getGamerPicUrl() {
        return this.model.getGamerPicImageUrl();
    }

    public String getXuid() {
        return this.model.getXuid();
    }

    public String getRealName() {
        return this.model.getRealName();
    }

    public boolean isCallerFollowingTarget() {
        return this.isFollowing;
    }

    public int getPreferredColor() {
        return this.model.getPreferedColor();
    }

    public boolean isMeProfile() {
        return this.model.isMeProfile();
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStartOverride() {
        this.isShowingFailureDialog = false;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean isBusy() {
        return this.isLoadingUserProfile || this.isLoadingUserNeverList || this.isLoadingUserMutedList || this.isAddingUserToFollowingList || this.isAddingUserToShareIdentityList || this.isRemovingUserFromBlockList || this.isAddingUserToBlockList || this.isAddingUserToMutedList || this.isRemovingUserFromMutedList;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStopOverride() {
        if (this.loadMeProfileTask != null) {
            this.loadMeProfileTask.cancel();
        }
        if (this.loadUserNeverListTask != null) {
            this.loadUserNeverListTask.cancel();
        }
        if (this.loadUserMutedListTask != null) {
            this.loadUserMutedListTask.cancel();
        }
        if (this.loadUserProfileTask != null) {
            this.loadUserProfileTask.cancel();
        }
        if (this.addUserToFollowingListAsyncTask != null) {
            this.addUserToFollowingListAsyncTask.cancel();
        }
        if (this.addUserToShareIdentityListAsyncTask != null) {
            this.addUserToShareIdentityListAsyncTask.cancel();
        }
        if (this.addUserToNeverListAsyncTask != null) {
            this.addUserToNeverListAsyncTask.cancel();
        }
        if (this.removeUserToNeverListAsyncTask != null) {
            this.removeUserToNeverListAsyncTask.cancel();
        }
        if (this.addUserToMutedListAsyncTask != null) {
            this.addUserToMutedListAsyncTask.cancel();
        }
        if (this.removeUserFromMutedListAsyncTask != null) {
            this.removeUserFromMutedListAsyncTask.cancel();
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void load(boolean forceRefresh) {
        if (this.loadUserProfileTask != null) {
            this.loadUserProfileTask.cancel();
        }
        this.loadMeProfileTask = new LoadUserProfileAsyncTask(ProfileModel.getMeProfileModel());
        this.loadMeProfileTask.load(true);
        if (!isMeProfile()) {
            if (this.loadUserNeverListTask != null) {
                this.loadUserNeverListTask.cancel();
            }
            this.loadUserNeverListTask = new LoadUserNeverListAsyncTask(ProfileModel.getMeProfileModel());
            this.loadUserNeverListTask.load(true);
            if (this.loadUserMutedListTask != null) {
                this.loadUserMutedListTask.cancel();
            }
            this.loadUserMutedListTask = new LoadUserMutedListAsyncTask(ProfileModel.getMeProfileModel());
            this.loadUserMutedListTask.load(true);
            this.loadUserProfileTask = new LoadUserProfileAsyncTask(this.model);
            this.loadUserProfileTask.load(true);
        }
    }

    public boolean getIsFavorite() {
        return this.isFavorite;
    }

    public boolean getIsBlocked() {
        return this.isBlocked;
    }

    public boolean getIsMuted() {
        return this.isMuted;
    }

    public boolean getIsAddingUserToBlockList() {
        return this.isAddingUserToBlockList;
    }

    public boolean getIsRemovingUserFromBlockList() {
        return this.isRemovingUserFromBlockList;
    }

    public boolean getIsAddingUserToMutedList() {
        return this.isAddingUserToMutedList;
    }

    public boolean getIsRemovingUserFromMutedList() {
        return this.isRemovingUserFromMutedList;
    }

    public void navigateToChangeRelationship() {
        if (ProfileModel.hasPrivilegeToAddFriend()) {
            UTCChangeRelationship.trackChangeRelationshipAction(getScreen().getName(), getXuid(), isCallerFollowingTarget(), isFacebookFriend());
            showChangeFriendshipDialog();
        } else {
            showError(R.string.Global_MissingPrivilegeError_DialogBody);
        }
    }

    public void addFollowingUser() {
        if (ProfileModel.hasPrivilegeToAddFriend()) {
            if (this.addUserToFollowingListAsyncTask != null) {
                this.addUserToFollowingListAsyncTask.cancel();
            }
            this.addUserToFollowingListAsyncTask = new AddUserToFollowingListAsyncTask(this.model.getXuid());
            this.addUserToFollowingListAsyncTask.load(true);
            return;
        }
        showError(R.string.Global_MissingPrivilegeError_DialogBody);
    }

    public void addUserToShareIdentityList() {
        if (this.addUserToShareIdentityListAsyncTask != null) {
            this.addUserToShareIdentityListAsyncTask.cancel();
        }
        ArrayList<String> users = new ArrayList<>();
        users.add(this.model.getXuid());
        this.addUserToShareIdentityListAsyncTask = new AddUserToShareIdentityListAsyncTask(users);
        this.addUserToShareIdentityListAsyncTask.load(true);
    }

    private void notifyDialogAsyncTaskCompleted() {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).notifyChangeFriendshipDialogAsyncTaskCompleted();
    }

    private void notifyDialogAsyncTaskFailed(String errorMessage) {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).notifyChangeFriendshipDialogAsyncTaskFailed(errorMessage);
    }

    public void showChangeFriendshipDialog() {
        if (this.changeFriendshipDialogViewModel == null) {
            this.changeFriendshipDialogViewModel = new ChangeFriendshipDialogViewModel(this.model);
        }
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).showChangeFriendshipDialog(this.changeFriendshipDialogViewModel, this);
    }

    public void blockUser() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        showOkCancelDialog(XboxTcuiSdk.getResources().getString(R.string.Messages_BlockUserConfirmation_DialogTitle), XboxTcuiSdk.getResources().getString(R.string.Messages_BlockUserConfirmation_DialogBody), XboxTcuiSdk.getResources().getString(R.string.OK_Text), new Runnable() { // from class: com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel.1
            @Override // java.lang.Runnable
            public void run() {
                ProfileScreenViewModel.this.blockUserInternal();
            }
        }, XboxTcuiSdk.getResources().getString(R.string.MessageDialog_Cancel), null);
        updateAdapter();
    }

    public void blockUserInternal() {
        UTCPeopleHub.trackBlockDialogComplete();
        if (this.addUserToNeverListAsyncTask != null) {
            this.addUserToNeverListAsyncTask.cancel();
        }
        this.addUserToNeverListAsyncTask = new AddUserToNeverListAsyncTask(this.model.getXuid());
        this.addUserToNeverListAsyncTask.load(true);
    }

    public void unblockUser() {
        if (this.removeUserToNeverListAsyncTask != null) {
            this.removeUserToNeverListAsyncTask.cancel();
        }
        this.removeUserToNeverListAsyncTask = new RemoveUserToNeverListAsyncTask(this.model.getXuid());
        this.removeUserToNeverListAsyncTask.load(true);
    }

    public void muteUser() {
        if (this.addUserToMutedListAsyncTask != null) {
            this.addUserToMutedListAsyncTask.cancel();
        }
        this.addUserToMutedListAsyncTask = new AddUserToMutedListAsyncTask(this.model.getXuid());
        this.addUserToMutedListAsyncTask.load(true);
    }

    public void unmuteUser() {
        if (this.removeUserFromMutedListAsyncTask != null) {
            this.removeUserFromMutedListAsyncTask.cancel();
        }
        this.removeUserFromMutedListAsyncTask = new RemoveUserFromMutedListAsyncTask(this.model.getXuid());
        this.removeUserFromMutedListAsyncTask.load(true);
    }

    public void showReportDialog() {
        try {
            NavigationManager.getInstance().PopScreensAndReplace(0, ReportUserScreen.class, false, false, false, NavigationManager.getInstance().getActivityParameters());
        } catch (XLEException e) {
        }
    }

    public void launchXboxApp() {
        XLEAssert.assertTrue(Thread.currentThread() == ThreadManager.UIThread);
        showOkCancelDialog(XboxTcuiSdk.getResources().getString(R.string.Messages_BlockUserConfirmation_DialogTitle), XboxTcuiSdk.getResources().getString(R.string.Messages_ViewInXboxApp_DialogBody), XboxTcuiSdk.getResources().getString(R.string.ConnectDialog_ContinueAsGuest), new Runnable() { // from class: com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel.2
            @Override // java.lang.Runnable
            public void run() {
                UTCPeopleHub.trackViewInXboxAppDialogComplete();
                XboxAppDeepLinker.showUserProfile(XboxTcuiSdk.getActivity(), ProfileScreenViewModel.this.model.getXuid());
            }
        }, XboxTcuiSdk.getResources().getString(R.string.MessageDialog_Cancel), null);
        updateAdapter();
    }

    public boolean isFacebookFriend() {
        return false;
    }

    public void onLoadUserProfileCompleted(AsyncActionStatus status) {
        this.isLoadingUserProfile = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                if (!isMeProfile() && ProfileModel.getMeProfileModel() != null) {
                    this.isFollowing = this.model.isCallerFollowingTarget();
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                if (!this.isShowingFailureDialog) {
                    this.isShowingFailureDialog = true;
                    AlertDialog.Builder builder = new AlertDialog.Builder(XboxTcuiSdk.getActivity());
                    builder.setMessage(R.string.Service_ErrorText);
                    builder.setCancelable(false);
                    builder.setPositiveButton(R.string.OK_Text, new DialogInterface.OnClickListener() { // from class: com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            try {
                                NavigationManager.getInstance().PopAllScreens();
                            } catch (XLEException e) {
                            }
                        }
                    });
                    builder.create().show();
                }
                break;
        }
        updateAdapter();
    }

    public void onLoadUserNeverListCompleted(AsyncActionStatus status) {
        this.isLoadingUserNeverList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                ProfileModel meProfile = ProfileModel.getMeProfileModel();
                if (!isMeProfile() && meProfile != null) {
                    this.isBlocked = false;
                    NeverListResultContainer.NeverListResult meNeverList = meProfile.getNeverListData();
                    if (meNeverList != null) {
                        this.isBlocked = meNeverList.contains(this.model.getXuid());
                    }
                }
                break;
        }
        updateAdapter();
    }

    public void onLoadUserMutedListCompleted(AsyncActionStatus status) {
        this.isLoadingUserMutedList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                ProfileModel meProfile = ProfileModel.getMeProfileModel();
                if (!isMeProfile() && meProfile != null) {
                    this.isMuted = false;
                    MutedListResultContainer.MutedListResult meMutedList = meProfile.getMutedList();
                    if (meMutedList != null) {
                        this.isMuted = meMutedList.contains(this.model.getXuid());
                    }
                }
                break;
        }
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUserToFollowingListCompleted(AsyncActionStatus status, boolean isFollowing) {
        this.isAddingUserToFollowingList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                this.isFollowing = isFollowing;
                XLEGlobalData.getInstance().AddForceRefresh(ProfileScreenViewModel.class);
                notifyDialogAsyncTaskCompleted();
                break;
            case FAIL:
            case NO_OP_FAIL:
                AddFollowingUserResponseContainer.AddFollowingUserResponse result = null;
                ProfileModel meProfile = ProfileModel.getMeProfileModel();
                if (meProfile != null) {
                    result = meProfile.getAddUserToFollowingResult();
                }
                if (result != null && !result.getAddFollowingRequestStatus() && result.code == 1028) {
                    notifyDialogAsyncTaskFailed(result.description);
                } else {
                    notifyDialogAsyncTaskFailed(XboxTcuiSdk.getResources().getString(R.string.RealNameSharing_ErrorAddingFriend));
                }
                break;
        }
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUseToShareIdentityListCompleted(AsyncActionStatus status) {
        this.isAddingUserToShareIdentityList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                notifyDialogAsyncTaskCompleted();
                break;
            case FAIL:
            case NO_OP_FAIL:
                notifyDialogAsyncTaskFailed(XboxTcuiSdk.getResources().getString(R.string.RealNameSharing_ErrorChangeRemove));
                break;
        }
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUserToBlockListCompleted(AsyncActionStatus status) {
        this.isAddingUserToBlockList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                ProfileModel meProfile = ProfileModel.getMeProfileModel();
                if (meProfile != null) {
                    this.isBlocked = false;
                    NeverListResultContainer.NeverListResult neverList = meProfile.getNeverListData();
                    if (neverList != null) {
                        this.isBlocked = neverList.contains(this.model.getXuid());
                    }
                    this.isFollowing = false;
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Messages_Error_FailedToBlockUser);
                break;
        }
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromBlockListCompleted(AsyncActionStatus status) {
        this.isRemovingUserFromBlockList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                ProfileModel meProfile = ProfileModel.getMeProfileModel();
                if (meProfile != null) {
                    this.isBlocked = false;
                    NeverListResultContainer.NeverListResult neverList = meProfile.getNeverListData();
                    if (neverList != null) {
                        this.isBlocked = neverList.contains(this.model.getXuid());
                    }
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Messages_Error_FailedToUnblockUser);
                break;
        }
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUserToMutedListCompleted(AsyncActionStatus status) {
        this.isAddingUserToMutedList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                ProfileModel meProfile = ProfileModel.getMeProfileModel();
                if (meProfile != null) {
                    this.isMuted = true;
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Messages_Error_FailedToMuteUser);
                break;
        }
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromMutedListCompleted(AsyncActionStatus status) {
        this.isRemovingUserFromMutedList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                ProfileModel meProfile = ProfileModel.getMeProfileModel();
                if (meProfile != null) {
                    this.isMuted = false;
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Messages_Error_FailedToUnmuteUser);
                break;
        }
        updateAdapter();
    }

    private class LoadUserProfileAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private ProfileModel model;

        private LoadUserProfileAsyncTask(ProfileModel model) {
            this.model = model;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return this.model.shouldRefresh() || this.model.shouldRefreshProfileSummary();
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onLoadUserProfileCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isLoadingUserProfile = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ProfileScreenViewModel.this.onLoadUserProfileCompleted(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            XLEAssert.assertNotNull(this.model);
            AsyncActionStatus status = this.model.loadSync(this.forceLoad).getStatus();
            return (status == AsyncActionStatus.SUCCESS || status == AsyncActionStatus.NO_CHANGE || status == AsyncActionStatus.NO_OP_SUCCESS) ? this.model.loadProfileSummary(this.forceLoad).getStatus() : status;
        }
    }

    private class LoadUserNeverListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private ProfileModel model;

        private LoadUserNeverListAsyncTask(ProfileModel model) {
            this.model = model;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return this.model.shouldRefresh();
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onLoadUserProfileCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isLoadingUserNeverList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ProfileScreenViewModel.this.onLoadUserNeverListCompleted(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            XLEAssert.assertNotNull(this.model);
            AsyncActionStatus status = this.model.loadSync(this.forceLoad).getStatus();
            return (status == AsyncActionStatus.SUCCESS || status == AsyncActionStatus.NO_CHANGE || status == AsyncActionStatus.NO_OP_SUCCESS) ? this.model.loadUserNeverList(true).getStatus() : status;
        }
    }

    private class LoadUserMutedListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private ProfileModel model;

        private LoadUserMutedListAsyncTask(ProfileModel model) {
            this.model = model;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return this.model.shouldRefresh();
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onLoadUserProfileCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isLoadingUserMutedList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ProfileScreenViewModel.this.onLoadUserMutedListCompleted(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            XLEAssert.assertNotNull(this.model);
            AsyncActionStatus status = this.model.loadSync(this.forceLoad).getStatus();
            return (status == AsyncActionStatus.SUCCESS || status == AsyncActionStatus.NO_CHANGE || status == AsyncActionStatus.NO_OP_SUCCESS) ? this.model.loadUserMutedList(true).getStatus() : status;
        }
    }

    private class AddUserToFollowingListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private String followingUserXuid;
        private boolean isFollowingUser = false;

        public AddUserToFollowingListAsyncTask(String followingUserXuid) {
            this.followingUserXuid = followingUserXuid;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onAddUserToFollowingListCompleted(AsyncActionStatus.NO_CHANGE, this.isFollowingUser);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isAddingUserToFollowingList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ProfileScreenViewModel.this.onAddUserToFollowingListCompleted(result, this.isFollowingUser);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfile = ProfileModel.getMeProfileModel();
            if (meProfile != null) {
                AsyncActionStatus status = meProfile.addUserToFollowingList(this.forceLoad, this.followingUserXuid).getStatus();
                if (!AsyncActionStatus.getIsFail(status)) {
                    AddFollowingUserResponseContainer.AddFollowingUserResponse response = meProfile.getAddUserToFollowingResult();
                    if (response != null && !response.getAddFollowingRequestStatus() && response.code == 1028) {
                        return AsyncActionStatus.FAIL;
                    }
                    ProfileScreenViewModel.this.model.loadProfileSummary(true);
                    meProfile.loadProfileSummary(true);
                    ArrayList<FollowersData> followersList = meProfile.getFollowingData();
                    if (followersList != null) {
                        for (FollowersData fData : followersList) {
                            if (fData.xuid.equals(this.followingUserXuid)) {
                                this.isFollowingUser = true;
                                return status;
                            }
                        }
                        return status;
                    }
                    return status;
                }
                return status;
            }
            return AsyncActionStatus.FAIL;
        }
    }

    private class AddUserToShareIdentityListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private ArrayList<String> usersToAdd;

        public AddUserToShareIdentityListAsyncTask(ArrayList<String> users) {
            this.usersToAdd = users;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isAddingUserToShareIdentityList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ProfileScreenViewModel.this.onAddUseToShareIdentityListCompleted(asyncActionStatus);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfile = ProfileModel.getMeProfileModel();
            return meProfile != null ? meProfile.addUserToShareIdentity(this.forceLoad, this.usersToAdd).getStatus() : AsyncActionStatus.FAIL;
        }
    }

    private class AddUserToNeverListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private String blockUserXuid;

        public AddUserToNeverListAsyncTask(String blockUserXuid) {
            this.blockUserXuid = blockUserXuid;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onAddUserToBlockListCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isAddingUserToBlockList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ProfileScreenViewModel.this.onAddUserToBlockListCompleted(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfile = ProfileModel.getMeProfileModel();
            return meProfile != null ? meProfile.addUserToNeverList(this.forceLoad, this.blockUserXuid).getStatus() : AsyncActionStatus.FAIL;
        }
    }

    private class RemoveUserToNeverListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private String unblockUserXuid;

        public RemoveUserToNeverListAsyncTask(String blockUserXuid) {
            this.unblockUserXuid = blockUserXuid;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onRemoveUserFromBlockListCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isRemovingUserFromBlockList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ProfileScreenViewModel.this.onRemoveUserFromBlockListCompleted(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfile = ProfileModel.getMeProfileModel();
            return meProfile != null ? meProfile.removeUserFromNeverList(this.forceLoad, this.unblockUserXuid).getStatus() : AsyncActionStatus.FAIL;
        }
    }

    private class AddUserToMutedListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private String mutedUserXuid;

        public AddUserToMutedListAsyncTask(String mutedUserXuid) {
            this.mutedUserXuid = mutedUserXuid;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onAddUserToMutedListCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isAddingUserToMutedList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ProfileScreenViewModel.this.onAddUserToMutedListCompleted(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfile = ProfileModel.getMeProfileModel();
            return meProfile != null ? meProfile.addUserToMutedList(this.forceLoad, this.mutedUserXuid).getStatus() : AsyncActionStatus.FAIL;
        }
    }

    private class RemoveUserFromMutedListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private String mutedUserXuid;

        public RemoveUserFromMutedListAsyncTask(String mutedUserXuid) {
            this.mutedUserXuid = mutedUserXuid;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.onRemoveUserFromMutedListCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ProfileScreenViewModel.this.isRemovingUserFromMutedList = true;
            ProfileScreenViewModel.this.updateAdapter();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ProfileScreenViewModel.this.onRemoveUserFromMutedListCompleted(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus onError() {
            return AsyncActionStatus.FAIL;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncActionStatus loadDataInBackground() {
            ProfileModel meProfile = ProfileModel.getMeProfileModel();
            return meProfile != null ? meProfile.removeUserFromMutedList(this.forceLoad, this.mutedUserXuid).getStatus() : AsyncActionStatus.FAIL;
        }
    }
}
