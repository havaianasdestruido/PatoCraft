.class Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "ProfileScreenViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadUserMutedListAsyncTask"
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
.field private model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;)V
    .locals 0
    .param p2, "model"    # Lcom/microsoft/xbox/service/model/ProfileModel;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    .line 709
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    .line 710
    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 711
    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;
    .param p2, "x1"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p3, "x2"    # Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;

    .prologue
    .line 704
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;)V

    return-void
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .locals 1

    .prologue
    .line 715
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 716
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->shouldRefresh()Z

    move-result v0

    return v0
.end method

.method protected loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 3

    .prologue
    .line 744
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 746
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-boolean v2, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->forceLoad:Z

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadSync(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    .line 748
    .local v0, "status":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq v0, v1, :cond_0

    .line 754
    .end local v0    # "status":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :goto_0
    return-object v0

    .restart local v0    # "status":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadUserMutedList(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .prologue
    .line 739
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method protected bridge synthetic onError()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onNoAction()V
    .locals 2

    .prologue
    .line 721
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 722
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onLoadUserProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 723
    return-void
.end method

.method protected onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1
    .param p1, "result"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onLoadUserMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 735
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 704
    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 728
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->access$702(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z

    .line 729
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->access$800(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V

    .line 730
    return-void
.end method
