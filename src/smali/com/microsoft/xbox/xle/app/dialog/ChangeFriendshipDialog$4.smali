.class Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;
.super Ljava/lang/Object;
.source "ChangeFriendshipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V
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
    .line 191
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToFavoriteList(Z)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFromFavoriteList(Z)V

    .line 198
    return-void
.end method
