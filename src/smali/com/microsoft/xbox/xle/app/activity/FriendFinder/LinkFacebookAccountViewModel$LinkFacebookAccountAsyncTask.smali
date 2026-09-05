.class public Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "LinkFacebookAccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LinkFacebookAccountAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask",
        "<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;


# direct methods
.method protected constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    return-void
.end method

.method private needUpdatePrivacy(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;)Z
    .locals 2
    .param p1, "privacySetting"    # Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->getPrivacySettingValue()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v0

    .line 120
    .local v0, "privacyValue":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 6

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-interface {v3, v4}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getPrivacySetting(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    move-result-object v2

    .line 129
    .local v2, "setting":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->needUpdatePrivacy(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "newSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;>;"
    new-instance v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    sget-object v4, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v5, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;-><init>(Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v3

    new-instance v4, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    invoke-direct {v4, v1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v3, v4}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->setPrivacySettings(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 148
    .end local v1    # "newSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;>;"
    .end local v2    # "setting":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    :goto_0
    return-object v3

    .line 138
    .restart local v2    # "setting":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->Facebook:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getTokenString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->updateThirdPartyToken(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;->Facebook:Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;

    sget-object v5, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    invoke-interface {v3, v4, v5}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->setFriendFinderOptInStatus(Lcom/microsoft/xbox/service/model/friendfinder/LinkedAccountHelpers$LinkedAccountType;Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 143
    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0

    .line 146
    :cond_2
    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v2    # "setting":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lcom/microsoft/xbox/toolkit/XLEException;
    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    goto :goto_0
.end method

.method protected bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onError()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onNoAction()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;->access$000(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 159
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/LinkFacebookAccountViewModel$LinkFacebookAccountAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
