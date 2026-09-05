.class Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    iget-object v0, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activity:Landroid/app/Activity;

    .line 219
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    .line 220
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/app/Activity;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->clearSavedSessionFromDisk()V

    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$302(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 224
    :cond_0
    return-void
.end method
