.class public Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;
.super Ljava/lang/Object;
.source "XLEUnhandledExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static Instance:Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;


# instance fields
.field private oldExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->Instance:Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->oldExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 12
    return-void
.end method

.method private printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "initialText"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 35
    const-string v3, "********** UNHANDLED EXCEPTION *************"

    .line 36
    .local v3, "unhandled":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 38
    .local v0, "currentTime":Ljava/util/Date;
    const-string v2, ""

    .line 39
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v1, v6, v4

    .line 40
    .local v1, "elem":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\t%s\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "elem":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "exceptionMessage":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "CAUSE STACK TRACE"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :cond_0
    const-string v1, "MAIN THREAD STACK TRACE"

    invoke-direct {p0, v1, p2}, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->oldExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
