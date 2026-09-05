.class public Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "ReportUserScreenViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;
    }
.end annotation


# instance fields
.field private feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field private isSubmittingReport:Z

.field private model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field private submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 5
    .param p1, "screenLayout"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 34
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getSelectedProfile()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "profileXuid":Ljava/lang/String;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 37
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->popScreenWithXuidError()V

    .line 41
    :cond_0
    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 42
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 43
    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;)V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    .line 45
    const/4 v1, 0x7

    new-array v4, v1, [Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentPersonalInfo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v1, v4, v3

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayCheater:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v1, v4, v2

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 48
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGamertag:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    :goto_2
    aput-object v1, v4, v2

    const/4 v1, 0x3

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGamerpic:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v2, v4, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayQuitter:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v2, v4, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairplayUnsporting:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v2, v4, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsAbusiveVoice:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    aput-object v2, v4, v1

    iput-object v4, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 54
    return-void

    :cond_1
    move v1, v3

    .line 35
    goto :goto_0

    :cond_2
    move v1, v3

    .line 42
    goto :goto_1

    .line 48
    :cond_3
    sget-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentRealName:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->onSubmitReportCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->isSubmittingReport:Z

    return p1
.end method

.method private onSubmitReportCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 155
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_SuccessSubtext:I

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/DialogManager;->showToast(I)V

    .line 160
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->onBackButtonPressed()Z

    goto :goto_0

    .line 164
    :pswitch_1
    sget v0, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_Error:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->showError(I)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private popScreenWithXuidError()V
    .locals 1

    .prologue
    .line 103
    :try_start_0
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->showError(I)V

    .line 104
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreen()V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getPreferredColor()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getPreferedColor()I

    move-result v0

    return v0
.end method

.method public getReason()Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-object v0
.end method

.method public getReasonTitles()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v1, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_SelectReason:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 123
    .local v0, "feedbackType":Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "feedbackType":Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    :cond_0
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_InfoString_Android:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "titleFormat":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getXUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->isSubmittingReport:Z

    return v0
.end method

.method public load(Z)V
    .locals 0
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 58
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->removePage()V

    .line 61
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v6

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 72
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v7

    .local v7, "ex":Lcom/microsoft/xbox/toolkit/XLEException;
    move v0, v9

    .line 69
    goto :goto_0
.end method

.method public onRehydrate()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected onStartOverride()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected onStopOverride()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->cancel()V

    .line 90
    :cond_0
    return-void
.end method

.method public setReason(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 134
    if-eqz p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 135
    .local v0, "validPosition":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->feedbackReasons:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    :goto_1
    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 136
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->updateAdapter()V

    .line 137
    return-void

    .line 134
    .end local v0    # "validPosition":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    .restart local v0    # "validPosition":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public submitReport(Ljava/lang/String;)V
    .locals 6
    .param p1, "textReason"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->cancel()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$1;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    .line 150
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReportAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->load(Z)V

    .line 152
    :cond_1
    return-void
.end method

.method public validReasonSelected()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->selectedReason:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
