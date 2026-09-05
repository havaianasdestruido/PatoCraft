.class Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;
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
        "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

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
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating LOADER_XTOKEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ARG_USER_PTR"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-class v4, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    .line 239
    invoke-static {v4}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getResultCache(Ljava/lang/Class;)Lcom/microsoft/xbox/idp/util/ResultCache;

    move-result-object v4

    const-string v5, "KEY_RESULT_KEY"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader;-><init>(Landroid/content/Context;JLcom/microsoft/xbox/idp/util/ResultCache;Ljava/lang/Object;)V

    .line 238
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)V
    .locals 6
    .param p2, "result"    # Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;>;"
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOADER_XTOKEN finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;->hasData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    invoke-static {v3, v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$302(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;)Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    .line 247
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v2

    new-instance v3, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$100(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/model/UserAccount;->gamerTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v5}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$100(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;

    move-result-object v5

    iget-object v5, v5, Lcom/microsoft/xbox/idp/model/UserAccount;->userXuid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    .line 248
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$300(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Data;->getAuthFlowResult()Lcom/microsoft/xbox/idp/util/AuthFlowResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/idp/util/AuthFlowResult;->getAgeGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->fromServiceString(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    move-result-object v0

    .line 249
    .local v0, "ageGroup":Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    if-eqz v0, :cond_1

    .line 250
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ageGroup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;->setAgeGroup(Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;)V

    .line 252
    sget-object v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;->Child:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;

    if-eq v0, v2, :cond_0

    .line 253
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;)Z

    .line 268
    .end local v0    # "ageGroup":Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 256
    .restart local v0    # "ageGroup":Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    :cond_0
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {v2, v3, v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown age group"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$400(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;->NO_ERROR:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;

    iget-object v4, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v4

    iget-object v4, v4, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->result:Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;

    invoke-interface {v2, v3, v4}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Callbacks;->onCloseWithStatus(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$Status;Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult;)V

    goto :goto_0

    .line 263
    .end local v0    # "ageGroup":Lcom/microsoft/xbox/idp/ui/AccountProvisioningResult$AgeGroup;
    :cond_2
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOADER_XTOKEN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v2, "Service Error - Load XTOKEN"

    const-string v3, "Sign up view"

    invoke-virtual {p2}, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;->getError()Lcom/microsoft/xbox/idp/toolkit/HttpError;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/xbox/idp/telemetry/helpers/UTCError;->trackServiceFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 266
    iget-object v2, p0, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->this$0:Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;->access$200(Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment;)Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;

    move-result-object v2

    iget-object v2, v2, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$State;->errorHelper:Lcom/microsoft/xbox/idp/util/ErrorHelper;

    sget-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 234
    check-cast p2, Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/idp/ui/AccountProvisioningFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/microsoft/xbox/idp/toolkit/XTokenLoader$Result;>;"
    return-void
.end method
