package com.microsoft.xbox.xle.viewmodel;

import com.microsoft.xbox.service.model.FollowersData;
import com.microsoft.xbox.service.model.ProfileModel;
import com.microsoft.xbox.service.network.managers.AddFollowingUserResponseContainer;
import com.microsoft.xbox.service.network.managers.ProfileSummaryResultContainer;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.DialogManager;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.network.ListState;
import com.microsoft.xbox.xle.app.SGProjectSpecificDialogManager;
import com.microsoft.xbox.xle.app.activity.Profile.ProfileScreenViewModel;
import com.microsoft.xbox.xle.telemetry.helpers.UTCChangeRelationship;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ChangeFriendshipDialogViewModel {
    private static final String TAG = ChangeFriendshipDialogViewModel.class.getSimpleName();
    private AddUserToFavoriteListAsyncTask addUserToFavoriteListAsyncTask;
    private AddUserToFollowingListAsyncTask addUserToFollowingListAsyncTask;
    private AddUserToShareIdentityListAsyncTask addUserToShareIdentityListAsyncTask;
    private boolean isAddingUserToFavoriteList;
    private boolean isAddingUserToFollowingList;
    private boolean isAddingUserToShareIdentityList;
    private boolean isLoadingUserProfile;
    private boolean isRemovingUserFromFavoriteList;
    private boolean isRemovingUserFromFollowingList;
    private boolean isRemovingUserFromShareIdentityList;
    private boolean isSharingRealNameEnd;
    private boolean isSharingRealNameStart;
    private LoadPersonDataAsyncTask loadProfileAsyncTask;
    private ProfileModel model;
    private RemoveUserFromFavoriteListAsyncTask removeUserFromFavoriteListAsyncTask;
    private RemoveUserFromFollowingListAsyncTask removeUserFromFollowingListAsyncTask;
    private RemoveUserFromShareIdentityListAsyncTask removeUserFromShareIdentityListAsyncTask;
    private HashSet<ProfileScreenViewModel.ChangeFriendshipFormOptions> changeFriendshipForm = new HashSet<>();
    private boolean isFollowing = false;
    private boolean isFavorite = false;
    private ListState viewModelState = ListState.LoadingState;

    public ChangeFriendshipDialogViewModel(ProfileModel model) {
        XLEAssert.assertTrue(ProfileModel.isMeXuid(model.getXuid()) ? false : true);
        this.model = model;
    }

    public ListState getViewModelState() {
        return this.viewModelState;
    }

    public String getGamerTag() {
        return this.model.getGamerTag();
    }

    public String getGamerPicUrl() {
        return this.model.getGamerPicImageUrl();
    }

    public String getRealName() {
        return this.model.getRealName();
    }

    public String getGamerScore() {
        return this.model.getGamerScore();
    }

    public int getPreferredColor() {
        return this.model.getPreferedColor();
    }

    public boolean getIsFollowing() {
        return this.model.isCallerFollowingTarget();
    }

    public boolean getIsFavorite() {
        return this.model.hasCallerMarkedTargetAsFavorite();
    }

    public String getXuid() {
        return this.model.getXuid();
    }

    public boolean getCallerMarkedTargetAsIdentityShared() {
        return this.model.hasCallerMarkedTargetAsIdentityShared();
    }

    public String getCallerShareRealNameStatus() {
        ProfileModel meProfile = ProfileModel.getMeProfileModel();
        return meProfile != null ? meProfile.getShareRealNameStatus() : "";
    }

    public String getCallerGamerTag() {
        ProfileModel meProfile = ProfileModel.getMeProfileModel();
        return meProfile != null ? meProfile.getGamerTag() : "";
    }

    public void setShouldAddUserToFriendList(boolean shouldAddUserToFriendList) {
        if (shouldAddUserToFriendList) {
            this.changeFriendshipForm.add(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToFriendList);
        } else {
            this.changeFriendshipForm.remove(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToFriendList);
        }
    }

    public void setShouldAddUserToFavoriteList(boolean shouldAddUserToFavoriteList) {
        if (shouldAddUserToFavoriteList) {
            this.changeFriendshipForm.add(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToFavoriteList);
        } else {
            this.changeFriendshipForm.remove(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToFavoriteList);
        }
    }

    public void setShouldRemoveUserFromFavoriteList(boolean shouldRemoveUserFromFavoriteList) {
        if (shouldRemoveUserFromFavoriteList) {
            this.changeFriendshipForm.add(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldRemoveUserFromFavoriteList);
        } else {
            this.changeFriendshipForm.remove(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldRemoveUserFromFavoriteList);
        }
    }

    public void setShouldAddUserToShareIdentityList(boolean shouldAddUserToShareIdentityList) {
        if (shouldAddUserToShareIdentityList) {
            this.changeFriendshipForm.add(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToShareIdentityList);
        } else {
            this.changeFriendshipForm.remove(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToShareIdentityList);
        }
    }

    public void setShouldRemoveUserFroShareIdentityList(boolean shouldRemoveUserFroShareIdentityList) {
        if (shouldRemoveUserFroShareIdentityList) {
            this.changeFriendshipForm.add(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldRemoveUserFromShareIdentityList);
        } else {
            this.changeFriendshipForm.remove(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldRemoveUserFromShareIdentityList);
        }
    }

    public void onChangeRelationshipCompleted() {
        boolean willPerformAsyncAction = false;
        UTCChangeRelationship.Relationship relationship = this.model.isCallerFollowingTarget() ? UTCChangeRelationship.Relationship.EXISTINGFRIEND : UTCChangeRelationship.Relationship.NOTCHANGED;
        UTCChangeRelationship.FavoriteStatus favoriteStatus = this.model.hasCallerMarkedTargetAsFavorite() ? UTCChangeRelationship.FavoriteStatus.EXISTINGFAVORITE : UTCChangeRelationship.FavoriteStatus.EXISTINGNOTFAVORITED;
        UTCChangeRelationship.RealNameStatus realNameStatus = this.model.hasCallerMarkedTargetAsIdentityShared() ? UTCChangeRelationship.RealNameStatus.EXISTINGSHARED : UTCChangeRelationship.RealNameStatus.EXISTINGNOTSHARED;
        UTCChangeRelationship.GamerType gamerType = UTCChangeRelationship.GamerType.NORMAL;
        if (this.changeFriendshipForm.contains(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToFriendList)) {
            relationship = UTCChangeRelationship.Relationship.ADDFRIEND;
            addFollowingUser();
            willPerformAsyncAction = true;
        }
        if (this.changeFriendshipForm.contains(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldRemoveUserFromFriendList)) {
            relationship = UTCChangeRelationship.Relationship.REMOVEFRIEND;
            removeFollowingUser();
            willPerformAsyncAction = true;
        }
        if (this.changeFriendshipForm.contains(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToFavoriteList)) {
            favoriteStatus = UTCChangeRelationship.FavoriteStatus.FAVORITED;
            addFavoriteUser();
            willPerformAsyncAction = true;
        }
        if (this.changeFriendshipForm.contains(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldRemoveUserFromFavoriteList)) {
            favoriteStatus = UTCChangeRelationship.FavoriteStatus.UNFAVORITED;
            removeFavoriteUser();
            willPerformAsyncAction = true;
        }
        if (this.changeFriendshipForm.contains(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldAddUserToShareIdentityList)) {
            realNameStatus = UTCChangeRelationship.RealNameStatus.SHARINGON;
            addUserToShareIdentityList();
            willPerformAsyncAction = true;
        }
        if (this.changeFriendshipForm.contains(ProfileScreenViewModel.ChangeFriendshipFormOptions.ShouldRemoveUserFromShareIdentityList)) {
            realNameStatus = UTCChangeRelationship.RealNameStatus.SHARINGOFF;
            removeUserFromShareIdentityList();
            willPerformAsyncAction = true;
        }
        if (!willPerformAsyncAction) {
            notifyDialogAsyncTaskCompleted();
        } else {
            UTCChangeRelationship.trackChangeRelationshipDone(relationship, realNameStatus, favoriteStatus, gamerType);
        }
    }

    public void clearChangeFriendshipForm() {
        this.changeFriendshipForm.clear();
    }

    public void setInitialRealNameSharingState(boolean state) {
        this.isSharingRealNameStart = state;
        this.isSharingRealNameEnd = state;
    }

    public void setIsSharingRealNameEnd(boolean state) {
        this.isSharingRealNameEnd = state;
    }

    public boolean getIsSharingRealNameStart() {
        return this.isSharingRealNameStart;
    }

    public boolean getIsSharingRealNameEnd() {
        return this.isSharingRealNameEnd;
    }

    private void showError(int contentResId) {
        DialogManager.getInstance().showToast(contentResId);
    }

    public String getDialogButtonText() {
        return this.isFollowing ? XboxTcuiSdk.getResources().getString(R.string.TextInput_Confirm) : XboxTcuiSdk.getResources().getString(R.string.OK_Text);
    }

    public boolean isBusy() {
        return this.isLoadingUserProfile || this.isAddingUserToFavoriteList || this.isRemovingUserFromFavoriteList || this.isAddingUserToFollowingList || this.isRemovingUserFromFollowingList || this.isAddingUserToShareIdentityList || this.isRemovingUserFromShareIdentityList;
    }

    public void load() {
        if (this.loadProfileAsyncTask != null) {
            this.loadProfileAsyncTask.cancel();
        }
        this.loadProfileAsyncTask = new LoadPersonDataAsyncTask();
        this.loadProfileAsyncTask.load(true);
    }

    public void addFavoriteUser() {
        if (this.addUserToFavoriteListAsyncTask != null) {
            this.addUserToFavoriteListAsyncTask.cancel();
        }
        this.addUserToFavoriteListAsyncTask = new AddUserToFavoriteListAsyncTask(this.model.getXuid());
        this.addUserToFavoriteListAsyncTask.load(true);
    }

    public void removeFavoriteUser() {
        if (this.removeUserFromFavoriteListAsyncTask != null) {
            this.removeUserFromFavoriteListAsyncTask.cancel();
        }
        this.removeUserFromFavoriteListAsyncTask = new RemoveUserFromFavoriteListAsyncTask(this.model.getXuid());
        this.removeUserFromFavoriteListAsyncTask.load(true);
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

    public void removeUserFromShareIdentityList() {
        if (this.removeUserFromFollowingListAsyncTask != null) {
            this.removeUserFromFavoriteListAsyncTask.cancel();
        }
        ArrayList<String> users = new ArrayList<>();
        users.add(this.model.getXuid());
        this.removeUserFromShareIdentityListAsyncTask = new RemoveUserFromShareIdentityListAsyncTask(users);
        this.removeUserFromShareIdentityListAsyncTask.load(true);
    }

    private void notifyDialogUpdateView() {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).notifyChangeFriendshipDialogUpdateView();
    }

    private void notifyDialogAsyncTaskCompleted() {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).notifyChangeFriendshipDialogAsyncTaskCompleted();
    }

    private void notifyDialogAsyncTaskFailed(String errorMessage) {
        ((SGProjectSpecificDialogManager) DialogManager.getInstance().getManager()).notifyChangeFriendshipDialogAsyncTaskFailed(errorMessage);
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

    public void removeFollowingUser() {
        if (this.removeUserFromFollowingListAsyncTask != null) {
            this.removeUserFromFollowingListAsyncTask.cancel();
        }
        this.removeUserFromFollowingListAsyncTask = new RemoveUserFromFollowingListAsyncTask(this.model.getXuid());
        this.removeUserFromFollowingListAsyncTask.load(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLoadPersonDataCompleted(AsyncActionStatus status) {
        this.isLoadingUserProfile = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                ProfileSummaryResultContainer.ProfileSummaryResult summary = this.model.getProfileSummaryData();
                if (summary != null) {
                    this.viewModelState = ListState.ValidContentState;
                } else {
                    this.viewModelState = ListState.ErrorState;
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                this.viewModelState = ListState.ErrorState;
                break;
        }
        notifyDialogUpdateView();
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromShareIdentityListCompleted(AsyncActionStatus status) {
        this.isRemovingUserFromShareIdentityList = false;
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUserToFavoriteListCompleted(AsyncActionStatus status, boolean isFavorite) {
        this.isAddingUserToFavoriteList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                this.isFavorite = isFavorite;
                notifyDialogAsyncTaskCompleted();
                break;
            case FAIL:
            case NO_OP_FAIL:
                notifyDialogAsyncTaskFailed(XboxTcuiSdk.getResources().getString(R.string.RealNameSharing_ErrorChangeRemove));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromFavoriteListCompleted(AsyncActionStatus status, boolean isFavorite) {
        this.isRemovingUserFromFavoriteList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                this.isFavorite = isFavorite;
                notifyDialogAsyncTaskCompleted();
                break;
            case FAIL:
            case NO_OP_FAIL:
                notifyDialogAsyncTaskFailed(XboxTcuiSdk.getResources().getString(R.string.RealNameSharing_ErrorChangeRemove));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddUserToFollowingListCompleted(AsyncActionStatus status, boolean isFollowing) {
        this.isAddingUserToFollowingList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                this.isFollowing = isFollowing;
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRemoveUserFromFollowingListCompleted(AsyncActionStatus status, boolean isFollowing) {
        this.isRemovingUserFromFollowingList = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                this.isFollowing = isFollowing;
                if (this.isFavorite && !this.isFollowing) {
                    this.isFavorite = false;
                }
                notifyDialogAsyncTaskCompleted();
                break;
            case FAIL:
            case NO_OP_FAIL:
                notifyDialogAsyncTaskFailed(XboxTcuiSdk.getResources().getString(R.string.RealNameSharing_ErrorChangeRemove));
                break;
        }
    }

    private class LoadPersonDataAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private LoadPersonDataAsyncTask() {
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return false;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ChangeFriendshipDialogViewModel.this.onLoadPersonDataCompleted(AsyncActionStatus.NO_CHANGE);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ChangeFriendshipDialogViewModel.this.isLoadingUserProfile = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ChangeFriendshipDialogViewModel.this.onLoadPersonDataCompleted(result);
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
            XLEAssert.assertNotNull(ChangeFriendshipDialogViewModel.this.model);
            return ChangeFriendshipDialogViewModel.this.model.loadProfileSummary(this.forceLoad).getStatus();
        }
    }

    private class RemoveUserFromShareIdentityListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private ArrayList<String> usersToAdd;

        public RemoveUserFromShareIdentityListAsyncTask(ArrayList<String> users) {
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
            ChangeFriendshipDialogViewModel.this.isRemovingUserFromShareIdentityList = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ChangeFriendshipDialogViewModel.this.onRemoveUserFromShareIdentityListCompleted(asyncActionStatus);
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
            return meProfile != null ? meProfile.removeUserFromShareIdentity(this.forceLoad, this.usersToAdd).getStatus() : AsyncActionStatus.FAIL;
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
            ChangeFriendshipDialogViewModel.this.isAddingUserToShareIdentityList = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus asyncActionStatus) {
            ChangeFriendshipDialogViewModel.this.onAddUseToShareIdentityListCompleted(asyncActionStatus);
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

    private class AddUserToFavoriteListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private boolean favoriteUser = false;
        private String favoriteUserXuid;

        public AddUserToFavoriteListAsyncTask(String favoriteUserXuid) {
            this.favoriteUserXuid = favoriteUserXuid;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ChangeFriendshipDialogViewModel.this.onAddUserToFavoriteListCompleted(AsyncActionStatus.NO_CHANGE, this.favoriteUser);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ChangeFriendshipDialogViewModel.this.isAddingUserToFavoriteList = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ChangeFriendshipDialogViewModel.this.onAddUserToFavoriteListCompleted(result, this.favoriteUser);
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
            ArrayList<FollowersData> favoriteList;
            ProfileModel meProfile = ProfileModel.getMeProfileModel();
            if (meProfile == null) {
                return AsyncActionStatus.FAIL;
            }
            AsyncActionStatus status = meProfile.addUserToFavoriteList(this.forceLoad, this.favoriteUserXuid).getStatus();
            if ((status == AsyncActionStatus.SUCCESS || status == AsyncActionStatus.NO_CHANGE || status == AsyncActionStatus.NO_OP_SUCCESS) && (favoriteList = meProfile.getFavorites()) != null) {
                for (FollowersData fData : favoriteList) {
                    if (fData.xuid.equals(this.favoriteUserXuid)) {
                        this.favoriteUser = fData.isFavorite;
                        return status;
                    }
                }
                return status;
            }
            return status;
        }
    }

    private class RemoveUserFromFavoriteListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private boolean favoriteUser = false;
        private String favoriteUserXuid;

        public RemoveUserFromFavoriteListAsyncTask(String favoriteUserXuid) {
            this.favoriteUserXuid = favoriteUserXuid;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            XLEAssert.assertIsUIThread();
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            XLEAssert.assertIsUIThread();
            ChangeFriendshipDialogViewModel.this.onRemoveUserFromFavoriteListCompleted(AsyncActionStatus.NO_CHANGE, this.favoriteUser);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ChangeFriendshipDialogViewModel.this.isRemovingUserFromFavoriteList = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ChangeFriendshipDialogViewModel.this.onRemoveUserFromFavoriteListCompleted(result, this.favoriteUser);
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
            ArrayList<FollowersData> favoriteList;
            ProfileModel meProfile = ProfileModel.getMeProfileModel();
            if (meProfile == null) {
                return AsyncActionStatus.FAIL;
            }
            AsyncActionStatus status = meProfile.removeUserFromFavoriteList(this.forceLoad, this.favoriteUserXuid).getStatus();
            if ((status == AsyncActionStatus.SUCCESS || status == AsyncActionStatus.NO_CHANGE || status == AsyncActionStatus.NO_OP_SUCCESS) && (favoriteList = meProfile.getFavorites()) != null) {
                for (FollowersData fData : favoriteList) {
                    if (fData.xuid.equals(this.favoriteUserXuid)) {
                        this.favoriteUser = fData.isFavorite;
                        return status;
                    }
                }
                return status;
            }
            return status;
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
            ChangeFriendshipDialogViewModel.this.onAddUserToFollowingListCompleted(AsyncActionStatus.NO_CHANGE, this.isFollowingUser);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ChangeFriendshipDialogViewModel.this.isAddingUserToFollowingList = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ChangeFriendshipDialogViewModel.this.onAddUserToFollowingListCompleted(result, this.isFollowingUser);
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
                    if (response == null || response.getAddFollowingRequestStatus() || response.code != 1028) {
                        ChangeFriendshipDialogViewModel.this.model.loadProfileSummary(true);
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
                    return AsyncActionStatus.FAIL;
                }
                return status;
            }
            return AsyncActionStatus.FAIL;
        }
    }

    private class RemoveUserFromFollowingListAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private String followingUserXuid;
        private boolean isFollowingUser = true;

        public RemoveUserFromFollowingListAsyncTask(String followingUserXuid) {
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
            ChangeFriendshipDialogViewModel.this.onRemoveUserFromFollowingListCompleted(AsyncActionStatus.NO_CHANGE, this.isFollowingUser);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            XLEAssert.assertIsUIThread();
            ChangeFriendshipDialogViewModel.this.isRemovingUserFromFollowingList = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus result) {
            ChangeFriendshipDialogViewModel.this.onRemoveUserFromFollowingListCompleted(result, this.isFollowingUser);
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
            if (meProfile == null) {
                return AsyncActionStatus.FAIL;
            }
            AsyncActionStatus status = meProfile.removeUserFromFollowingList(this.forceLoad, this.followingUserXuid).getStatus();
            if (!AsyncActionStatus.getIsFail(status)) {
                ChangeFriendshipDialogViewModel.this.model.loadProfileSummary(true);
                meProfile.loadProfileSummary(true);
                this.isFollowingUser = false;
                return status;
            }
            return status;
        }
    }
}
