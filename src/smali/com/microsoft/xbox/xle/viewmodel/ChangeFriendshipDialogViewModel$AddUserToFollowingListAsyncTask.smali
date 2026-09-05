.class Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "ChangeFriendshipDialogViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddUserToFollowingListAsyncTask"
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
.field private followingUserXuid:Ljava/lang/String;

.field private isFollowingUser:Z

.field final synthetic this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V
    .locals 1
    .param p2, "followingUserXuid"    # Ljava/lang/String;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->isFollowingUser:Z

    .line 723
    iput-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->followingUserXuid:Ljava/lang/String;

    .line 724
    return-void
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .locals 1

    .prologue
    .line 728
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 729
    const/4 v0, 0x1

    return v0
.end method

.method protected loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 756
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v2

    .line 757
    .local v2, "meProfile":Lcom/microsoft/xbox/service/model/ProfileModel;
    if-eqz v2, :cond_3

    .line 758
    iget-boolean v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->forceLoad:Z

    iget-object v6, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->followingUserXuid:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v4

    .line 760
    .local v4, "status":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->getIsFail(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 761
    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAddUserToFollowingResult()Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    move-result-object v3

    .line 763
    .local v3, "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v3, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->code:I

    const/16 v6, 0x404

    if-ne v5, v6, :cond_1

    .line 764
    sget-object v4, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 784
    .end local v3    # "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .end local v4    # "status":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :cond_0
    :goto_0
    return-object v4

    .line 767
    .restart local v3    # "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .restart local v4    # "status":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :cond_1
    iget-object v5, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-static {v5}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->access$300(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadProfileSummary(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;

    .line 768
    invoke-virtual {v2, v8}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadProfileSummary(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;

    .line 770
    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getFollowingData()Ljava/util/ArrayList;

    move-result-object v1

    .line 771
    .local v1, "followersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 773
    .local v0, "fData":Lcom/microsoft/xbox/service/model/FollowersData;
    iget-object v6, v0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    iget-object v7, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->followingUserXuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 774
    iput-boolean v8, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->isFollowingUser:Z

    goto :goto_0

    .line 784
    .end local v0    # "fData":Lcom/microsoft/xbox/service/model/FollowersData;
    .end local v1    # "followersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    .end local v3    # "response":Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .end local v4    # "status":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :cond_3
    sget-object v4, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0
.end method

.method protected bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .prologue
    .line 751
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method protected bridge synthetic onError()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onNoAction()V
    .locals 3

    .prologue
    .line 734
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 735
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    iget-boolean v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->isFollowingUser:Z

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->access$1200(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    .line 736
    return-void
.end method

.method protected onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2
    .param p1, "result"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->isFollowingUser:Z

    invoke-static {v0, p1, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->access$1200(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    .line 747
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 717
    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 740
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 741
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->access$1302(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z

    .line 742
    return-void
.end method
