.class Lcom/microsoft/onlineid/ui/SignOutActivity$1;
.super Ljava/lang/Object;
.source "SignOutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/onlineid/ui/SignOutActivity;->buildDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$originalSignOutRequest:Lcom/microsoft/onlineid/internal/ApiRequest;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/ui/SignOutActivity;Lcom/microsoft/onlineid/internal/ApiRequest;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/ui/SignOutActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    iput-object p2, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$originalSignOutRequest:Lcom/microsoft/onlineid/internal/ApiRequest;

    iput-object p3, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 78
    iget-object v3, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$originalSignOutRequest:Lcom/microsoft/onlineid/internal/ApiRequest;

    invoke-virtual {v3}, Lcom/microsoft/onlineid/internal/ApiRequest;->getAccountPuid()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "puid":Ljava/lang/String;
    iget-object v3, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "com.microsoft.onlineid.internal.SIGN_OUT_ALL_APPS"

    .line 83
    .local v0, "action":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    iget-object v3, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-static {v4, v3}, Lcom/microsoft/onlineid/ui/SignOutActivity;->access$002(Lcom/microsoft/onlineid/ui/SignOutActivity;Z)Z

    .line 85
    new-instance v3, Lcom/microsoft/onlineid/internal/ApiRequest;

    iget-object v4, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$applicationContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->val$applicationContext:Landroid/content/Context;

    const-class v7, Lcom/microsoft/onlineid/internal/MsaService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/internal/ApiRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    invoke-virtual {v3, v1}, Lcom/microsoft/onlineid/internal/ApiRequest;->setAccountPuid(Ljava/lang/String;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v3

    new-instance v4, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;

    iget-object v5, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$1;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-direct {v4, v5}, Lcom/microsoft/onlineid/ui/SignOutActivity$SignOutResultReceiver;-><init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V

    .line 90
    invoke-virtual {v3, v4}, Lcom/microsoft/onlineid/internal/ApiRequest;->setResultReceiver(Landroid/os/ResultReceiver;)Lcom/microsoft/onlineid/internal/ApiRequest;

    move-result-object v2

    .line 92
    .local v2, "signOutRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/internal/ApiRequest;->executeAsync()V

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 95
    return-void

    .line 79
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "signOutRequest":Lcom/microsoft/onlineid/internal/ApiRequest;
    :cond_0
    const-string v0, "com.microsoft.onlineid.internal.SIGN_OUT"

    goto :goto_0

    .line 83
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method
