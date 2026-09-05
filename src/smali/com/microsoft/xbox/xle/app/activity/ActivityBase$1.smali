.class Lcom/microsoft/xbox/xle/app/activity/ActivityBase$1;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onAnimateInCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/ActivityBase;

.field final synthetic val$viewModelWeakPtr:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/activity/ActivityBase;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/activity/ActivityBase;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/ActivityBase;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$1;->val$viewModelWeakPtr:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$1;->val$viewModelWeakPtr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 149
    .local v0, "viewModelPtr":Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceUpdateViewImmediately()V

    .line 152
    :cond_0
    return-void
.end method
