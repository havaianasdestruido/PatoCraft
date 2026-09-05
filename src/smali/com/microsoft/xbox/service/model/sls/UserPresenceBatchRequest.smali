.class public Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;
.super Ljava/lang/Object;
.source "UserPresenceBatchRequest.java"


# instance fields
.field public level:Ljava/lang/String;

.field public users:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "all"

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;->level:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;->users:Ljava/util/ArrayList;

    .line 13
    return-void
.end method

.method public static getUserPresenceBatchRequestBody(Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "userPresenceBatchRequest"    # Lcom/microsoft/xbox/service/model/sls/UserPresenceBatchRequest;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
