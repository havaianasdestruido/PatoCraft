.class public Lcom/microsoft/xbox/toolkit/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final exception:Lcom/microsoft/xbox/toolkit/XLEException;

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final sender:Ljava/lang/Object;

.field private status:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V
    .locals 1
    .param p2, "sender"    # Ljava/lang/Object;
    .param p3, "exception"    # Lcom/microsoft/xbox/toolkit/XLEException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    if-nez p3, :cond_0

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 22
    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0
    .param p2, "sender"    # Ljava/lang/Object;
    .param p3, "exception"    # Lcom/microsoft/xbox/toolkit/XLEException;
    .param p4, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/AsyncResult;->sender:Ljava/lang/Object;

    .line 26
    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/AsyncResult;->exception:Lcom/microsoft/xbox/toolkit/XLEException;

    .line 27
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/AsyncResult;->result:Ljava/lang/Object;

    .line 28
    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/AsyncResult;->status:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 29
    return-void
.end method


# virtual methods
.method public getException()Lcom/microsoft/xbox/toolkit/XLEException;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/AsyncResult;->exception:Lcom/microsoft/xbox/toolkit/XLEException;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/AsyncResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getSender()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/AsyncResult;->sender:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<TT;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/AsyncResult;->status:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method
