.class public Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
.super Ljava/util/HashMap;
.source "ActivityParameters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final FF_DONE:Ljava/lang/String; = "FriendFinderDone"

.field private static final FF_INFO_TYPE:Ljava/lang/String; = "InfoType"

.field private static final FORCE_RELOAD:Ljava/lang/String; = "ForceReload"

.field private static final FROM_SCREEN:Ljava/lang/String; = "FromScreen"

.field private static final ME_XUID:Ljava/lang/String; = "MeXuid"

.field private static final ORIGINATING_PAGE:Ljava/lang/String; = "OriginatingPage"

.field private static final PRIVILEGES:Ljava/lang/String; = "Privileges"

.field private static final SELECTED_PROFILE:Ljava/lang/String; = "SelectedProfile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getFriendFinderDone()Z
    .locals 2

    .prologue
    .line 69
    const-string v1, "FriendFinderDone"

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 70
    .local v0, "done":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFriendFinderType()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;
    .locals 2

    .prologue
    .line 60
    const-string v1, "InfoType"

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .line 61
    .local v0, "type":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;
    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;->UNKNOWN:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .end local v0    # "type":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;
    :cond_0
    return-object v0
.end method

.method public getMeXuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "MeXuid"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "Privileges"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "SelectedProfile"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isForceReload()Z
    .locals 1

    .prologue
    .line 52
    const-string v0, "ForceReload"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ForceReload"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putFriendFinderDone(Z)V
    .locals 2
    .param p1, "done"    # Z

    .prologue
    .line 74
    const-string v0, "FriendFinderDone"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public putFriendFinderType(Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;)V
    .locals 1
    .param p1, "type"    # Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderType;

    .prologue
    .line 65
    const-string v0, "InfoType"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public putFromScreen(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 1
    .param p1, "screen"    # Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .prologue
    .line 48
    const-string v0, "FromScreen"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public putMeXuid(Ljava/lang/String;)V
    .locals 1
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "MeXuid"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public putPrivileges(Ljava/lang/String;)V
    .locals 1
    .param p1, "privileges"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "Privileges"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public putSelectedProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileXuid"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "SelectedProfile"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public putSourcePage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "OriginatingPage"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
