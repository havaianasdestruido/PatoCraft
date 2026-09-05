.class Lcom/microsoft/onlineid/ui/SignOutActivity$2;
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


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/ui/SignOutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/ui/SignOutActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/microsoft/onlineid/ui/SignOutActivity$2;->this$0:Lcom/microsoft/onlineid/ui/SignOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 104
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 105
    return-void
.end method
