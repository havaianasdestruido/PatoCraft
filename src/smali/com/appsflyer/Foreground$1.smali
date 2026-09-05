.class Lcom/appsflyer/Foreground$1;
.super Landroid/os/AsyncTask;
.source "Foreground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/Foreground;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/Foreground;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/Foreground;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsflyer/Foreground;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    iput-object p2, p0, Lcom/appsflyer/Foreground$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appsflyer/Foreground$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 155
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    iget-object v3, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    invoke-static {v3}, Lcom/appsflyer/Foreground;->access$000(Lcom/appsflyer/Foreground;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    invoke-static {v3}, Lcom/appsflyer/Foreground;->access$100(Lcom/appsflyer/Foreground;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/appsflyer/Foreground;->access$002(Lcom/appsflyer/Foreground;Z)Z

    .line 162
    :try_start_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/appsflyer/Foreground$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 163
    .local v2, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    iget-object v3, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    invoke-static {v3}, Lcom/appsflyer/Foreground;->access$200(Lcom/appsflyer/Foreground;)Lcom/appsflyer/Foreground$Listener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/appsflyer/Foreground$Listener;->onBecameBackground(Ljava/lang/ref/WeakReference;)V

    .line 164
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .end local v2    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_0
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Sleeping attempt failed (essential for background state verification)\n"

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 166
    .local v1, "exc":Ljava/lang/Exception;
    const-string v3, "Listener threw exception! "

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/appsflyer/Foreground$1;->cancel(Z)Z

    goto :goto_1
.end method
