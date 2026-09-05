.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater$1;
.super Ljava/lang/Object;
.source "FriendFinderPhoneInviteScreenAdapater.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteScreenAdapater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3, p2, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    return-void
.end method
