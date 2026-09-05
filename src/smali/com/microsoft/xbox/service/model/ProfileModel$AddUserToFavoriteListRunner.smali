.class Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddUserToFavoriteListRunner"
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

.field private favoriteUserXuid:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V
    .locals 0
    .param p2, "caller"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p3, "favoriteUserXuid"    # Ljava/lang/String;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 1056
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 1057
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;->favoriteUserXuid:Ljava/lang/String;

    .line 1058
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
    .line 1062
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    .local v0, "xuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;->favoriteUserXuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v1

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FavoriteListRequest;

    invoke-direct {v2, v0}, Lcom/microsoft/xbox/service/model/sls/FavoriteListRequest;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v2}, Lcom/microsoft/xbox/service/model/sls/FavoriteListRequest;->getFavoriteListRequestBody(Lcom/microsoft/xbox/service/model/sls/FavoriteListRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->addUserToFavoriteList(Ljava/lang/String;)Z

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
    .line 1050
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;->buildData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 1078
    const-wide/16 v0, 0xf9a

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
    .line 1073
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;->favoriteUserXuid:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$600(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 1069
    return-void
.end method
