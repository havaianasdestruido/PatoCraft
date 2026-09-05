.class Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "SystemSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFriendFinderSettingsRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
        "<",
        "Lcom/microsoft/xbox/xle/app/FriendFinderSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final caller:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

.field final synthetic this$0:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/xle/model/SystemSettingsModel;)V
    .locals 0
    .param p2, "caller"    # Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;->this$0:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;->caller:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    .line 205
    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 209
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
    .line 199
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;->buildData()Lcom/microsoft/xbox/xle/app/FriendFinderSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 224
    const-wide/16 v0, 0x1389

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/xle/app/FriendFinderSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/xle/app/FriendFinderSettings;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetFriendFinderSettingsRunner;->caller:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->access$300(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 220
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method
