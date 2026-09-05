.class public Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
.super Ljava/lang/Object;
.source "NeverListResultContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeverListResult"
.end annotation


# instance fields
.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->users:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->users:Ljava/util/ArrayList;

    new-instance v1, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;

    invoke-direct {v1, p1}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;

    .line 30
    .local v0, "user":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;->xuid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const/4 v1, 0x1

    .line 35
    .end local v0    # "user":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;
    .locals 3
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;

    .line 19
    .local v0, "user":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;->xuid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    .end local v0    # "user":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
