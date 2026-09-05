.class public Lcom/microsoft/xbox/toolkit/XLEThread;
.super Ljava/lang/Thread;
.source "XLEThread.java"


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->Instance:Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 8
    return-void
.end method
