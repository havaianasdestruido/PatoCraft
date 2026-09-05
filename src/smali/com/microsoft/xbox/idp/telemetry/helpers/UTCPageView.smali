.class public Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;
.super Ljava/lang/Object;
.source "UTCPageView.java"


# static fields
.field private static final PAGEVIEWVERSION:I = 0x1

.field private static pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPage(Ljava/lang/String;)V
    .locals 1
    .param p0, "newPage"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    .line 57
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 58
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    return-void
.end method

.method public static getCurrentPage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getSize()I

    move-result v0

    .line 36
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 37
    const-string v1, "Unknown"

    .line 40
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPreviousPage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getSize()I

    move-result v0

    .line 46
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 47
    const-string v1, "Unknown"

    .line 50
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSize()I
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    .line 30
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static removePage()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getSize()I

    move-result v0

    .line 64
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 65
    sget-object v1, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    :cond_0
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "toPage"    # Ljava/lang/String;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    new-instance v0, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V

    .line 71
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)V
    .locals 7
    .param p0, "toPage"    # Ljava/lang/String;
    .param p1, "activityTitle"    # Ljava/lang/CharSequence;
    .param p2, "additionalInfo"    # Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;

    .prologue
    const/4 v6, 0x0

    .line 82
    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    const-string v3, "activityTitle"

    invoke-virtual {p2, v3, p1}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->addPage(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCPageView;->getPreviousPage()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "fromPage":Ljava/lang/String;
    new-instance v2, Lcom/microsoft/xbox/idp/telemetry/utc/PageView;

    invoke-direct {v2}, Lcom/microsoft/xbox/idp/telemetry/utc/PageView;-><init>()V

    .line 92
    .local v2, "pageView":Lcom/microsoft/xbox/idp/telemetry/utc/PageView;
    invoke-virtual {v2, p0}, Lcom/microsoft/xbox/idp/telemetry/utc/PageView;->setPageName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v1}, Lcom/microsoft/xbox/idp/telemetry/utc/PageView;->setFromPage(Ljava/lang/String;)V

    .line 95
    const-string v3, "pageView:%s, fromPage:%s, additionalInfo:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v3, 0x1

    invoke-static {v3, p2}, Lcom/microsoft/xbox/idp/telemetry/utc/model/UTCCommonDataModel;->getCommonData(ILcom/microsoft/xbox/idp/telemetry/utc/model/UTCAdditionalInfoModel;)Lcom/microsoft/xbox/idp/telemetry/utc/CommonData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/idp/telemetry/utc/PageView;->setBaseData(Lcom/microsoft/bond/BondSerializable;)V

    .line 98
    invoke-static {v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCTelemetry;->LogEvent(LMicrosoft/Telemetry/Base;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "fromPage":Ljava/lang/String;
    .end local v2    # "pageView":Lcom/microsoft/xbox/idp/telemetry/utc/PageView;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UTCPageView.track"

    invoke-static {v0, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
