package com.microsoft.xbox.idp.jobs;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import com.microsoft.onlineid.IAccountCallback;
import com.microsoft.onlineid.ITicketCallback;
import com.microsoft.onlineid.SecurityScope;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.UserAccount;
import com.microsoft.onlineid.exception.AuthenticationException;
import com.microsoft.xbox.idp.telemetry.helpers.UTCError;
import com.microsoft.xbox.idp.telemetry.helpers.UTCSignin;
import com.microsoft.xbox.idp.telemetry.helpers.UTCTelemetry;
import com.microsoft.xbox.idp.telemetry.helpers.UTCUser;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class JobSignIn extends MSAJob {
    private static final String TAG = JobSignIn.class.getSimpleName();
    private final IAccountCallback accountCallback;
    private final Activity activity;
    private final String policy;
    private final String scope;
    private final ITicketCallback ticketCallback;

    public JobSignIn(Activity activity, MSAJob.Callbacks callbacks, String scope, String policy) {
        super(activity.getApplicationContext(), callbacks);
        this.accountCallback = new IAccountCallback() { // from class: com.microsoft.xbox.idp.jobs.JobSignIn.1
            @Override // com.microsoft.onlineid.IAccountCallback
            public void onAccountAcquired(UserAccount userAccount, Bundle bundle) {
                Log.d(JobSignIn.TAG, "accountCallback.onAccountAcquired");
                UTCSignin.trackAccountAcquired(JobSignIn.TAG, userAccount.getCid(), false);
                JobSignIn.this.callbacks.onAccountAcquired(JobSignIn.this, userAccount);
                userAccount.getTicket(new SecurityScope(JobSignIn.this.scope, JobSignIn.this.policy), bundle);
            }

            @Override // com.microsoft.onlineid.IAccountCallback
            public void onAccountSignedOut(String id, boolean thisAppOnly, Bundle bundle) {
                Log.d(JobSignIn.TAG, "accountCallback.onAccountSignedOut");
                UTCUser.trackSignout(JobSignIn.this.activity.getTitle());
                JobSignIn.this.callbacks.onSignedOut(JobSignIn.this);
            }

            @Override // com.microsoft.onlineid.IAccountCallback, com.microsoft.onlineid.internal.IUserInteractionCallback
            public void onUINeeded(PendingIntent pendingIntent, Bundle bundle) {
                Log.d(JobSignIn.TAG, "accountCallback.onUINeeded");
                UTCError.trackUINeeded(JobSignIn.TAG, false, UTCTelemetry.CallBackSources.Account);
                try {
                    JobSignIn.this.activity.startIntentSenderForResult(pendingIntent.getIntentSender(), 0, null, 0, 0, 0);
                } catch (IntentSender.SendIntentException e) {
                    Log.d(JobSignIn.TAG, e.getMessage());
                    JobSignIn.this.callbacks.onFailure(JobSignIn.this, e);
                }
            }

            @Override // com.microsoft.onlineid.IAccountCallback, com.microsoft.onlineid.internal.IFailureCallback
            public void onFailure(AuthenticationException e, Bundle bundle) {
                Log.d(JobSignIn.TAG, "accountCallback.onFailure: " + e.getMessage());
                UTCError.trackFailure(JobSignIn.TAG, false, UTCTelemetry.CallBackSources.Account, (Exception) e);
                JobSignIn.this.callbacks.onFailure(JobSignIn.this, e);
            }

            @Override // com.microsoft.onlineid.IAccountCallback, com.microsoft.onlineid.internal.IUserInteractionCallback
            public void onUserCancel(Bundle bundle) {
                Log.d(JobSignIn.TAG, "accountCallback.onUserCancel");
                UTCUser.trackMSACancel(JobSignIn.this.activity.getTitle(), JobSignIn.TAG, false, UTCTelemetry.CallBackSources.Account);
                JobSignIn.this.callbacks.onUserCancel(JobSignIn.this);
            }
        };
        this.ticketCallback = new ITicketCallback() { // from class: com.microsoft.xbox.idp.jobs.JobSignIn.2
            @Override // com.microsoft.onlineid.ITicketCallback
            public void onTicketAcquired(Ticket ticket, UserAccount userAccount, Bundle bundle) {
                Log.d(JobSignIn.TAG, "ticketCallback.onTicketAcquired");
                if (userAccount != null) {
                    UTCSignin.trackTicketAcquired(JobSignIn.TAG, userAccount.getCid(), false);
                    UTCSignin.trackMSASigninSuccess(userAccount.getCid(), false, JobSignIn.this.activity.getTitle());
                } else {
                    UTCSignin.trackTicketAcquired(JobSignIn.TAG, null, false);
                    UTCSignin.trackMSASigninSuccess(null, false, JobSignIn.this.activity.getTitle());
                }
                JobSignIn.this.callbacks.onTicketAcquired(JobSignIn.this, ticket);
            }

            @Override // com.microsoft.onlineid.ITicketCallback, com.microsoft.onlineid.internal.IUserInteractionCallback
            public void onUINeeded(PendingIntent pendingIntent, Bundle bundle) {
                Log.d(JobSignIn.TAG, "ticketCallback.onUINeeded");
                try {
                    JobSignIn.this.activity.startIntentSenderForResult(pendingIntent.getIntentSender(), 0, null, 0, 0, 0);
                } catch (IntentSender.SendIntentException e) {
                    Log.d(JobSignIn.TAG, e.getMessage());
                    JobSignIn.this.callbacks.onFailure(JobSignIn.this, e);
                }
            }

            @Override // com.microsoft.onlineid.ITicketCallback, com.microsoft.onlineid.internal.IFailureCallback
            public void onFailure(AuthenticationException e, Bundle bundle) {
                Log.d(JobSignIn.TAG, "ticketCallback.onFailure: " + e.getMessage());
                UTCError.trackFailure(JobSignIn.TAG, false, UTCTelemetry.CallBackSources.Ticket, (Exception) e);
                JobSignIn.this.callbacks.onFailure(JobSignIn.this, e);
            }

            @Override // com.microsoft.onlineid.ITicketCallback, com.microsoft.onlineid.internal.IUserInteractionCallback
            public void onUserCancel(Bundle bundle) {
                Log.d(JobSignIn.TAG, "ticketCallback.onUserCancel");
                UTCUser.trackMSACancel(JobSignIn.this.activity.getTitle(), JobSignIn.TAG, false, UTCTelemetry.CallBackSources.Ticket);
                JobSignIn.this.callbacks.onUserCancel(JobSignIn.this);
            }
        };
        this.activity = activity;
        this.scope = scope;
        this.policy = policy;
        this.accountManager.setAccountCallback(this.accountCallback);
        this.accountManager.setTicketCallback(this.ticketCallback);
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob
    public MSAJob.Type getType() {
        return MSAJob.Type.SIGN_IN;
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob
    public JobSignIn start() {
        UTCSignin.trackSignin(null, false, this.activity.getTitle());
        UTCSignin.trackMSASigninStart(null, false, this.activity.getTitle());
        this.accountManager.getAccountPickerIntent(null, null);
        UTCSignin.trackPageView(this.activity.getTitle());
        return this;
    }
}
