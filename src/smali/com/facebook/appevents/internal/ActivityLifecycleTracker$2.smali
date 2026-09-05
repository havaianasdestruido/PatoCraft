.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 120
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 122
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->getStoredSessionInfo()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    .line 123
    .local v0, "lastSession":Lcom/facebook/appevents/internal/SessionInfo;
    if-eqz v0, :cond_0

    .line 124
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activity:Landroid/app/Activity;

    .line 127
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v2, v0, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/app/Activity;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 130
    :cond_0
    new-instance v2, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$302(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 131
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activity:Landroid/app/Activity;

    .line 132
    invoke-static {v2}, Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;->create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v1

    .line 133
    .local v1, "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/appevents/internal/SessionInfo;->setSourceApplicationInfo(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V

    .line 134
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activity:Landroid/app/Activity;

    .line 137
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v2, v1, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/app/Activity;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 139
    .end local v0    # "lastSession":Lcom/facebook/appevents/internal/SessionInfo;
    .end local v1    # "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    :cond_1
    return-void
.end method
