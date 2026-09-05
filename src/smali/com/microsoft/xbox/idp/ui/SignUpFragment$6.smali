.class Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/SignUpFragment;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
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
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "creating LOADER_RESERVE_GAMERTAG"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v2, Lcom/microsoft/xbox/idp/util/HttpCall;

    const-string v3, "POST"

    .line 380
    invoke-static {}, Lcom/microsoft/xbox/idp/services/EndpointsFactory;->get()Lcom/microsoft/xbox/idp/services/Endpoints;

    move-result-object v4

    invoke-interface {v4}, Lcom/microsoft/xbox/idp/services/Endpoints;->userManagement()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/gamertags/reserve"

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/xbox/idp/util/HttpCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "1"

    .line 379
    invoke-static {v2, v3}, Lcom/microsoft/xbox/idp/util/HttpUtil;->appendCommonParameters(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpCall;

    move-result-object v0

    .line 382
    .local v0, "httpCall":Lcom/microsoft/xbox/idp/util/HttpCall;
    new-instance v1, Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$800(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->getXuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v1, "req":Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/microsoft/xbox/idp/model/GamerTag$ReservationRequest;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/idp/util/HttpCall;->setRequestBody(Ljava/lang/String;)V

    .line 384
    new-instance v2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Ljava/lang/Void;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Ljava/lang/Void;>;>;"
    .local p2, "result":Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;, "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADER_RESERVE_GAMERTAG finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTag:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    .line 393
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    .line 404
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->getHttpStatus()I

    move-result v0

    const/16 v1, 0x199

    if-ne v0, v1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v3}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$1000(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/toolkit/HttpError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "Service Error - Reserve gamertag"

    const-string v1, "Sign up view"

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 402
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;->ERROR:Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$1100(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Lcom/microsoft/xbox/idp/ui/SignUpFragment$GamerTagState;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result",
            "<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->reserved:Z

    .line 409
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$700(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$State;->gamerTagWithSuggestions:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/SignUpFragment$6;->this$0:Lcom/microsoft/xbox/idp/ui/SignUpFragment;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$500(Lcom/microsoft/xbox/idp/ui/SignUpFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/ui/SignUpFragment;->access$300(Lcom/microsoft/xbox/idp/ui/SignUpFragment;Ljava/lang/CharSequence;)V

    .line 411
    return-void
.end method
