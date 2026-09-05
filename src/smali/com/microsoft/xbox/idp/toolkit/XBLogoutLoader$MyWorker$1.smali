.class Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker$1;
.super Ljava/lang/Object;
.source "XBLogoutLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/interop/Interop$XBLogoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;

.field final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoggedOut()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;

    invoke-direct {v1}, Lcom/microsoft/xbox/idp/toolkit/XBLogoutLoader$Result;-><init>()V

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
