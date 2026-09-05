.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$4;
.super Ljava/lang/Object;
.source "FriendFinderHomeScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$4;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter$4;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderHomeScreenAdapter;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 148
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_0

    .line 149
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method
