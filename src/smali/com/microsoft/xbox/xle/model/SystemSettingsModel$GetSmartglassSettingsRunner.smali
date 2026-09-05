.class Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "SystemSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSmartglassSettingsRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
        "<",
        "Lcom/microsoft/xbox/xle/app/SmartglassSettings;",
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
    .line 173
    iput-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;->this$0:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;->caller:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    .line 175
    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/xle/app/SmartglassSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 179
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
    .line 169
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;->buildData()Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 194
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
            "Lcom/microsoft/xbox/xle/app/SmartglassSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/xle/app/SmartglassSettings;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;->caller:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->access$200(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 190
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method
