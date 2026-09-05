.class Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;
.super Ljava/lang/Object;
.source "ChangeFriendshipDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 119
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismiss()V

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
