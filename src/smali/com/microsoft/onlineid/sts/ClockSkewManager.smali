.class public Lcom/microsoft/onlineid/sts/ClockSkewManager;
.super Ljava/lang/Object;
.source "ClockSkewManager.java"


# instance fields
.field private final _storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/ClockSkewManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/microsoft/onlineid/internal/storage/TypedStorage;)V
    .locals 0
    .param p1, "storage"    # Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/ClockSkewManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    .line 38
    return-void
.end method

.method private setSkewMilliseconds(J)V
    .locals 1
    .param p1, "skew"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ClockSkewManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->writeClockSkew(J)V

    .line 102
    return-void
.end method


# virtual methods
.method protected getCurrentClientTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public getCurrentServerTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentClientTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->toServerTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSkewMilliseconds()J
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/ClockSkewManager;->_storage:Lcom/microsoft/onlineid/internal/storage/TypedStorage;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/storage/TypedStorage;->readClockSkew()J

    move-result-wide v0

    return-wide v0
.end method

.method public onTimestampReceived(J)V
    .locals 5
    .param p1, "serverTime"    # J

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentClientTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 50
    .local v0, "clientTime":J
    sub-long v2, v0, p1

    .line 53
    .local v2, "skewMilliseconds":J
    invoke-direct {p0, v2, v3}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->setSkewMilliseconds(J)V

    .line 54
    return-void
.end method

.method public toClientTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "serverTime"    # Ljava/util/Date;

    .prologue
    .line 79
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getSkewMilliseconds()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toServerTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "clientTime"    # Ljava/util/Date;

    .prologue
    .line 91
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getSkewMilliseconds()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
