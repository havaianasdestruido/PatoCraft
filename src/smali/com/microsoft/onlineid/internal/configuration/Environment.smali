.class public Lcom/microsoft/onlineid/internal/configuration/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# instance fields
.field private final _configUrl:Ljava/net/URL;

.field private final _environmentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "configUrl"    # Ljava/net/URL;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_environmentName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_configUrl:Ljava/net/URL;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lcom/microsoft/onlineid/internal/configuration/Environment;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/microsoft/onlineid/internal/configuration/Environment;

    .line 73
    .local v0, "other":Lcom/microsoft/onlineid/internal/configuration/Environment;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getEnvironmentName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/configuration/Environment;->getConfigUrl()Ljava/net/URL;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/microsoft/onlineid/internal/configuration/Environment;
    :cond_3
    move v1, v2

    .line 77
    goto :goto_0
.end method

.method public getConfigUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_configUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getEnvironmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_environmentName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_environmentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/internal/configuration/Environment;->_configUrl:Ljava/net/URL;

    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
