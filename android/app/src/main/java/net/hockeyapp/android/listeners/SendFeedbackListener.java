package net.hockeyapp.android.listeners;

import net.hockeyapp.android.tasks.SendFeedbackTask;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class SendFeedbackListener {
    public void feedbackSuccessful(SendFeedbackTask task) {
    }

    public void feedbackFailed(SendFeedbackTask task, Boolean userWantsRetry) {
    }
}
