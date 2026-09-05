.class public Lcom/microsoft/onlineid/sts/UserProperties;
.super Ljava/lang/Object;
.source "UserProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
    }
.end annotation


# instance fields
.field private final _userProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    if-ne p0, p1, :cond_0

    .line 92
    const/4 v1, 0x1

    .line 100
    :goto_0
    return v1

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/microsoft/onlineid/sts/UserProperties;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/microsoft/onlineid/sts/UserProperties;

    .line 97
    .local v0, "other":Lcom/microsoft/onlineid/sts/UserProperties;
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    iget-object v2, v0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 100
    .end local v0    # "other":Lcom/microsoft/onlineid/sts/UserProperties;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;)Ljava/lang/String;
    .locals 1
    .param p1, "userProperty"    # Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public has(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;)Z
    .locals 1
    .param p1, "userProperty"    # Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-static {v0}, Lcom/microsoft/onlineid/internal/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public put(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/UserProperties;
    .locals 1
    .param p1, "userProperty"    # Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/UserProperties;->_userProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object p0
.end method
