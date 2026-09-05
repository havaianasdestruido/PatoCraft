.class public Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;
.super Ljava/lang/Object;
.source "ProtectedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;->runnable:Ljava/lang/Runnable;

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 16
    const/4 v4, 0x0

    .line 17
    .local v4, "success":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-nez v4, :cond_0

    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    .line 19
    :try_start_0
    iget-object v5, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/ProtectedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const/4 v4, 0x1

    .line 17
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/LinkageError;
    const-wide/16 v2, 0x1f4

    .line 33
    .local v2, "sleepTime":J
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 34
    :catch_1
    move-exception v5

    goto :goto_1

    .line 38
    .end local v0    # "e":Ljava/lang/LinkageError;
    .end local v2    # "sleepTime":J
    :cond_0
    if-nez v4, :cond_1

    .line 40
    :cond_1
    return-void
.end method
