package com.microsoft.xbox.xle.app.activity.FriendFinder;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderType;
import com.microsoft.xbox.service.network.managers.friendfinder.PhoneContactInfo;
import com.microsoft.xbox.toolkit.AsyncActionStatus;
import com.microsoft.xbox.toolkit.NetworkAsyncTask;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.XLEException;
import com.microsoft.xbox.toolkit.ui.ActivityParameters;
import com.microsoft.xbox.toolkit.ui.NavigationManager;
import com.microsoft.xbox.toolkit.ui.ScreenLayout;
import com.microsoft.xbox.xle.app.adapter.FriendFinderPhoneInviteScreenAdapater;
import com.microsoft.xbox.xle.telemetry.helpers.UTCFriendFinder;
import com.microsoft.xbox.xle.viewmodel.ViewModelBase;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderPhoneInviteScreenViewModel extends ViewModelBase {
    private Comparator<PhoneContactInfo.Contact> contactComparator;
    private ArrayList<PhoneContactInfo.Contact> contactsList;
    private boolean isUploadingContacts;
    private UploadContactsAsyncTask uploadContactsAsyncTask;

    public FriendFinderPhoneInviteScreenViewModel(ScreenLayout screenLayout) {
        super(screenLayout);
        this.contactsList = new ArrayList<>();
        this.contactComparator = new Comparator<PhoneContactInfo.Contact>() { // from class: com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderPhoneInviteScreenViewModel.1
            @Override // java.util.Comparator
            public int compare(PhoneContactInfo.Contact lhs, PhoneContactInfo.Contact rhs) {
                return lhs.displayName.compareTo(rhs.displayName);
            }
        };
        XLEAssert.fail("This isn't supported yet.");
        this.adapter = new FriendFinderPhoneInviteScreenAdapater(this);
    }

    public ArrayList<PhoneContactInfo.Contact> getContacts() {
        return this.contactsList;
    }

    public void addContacts(ArrayList<Integer> contactsToInvite) {
        StringBuffer phoneNumbers = new StringBuffer();
        for (Integer i : contactsToInvite) {
            if (phoneNumbers.length() > 0) {
                phoneNumbers.append(',');
            }
            phoneNumbers.append(this.contactsList.get(i.intValue()).phoneNumbers.get(0));
        }
        Intent smsIntent = new Intent("android.intent.action.SENDTO");
        smsIntent.setData(Uri.parse("smsto:" + Uri.encode(phoneNumbers.toString())));
        smsIntent.putExtra("sms_body", XboxTcuiSdk.getResources().getString(R.string.FriendFinder_PhoneInviteFriends_Message));
        smsIntent.putExtra("address", phoneNumbers.toString());
        List<ResolveInfo> smsResInfo = XboxTcuiSdk.getActivity().getPackageManager().queryIntentActivities(smsIntent, 0);
        if (!smsResInfo.isEmpty()) {
            XboxTcuiSdk.getActivity().startActivity(smsIntent);
        }
        ActivityParameters params = new ActivityParameters();
        params.putFriendFinderDone(true);
        try {
            NavigationManager.getInstance().PushScreen(FriendFinderHomeScreen.class, params);
        } catch (XLEException e) {
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStartOverride() {
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void onRehydrate() {
        this.adapter = new FriendFinderPhoneInviteScreenAdapater(this);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    protected void onStopOverride() {
        cancelActiveTasks();
    }

    private void cancelActiveTasks() {
        if (this.uploadContactsAsyncTask != null) {
            this.uploadContactsAsyncTask.cancel();
            this.uploadContactsAsyncTask = null;
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean isBusy() {
        return this.isUploadingContacts;
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public void load(boolean forceRefresh) {
        cancelActiveTasks();
        if (PhoneContactInfo.getInstance().isXboxContactsUpdated()) {
            this.contactsList = PhoneContactInfo.getInstance().getContacts();
            Collections.sort(this.contactsList, this.contactComparator);
        } else {
            this.uploadContactsAsyncTask = new UploadContactsAsyncTask();
            this.uploadContactsAsyncTask.load(true);
        }
    }

    @Override // com.microsoft.xbox.xle.viewmodel.ViewModelBase
    public boolean onBackButtonPressed() {
        UTCFriendFinder.trackBackButtonPressed(getScreen().getName(), FriendFinderType.PHONE);
        return super.onBackButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUploadContactsTaskCompleted(AsyncActionStatus status) {
        this.isUploadingContacts = false;
        this.contactsList = PhoneContactInfo.getInstance().getContacts();
        Collections.sort(this.contactsList, this.contactComparator);
        updateAdapter();
    }

    private class UploadContactsAsyncTask extends NetworkAsyncTask<AsyncActionStatus> {
        private UploadContactsAsyncTask() {
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected boolean checkShouldExecute() {
            return false;
        }

        @Override // com.microsoft.xbox.toolkit.NetworkAsyncTask
        protected void onNoAction() {
            FriendFinderPhoneInviteScreenViewModel.this.onUploadContactsTaskCompleted(AsyncActionStatus.NO_CHANGE);
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
            return AsyncActionStatus.SUCCESS;
        }

        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        protected void onPreExecute() {
            FriendFinderPhoneInviteScreenViewModel.this.isUploadingContacts = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.microsoft.xbox.toolkit.XLEAsyncTask
        public void onPostExecute(AsyncActionStatus status) {
            FriendFinderPhoneInviteScreenViewModel.this.onUploadContactsTaskCompleted(status);
        }
    }
}
