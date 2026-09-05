.class public Lcom/microsoft/onlineid/sts/DeviceCredentials;
.super Ljava/lang/Object;
.source "DeviceCredentials.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _password:Ljava/lang/String;

.field private final _username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "username and password must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lcom/microsoft/onlineid/sts/DeviceCredentials;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/microsoft/onlineid/sts/DeviceCredentials;

    .line 71
    .local v0, "creds":Lcom/microsoft/onlineid/sts/DeviceCredentials;
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "creds":Lcom/microsoft/onlineid/sts/DeviceCredentials;
    :cond_3
    move v1, v2

    .line 74
    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DeviceCredentials;->_password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
