.class public abstract Lcom/microsoft/onlineid/RequestOptions;
.super Ljava/lang/Object;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/microsoft/onlineid/RequestOptions",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final _values:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/RequestOptions;-><init>(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "bundle"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    .line 39
    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlightConfiguration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "client_flight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefillUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnauthenticatedSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "uaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWasPrecachingEnabled()Z
    .locals 3

    .prologue
    .line 181
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    const-string v0, "1"

    iget-object v1, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v2, "client_web_telemetry_precaching_enabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    if-eqz p2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-object p0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFlightConfiguration(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .locals 2
    .param p1, "flightConfiguration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "client_flight"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object p0
.end method

.method public setPrefillUsername(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object p0
.end method

.method public setUnauthenticatedSessionId(Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;
    .locals 2
    .param p1, "uaid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    iget-object v0, p0, Lcom/microsoft/onlineid/RequestOptions;->_values:Landroid/os/Bundle;

    const-string v1, "uaid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-object p0
.end method

.method public setWasPrecachingEnabled(Z)Lcom/microsoft/onlineid/RequestOptions;
    .locals 2
    .param p1, "precachingEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/microsoft/onlineid/RequestOptions;, "Lcom/microsoft/onlineid/RequestOptions<TB;>;"
    const-string v1, "client_web_telemetry_precaching_enabled"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/onlineid/RequestOptions;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/onlineid/RequestOptions;

    .line 172
    return-object p0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
