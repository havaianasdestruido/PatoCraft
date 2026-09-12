package com.microsoft.xbox.service.network.managers.friendfinder;

import com.microsoft.xbox.service.model.friendfinder.ShortCircuitProfileMessage;
import com.microsoft.xbox.service.network.managers.ServiceManagerFactory;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class UploadContactsAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
    private static final int MAX_UPLOAD_NUM_PER_REQUEST = 100;
    private UploadContactsCompleted callback;
    private String phoneNumber;

    public interface UploadContactsCompleted {
        void onResult(AsyncActionStatus asyncActionStatus);
    }

    public UploadContactsAsyncTask(UploadContactsCompleted callback) {
        this.callback = callback;
        if (!JavaUtil.isNullOrEmpty(PhoneContactInfo.getInstance().getProfileNumber())) {
            this.phoneNumber = PhoneContactInfo.getInstance().getProfileNumber();
        } else if (!JavaUtil.isNullOrEmpty(PhoneContactInfo.getInstance().getUserEnteredNumber())) {
            this.phoneNumber = PhoneContactInfo.getInstance().getUserEnteredNumber();
        } else if (!JavaUtil.isNullOrEmpty(PhoneContactInfo.getInstance().getPhoneNumberFromSim())) {
            this.phoneNumber = PhoneContactInfo.getInstance().getPhoneNumberFromSim();
        }
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
            if (JavaUtil.isNullOrEmpty(this.phoneNumber)) {
                ShortCircuitProfileMessage.ShortCircuitProfileResponse profile = ServiceManagerFactory.getInstance().getSLSServiceManager().getMyShortCircuitProfile();
                if (profile == null) {
                    return AsyncActionStatus.FAIL;
                }
                String profileNumber = profile.getXboxNumber();
                if (!JavaUtil.isNullOrEmpty(profileNumber)) {
                    PhoneContactInfo.getInstance().setProfileNumber(profileNumber);
                    this.phoneNumber = profileNumber;
                } else {
                    return AsyncActionStatus.FAIL;
                }
            }
            if (uploadContactsSucceeded()) {
                return AsyncActionStatus.SUCCESS;
            }
        } catch (XLEException e) {
        }
        return AsyncActionStatus.FAIL;
    }

    private boolean uploadContactsSucceeded() throws XLEException {
        ArrayList<PhoneContactInfo.Contact> contacts = PhoneContactInfo.getInstance().getContacts();
        if (contacts != null) {
            if (contacts.size() == 0) {
                return true;
            }
            if (contacts.size() > 100) {
                return batchUploadContacts(contacts);
            }
            return uploadContacts(contacts);
        }
        return false;
    }

    private boolean batchUploadContacts(ArrayList<PhoneContactInfo.Contact> contacts) throws XLEException {
        XLEAssert.assertNotNull(contacts);
        XLEAssert.assertTrue(contacts.size() > 100);
        int startUploadIndex = 0;
        boolean moreContactsToUpload = true;
        while (moreContactsToUpload) {
            int endUploadIndex = startUploadIndex + 100;
            if (endUploadIndex >= contacts.size()) {
                endUploadIndex = contacts.size();
                moreContactsToUpload = false;
            }
            if (!uploadContacts(new ArrayList<>(contacts.subList(startUploadIndex, endUploadIndex)))) {
                return false;
            }
            startUploadIndex = endUploadIndex;
        }
        return true;
    }

    private boolean uploadContacts(ArrayList<PhoneContactInfo.Contact> contacts) throws XLEException {
        XLEAssert.assertNotNull(contacts);
        XLEAssert.assertTrue(contacts.size() > 0 && contacts.size() <= 100);
        ShortCircuitProfileMessage.UploadPhoneContactsRequest uploadContactsRequest = new ShortCircuitProfileMessage.UploadPhoneContactsRequest(contacts, this.phoneNumber);
        ShortCircuitProfileMessage.UploadPhoneContactsResponse uploadContactsResponse = ServiceManagerFactory.getInstance().getSLSServiceManager().updatePhoneContacts(uploadContactsRequest);
        if (uploadContactsResponse == null || uploadContactsResponse.isErrorResponse) {
            return false;
        }
        Set<String> aliases = uploadContactsResponse.getXboxPhoneContacts();
        PhoneContactInfo.getInstance().updateXboxContacts(aliases);
        return true;
    }

    @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
    protected void onPreExecute() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
    public void onPostExecute(AsyncActionStatus status) {
        if (this.callback != null) {
            this.callback.onResult(status);
        }
    }
}
