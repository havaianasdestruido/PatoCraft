package com.microsoft.xbox.idp.jobs;

import android.content.Context;
import android.content.Intent;
import com.microsoft.onlineid.AccountManager;
import com.microsoft.onlineid.OnlineIdConfiguration;
import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.UserAccount;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class MSAJob {
    protected final AccountManager accountManager;
    protected final Callbacks callbacks;

    public interface Callbacks {
        void onAccountAcquired(MSAJob mSAJob, UserAccount userAccount);

        void onFailure(MSAJob mSAJob, Exception exc);

        void onSignedOut(MSAJob mSAJob);

        void onTicketAcquired(MSAJob mSAJob, Ticket ticket);

        void onUiNeeded(MSAJob mSAJob);

        void onUserCancel(MSAJob mSAJob);
    }

    public abstract Type getType();

    public abstract MSAJob start();

    public MSAJob(Context context, Callbacks callbacks) {
        this.callbacks = callbacks;
        OnlineIdConfiguration onlineIdConfiguration = new OnlineIdConfiguration(OnlineIdConfiguration.PreferredSignUpMemberNameType.Email);
        onlineIdConfiguration.setCobrandingId("90023");
        this.accountManager = new AccountManager(context, onlineIdConfiguration);
    }

    public boolean onActivityResult(int requestCode, int resultCode, Intent data) {
        return this.accountManager.onActivityResult(requestCode, resultCode, data);
    }

    public enum Type {
        SILENT_SIGN_IN,
        SIGN_IN;

        public static Type fromOrdinal(int ordinal) {
            Type[] values = values();
            if (ordinal < 0 || values.length <= ordinal) {
                return null;
            }
            return values[ordinal];
        }
    }
}
