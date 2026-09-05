.class Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "ChangeFriendshipDialogViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddUserToShareIdentityListAsyncTask"
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
.field final synthetic this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

.field private usersToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    .line 554
    iput-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->usersToAdd:Ljava/util/ArrayList;

    .line 555
    return-void
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    return v0
.end method

.method protected loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 3

    .prologue
    .line 585
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    .line 586
    .local v0, "meProfile":Lcom/microsoft/xbox/service/model/ProfileModel;
    if-eqz v0, :cond_0

    .line 587
    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->forceLoad:Z

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->usersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToShareIdentity(ZLjava/util/ArrayList;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v1

    .line 589
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0
.end method

.method protected bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method protected bridge synthetic onError()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onNoAction()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method protected onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1
    .param p1, "asyncActionStatus"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->access$700(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 576
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 550
    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 570
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->access$602(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z

    .line 571
    return-void
.end method
