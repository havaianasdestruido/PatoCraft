.class Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;
.super Ljava/lang/Object;
.source "AccountProvisioningFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;
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
        "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

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
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_GET_PRIVACY_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v1, "GET"

    .line 280
    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/xbox/idp/services/Endpoints;->privacy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/users/me/privacy/settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4"

    .line 279
    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v6

    .line 282
    .local v6, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 283
    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v2

    const-string v3, "KEY_RESULT_KEY"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/microsoft/xbox/idp/model/Privacy$Settings;

    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 285
    invoke-static {v5}, Lcom/microsoft/xbox/idp/model/Privacy;->registerAdapters(Lcom/google/gson/GsonBuilder;)Lcom/google/gson/GsonBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    .line 282
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Privacy$Settings;>;>;"
    .local p2, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Privacy$Settings;>;"
    const/4 v5, 0x7

    .line 290
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOADER_GET_PRIVACY_SETTINGS finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->hasData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Got privacy settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;

    .line 294
    .local v1, "ps":Lcom/microsoft/xbox/idp/model/Privacy$Settings;
    iget-object v2, v1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 295
    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->isSettingSet(Lcom/microsoft/xbox/idp/model/Privacy$Key;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->isSettingSet(Lcom/microsoft/xbox/idp/model/Privacy$Key;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareIdentity and ShareIdentityTransitively are NotSet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_RESULT_KEY"

    new-instance v3, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    const-class v4, Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 299
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    invoke-virtual {v2, v5, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    .line 317
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "ps":Lcom/microsoft/xbox/idp/model/Privacy$Settings;
    :goto_0
    return-void

    .line 301
    .restart local v1    # "ps":Lcom/microsoft/xbox/idp/model/Privacy$Settings;
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareIdentity or ShareIdentityTransitively are set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShareIdentity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    sget-object v5, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShareIdentityTransitively: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    sget-object v5, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {v2, v3, v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Privacy settings map is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {v2, v3, v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    goto :goto_0

    .line 312
    .end local v1    # "ps":Lcom/microsoft/xbox/idp/model/Privacy$Settings;
    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting privacy settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v2, "Service Error - Load privacy settings"

    const-string v3, "Sign up view"

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 315
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 275
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$3;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

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
            "Lcom/microsoft/xbox/idp/model/Privacy$Settings;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Lcom/microsoft/xbox/idp/model/Privacy$Settings;>;>;"
    return-void
.end method
