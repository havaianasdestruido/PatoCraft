.class Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNeverListRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
        "<",
        "Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;",
        ">;"
    }
.end annotation


# instance fields
.field private caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V
    .locals 0
    .param p2, "caller"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p3, "xuid"    # Ljava/lang/String;

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 1256
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 1257
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;->xuid:Ljava/lang/String;

    .line 1258
    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;->xuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getNeverListInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;->buildData()Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 1276
    const-wide/16 v0, 0xc83

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1271
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$1200(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 1272
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 1267
    return-void
.end method
