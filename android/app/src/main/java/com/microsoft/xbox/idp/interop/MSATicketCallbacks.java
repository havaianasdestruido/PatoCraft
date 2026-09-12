package com.microsoft.xbox.idp.interop;

import com.microsoft.onlineid.Ticket;
import com.microsoft.onlineid.UserAccount;
import com.microsoft.xbox.idp.jobs.MSAJob;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class MSATicketCallbacks implements MSAJob.Callbacks {
    private String m_ticket = new String("");

    public String getTicket() {
        return this.m_ticket;
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onUiNeeded(MSAJob job) {
        synchronized (job) {
            job.notifyAll();
        }
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onFailure(MSAJob job, Exception e) {
        synchronized (job) {
            job.notifyAll();
        }
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onUserCancel(MSAJob job) {
        synchronized (job) {
            job.notifyAll();
        }
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onSignedOut(MSAJob job) {
        synchronized (job) {
            job.notifyAll();
        }
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onAccountAcquired(MSAJob job, UserAccount userAccount) {
    }

    @Override // com.microsoft.xbox.idp.jobs.MSAJob.Callbacks
    public void onTicketAcquired(MSAJob job, Ticket ticket) {
        synchronized (job) {
            this.m_ticket = ticket.getValue();
            job.notifyAll();
        }
    }
}
