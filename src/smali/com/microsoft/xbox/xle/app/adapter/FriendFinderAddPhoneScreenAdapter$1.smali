.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$1;
.super Ljava/lang/Object;
.source "FriendFinderAddPhoneScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 55
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/xle/telemetry/helpers/UTCFriendFinder;->trackPhoneContactsNext(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderAddPhoneScreenAdapter;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderAddPhoneScreenViewModel;->addPhoneNumber(Ljava/lang/String;)V

    .line 60
    return-void
.end method
