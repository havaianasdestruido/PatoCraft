.class public Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
.super Ljava/lang/Object;
.source "SsoResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private _pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_data:Ljava/lang/Object;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingIntent()Z
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<TT;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_data:Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 35
    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;, "Lcom/microsoft/onlineid/internal/sso/client/SsoResponse<TT;>;"
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_pendingIntent:Landroid/app/PendingIntent;

    .line 49
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/sso/client/SsoResponse;->_data:Ljava/lang/Object;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 50
    return-object p0
.end method
