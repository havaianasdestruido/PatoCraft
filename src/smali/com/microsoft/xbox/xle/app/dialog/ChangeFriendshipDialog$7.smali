.class Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;
.super Ljava/lang/Object;
.source "ChangeFriendshipDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 226
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setIsSharingRealNameEnd(Z)V

    .line 230
    if-eqz p2, :cond_1

    .line 231
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFroShareIdentityList(Z)V

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFroShareIdentityList(Z)V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    goto :goto_0
.end method
