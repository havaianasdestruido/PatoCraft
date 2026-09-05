.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;
.super Ljava/lang/Object;
.source "UTCPageAction.java"


# static fields
.field private static final PAGEACTIONVERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 21
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    invoke-static {p0, v0, p1, v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 22
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    .locals 1
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;
    .param p2, "model"    # Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    .prologue
    .line 25
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 26
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    .locals 6
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "onPageName"    # Ljava/lang/String;
    .param p2, "activityTitle"    # Ljava/lang/CharSequence;
    .param p3, "additionalInfo"    # Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    .prologue
    const/4 v5, 0x0

    .line 36
    if-eqz p2, :cond_0

    .line 37
    :try_start_0
    const-string v2, "activityTitle"

    invoke-virtual {p3, v2, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_0
    new-instance v1, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;-><init>()V

    .line 44
    .local v1, "pageAction":Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;
    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->setActionName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->setPageName(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    invoke-static {v2, p3}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 49
    const-string v2, "pageActions:%s, onPage:%s, additionalInfo:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {v1}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "pageAction":Lcom/microsoft/xbox/idp/telemetry/utc/PageAction;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UTCPageAction.track"

    invoke-static {v0, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
