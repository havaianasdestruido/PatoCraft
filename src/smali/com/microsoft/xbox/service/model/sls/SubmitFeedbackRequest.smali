.class public Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;
.super Ljava/lang/Object;
.source "SubmitFeedbackRequest.java"


# instance fields
.field public evidenceId:Ljava/lang/String;

.field public feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public sessionRef:Ljava/lang/String;

.field public textReason:Ljava/lang/String;

.field public voiceReasonId:Ljava/lang/String;

.field public xuid:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "xuid"    # J
    .param p3, "sessionRef"    # Ljava/lang/String;
    .param p4, "feedbackType"    # Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .param p5, "textReason"    # Ljava/lang/String;
    .param p6, "voiceReasonId"    # Ljava/lang/String;
    .param p7, "evidenceId"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->xuid:J

    .line 15
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->sessionRef:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 17
    iput-object p5, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->textReason:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->voiceReasonId:Ljava/lang/String;

    .line 19
    iput-object p7, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->evidenceId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getSubmitFeedbackRequestBody(Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
