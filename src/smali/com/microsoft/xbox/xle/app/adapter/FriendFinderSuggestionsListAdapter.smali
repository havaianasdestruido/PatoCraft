.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FriendFinderSuggestionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;",
        ">;"
    }
.end annotation


# instance fields
.field private containsHeader:Z

.field private facebookImageUri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "containsHeader"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-boolean p3, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->containsHeader:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x106000d

    const/4 v6, 0x1

    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 36
    if-nez p2, :cond_4

    .line 37
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v10, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_suggestions_list_item:I

    invoke-virtual {v5, v10, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v4, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$1;)V

    .line 40
    .local v4, "viewHolder":Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    sget v5, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$102(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    .line 41
    sget v5, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_icon_image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$202(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    .line 42
    sget v5, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_gamertag:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$302(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 43
    sget v5, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_realname:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$402(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 44
    sget v5, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_icon_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$502(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 45
    sget v5, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_presence:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$602(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 46
    sget v5, Lcom/microsoft/xboxtcui/R$id;->friendfinder_suggestions_item_check:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v4, v5}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$702(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 48
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;

    .line 56
    .local v3, "model":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;
    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-boolean v5, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->containsHeader:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    add-int/2addr v5, p1

    invoke-virtual {p3, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 58
    .local v1, "isChecked":Z
    if-eqz v1, :cond_6

    sget v5, Lcom/microsoft/xboxtcui/R$color;->white_15_percent:I

    :goto_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$500(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v5

    if-nez v1, :cond_0

    sget v8, Lcom/microsoft/xboxtcui/R$color;->white_15_percent:I

    :cond_0
    invoke-virtual {v5, v8}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setBackgroundResource(I)V

    .line 61
    if-eqz v3, :cond_3

    .line 62
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    move-result-object v5

    iget-object v8, v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->imageUri:Ljava/net/URI;

    sget v10, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    sget v11, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    invoke-virtual {v5, v8, v10, v11}, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;->setImageURI2(Ljava/net/URI;II)V

    .line 63
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v5

    iget-object v8, v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->gamerTag:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 64
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$400(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v5

    iget-object v8, v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->realName:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 65
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$600(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v5

    iget-object v8, v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->presence:Ljava/lang/String;

    invoke-static {v5, v8, v7}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 67
    iget-object v5, v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->recommendationType:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v8, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    if-ne v5, v8, :cond_7

    move v2, v6

    .line 68
    .local v2, "isFacebook":Z
    :goto_3
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    move-result-object v6

    if-eqz v2, :cond_8

    move v5, v7

    :goto_4
    invoke-virtual {v6, v5}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setVisibility(I)V

    .line 69
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$400(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v6

    if-eqz v2, :cond_9

    move v5, v9

    :goto_5
    invoke-virtual {v6, v5}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    .line 70
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$500(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v6

    if-eqz v2, :cond_a

    move v5, v9

    :goto_6
    invoke-virtual {v6, v5}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    .line 72
    if-eqz v2, :cond_2

    .line 73
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$600(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v5

    iget-object v6, v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;->realName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 74
    iget-object v5, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->facebookImageUri:Ljava/net/URI;

    if-nez v5, :cond_1

    .line 75
    sget-object v5, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-static {v5, v6}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings;->getIconBySize(Ljava/lang/String;Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "imageUriPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->facebookImageUri:Ljava/net/URI;

    .line 82
    .end local v0    # "imageUriPath":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;->facebookImageUri:Ljava/net/URI;

    invoke-virtual {v5, v6}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageURI2(Ljava/net/URI;)V

    .line 85
    :cond_2
    invoke-static {v4}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->access$700(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v5

    if-eqz v1, :cond_b

    :goto_7
    invoke-virtual {v5, v7}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    .line 88
    .end local v2    # "isFacebook":Z
    :cond_3
    return-object p2

    .line 50
    .end local v1    # "isChecked":Z
    .end local v3    # "model":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;
    .end local v4    # "viewHolder":Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    .restart local v4    # "viewHolder":Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    goto/16 :goto_0

    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v3    # "model":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderSuggestionModel;
    :cond_5
    move v5, v7

    .line 56
    goto/16 :goto_1

    .restart local v1    # "isChecked":Z
    :cond_6
    move v5, v8

    .line 58
    goto/16 :goto_2

    :cond_7
    move v2, v7

    .line 67
    goto :goto_3

    .restart local v2    # "isFacebook":Z
    :cond_8
    move v5, v9

    .line 68
    goto :goto_4

    :cond_9
    move v5, v7

    .line 69
    goto :goto_5

    :cond_a
    move v5, v7

    .line 70
    goto :goto_6

    :cond_b
    move v7, v9

    .line 85
    goto :goto_7
.end method
