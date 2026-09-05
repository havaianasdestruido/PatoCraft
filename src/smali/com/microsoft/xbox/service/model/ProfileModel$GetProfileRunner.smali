.class Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProfileRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable",
        "<",
        "Lcom/microsoft/xbox/service/model/ProfileData;",
        ">;"
    }
.end annotation


# instance fields
.field private caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private loadEssentialsOnly:Z

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "caller"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p3, "xuid"    # Ljava/lang/String;
    .param p4, "loadEssentialsOnly"    # Z

    .prologue
    .line 876
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 877
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 878
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->xuid:Ljava/lang/String;

    .line 879
    iput-boolean p4, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->loadEssentialsOnly:Z

    .line 880
    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->xuid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/service/model/ProfileData;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 885
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v4

    .line 887
    .local v4, "serviceManager":Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v9, "xuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->xuid:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v1, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;

    iget-boolean v11, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->loadEssentialsOnly:Z

    invoke-direct {v1, v9, v11}, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;-><init>(Ljava/util/ArrayList;Z)V

    .line 890
    .local v1, "profileRequest":Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;
    invoke-static {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->getUserProfileRequestBody(Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getUserProfileInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    move-result-object v3

    .line 892
    .local v3, "response":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v11

    invoke-virtual {v11}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->xuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 893
    if-eqz v3, :cond_1

    iget-object v11, v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 894
    iget-object v11, v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    .line 895
    .local v2, "profileUser":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;
    invoke-interface {v4}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getXTokenPrivileges()[I

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->setPrivilieges([I)V

    .line 900
    :try_start_0
    sget-object v11, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v2, v11}, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->getSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v8

    .line 901
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 902
    invoke-interface {v4, v8}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getProfilePreferredColor(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    move-result-object v11

    iput-object v11, v2, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->colors:Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 909
    .end local v8    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v11, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    new-instance v12, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;

    invoke-direct {v12, p0, v4, v2}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;)V

    invoke-virtual {v11, v12}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->run(Ljava/lang/Runnable;)V

    .line 951
    .end local v2    # "profileUser":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 952
    .local v5, "shareRealName":Z
    const/4 v6, 0x0

    .line 953
    .local v6, "shareRealNameStatus":Ljava/lang/String;
    const/4 v7, 0x0

    .line 955
    .local v7, "sharingRealNameTransitively":Z
    iget-object v11, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->xuid:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->xuid:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2

    .line 957
    :try_start_1
    invoke-interface {v4}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getUserProfilePrivacySettings()Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    move-result-object v0

    .line 958
    .local v0, "privacyResult":Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v6

    .line 959
    sget-object v11, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    invoke-virtual {v11}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    .line 960
    :goto_2
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->getSharingRealNameTransitively()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 965
    .end local v0    # "privacyResult":Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    :cond_2
    :goto_3
    new-instance v10, Lcom/microsoft/xbox/service/model/ProfileData;

    invoke-direct {v10, v3, v5, v6, v7}, Lcom/microsoft/xbox/service/model/ProfileData;-><init>(Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;ZLjava/lang/String;Z)V

    return-object v10

    .line 935
    .end local v5    # "shareRealName":Z
    .end local v6    # "shareRealNameStatus":Ljava/lang/String;
    .end local v7    # "sharingRealNameTransitively":Z
    :cond_3
    if-eqz v3, :cond_1

    iget-object v11, v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 936
    iget-object v11, v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    .line 939
    .restart local v2    # "profileUser":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;
    :try_start_2
    sget-object v11, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v2, v11}, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->getSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v8

    .line 940
    .restart local v8    # "url":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 941
    invoke-interface {v4, v8}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getProfilePreferredColor(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    move-result-object v11

    iput-object v11, v2, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->colors:Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 943
    .end local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_1

    .end local v2    # "profileUser":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;
    .restart local v0    # "privacyResult":Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .restart local v5    # "shareRealName":Z
    .restart local v6    # "shareRealNameStatus":Ljava/lang/String;
    .restart local v7    # "sharingRealNameTransitively":Z
    :cond_4
    move v5, v10

    .line 959
    goto :goto_2

    .line 961
    .end local v0    # "privacyResult":Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    :catch_1
    move-exception v10

    goto :goto_3

    .line 904
    .end local v5    # "shareRealName":Z
    .end local v6    # "shareRealNameStatus":Ljava/lang/String;
    .end local v7    # "sharingRealNameTransitively":Z
    .restart local v2    # "profileUser":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;
    :catch_2
    move-exception v11

    goto :goto_0
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->buildData()Lcom/microsoft/xbox/service/model/ProfileData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    .prologue
    .line 979
    const-wide/16 v0, 0xbba

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/model/ProfileData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/model/ProfileData;>;"
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-boolean v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->loadEssentialsOnly:Z

    invoke-static {v0, p1, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$200(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Z)V

    .line 975
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 970
    return-void
.end method
