.class public Lcom/microsoft/onlineid/SecurityScope;
.super Ljava/lang/Object;
.source "SecurityScope.java"

# interfaces
.implements Lcom/microsoft/onlineid/ISecurityScope;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _address:Ljava/lang/String;

.field private final _policy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, "target"

    invoke-static {p1, v1}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-eqz p2, :cond_0

    const-string v1, "TOKEN_BROKER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    const-string v1, "scope"

    invoke-static {p1, p2}, Lcom/microsoft/onlineid/internal/Scopes;->buildOffer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 42
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Uris;->mapToSortedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 43
    const-string p2, "TOKEN_BROKER"

    .line 46
    .end local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iput-object p1, p0, Lcom/microsoft/onlineid/SecurityScope;->_address:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p2, :cond_0

    const-string v1, "TOKEN_BROKER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The parameters map cannot be applied to a scope already in TOKEN_BROKER format."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    const-string v1, "scope"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The parameters map cannot contain a \'scope\' key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 74
    .local v0, "parametersCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "scope"

    invoke-static {p1, p2}, Lcom/microsoft/onlineid/internal/Scopes;->buildOffer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Uris;->mapToSortedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/SecurityScope;->_address:Ljava/lang/String;

    .line 77
    const-string v1, "TOKEN_BROKER"

    iput-object v1, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    instance-of v3, p1, Lcom/microsoft/onlineid/ISecurityScope;

    if-nez v3, :cond_2

    move v1, v2

    .line 116
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 119
    check-cast v0, Lcom/microsoft/onlineid/ISecurityScope;

    .line 121
    .local v0, "scope":Lcom/microsoft/onlineid/ISecurityScope;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/microsoft/onlineid/ISecurityScope;->getPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/microsoft/onlineid/SecurityScope;->_address:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/microsoft/onlineid/SecurityScope;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/onlineid/SecurityScope;->_address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/SecurityScope;->_policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
