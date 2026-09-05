.class public Lcom/microsoft/onlineid/sts/DeviceIdentity;
.super Ljava/lang/Object;
.source "DeviceIdentity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

.field private final _puid:Ljava/lang/String;

.field private _token:Lcom/microsoft/onlineid/sts/DAToken;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/DeviceCredentials;Ljava/lang/String;Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 2
    .param p1, "credentials"    # Lcom/microsoft/onlineid/sts/DeviceCredentials;
    .param p2, "puid"    # Ljava/lang/String;
    .param p3, "token"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "credentials and puid must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    .line 39
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/microsoft/onlineid/sts/DeviceIdentity;

    .line 90
    .local v0, "id":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    .line 91
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    .line 92
    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "id":Lcom/microsoft/onlineid/sts/DeviceIdentity;
    :cond_3
    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public getCredentials()Lcom/microsoft/onlineid/sts/DeviceCredentials;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_credentials:Lcom/microsoft/onlineid/sts/DeviceCredentials;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/DeviceCredentials;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_puid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method setDAToken(Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 0
    .param p1, "token"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceIdentity;->_token:Lcom/microsoft/onlineid/sts/DAToken;

    .line 73
    return-void
.end method
