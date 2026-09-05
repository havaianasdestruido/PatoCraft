.class public Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FriendFinderPhoneInviteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 20
    const-string v0, "This isn\'t supported yet."

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 27
    if-nez p2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Lcom/microsoft/xboxtcui/R$layout;->friendfinder_phone_invite_list_item:I

    invoke-virtual {v3, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;-><init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$1;)V

    .line 31
    .local v2, "viewHolder":Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;
    sget v3, Lcom/microsoft/xboxtcui/R$id;->friendfinder_phone_invite_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v2, v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$102(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 32
    sget v3, Lcom/microsoft/xboxtcui/R$id;->friendfinder_phone_invite_name_onxbox:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v2, v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$202(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 33
    sget v3, Lcom/microsoft/xboxtcui/R$id;->friendfinder_phone_invite_checkbox:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v2, v3}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$302(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 35
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    :goto_0
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    .line 41
    .local v0, "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 43
    .local v1, "isChecked":Z
    if-eqz v1, :cond_2

    sget v3, Lcom/microsoft/xboxtcui/R$color;->XboxOneGreen:I

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-static {v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v3

    iget-object v5, v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->displayName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 47
    invoke-static {v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v5

    iget-boolean v3, v0, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->isOnXbox:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    .line 48
    invoke-static {v2}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;->access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    move-result-object v3

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    .line 51
    :cond_0
    return-object p2

    .line 37
    .end local v0    # "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    .end local v1    # "isChecked":Z
    .end local v2    # "viewHolder":Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/microsoft/xbox/xle/app/adapter/FriendFinderPhoneInviteListAdapter$ViewHolder;
    goto :goto_0

    .line 43
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v0    # "contact":Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    .restart local v1    # "isChecked":Z
    :cond_2
    const v3, 0x106000d

    goto :goto_1

    .line 47
    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    .line 48
    :cond_4
    const/4 v4, 0x4

    goto :goto_3
.end method
