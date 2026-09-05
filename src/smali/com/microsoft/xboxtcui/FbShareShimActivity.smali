.class public Lcom/microsoft/xboxtcui/FbShareShimActivity;
.super Lcom/microsoft/xboxtcui/FbShimActivity;
.source "FbShareShimActivity.java"


# instance fields
.field private final SHARE_TO_FACEBOOK_LINK:Ljava/lang/String;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/microsoft/xboxtcui/FbShimActivity;-><init>()V

    .line 15
    const-string v0, "http://go.microsoft.com/fwlink/?LinkId=698852"

    iput-object v0, p0, Lcom/microsoft/xboxtcui/FbShareShimActivity;->SHARE_TO_FACEBOOK_LINK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/microsoft/xboxtcui/FbShimActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v2, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/microsoft/xboxtcui/FbShareShimActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    .line 27
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xboxtcui/FbShareShimActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->registerShareCallback(Lcom/facebook/share/widget/ShareDialog;)V

    .line 29
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerPicImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 31
    .local v1, "imageUrl":Ljava/net/URI;
    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    new-instance v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 33
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    .line 34
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Share_Title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/microsoft/xboxtcui/R$string;->FriendFinder_Facebook_Share_Description:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v2

    const-string v3, "http://go.microsoft.com/fwlink/?LinkId=698852"

    .line 36
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 37
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 39
    .local v0, "content":Lcom/facebook/share/model/ShareLinkContent;
    iget-object v2, p0, Lcom/microsoft/xboxtcui/FbShareShimActivity;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v2, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 42
    .end local v0    # "content":Lcom/facebook/share/model/ShareLinkContent;
    .end local v1    # "imageUrl":Ljava/net/URI;
    :cond_0
    return-void
.end method
