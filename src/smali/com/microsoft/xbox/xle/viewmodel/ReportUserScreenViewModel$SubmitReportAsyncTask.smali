.class Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "ReportUserScreenViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitReportAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask",
        "<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field private model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private textReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)V
    .locals 0
    .param p2, "model"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p3, "feedbackType"    # Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .param p4, "textReason"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    .line 179
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 181
    iput-object p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 182
    iput-object p4, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->textReason:Ljava/lang/String;

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;
    .param p2, "x1"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p3, "x2"    # Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$1;

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method protected loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->forceLoad:Z

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->textReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/xbox/service/model/ProfileModel;->submitFeedbackForUser(ZLcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method protected bridge synthetic onError()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onNoAction()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 194
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->access$100(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 195
    return-void
.end method

.method protected onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1
    .param p1, "result"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->access$100(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 207
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 172
    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 200
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->access$202(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Z)Z

    .line 201
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->updateAdapter()V

    .line 202
    return-void
.end method
