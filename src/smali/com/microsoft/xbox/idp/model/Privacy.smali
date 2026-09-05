.class public final Lcom/microsoft/xbox/idp/model/Privacy;
.super Ljava/lang/Object;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;,
        Lcom/microsoft/xbox/idp/model/Privacy$Settings;,
        Lcom/microsoft/xbox/idp/model/Privacy$Setting;,
        Lcom/microsoft/xbox/idp/model/Privacy$Value;,
        Lcom/microsoft/xbox/idp/model/Privacy$Key;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAdapters(Lcom/google/gson/GsonBuilder;)Lcom/google/gson/GsonBuilder;
    .locals 3
    .param p0, "gson"    # Lcom/google/gson/GsonBuilder;

    .prologue
    .line 71
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/model/Privacy$1;-><init>()V

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/model/Privacy$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$SettingsAdapter;-><init>(Lcom/microsoft/xbox/idp/model/Privacy$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method
