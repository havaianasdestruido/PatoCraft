.class public Lcom/microsoft/cll/android/EventSendResult;
.super Ljava/lang/Object;
.source "EventSendResult.java"


# instance fields
.field public responseCode:I

.field public retryAfterSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/microsoft/cll/android/EventSendResult;->responseCode:I

    .line 9
    iput v0, p0, Lcom/microsoft/cll/android/EventSendResult;->retryAfterSeconds:I

    return-void
.end method
