.class public Lcom/microsoft/xbox/idp/model/Privacy$Settings;
.super Ljava/lang/Object;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
            "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newWithMap()Lcom/microsoft/xbox/idp/model/Privacy$Settings;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Settings;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/model/Privacy$Settings;-><init>()V

    .line 54
    .local v0, "s":Lcom/microsoft/xbox/idp/model/Privacy$Settings;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    .line 55
    return-object v0
.end method


# virtual methods
.method public isSettingSet(Lcom/microsoft/xbox/idp/model/Privacy$Key;)Z
    .locals 3
    .param p1, "key"    # Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    .line 62
    .local v1, "value":Lcom/microsoft/xbox/idp/model/Privacy$Value;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Value;->NotSet:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    if-eq v1, v2, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 66
    .end local v1    # "value":Lcom/microsoft/xbox/idp/model/Privacy$Value;
    :cond_0
    return v0
.end method
