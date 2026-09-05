.class public Lcom/microsoft/onlineid/internal/Scopes;
.super Ljava/lang/Object;
.source "Scopes.java"


# static fields
.field public static final ScopeParameterName:Ljava/lang/String; = "scope"

.field public static final TokenBrokerPolicyString:Ljava/lang/String; = "TOKEN_BROKER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDefaultParametersToScope(Lcom/microsoft/onlineid/ISecurityScope;Ljava/util/Map;)Lcom/microsoft/onlineid/ISecurityScope;
    .locals 6
    .param p0, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/onlineid/ISecurityScope;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "defaultParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "target":Ljava/lang/String;
    invoke-interface {p0}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "policy":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 48
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TOKEN_BROKER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-static {v3}, Lcom/microsoft/onlineid/internal/Uris;->queryStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 52
    .local v0, "existingParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 63
    .end local v0    # "existingParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Uris;->mapToSortedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 65
    new-instance v4, Lcom/microsoft/onlineid/SecurityScope;

    const-string v5, "TOKEN_BROKER"

    invoke-direct {v4, v3, v5}, Lcom/microsoft/onlineid/SecurityScope;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 60
    :cond_0
    const-string v4, "scope"

    invoke-static {v3, v2}, Lcom/microsoft/onlineid/internal/Scopes;->buildOffer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static buildOffer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "target"

    invoke-static {p0, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "service::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractParametersFromScope(Lcom/microsoft/onlineid/ISecurityScope;)Ljava/util/Map;
    .locals 2
    .param p0, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/onlineid/ISecurityScope;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p0}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOKEN_BROKER"

    invoke-static {v0, v1}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p0}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Uris;->queryStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
