.class Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;
.super Ljava/lang/Object;
.source "BackgroundThreadWaitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitObject"
.end annotation


# instance fields
.field private expires:J

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

.field private type:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;J)V
    .locals 3
    .param p2, "type"    # Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .param p3, "expireMs"    # J

    .prologue
    .line 137
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->this$0:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->type:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->expires:J

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->type:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-object v0
.end method


# virtual methods
.method public isExpired()Z
    .locals 4

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->expires:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
