.class public Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
.super Ljava/lang/Object;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/privacy/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacySetting"
.end annotation


# instance fields
.field public setting:Ljava/lang/String;

.field private settingId:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field private settingValue:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;)V
    .locals 1
    .param p1, "settingId"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .param p2, "value"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->setting:Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->value:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getPrivacySettingId()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->setting:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->getPrivacySettingId(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->settingId:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->settingId:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object v0
.end method

.method public getPrivacySettingValue()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->getPrivacySettingValue(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->settingValue:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->settingValue:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    return-object v0
.end method

.method public setPrivacySettingId(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;)V
    .locals 1
    .param p1, "settingId"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->setting:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->settingId:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 68
    return-void
.end method
