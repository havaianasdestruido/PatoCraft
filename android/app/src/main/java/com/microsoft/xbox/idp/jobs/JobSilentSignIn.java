package com.microsoft.xbox.idp.jobs;

import android.app.PendingIntent;
import android.content.Context;
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
public class JobSilentSignIn extends MSAJob {
    private static final String TAG = JobSilentSignIn.class.getSimpleName();
    private final IAccountCallback accountCallback;
    private final CharSequence activityTitle;
    private final String cid;
    private final String policy;
    private final String scope;
    private final ITicketCallback ticketCallback;

    public JobSilentSignIn(Context context, CharSequence activityTitle, MSAJob.Callbacks callbacks, String scope, String policy, String cid) {
        super(context.getApplicationContext(), callbacks);
        this.accountCallback = new IAccountCallback() { // from class: com.microsoft.xbox.idp.jobs.JobSilentSignIn.1
            @Override // com.microsoft.onlineid.IAccountCallback
            public void onAccountAcquired(UserAccount userAccount, Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "accountCallback.onAccountAcquired");
                UTCSignin.trackAccountAcquired(JobSilentSignIn.TAG, userAccount.getCid(), true);
                JobSilentSignIn.this.callbacks.onAccountAcquired(JobSilentSignIn.this, userAccount);
                userAccount.getTicket(new SecurityScope(JobSilentSignIn.this.scope, JobSilentSignIn.this.policy), bundle);
            }

            @Override // com.microsoft.onlineid.IAccountCallback
            public void onAccountSignedOut(String id, boolean thisAppOnly, Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "accountCallback.onAccountSignedOut");
                UTCError.trackSignedOut(JobSilentSignIn.TAG, true, UTCTelemetry.CallBackSources.Account);
                UTCUser.trackSignout(JobSilentSignIn.this.activityTitle);
                JobSilentSignIn.this.callbacks.onSignedOut(JobSilentSignIn.this);
            }

            @Override // com.microsoft.onlineid.IAccountCallback, com.microsoft.onlineid.internal.IUserInteractionCallback
            public void onUINeeded(PendingIntent pendingIntent, Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "accountCallback.onUINeeded");
                UTCError.trackUINeeded(JobSilentSignIn.TAG, true, UTCTelemetry.CallBackSources.Account);
                JobSilentSignIn.this.callbacks.onUiNeeded(JobSilentSignIn.this);
            }

            @Override // com.microsoft.onlineid.IAccountCallback, com.microsoft.onlineid.internal.IFailureCallback
            public void onFailure(AuthenticationException e, Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "accountCallback.onFailure: " + e.getMessage());
                UTCError.trackFailure(JobSilentSignIn.TAG, true, UTCTelemetry.CallBackSources.Account, (Exception) e);
                JobSilentSignIn.this.callbacks.onFailure(JobSilentSignIn.this, e);
            }

            @Override // com.microsoft.onlineid.IAccountCallback, com.microsoft.onlineid.internal.IUserInteractionCallback
            public void onUserCancel(Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "accountCallback.onUserCancel");
                UTCError.trackMSACancel(JobSilentSignIn.TAG, true, UTCTelemetry.CallBackSources.Account);
                JobSilentSignIn.this.callbacks.onUserCancel(JobSilentSignIn.this);
            }
        };
        this.ticketCallback = new ITicketCallback() { // from class: com.microsoft.xbox.idp.jobs.JobSilentSignIn.2
            @Override // com.microsoft.onlineid.ITicketCallback
            public void onTicketAcquired(Ticket ticket, UserAccount userAccount, Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "ticketCallback.onTicketAcquired");
                if (userAccount != null) {
                    UTCSignin.trackTicketAcquired(JobSilentSignIn.TAG, userAccount.getCid(), true);
                    UTCSignin.trackMSASigninSuccess(userAccount.getCid(), true, JobSilentSignIn.this.activityTitle);
                } else {
                    UTCSignin.trackTicketAcquired(JobSilentSignIn.TAG, JobSilentSignIn.this.cid, true);
                    UTCSignin.trackMSASigninSuccess(JobSilentSignIn.this.cid, true, JobSilentSignIn.this.activityTitle);
                }
                JobSilentSignIn.this.callbacks.onTicketAcquired(JobSilentSignIn.this, ticket);
            }

            @Override // com.microsoft.onlineid.ITicketCallback, com.microsoft.onlineid.internal.IUserInteractionCallback
            public void onUINeeded(PendingIntent pendingIntent, Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "ticketCallback.onUINeeded");
                UTCError.trackUINeeded(JobSilentSignIn.TAG, true, UTCTelemetry.CallBackSources.Ticket);
                JobSilentSignIn.this.callbacks.onUiNeeded(JobSilentSignIn.this);
            }

            @Override // com.microsoft.onlineid.ITicketCallback, com.microsoft.onlineid.internal.IFailureCallback
            public void onFailure(AuthenticationException e, Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "ticketCallback.onFailure: " + e.getMessage());
                UTCError.trackFailure(JobSilentSignIn.TAG, true, UTCTelemetry.CallBackSources.Ticket, (Exception) e);
                JobSilentSignIn.this.callbacks.onFailure(JobSilentSignIn.this, e);
            }

            @Override // com.microsoft.onlineid.ITicketCallback, com.microsoft.onlineid.internal.IUserInteractionCallback
            public void onUserCancel(Bundle bundle) {
                Log.d(JobSilentSignIn.TAG, "ticketCallback.onUserCancel");
                UTCError.trackMSACancel(JobSilentSignIn.TAG, true, UTCTelemetry.CallBackSources.Ticket);
                JobSilentSignIn.this.callbacks.onUserCancel(JobSilentSignIn.this);
            }
        };
        this.activityTitle = activityTitle;
        this.scope = scope;
        this.policy = policy;
        this.cid = cid;
        this.accountManager.setAccountCallback(this.accountCallback);
        this.accountManager.setTicketCallback(this.ticketCallback);
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob
    public MSAJob.Type getType() {
        return MSAJob.Type.SILENT_SIGN_IN;
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob
    public JobSilentSignIn start() {
        this.accountManager.getAccountById(this.cid, null);
        UTCSignin.trackSignin(this.cid, true, this.activityTitle);
        UTCSignin.trackMSASigninStart(this.cid, true, this.activityTitle);
        return this;
    }
}
