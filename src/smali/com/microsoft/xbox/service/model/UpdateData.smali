.class public final Lcom/microsoft/xbox/service/model/UpdateData;
.super Ljava/lang/Object;
.source "UpdateData.java"


# instance fields
.field private final extra:Landroid/os/Bundle;

.field private final isFinal:Z

.field private final updateType:Lcom/microsoft/xbox/service/model/UpdateType;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V
    .locals 1
    .param p1, "updateType"    # Lcom/microsoft/xbox/service/model/UpdateType;
    .param p2, "isFinal"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/UpdateData;->updateType:Lcom/microsoft/xbox/service/model/UpdateType;

    .line 13
    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/UpdateData;->isFinal:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/UpdateData;->extra:Landroid/os/Bundle;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/UpdateType;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "updateType"    # Lcom/microsoft/xbox/service/model/UpdateType;
    .param p2, "isFinal"    # Z
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/UpdateData;->updateType:Lcom/microsoft/xbox/service/model/UpdateType;

    .line 19
    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/UpdateData;->isFinal:Z

    .line 20
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/UpdateData;->extra:Landroid/os/Bundle;

    .line 21
    return-void
.end method


# virtual methods
.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/UpdateData;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIsFinal()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/UpdateData;->isFinal:Z

    return v0
.end method

.method public getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/UpdateData;->updateType:Lcom/microsoft/xbox/service/model/UpdateType;

    return-object v0
.end method
