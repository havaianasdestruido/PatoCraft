.class public Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;
.super Ljava/lang/Object;
.source "XTokenLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private final authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/util/AuthFlowResult;)V
    .locals 0
    .param p1, "authFlowResult"    # Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;->authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    .line 37
    return-void
.end method


# virtual methods
.method public getAuthFlowResult()Lcom/microsoft/xbox/idp/util/AuthFlowResult;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;->authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    return-object v0
.end method
