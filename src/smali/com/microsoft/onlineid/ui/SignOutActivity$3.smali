.class Lcom/microsoft/onlineid/ui/SignOutActivity$3;
.super Ljava/lang/Object;
.source "SignOutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/ui/SignOutActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$3;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$3;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/ui/SignOutActivity;->finish()V

    .line 116
    return-void
.end method
