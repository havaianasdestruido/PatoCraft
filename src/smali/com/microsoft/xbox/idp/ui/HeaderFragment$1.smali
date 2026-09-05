.class Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;
.super Ljava/lang/Object;
.source "HeaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/HeaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
        "<",
        "Lcom/microsoft/xbox/idp/model/UserAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_GET_PROFILE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v1, "GET"

    .line 112
    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/xbox/idp/services/Endpoints;->accounts()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/users/current/profile"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4"

    .line 111
    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v6

    .line 114
    .local v6, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 115
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v2

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v4, Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    const-class v4, Lcom/microsoft/xbox/idp/model/UserAccount;

    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 117
    invoke-static {v5}, Lcom/microsoft/xbox/idp/model/UserAccount;->registerAdapters(Lcom/google/gson/GsonBuilder;)Lcom/google/gson/GsonBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    .line 114
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/UserAccount;>;>;"
    .local p2, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/UserAccount;>;"
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 122
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_GET_PROFILE finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/model/UserAccount;

    invoke-static {v1, v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$102(Lcom/microsoft/xbox/idp/ui/HeaderFragment;Lcom/microsoft/xbox/idp/model/UserAccount;)Lcom/microsoft/xbox/idp/model/UserAccount;

    .line 125
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$200(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/UserAccount;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/model/UserAccount;->firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v0

    iget-object v0, v0, Lcom/microsoft/xbox/idp/model/UserAccount;->lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$300(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$300(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    sget v2, Lcom/microsoft/xbox/idp/R$string;->xbid_first_and_last_name_android:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/model/UserAccount;->firstName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v5

    iget-object v5, v5, Lcom/microsoft/xbox/idp/model/UserAccount;->lastName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$400(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 136
    :goto_1
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/HeaderFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$300(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error getting UserAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/UserAccount;>;>;"
    return-void
.end method
