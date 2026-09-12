package com.microsoft.xbox.xle.app.activity.FriendFinder;

import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.service.model.friendfinder.LinkedAccountHelpers;
import com.microsoft.xbox.service.model.friendfinder.OptInStatus;
import com.microsoft.xbox.service.model.friendfinder.ShortCircuitProfileMessage;
import com.microsoft.xbox.service.model.privacy.PrivacySettings;
import com.microsoft.xbox.service.model.privacy.PrivacySettingsResult;
import com.microsoft.xbox.service.network.managers.ServiceManagerFactory;
import com.microsoft.xbox.service.network.managers.friendfinder.PhoneContactInfo;
import com.microsoft.xbox.service.network.managers.friendfinder.UploadContactsAsyncTask;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.adapter.FriendFinderVerifyCodeScreenAdapter;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderVerifyCodeScreenViewModel extends ViewModelBase {
    private static final String TAG = "FriendFinder";
    private AddShortCircuitProfileAsyncTask addShortCircuitProfileAsyncTask;
    private boolean isSendingCode;
    private boolean isUpdatingProfile;
    private UpdateShortCircuitProfileAsyncTask updateShortCircuitProfileAsyncTask;
    private UploadContactsAsyncTask uploadContactsAsyncTask;

    public FriendFinderVerifyCodeScreenViewModel(ScreenLayout screenLayout) {
        super(screenLayout);
        this.adapter = new FriendFinderVerifyCodeScreenAdapter(this);
    }

    public void resendCode() {
        addProfile(false);
    }

    public void callMe() {
        addProfile(true);
    }

    private void addProfile(boolean useVoice) {
        if (this.addShortCircuitProfileAsyncTask != null) {
            this.addShortCircuitProfileAsyncTask.cancel();
        }
        this.addShortCircuitProfileAsyncTask = new AddShortCircuitProfileAsyncTask(useVoice);
        this.addShortCircuitProfileAsyncTask.load(true);
        this.isSendingCode = true;
        updateAdapter();
    }

    public boolean isSendingCode() {
        return this.isSendingCode;
    }

    public void verifyCode(String code) {
        if (this.updateShortCircuitProfileAsyncTask != null) {
            this.updateShortCircuitProfileAsyncTask.cancel();
        }
        this.updateShortCircuitProfileAsyncTask = new UpdateShortCircuitProfileAsyncTask(code);
        this.updateShortCircuitProfileAsyncTask.load(true);
        updateAdapter();
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStartOverride() {
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onRehydrate() {
        this.adapter = new FriendFinderVerifyCodeScreenAdapter(this);
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
        if (this.updateShortCircuitProfileAsyncTask != null) {
            this.updateShortCircuitProfileAsyncTask.cancel();
            this.updateShortCircuitProfileAsyncTask = null;
        }
        if (this.uploadContactsAsyncTask != null) {
            this.uploadContactsAsyncTask.cancel();
            this.uploadContactsAsyncTask = null;
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean isBusy() {
        return this.isUpdatingProfile;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void load(boolean forceRefresh) {
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean onBackButtonPressed() {
        UTCFriendFinder.trackBackButtonPressed(getScreen().getName(), FriendFinderType.PHONE);
        return super.onBackButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAddShortCircuitProfileCompleted(AsyncActionStatus status) {
        this.isSendingCode = false;
        switch (status) {
            case FAIL:
            case NO_OP_FAIL:
                showError(R.string.Service_ErrorText);
                break;
        }
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdateShortCircuitProfileCompleted(AsyncActionStatus status) {
        switch (status) {
            case SUCCESS:
            case NO_CHANGE:
            case NO_OP_SUCCESS:
                if (this.uploadContactsAsyncTask != null) {
                    this.uploadContactsAsyncTask.cancel();
                    this.uploadContactsAsyncTask = null;
                }
                this.uploadContactsAsyncTask = new UploadContactsAsyncTask(new UploadContactsAsyncTask.UploadContactsCompleted() { // from class: com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderVerifyCodeScreenViewModel.1
                    @Override // com.microsoft.xbox.service.network.managers.friendfinder.UploadContactsAsyncTask.UploadContactsCompleted
                    public void onResult(AsyncActionStatus status2) {
                        FriendFinderVerifyCodeScreenViewModel.this.onUploadContactsCompleted(status2);
                    }
                });
                this.uploadContactsAsyncTask.load(true);
                break;
            case FAIL:
            case NO_OP_FAIL:
                this.isUpdatingProfile = false;
                showError(R.string.Service_ErrorText);
                updateAdapter();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUploadContactsCompleted(AsyncActionStatus status) {
        this.isUpdatingProfile = false;
        updateAdapter();
        ActivityParameters parameters = new ActivityParameters();
        parameters.putFriendFinderType(FriendFinderType.PHONE);
        try {
            NavigationManager.getInstance().PushScreen(FriendFinderSuggestionsScreen.class, parameters);
        } catch (XLEException e) {
        }
    }

    private class AddShortCircuitProfileAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private boolean useVoice;

        public AddShortCircuitProfileAsyncTask(boolean useVoice) {
            this.useVoice = useVoice;
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
            return null;
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
                ShortCircuitProfileMessage.ShortCircuitProfileRequest deleteRequest = new ShortCircuitProfileMessage.ShortCircuitProfileRequest(ShortCircuitProfileMessage.MsgType.Delete, userEnteredNumber, country);
                ShortCircuitProfileMessage.ShortCircuitProfileResponse deleteResponse = ServiceManagerFactory.getInstance().getSLSServiceManager().sendShortCircuitProfile(deleteRequest);
                if (deleteResponse != null && deleteResponse.error != null && deleteResponse.error.message != null && !deleteResponse.error.message.contains("Cannot edit or delete a phone that does not exist")) {
                    return AsyncActionStatus.FAIL;
                }
                ShortCircuitProfileMessage.ShortCircuitProfileRequest addRequest = new ShortCircuitProfileMessage.ShortCircuitProfileRequest(ShortCircuitProfileMessage.MsgType.Add, userEnteredNumber, country, this.useVoice);
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
                            ShortCircuitProfileMessage.ShortCircuitProfileRequest addRequest2 = new ShortCircuitProfileMessage.ShortCircuitProfileRequest(ShortCircuitProfileMessage.MsgType.Add, "+1" + userEnteredNumber.replace("+", ""), country);
                            ShortCircuitProfileMessage.ShortCircuitProfileResponse addResponse2 = ServiceManagerFactory.getInstance().getSLSServiceManager().sendShortCircuitProfile(addRequest2);
                            if (addResponse2 != null && addResponse2.error != null) {
                                return AsyncActionStatus.FAIL;
                            }
                            return AsyncActionStatus.SUCCESS;
                        }
                    }
                    return AsyncActionStatus.FAIL;
                }
                return AsyncActionStatus.SUCCESS;
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
            FriendFinderVerifyCodeScreenViewModel.this.onAddShortCircuitProfileCompleted(status);
        }
    }

    private class UpdateShortCircuitProfileAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private String verificationToken;

        public UpdateShortCircuitProfileAsyncTask(String verificationToken) {
            this.verificationToken = verificationToken;
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
                if (verifyPhoneNumberSucceeded() && updateOptInSucceeded()) {
                    UTCFriendFinder.trackPhoneContactsLinkSuccess(FriendFinderVerifyCodeScreenViewModel.this.getScreen().getName());
                    return AsyncActionStatus.SUCCESS;
                }
            } catch (XLEException e) {
            }
            return AsyncActionStatus.FAIL;
        }

        private boolean verifyPhoneNumberSucceeded() throws XLEException {
            String country = PhoneContactInfo.getInstance().getRegionWithCode();
            String userEnteredNumber = PhoneContactInfo.getInstance().getUserEnteredNumber();
            if (JavaUtil.isNullOrEmpty(country)) {
                if (!userEnteredNumber.startsWith("+")) {
                    userEnteredNumber = "+" + userEnteredNumber;
                }
            } else {
                userEnteredNumber = userEnteredNumber.replace("+", "");
            }
            ShortCircuitProfileMessage.ShortCircuitProfileRequest request = new ShortCircuitProfileMessage.ShortCircuitProfileRequest(ShortCircuitProfileMessage.MsgType.PhoneVerification, userEnteredNumber, country, this.verificationToken);
            ShortCircuitProfileMessage.ShortCircuitProfileResponse verifyPhoneResponse = ServiceManagerFactory.getInstance().getSLSServiceManager().sendShortCircuitProfile(request);
            boolean acceptableError = verifyPhoneResponse.error == null || (verifyPhoneResponse.error.code != null && verifyPhoneResponse.error.code.equalsIgnoreCase("PhoneAlreadyVerified:PhoneToVerifyTokenAlreadyVerified"));
            if (!acceptableError && JavaUtil.isNullOrEmpty(country)) {
                int digitCount = 0;
                for (int i = 0; i < userEnteredNumber.length(); i++) {
                    if (Character.isDigit(userEnteredNumber.charAt(i))) {
                        digitCount++;
                    }
                }
                if (digitCount == 10) {
                    ShortCircuitProfileMessage.ShortCircuitProfileRequest request2 = new ShortCircuitProfileMessage.ShortCircuitProfileRequest(ShortCircuitProfileMessage.MsgType.PhoneVerification, "+1" + userEnteredNumber.replace("+", ""), country, this.verificationToken);
                    verifyPhoneResponse = ServiceManagerFactory.getInstance().getSLSServiceManager().sendShortCircuitProfile(request2);
                    acceptableError = verifyPhoneResponse.error == null || (verifyPhoneResponse.error.code != null && verifyPhoneResponse.error.code.equalsIgnoreCase("PhoneAlreadyVerified:PhoneToVerifyTokenAlreadyVerified"));
                }
            }
            return verifyPhoneResponse != null && acceptableError;
        }

        private boolean updateOptInSucceeded() throws XLEException {
            PrivacySettings.PrivacySetting settings = ServiceManagerFactory.getInstance().getSLSServiceManager().getPrivacySetting(PrivacySettings.PrivacySettingId.ShareIdentity);
            PrivacySettings.PrivacySettingValue privacyValue = settings != null ? settings.getPrivacySettingValue() : PrivacySettings.PrivacySettingValue.NotSet;
            if (privacyValue == PrivacySettings.PrivacySettingValue.NotSet || privacyValue == PrivacySettings.PrivacySettingValue.Blocked) {
                ArrayList<PrivacySettings.PrivacySetting> newSettings = new ArrayList<>();
                newSettings.add(new PrivacySettings.PrivacySetting(PrivacySettings.PrivacySettingId.ShareIdentity, PrivacySettings.PrivacySettingValue.FriendCategoryShareIdentity));
                if (!ServiceManagerFactory.getInstance().getSLSServiceManager().setPrivacySettings(new PrivacySettingsResult(newSettings))) {
                    return false;
                }
            }
            return ServiceManagerFactory.getInstance().getSLSServiceManager().setFriendFinderOptInStatus(LinkedAccountHelpers.LinkedAccountType.Phone, OptInStatus.OptedIn);
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            FriendFinderVerifyCodeScreenViewModel.this.isUpdatingProfile = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus status) {
            FriendFinderVerifyCodeScreenViewModel.this.onUpdateShortCircuitProfileCompleted(status);
        }
    }
}
