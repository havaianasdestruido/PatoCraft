.class Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;
.super Ljava/lang/Object;
.source "IntroducingFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/IntroducingFragment;
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
        "Lcom/microsoft/xbox/idp/model/Profile$Response;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_GAMER_PROFILE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "settings":Ljava/lang/String;
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v1, "GET"

    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/xbox/idp/services/Endpoints;->profile()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/users/me/profile/settings?settings="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v6

    .line 227
    .local v6, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 228
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v2

    const-string v3, "KEY_RESULT_KEY"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/microsoft/xbox/idp/model/Profile$Response;

    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 230
    invoke-static {v5}, Lcom/microsoft/xbox/idp/model/Profile;->registerAdapters(Lcom/google/gson/GsonBuilder;)Lcom/google/gson/GsonBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    .line 227
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Profile$Response;>;>;"
    .local p2, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Profile$Response;>;"
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 235
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Finished LOADER_GAMER_PROFILE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/model/Profile$Response;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/Profile$Response;->profileUsers:[Lcom/microsoft/xbox/idp/model/Profile$User;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/model/Profile$Response;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/Profile$Response;->profileUsers:[Lcom/microsoft/xbox/idp/model/Profile$User;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 237
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got gamer profile data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/model/Profile$Response;

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/Profile$Response;->profileUsers:[Lcom/microsoft/xbox/idp/model/Profile$User;

    aget-object v1, v1, v7

    invoke-static {v2, v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$402(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;Lcom/microsoft/xbox/idp/model/Profile$User;)Lcom/microsoft/xbox/idp/model/Profile$User;

    .line 241
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$400(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$500(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCIntroducing;->trackPageView(Lcom/microsoft/xbox/idp/model/Profile$User;Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$600(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    sget v3, Lcom/microsoft/xbox/idp/R$string;->xbid_first_and_last_name_android:I

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .line 244
    invoke-static {v5}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$400(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v5

    iget-object v5, v5, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v6, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    .line 245
    invoke-static {v6}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$400(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v6

    iget-object v6, v6, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v7, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 243
    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$700(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$400(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v3, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$400(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_RESULT_KEY"

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$400(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/model/Profile$User;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/model/Profile$User;->settings:Ljava/util/Map;

    sget-object v3, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$800(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v1, v8, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    .line 261
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const-string v1, "Service Error - Load Profile"

    const-string v2, "Introducing view"

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 257
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No gamer profile data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/IntroducingFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment;->access$800(Lcom/microsoft/xbox/idp/ui/IntroducingFragment;)Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;

    move-result-object v1

    iget-object v1, v1, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/IntroducingFragment$3;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

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
            "Lcom/microsoft/xbox/idp/model/Profile$Response;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Profile$Response;>;>;"
    return-void
.end method
