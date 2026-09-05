.class public Lcom/microsoft/xbox/service/model/sls/NeverListRequest;
.super Ljava/lang/Object;
.source "NeverListRequest.java"


# instance fields
.field public xuid:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "xuid"    # J

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/microsoft/xbox/service/model/sls/NeverListRequest;->xuid:J

    .line 10
    return-void
.end method

.method public static getNeverListRequestBody(Lcom/microsoft/xbox/service/model/sls/NeverListRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "neverListRequest"    # Lcom/microsoft/xbox/service/model/sls/NeverListRequest;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
