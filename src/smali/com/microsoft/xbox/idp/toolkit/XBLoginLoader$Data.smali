.class public Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;
.super Ljava/lang/Object;
.source "XBLoginLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private final authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

.field private final createAccount:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/idp/util/AuthFlowResult;Z)V
    .locals 0
    .param p1, "authFlowResult"    # Lcom/microsoft/xbox/idp/util/AuthFlowResult;
    .param p2, "createAccount"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    .line 37
    iput-boolean p2, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->createAccount:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getAuthFlowResult()Lcom/microsoft/xbox/idp/util/AuthFlowResult;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->authFlowResult:Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    return-object v0
.end method

.method public isCreateAccount()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLoginLoader$Data;->createAccount:Z

    return v0
.end method
