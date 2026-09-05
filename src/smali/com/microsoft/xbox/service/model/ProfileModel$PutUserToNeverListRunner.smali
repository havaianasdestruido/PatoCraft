.class Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutUserToNeverListRunner"
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
.field private blockUserXuid:Ljava/lang/String;

.field private caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "caller"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p3, "xuid"    # Ljava/lang/String;
    .param p4, "blockUserXuid"    # Ljava/lang/String;

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 1287
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 1288
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->xuid:Ljava/lang/String;

    .line 1289
    iput-object p4, p0, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->blockUserXuid:Ljava/lang/String;

    .line 1290
    return-void
.end method


# virtual methods
.method public buildData()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 1294
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/NeverListRequest;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->blockUserXuid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/microsoft/xbox/service/model/sls/NeverListRequest;-><init>(J)V

    .line 1295
    .local v0, "neverListRequest":Lcom/microsoft/xbox/service/model/sls/NeverListRequest;
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/sls/NeverListRequest;->getNeverListRequestBody(Lcom/microsoft/xbox/service/model/sls/NeverListRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->addUserToNeverList(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 1280
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->buildData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 1309
    const-wide/16 v0, 0xf9c

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
    .line 1304
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;->blockUserXuid:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$1300(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 1300
    return-void
.end method
