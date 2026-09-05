.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$2;
.super Ljava/lang/Object;
.source "FriendFinderAddPhoneScreenAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 75
    .local v0, "textEntered":Z
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    .line 76
    return-void

    .line 74
    .end local v0    # "textEntered":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 66
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 70
    return-void
.end method
