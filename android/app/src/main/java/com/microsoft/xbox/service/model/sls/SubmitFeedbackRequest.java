package com.microsoft.xbox.service.model.sls;

import com.microsoft.xbox.toolkit.GsonUtil;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class SubmitFeedbackRequest {
    public String evidenceId;
    public FeedbackType feedbackType;
    public String sessionRef;
    public String textReason;
    public String voiceReasonId;
    public long xuid;

    public SubmitFeedbackRequest(long xuid, String sessionRef, FeedbackType feedbackType, String textReason, String voiceReasonId, String evidenceId) {
        this.xuid = xuid;
        this.sessionRef = sessionRef;
        this.feedbackType = feedbackType;
        this.textReason = textReason;
        this.voiceReasonId = voiceReasonId;
        this.evidenceId = evidenceId;
    }

    public static String getSubmitFeedbackRequestBody(SubmitFeedbackRequest request) {
        return GsonUtil.toJsonString(request);
    }
}
