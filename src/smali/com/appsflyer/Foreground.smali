.class Lcom/appsflyer/Foreground;
.super Ljava/lang/Object;
.source "Foreground.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/Foreground$Listener;
    }
.end annotation


# static fields
.field private static final CHECK_DELAY:J = 0x1f4L

.field private static instance:Lcom/appsflyer/Foreground;


# instance fields
.field private foreground:Z

.field private listener:Lcom/appsflyer/Foreground$Listener;

.field private paused:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/Foreground;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/Foreground;->paused:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/Foreground;->listener:Lcom/appsflyer/Foreground$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/appsflyer/Foreground;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/Foreground;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/appsflyer/Foreground;->foreground:Z

    return v0
.end method

.method static synthetic access$002(Lcom/appsflyer/Foreground;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/appsflyer/Foreground;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/appsflyer/Foreground;->foreground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/appsflyer/Foreground;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/Foreground;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/appsflyer/Foreground;->paused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/appsflyer/Foreground;)Lcom/appsflyer/Foreground$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/Foreground;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/appsflyer/Foreground;->listener:Lcom/appsflyer/Foreground$Listener;

    return-object v0
.end method

.method public static get(Landroid/app/Application;)Lcom/appsflyer/Foreground;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 88
    sget-object v0, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    if-nez v0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/appsflyer/Foreground;->init(Landroid/app/Application;)Lcom/appsflyer/Foreground;

    .line 91
    :cond_0
    sget-object v0, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/appsflyer/Foreground;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-object v1, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "appCtx":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Landroid/app/Application;

    .end local v0    # "appCtx":Landroid/content/Context;
    invoke-static {v0}, Lcom/appsflyer/Foreground;->init(Landroid/app/Application;)Lcom/appsflyer/Foreground;

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Foreground is not initialised and cannot obtain the Application object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    sget-object v1, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    return-object v1
.end method

.method public static getInstance()Lcom/appsflyer/Foreground;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Foreground is not initialised - invoke at least once with parameter init/get"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    sget-object v0, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)Lcom/appsflyer/Foreground;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 79
    sget-object v0, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/appsflyer/Foreground;

    invoke-direct {v0}, Lcom/appsflyer/Foreground;-><init>()V

    sput-object v0, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 82
    sget-object v0, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 84
    :cond_0
    sget-object v0, Lcom/appsflyer/Foreground;->instance:Lcom/appsflyer/Foreground;

    return-object v0
.end method


# virtual methods
.method public isBackground()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/appsflyer/Foreground;->foreground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/appsflyer/Foreground;->foreground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 189
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/Foreground;->paused:Z

    .line 151
    new-instance v0, Lcom/appsflyer/Foreground$1;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/Foreground$1;-><init>(Lcom/appsflyer/Foreground;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 172
    invoke-virtual {v0, v1}, Lcom/appsflyer/Foreground$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/appsflyer/Foreground;->paused:Z

    .line 135
    iget-boolean v3, p0, Lcom/appsflyer/Foreground;->foreground:Z

    if-nez v3, :cond_0

    move v1, v2

    .line 136
    .local v1, "wasBackground":Z
    :cond_0
    iput-boolean v2, p0, Lcom/appsflyer/Foreground;->foreground:Z

    .line 138
    if-eqz v1, :cond_1

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/Foreground;->listener:Lcom/appsflyer/Foreground$Listener;

    invoke-interface {v2, p1}, Lcom/appsflyer/Foreground$Listener;->onBecameForeground(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "exc":Ljava/lang/Exception;
    const-string v2, "Listener threw exception! "

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 183
    return-void
.end method

.method public registerListener(Lcom/appsflyer/Foreground$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/appsflyer/Foreground$Listener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/appsflyer/Foreground;->listener:Lcom/appsflyer/Foreground$Listener;

    .line 126
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/Foreground;->listener:Lcom/appsflyer/Foreground$Listener;

    .line 130
    return-void
.end method
