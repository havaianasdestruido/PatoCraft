package net.hockeyapp.android;

import net.hockeyapp.android.objects.FeedbackMessage;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public abstract class FeedbackManagerListener {
    public abstract boolean feedbackAnswered(FeedbackMessage feedbackMessage);

    public Class<? extends FeedbackActivity> getFeedbackActivityClass() {
        return FeedbackActivity.class;
    }

    public boolean shouldCreateNewFeedbackThread() {
        return false;
    }
}
