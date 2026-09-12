package com.microsoft.xbox.xle.app.activity.FriendFinder;

import android.os.AsyncTask;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.service.model.friendfinder.LinkedAccountHelpers;
import com.microsoft.xbox.service.model.friendfinder.OptInStatus;
import com.microsoft.xbox.service.model.friendfinder.ShortCircuitProfileMessage;
import com.microsoft.xbox.service.network.managers.ServiceManagerFactory;
import com.microsoft.xbox.service.network.managers.friendfinder.PhoneContactInfo;
import com.microsoft.xbox.service.network.managers.friendfinder.UploadContactsAsyncTask;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.AsyncResult;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.adapter.FriendFinderAddPhoneScreenAdapter;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderAddPhoneScreenViewModel extends ViewModelBase {
    private AddShortCircuitProfileAsyncTask addShortCircuitProfileAsyncTask;
    private String currentCountryCode;
    private boolean isAddingProfile;
    private boolean isLoadingInfo;
    private boolean isLoadingMyProfileTask;
    private boolean isUploadingContactsAndOptingIn;
    private LoadInfoAsyncTask loadInfoAsyncTask;
    private LoadMyProfileAsyncTask loadMyProfileAsyncTask;
    private ShortCircuitProfileMessage.PhoneState myPhoneState;
    private ShortCircuitProfileMessage.ShortCircuitProfileResponse myProfile;
    private OptInAsyncTask optInAsyncTask;
    private String simPhoneNumber;
    private UploadContactsAsyncTask uploadContactsAsyncTask;

    public FriendFinderAddPhoneScreenViewModel(ScreenLayout screenLayout) {
        super(screenLayout);
        this.adapter = new FriendFinderAddPhoneScreenAdapter(this);
    }

    public String getCurrentCountryCode() {
        return this.currentCountryCode;
    }

    public String getSimPhoneNumber() {
        return this.simPhoneNumber;
    }

    public void addPhoneNumber(String enteredPhoneNumber) {
        if (JavaUtil.isNullOrEmpty(enteredPhoneNumber)) {
            showError(R.string.FriendFinder_PhoneNumberHint);
            return;
        }
        PhoneContactInfo.getInstance().setUserEnteredNumber(enteredPhoneNumber);
        if (needToAddPhoneNumber(enteredPhoneNumber)) {
            String normalized = PhoneContactInfo.normalizePhoneNumber(enteredPhoneNumber);
            boolean isValidRegionAndPhoneNumber = !JavaUtil.isNullOrEmpty(normalized);
            if (!isValidRegionAndPhoneNumber) {
                showError(R.string.FriendFinder_PhoneVerifyEnterRegionAndPhoneNubmer);
                return;
            } else {
                cancelActiveTasks();
                this.addShortCircuitProfileAsyncTask = new AddShortCircuitProfileAsyncTask();
                this.addShortCircuitProfileAsyncTask.load(true);
            }
        } else {
            if (this.uploadContactsAsyncTask != null) {
                this.uploadContactsAsyncTask.cancel();
                this.uploadContactsAsyncTask = null;
            }
            this.uploadContactsAsyncTask = new UploadContactsAsyncTask(null);
            this.uploadContactsAsyncTask.load(true);
            if (this.optInAsyncTask != null) {
                this.optInAsyncTask.cancel();
                this.optInAsyncTask = null;
            }
            this.optInAsyncTask = new OptInAsyncTask();
            this.optInAsyncTask.load(true);
        }
        updateAdapter();
    }

    private boolean needToAddPhoneNumber(String phoneNumber) {
        if (this.myProfile == null) {
            return true;
        }
        this.myPhoneState = this.myProfile.isVerified(phoneNumber);
        return (this.myPhoneState != null && this.myPhoneState.isVerified && this.myPhoneState.hasXboxApplication) ? false : true;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStartOverride() {
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onRehydrate() {
        this.adapter = new FriendFinderAddPhoneScreenAdapter(this);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStopOverride() {
        cancelActiveTasks();
    }

    private void cancelActiveTasks() {
        if (this.addShortCircuitProfileAsyncTask != null) {
            this.addShortCircuitProfileAsyncTask.cancel();
            this.addShortCircuitProfileAsyncTask = null;
        }
        if (this.loadInfoAsyncTask != null) {
            this.loadInfoAsyncTask.cancel(true);
            this.loadInfoAsyncTask = null;
        }
        if (this.loadMyProfileAsyncTask != null) {
            this.loadMyProfileAsyncTask.cancel();
            this.loadMyProfileAsyncTask = null;
        }
        if (this.uploadContactsAsyncTask != null) {
            this.uploadContactsAsyncTask.cancel();
            this.uploadContactsAsyncTask = null;
        }
        if (this.optInAsyncTask != null) {
            this.optInAsyncTask.cancel();
            this.optInAsyncTask = null;
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean isBusy() {
        return this.isAddingProfile || this.isLoadingInfo || this.isLoadingMyProfileTask || this.isUploadingContactsAndOptingIn;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void load(boolean forceRefresh) {
        cancelActiveTasks();
        this.loadInfoAsyncTask = new LoadInfoAsyncTask();
        this.loadInfoAsyncTask.execute(new Void[0]);
        this.loadMyProfileAsyncTask = new LoadMyProfileAsyncTask();
        this.loadMyProfileAsyncTask.load(true);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean onBackButtonPressed() {
        UTCFriendFinder.trackBackButtonPressed(getScreen().getName(), FriendFinderType.PHONE);
        return super.onBackButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddShortCircuitProfileCompleted(AsyncActionStatus status) {
        this.isAddingProfile = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                try {
                    NavigationManager.getInstance().PushScreen(FriendFinderVerifyCodeScreen.class);
                } catch (XLEException e) {
                    return;
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Service_ErrorText);
                updateAdapter();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLoadMyProfileCompleted(AsyncActionStatus status, ShortCircuitProfileMessage.ShortCircuitProfileResponse profile) {
        this.isLoadingMyProfileTask = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                this.myProfile = profile;
                break;
        }
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOptInCompleted(AsyncActionStatus status) {
        this.isUploadingContactsAndOptingIn = false;
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                try {
                    ActivityParameters parameters = new ActivityParameters();
                    parameters.putFriendFinderType(FriendFinderType.PHONE);
                    NavigationManager.getInstance().PushScreen(FriendFinderSuggestionsScreen.class, parameters);
                } catch (XLEException e) {
                    return;
                }
                break;
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Service_ErrorText);
                updateAdapter();
                break;
        }
    }

    private class LoadInfoAsyncTask extends AsyncTask<Void, Void, Void> {
        private LoadInfoAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            FriendFinderAddPhoneScreenViewModel.this.isLoadingInfo = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... params) {
            String region = PhoneContactInfo.getInstance().getRegion();
            PhoneContactInfo.getInstance().getCountryNameFromRegion(region);
            String regionCode = PhoneContactInfo.getInstance().getCountryCode();
            if (!JavaUtil.isNullOrEmpty(regionCode)) {
                FriendFinderAddPhoneScreenViewModel.this.currentCountryCode = regionCode;
            }
            FriendFinderAddPhoneScreenViewModel.this.simPhoneNumber = PhoneContactInfo.getInstance().getPhoneNumberFromSim();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void aVoid) {
            FriendFinderAddPhoneScreenViewModel.this.isLoadingInfo = false;
            FriendFinderAddPhoneScreenViewModel.this.updateAdapter();
        }
    }

    private class LoadMyProfileAsyncTask extends NetworkAsyncTask<AsyncResult<ShortCircuitProfileMessage.ShortCircuitProfileResponse>> {
        private LoadMyProfileAsyncTask() {
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            return FriendFinderAddPhoneScreenViewModel.this.myProfile == null;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            FriendFinderAddPhoneScreenViewModel.this.onLoadMyProfileCompleted(AsyncActionStatus.SUCCESS, FriendFinderAddPhoneScreenViewModel.this.myProfile);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncResult<ShortCircuitProfileMessage.ShortCircuitProfileResponse> onError() {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        public AsyncResult<ShortCircuitProfileMessage.ShortCircuitProfileResponse> loadDataInBackground() {
            ShortCircuitProfileMessage.ShortCircuitProfileResponse profile = null;
            try {
                profile = ServiceManagerFactory.getInstance().getSLSServiceManager().getMyShortCircuitProfile();
            } catch (XLEException e) {
            }
            return new AsyncResult<>(profile, this, null);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            FriendFinderAddPhoneScreenViewModel.this.isLoadingMyProfileTask = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncResult<ShortCircuitProfileMessage.ShortCircuitProfileResponse> result) {
            if (result != null) {
                FriendFinderAddPhoneScreenViewModel.this.onLoadMyProfileCompleted(result.getStatus(), result.getResult());
            } else {
                FriendFinderAddPhoneScreenViewModel.this.onLoadMyProfileCompleted(AsyncActionStatus.FAIL, null);
            }
        }
    }

    private class AddShortCircuitProfileAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private AddShortCircuitProfileAsyncTask() {
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
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
            try {
                String country = PhoneContactInfo.getInstance().getRegionWithCode();
                String userEnteredNumber = PhoneContactInfo.getInstance().getUserEnteredNumber();
                if (JavaUtil.isNullOrEmpty(country)) {
                    if (!userEnteredNumber.startsWith("+")) {
                        userEnteredNumber = "+" + userEnteredNumber;
                    }
                } else {
                    userEnteredNumber = userEnteredNumber.replace("+", "");
                }
                ShortCircuitProfileMessage.ShortCircuitProfileRequest addRequest = new ShortCircuitProfileMessage.ShortCircuitProfileRequest(getAddType(), userEnteredNumber, country);
                ShortCircuitProfileMessage.ShortCircuitProfileResponse addResponse = ServiceManagerFactory.getInstance().getSLSServiceManager().sendShortCircuitProfile(addRequest);
                if (addResponse != null && addResponse.error != null) {
                    if (JavaUtil.isNullOrEmpty(country)) {
                        int digitCount = 0;
                        for (int i = 0; i < userEnteredNumber.length(); i++) {
                            if (Character.isDigit(userEnteredNumber.charAt(i))) {
                                digitCount++;
                            }
                        }
                        if (digitCount == 10) {
                            ShortCircuitProfileMessage.ShortCircuitProfileRequest addRequest2 = new ShortCircuitProfileMessage.ShortCircuitProfileRequest(getAddType(), "+1" + userEnteredNumber.replace("+", ""), country);
                            ShortCircuitProfileMessage.ShortCircuitProfileResponse addResponse2 = ServiceManagerFactory.getInstance().getSLSServiceManager().sendShortCircuitProfile(addRequest2);
                            if (addResponse2 != null && addResponse2.error != null) {
                                return AsyncActionStatus.FAIL;
                            }
                            return AsyncActionStatus.SUCCESS;
                        }
                    }
                    if (addResponse.error.code != null && addResponse.error.code.equalsIgnoreCase("PhoneAlreadyVerified")) {
                        return AsyncActionStatus.SUCCESS;
                    }
                    return AsyncActionStatus.FAIL;
                }
                return AsyncActionStatus.SUCCESS;
            } catch (XLEException e) {
                return AsyncActionStatus.FAIL;
            }
        }

        private ShortCircuitProfileMessage.MsgType getAddType() {
            if (FriendFinderAddPhoneScreenViewModel.this.myPhoneState == null) {
                return ShortCircuitProfileMessage.MsgType.Add;
            }
            XLEAssert.assertFalse("Check for these before invoking this task", FriendFinderAddPhoneScreenViewModel.this.myPhoneState.isVerified && FriendFinderAddPhoneScreenViewModel.this.myPhoneState.hasXboxApplication);
            return FriendFinderAddPhoneScreenViewModel.this.myPhoneState.isVerified ? ShortCircuitProfileMessage.MsgType.AddXbox : ShortCircuitProfileMessage.MsgType.Edit;
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            FriendFinderAddPhoneScreenViewModel.this.isAddingProfile = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus status) {
            FriendFinderAddPhoneScreenViewModel.this.onAddShortCircuitProfileCompleted(status);
        }
    }

    private class OptInAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private OptInAsyncTask() {
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            return true;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
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
            try {
                ServiceManagerFactory.getInstance().getSLSServiceManager().setFriendFinderOptInStatus(LinkedAccountHelpers.LinkedAccountType.Phone, OptInStatus.OptedIn);
                return AsyncActionStatus.SUCCESS;
            } catch (XLEException e) {
                return AsyncActionStatus.FAIL;
            }
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            FriendFinderAddPhoneScreenViewModel.this.isUploadingContactsAndOptingIn = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus status) {
            FriendFinderAddPhoneScreenViewModel.this.onOptInCompleted(status);
        }
    }
}
