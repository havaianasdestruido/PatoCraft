.class Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;
.super Ljava/lang/Object;
.source "ProfileModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->buildData()Lcom/microsoft/xbox/service/model/ProfileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

.field final synthetic val$profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

.field final synthetic val$serviceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;)V
    .locals 0
    .param p1, "this$1"    # Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->this$1:Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$serviceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 914
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$serviceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->this$1:Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    invoke-static {v3}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->access$100(Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getFamilySettings(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/FamilySettings;

    move-result-object v0

    .line 916
    .local v0, "familySettings":Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 917
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 918
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->xuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->this$1:Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    invoke-static {v3}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->access$100(Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 919
    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget-boolean v2, v2, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->canViewTVAdultContent:Z

    iput-boolean v2, v3, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->canViewTVAdultContent:Z

    .line 920
    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget v2, v2, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->maturityLevel:I

    invoke-virtual {v3, v2}, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->setmaturityLevel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    .end local v0    # "familySettings":Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 917
    .restart local v0    # "familySettings":Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v0    # "familySettings":Lcom/microsoft/xbox/service/network/managers/FamilySettings;
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method
