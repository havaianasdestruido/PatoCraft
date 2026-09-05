.class Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveUsersFromShareIdentityListRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private userIds:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "caller"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/service/model/ProfileModel;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 994
    .local p3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 995
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 996
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    .line 997
    return-void
.end method


# virtual methods
.method public buildData()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 1001
    new-instance v1, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;->getAddShareIdentityRequestBody(Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "postBody":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$300(Lcom/microsoft/xbox/service/model/ProfileModel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->removeFriendFromShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->buildData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 1011
    const-wide/32 v0, 0x9c6a

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$400(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V

    .line 1017
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 1007
    return-void
.end method
