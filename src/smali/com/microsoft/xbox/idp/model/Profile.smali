.class public final Lcom/microsoft/xbox/idp/model/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;,
        Lcom/microsoft/xbox/idp/model/Profile$SettingId;,
        Lcom/microsoft/xbox/idp/model/Profile$GamerpicUpdateResponse;,
        Lcom/microsoft/xbox/idp/model/Profile$GamerpicChoiceList;,
        Lcom/microsoft/xbox/idp/model/Profile$GamerpicListEntry;,
        Lcom/microsoft/xbox/idp/model/Profile$UserSetting;,
        Lcom/microsoft/xbox/idp/model/Profile$GamerpicChangeRequest;,
        Lcom/microsoft/xbox/idp/model/Profile$User;,
        Lcom/microsoft/xbox/idp/model/Profile$Setting;,
        Lcom/microsoft/xbox/idp/model/Profile$Response;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAdapters(Lcom/google/gson/GsonBuilder;)Lcom/google/gson/GsonBuilder;
    .locals 3
    .param p0, "gson"    # Lcom/google/gson/GsonBuilder;

    .prologue
    .line 84
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/model/Profile$1;-><init>()V

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/model/Profile$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingsAdapter;-><init>(Lcom/microsoft/xbox/idp/model/Profile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method
