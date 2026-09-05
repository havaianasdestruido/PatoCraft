.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;
.super Ljava/lang/Object;
.source "FriendFinderSuggestionsScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/toolkit/ui/XLEListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 94
    .local v2, "sparseCheckedPositions":Landroid/util/SparseBooleanArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "checkedPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    .line 98
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    add-int/lit8 v3, v1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->addSuggestions(Ljava/util/ArrayList;)V

    .line 108
    :goto_1
    return-void

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter$2;->this$0:Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;

    invoke-static {v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;->access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderSuggestionsScreenViewModel;->navigateToSkip()V

    goto :goto_1
.end method
