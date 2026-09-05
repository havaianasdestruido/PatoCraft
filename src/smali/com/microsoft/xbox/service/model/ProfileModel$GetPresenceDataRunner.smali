.class Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPresenceDataRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
        "<",
        "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;",
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
    .line 1213
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 1214
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 1215
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;->xuid:Ljava/lang/String;

    .line 1216
    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 1232
    const/4 v0, 0x0

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
    .line 1208
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;->buildData()Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 1246
    const-wide/16 v0, 0xbc5

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1241
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$1100(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 1242
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 1237
    return-void
.end method
