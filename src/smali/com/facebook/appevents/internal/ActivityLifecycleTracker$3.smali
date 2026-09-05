.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V
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
    .line 148
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 151
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    .line 152
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 153
    new-instance v2, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$302(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 154
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activity:Landroid/app/Activity;

    .line 157
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {v2, v6, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/app/Activity;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 179
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    .line 180
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    .line 160
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 161
    .local v0, "suspendTime":J
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activity:Landroid/app/Activity;

    .line 166
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    .line 167
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-static {v2, v3, v4}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/app/Activity;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$activity:Landroid/app/Activity;

    .line 171
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v2, v6, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/app/Activity;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 172
    new-instance v2, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;->val$currentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$302(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    goto :goto_0

    .line 173
    :cond_2
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 174
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/appevents/internal/SessionInfo;->incrementInterruptionCount()V

    goto :goto_0
.end method
