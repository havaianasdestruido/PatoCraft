.class final Lcom/microsoft/xbox/idp/interop/Interop$1;
.super Ljava/lang/Object;
.source "Interop.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/interop/Interop;->InvokeAuthFlow(JLandroid/app/Activity;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFlowFinished(JLcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;Ljava/lang/String;)V
    .locals 3
    .param p1, "userPtr"    # J
    .param p3, "authStatus"    # Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;
    .param p4, "cid"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/AuthFlowActivity;->setStaticCallbacks(Lcom/microsoft/xbox/idp/ui/AuthFlowActivity$StaticCallbacks;)V

    .line 304
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthFlowFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->clearCaches()V

    .line 306
    invoke-virtual {p3}, Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;->getId()I

    move-result v0

    invoke-static {p1, p2, v0, p4}, Lcom/microsoft/xbox/idp/interop/Interop;->access$100(JILjava/lang/String;)V

    .line 307
    return-void
.end method
