.class public Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;
.super Ljava/lang/Object;
.source "AddShareIdentityRequest.java"


# instance fields
.field public xuids:Ljava/util/ArrayList;
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
    .locals 0
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
    .line 10
    .local p1, "xuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;->xuids:Ljava/util/ArrayList;

    .line 12
    return-void
.end method

.method public static getAddShareIdentityRequestBody(Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "addShareIdentityRequest"    # Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
