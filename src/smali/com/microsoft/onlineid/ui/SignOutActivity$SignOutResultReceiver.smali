.class Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;
.super Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;
.source "SignOutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/ui/SignOutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignOutResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/internal/ApiRequestResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 141
    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-static {v0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$200(Lcom/microsoft/onlineid/ui/SignOutActivity;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putException(Ljava/lang/Exception;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 161
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->finish()V

    .line 162
    return-void
.end method

.method protected onSuccess(Lcom/microsoft/onlineid/internal/ApiResult;)V
    .locals 3
    .param p1, "result"    # Lcom/microsoft/onlineid/internal/ApiResult;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-static {v0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$200(Lcom/microsoft/onlineid/ui/SignOutActivity;)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-static {v1}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$100(Lcom/microsoft/onlineid/ui/SignOutActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-static {v2}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$000(Lcom/microsoft/onlineid/ui/SignOutActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->putSignedOutCid(Ljava/lang/String;Z)Lcom/microsoft/onlineid/internal/ActivityResultSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/onlineid/internal/ActivityResultSender;->set()V

    .line 147
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->finish()V

    .line 148
    return-void
.end method

.method protected onUINeeded(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onUINeeded not expected for sign out request."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->onFailure(Ljava/lang/Exception;)V

    .line 169
    return-void
.end method

.method protected onUserCancel()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->finish()V

    .line 155
    return-void
.end method
