.class public Lcom/microsoft/xbox/service/model/ProfileModel;
.super Lcom/microsoft/xbox/service/model/ModelBase;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromMutedListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToMutedListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetMutedListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromNeverListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFollowingListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFollowingListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFavoriteListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/service/model/ModelBase",
        "<",
        "Lcom/microsoft/xbox/service/model/ProfileData;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_PROFILE_MODELS:I = 0x14

.field private static final friendsDataLifetime:J = 0x2bf20L

.field private static meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel; = null

.field private static profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/service/model/ProfileModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final profilePresenceDataLifetime:J = 0x2bf20L


# instance fields
.field private addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

.field private addingUserToFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private addingUserToFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private addingUserToMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private addingUserToNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private addingUserToShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private favorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation
.end field

.field private firstName:Ljava/lang/String;

.field private following:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation
.end field

.field private followingSummaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;",
            ">;"
        }
    .end annotation
.end field

.field private lastName:Ljava/lang/String;

.field private lastRefreshMutedList:Ljava/util/Date;

.field private lastRefreshNeverList:Ljava/util/Date;

.field private lastRefreshPeopleHubRecommendations:Ljava/util/Date;

.field private lastRefreshPresenceData:Ljava/util/Date;

.field private lastRefreshProfileSummary:Ljava/util/Date;

.field private mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

.field private mutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

.field private neverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private peopleHubPersonSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

.field private peopleHubRecommendations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation
.end field

.field private peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

.field private presenceData:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

.field private presenceDataLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private profileImageUrl:Ljava/lang/String;

.field private profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

.field private profileSummaryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

.field private removingUserFromFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private removingUserFromFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private removingUserFromMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private removingUserFromNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private removingUserFromShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private shareRealName:Z

.field private shareRealNameStatus:Ljava/lang/String;

.field private sharingRealNameTransitively:Z

.field private submitFeedbackForUserLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private xuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;-><init>(I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "xuid"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/ModelBase;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 127
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 128
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 129
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 130
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 131
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 132
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 133
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 134
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 135
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 136
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 137
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 138
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->submitFeedbackForUserLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 153
    return-void
.end method

.method static synthetic access$1000(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetPresenceDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onPutUserToNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onPutUserToMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onSubmitFeedbackForUserCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetPeopleHubRecommendationsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->updateWithProfileData(Lcom/microsoft/xbox/toolkit/AsyncResult;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/service/model/ProfileModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onAddUserToShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onAddUserToFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/AsyncResult;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetProfileSummaryCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method private buildRecommendationsList(Z)V
    .locals 5
    .param p1, "showLinkToFacebbokButton"    # Z

    .prologue
    .line 812
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendations:Ljava/util/ArrayList;

    .line 813
    if-eqz p1, :cond_0

    .line 814
    new-instance v0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;

    const/4 v3, 0x1

    sget-object v4, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LINK_TO_FACEBOOK:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    invoke-direct {v0, v3, v4}, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;-><init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V

    .line 815
    .local v0, "linkButton":Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;
    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendations:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 817
    .end local v0    # "linkButton":Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;
    :cond_0
    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    iget-object v3, v3, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;->people:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 818
    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    iget-object v3, v3, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;->people:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .line 819
    .local v1, "person":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    new-instance v2, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;

    invoke-direct {v2, v1}, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;-><init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V

    .line 820
    .local v2, "recommendation":Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;
    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    .end local v1    # "person":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    .end local v2    # "recommendation":Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;
    :cond_1
    return-void
.end method

.method public static getDefaultColor()I
    .locals 2

    .prologue
    .line 304
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "XboxOneGreen"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getColorRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 160
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 164
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    goto :goto_0
.end method

.method private getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileImageUrl:Ljava/lang/String;

    .line 223
    :goto_0
    return-object v0

    .line 221
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileImageUrl:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileImageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;
    .locals 2
    .param p0, "xuid"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 172
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->stringsEqualCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    sget-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/service/model/ProfileModel;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 177
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 184
    :cond_2
    :goto_0
    return-object v0

    .line 179
    :cond_3
    sget-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 180
    .local v0, "model":Lcom/microsoft/xbox/service/model/ProfileModel;
    if-nez v0, :cond_2

    .line 181
    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel;

    .end local v0    # "model":Lcom/microsoft/xbox/service/model/ProfileModel;
    invoke-direct {v0, p0}, Lcom/microsoft/xbox/service/model/ProfileModel;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v0    # "model":Lcom/microsoft/xbox/service/model/ProfileModel;
    sget-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    invoke-virtual {v1, p0, v0}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;
    .locals 4
    .param p1, "settingId"    # Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->settings:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;

    .line 322
    .local v0, "setting":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v1, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->value:Ljava/lang/String;

    .line 327
    .end local v0    # "setting":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static hasPrivilege(Ljava/lang/String;)Z
    .locals 2
    .param p0, "prv"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getPrivileges()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "privileges":Ljava/lang/String;
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasPrivilegeToAddFriend()Z
    .locals 1

    .prologue
    .line 359
    const-string v0, "255"

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasPrivilege(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasPrivilegeToSendMessage()Z
    .locals 1

    .prologue
    .line 363
    const-string v0, "252"

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasPrivilege(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMeXuid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "xuid"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "myXuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAddUserToFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 7
    .param p2, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 592
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v1, "newFavoritesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 599
    .local v0, "fdata":Lcom/microsoft/xbox/service/model/FollowersData;
    iget-object v3, v0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    iput-boolean v5, v0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    .line 602
    :cond_3
    iget-boolean v3, v0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    if-eqz v3, :cond_2

    .line 603
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 607
    .end local v0    # "fdata":Lcom/microsoft/xbox/service/model/FollowersData;
    :cond_4
    new-instance v2, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;

    invoke-direct {v2, p0, v6}, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 609
    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->favorites:Ljava/util/ArrayList;

    .line 611
    new-instance v2, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v3, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v4, Lcom/microsoft/xbox/service/model/UpdateType;->UpdateFriend:Lcom/microsoft/xbox/service/model/UpdateType;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-direct {v2, v3, p0, v6}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    goto :goto_0
.end method

.method private onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 10
    .param p2, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;>;"
    const/4 v9, 0x0

    .line 641
    invoke-static {p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v4

    .line 642
    .local v4, "newUserProfileModel":Lcom/microsoft/xbox/service/model/ProfileModel;
    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 644
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    iput-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    .line 646
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v5

    sget-object v6, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-virtual {v5}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, "isAlreadyFollowing":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v2, "newFollowersData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 651
    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 652
    .local v0, "fdata":Lcom/microsoft/xbox/service/model/FollowersData;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v6, v0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 654
    const/4 v1, 0x1

    goto :goto_0

    .line 658
    .end local v0    # "fdata":Lcom/microsoft/xbox/service/model/FollowersData;
    :cond_1
    if-nez v1, :cond_2

    .line 659
    new-instance v3, Lcom/microsoft/xbox/service/model/FollowersData;

    invoke-direct {v3}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>()V

    .line 660
    .local v3, "newFollowingUser":Lcom/microsoft/xbox/service/model/FollowersData;
    iput-object p2, v3, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    .line 661
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    .line 665
    sget-object v5, Lcom/microsoft/xbox/service/model/UserStatus;->Offline:Lcom/microsoft/xbox/service/model/UserStatus;

    iput-object v5, v3, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    .line 667
    new-instance v5, Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-direct {v5}, Lcom/microsoft/xbox/service/model/UserProfileData;-><init>()V

    iput-object v5, v3, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    .line 668
    iget-object v5, v3, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {v4}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/service/model/UserProfileData;->accountTier:Ljava/lang/String;

    .line 669
    iget-object v5, v3, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {v4}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAppDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    .line 670
    iget-object v5, v3, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {v4}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerScore()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerScore:Ljava/lang/String;

    .line 671
    iget-object v5, v3, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {v4}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    .line 672
    iget-object v5, v3, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-direct {v4}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/xbox/service/model/UserProfileData;->profileImageUrl:Ljava/lang/String;

    .line 674
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v5, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;

    invoke-direct {v5, p0, v9}, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel$1;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 679
    .end local v3    # "newFollowingUser":Lcom/microsoft/xbox/service/model/FollowersData;
    :cond_2
    iput-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    .line 681
    new-instance v5, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v6, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v7, Lcom/microsoft/xbox/service/model/UpdateType;->UpdateFriend:Lcom/microsoft/xbox/service/model/UpdateType;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-direct {v5, v6, p0, v9}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v5}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 689
    .end local v1    # "isAlreadyFollowing":Z
    .end local v2    # "newFollowersData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    :cond_3
    :goto_1
    return-void

    .line 684
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v5

    sget-object v6, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    iget v5, v5, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->code:I

    const/16 v6, 0x404

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    .line 685
    invoke-virtual {v5}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result v5

    if-nez v5, :cond_3

    .line 686
    :cond_5
    iput-object v9, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    goto :goto_1
.end method

.method private onAddUserToShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    .local p2, "xuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 565
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v6

    sget-object v7, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v6, v7, :cond_5

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 566
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 567
    .local v5, "xuid":Ljava/lang/String;
    invoke-static {v5}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v1

    .line 568
    .local v1, "m":Lcom/microsoft/xbox/service/model/ProfileModel;
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSummaryData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    move-result-object v3

    .line 569
    .local v3, "p":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    if-eqz v3, :cond_0

    .line 570
    iput-boolean v9, v3, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->hasCallerMarkedTargetAsIdentityShared:Z

    goto :goto_0

    .line 575
    .end local v1    # "m":Lcom/microsoft/xbox/service/model/ProfileModel;
    .end local v3    # "p":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .end local v5    # "xuid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v2

    .line 576
    .local v2, "meModel":Lcom/microsoft/xbox/service/model/ProfileModel;
    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileFollowingSummaryData()Ljava/util/ArrayList;

    move-result-object v0

    .line 577
    .local v0, "followingSummaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;>;"
    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 578
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 579
    .restart local v5    # "xuid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;

    .line 580
    .local v4, "person":Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;
    iget-object v8, v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;->xuid:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 581
    iput-boolean v9, v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;->isIdentityShared:Z

    goto :goto_1

    .line 586
    .end local v4    # "person":Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;
    .end local v5    # "xuid":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->setProfileFollowingSummaryData(Ljava/util/ArrayList;)V

    .line 589
    .end local v0    # "followingSummaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;>;"
    .end local v2    # "meModel":Lcom/microsoft/xbox/service/model/ProfileModel;
    :cond_5
    return-void
.end method

.method private onGetMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v1, v2, :cond_0

    .line 761
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    .line 762
    .local v0, "data":Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshMutedList:Ljava/util/Date;

    .line 763
    if-eqz v0, :cond_1

    .line 764
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    .line 769
    .end local v0    # "data":Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    :cond_0
    :goto_0
    return-void

    .line 766
    .restart local v0    # "data":Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    :cond_1
    new-instance v1, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    goto :goto_0
.end method

.method private onGetNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v1, v2, :cond_0

    .line 730
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    .line 731
    .local v0, "data":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshNeverList:Ljava/util/Date;

    .line 732
    if-eqz v0, :cond_1

    .line 733
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    .line 738
    .end local v0    # "data":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    :cond_0
    :goto_0
    return-void

    .line 735
    .restart local v0    # "data":Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    :cond_1
    new-instance v1, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    goto :goto_0
.end method

.method private onGetPeopleHubPersonDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    .line 525
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubPersonSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .line 527
    :cond_0
    return-void
.end method

.method private onGetPeopleHubRecommendationsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;>;"
    const/4 v4, 0x0

    .line 794
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v2, v3, :cond_0

    .line 795
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    .line 796
    .local v0, "data":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    if-nez v0, :cond_1

    .line 797
    iput-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    .line 798
    iput-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendations:Ljava/util/ArrayList;

    .line 809
    .end local v0    # "data":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    :cond_0
    :goto_0
    return-void

    .line 801
    .restart local v0    # "data":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    :cond_1
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    .line 804
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getInstance()Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/friendfinder/FacebookManager;->getFacebookFriendFinderState()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;

    move-result-object v1

    .line 805
    .local v1, "friendFinderState":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$FriendsFinderStateResult;->getLinkedAccountOptInStatus()Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->ShowPrompt:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->buildRecommendationsList(Z)V

    .line 807
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPeopleHubRecommendations:Ljava/util/Date;

    goto :goto_0

    .line 805
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onGetPresenceDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    .line 723
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPresenceData:Ljava/util/Date;

    .line 724
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceData:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    .line 726
    :cond_0
    return-void
.end method

.method private onGetProfileSummaryCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v1, v2, :cond_0

    .line 693
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    .line 694
    .local v0, "data":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshProfileSummary:Ljava/util/Date;

    .line 695
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    .line 697
    new-instance v1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v2, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v3, Lcom/microsoft/xbox/service/model/UpdateType;->ActivityAlertsSummary:Lcom/microsoft/xbox/service/model/UpdateType;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 699
    .end local v0    # "data":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    :cond_0
    return-void
.end method

.method private onPutUserToMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 2
    .param p2, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->add(Ljava/lang/String;)V

    .line 780
    :cond_1
    return-void
.end method

.method private onPutUserToNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 2
    .param p2, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->add(Ljava/lang/String;)V

    .line 749
    :cond_1
    return-void
.end method

.method private onRemoveUserFromFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 6
    .param p2, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v1, "newFavoritesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 623
    .local v0, "fdata":Lcom/microsoft/xbox/service/model/FollowersData;
    iget-object v3, v0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 624
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    .line 627
    :cond_3
    iget-boolean v3, v0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    if-eqz v3, :cond_2

    .line 628
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 632
    .end local v0    # "fdata":Lcom/microsoft/xbox/service/model/FollowersData;
    :cond_4
    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->favorites:Ljava/util/ArrayList;

    .line 634
    new-instance v2, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v3, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v4, Lcom/microsoft/xbox/service/model/UpdateType;->UpdateFriend:Lcom/microsoft/xbox/service/model/UpdateType;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    goto :goto_0
.end method

.method private onRemoveUserFromFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 7
    .param p2, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v3

    sget-object v4, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 703
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v2, "newFollowersData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v1, "newFavoritesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 706
    .local v0, "fData":Lcom/microsoft/xbox/service/model/FollowersData;
    iget-object v4, v0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 707
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-boolean v4, v0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    if-eqz v4, :cond_0

    .line 709
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 714
    .end local v0    # "fData":Lcom/microsoft/xbox/service/model/FollowersData;
    :cond_1
    iput-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    .line 715
    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->favorites:Ljava/util/ArrayList;

    .line 717
    new-instance v3, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v4, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v5, Lcom/microsoft/xbox/service/model/UpdateType;->UpdateFriend:Lcom/microsoft/xbox/service/model/UpdateType;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v3}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 719
    .end local v1    # "newFavoritesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    .end local v2    # "newFollowersData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/model/FollowersData;>;"
    :cond_2
    return-void
.end method

.method private onRemoveUserFromMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 2
    .param p2, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->remove(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedUser;

    .line 788
    :cond_0
    return-void
.end method

.method private onRemoveUserFromNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 2
    .param p2, "xuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 752
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->remove(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;

    .line 757
    :cond_0
    return-void
.end method

.method private onRemoveUserFromShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    .local p2, "xuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 538
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v6

    sget-object v7, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v6, v7, :cond_5

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 539
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 540
    .local v5, "xuid":Ljava/lang/String;
    invoke-static {v5}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v1

    .line 541
    .local v1, "m":Lcom/microsoft/xbox/service/model/ProfileModel;
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSummaryData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    move-result-object v3

    .line 542
    .local v3, "p":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    if-eqz v3, :cond_0

    .line 543
    iput-boolean v9, v3, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->hasCallerMarkedTargetAsIdentityShared:Z

    goto :goto_0

    .line 548
    .end local v1    # "m":Lcom/microsoft/xbox/service/model/ProfileModel;
    .end local v3    # "p":Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .end local v5    # "xuid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v2

    .line 549
    .local v2, "meModel":Lcom/microsoft/xbox/service/model/ProfileModel;
    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileFollowingSummaryData()Ljava/util/ArrayList;

    move-result-object v0

    .line 550
    .local v0, "followingSummaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;>;"
    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 551
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 552
    .restart local v5    # "xuid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;

    .line 553
    .local v4, "person":Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;
    iget-object v8, v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;->xuid:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 554
    iput-boolean v9, v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;->isIdentityShared:Z

    goto :goto_1

    .line 559
    .end local v4    # "person":Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;
    .end local v5    # "xuid":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->setProfileFollowingSummaryData(Ljava/util/ArrayList;)V

    .line 562
    .end local v0    # "followingSummaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;>;"
    .end local v2    # "meModel":Lcom/microsoft/xbox/service/model/ProfileModel;
    :cond_5
    return-void
.end method

.method private onSubmitFeedbackForUserCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 791
    .local p1, "result":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public static reset()V
    .locals 3

    .prologue
    .line 388
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 389
    sget-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/microsoft/xbox/service/model/ProfileModel;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->clearObserver()V

    goto :goto_1

    .line 388
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/microsoft/xbox/service/model/ProfileModel;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 392
    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/microsoft/xbox/service/model/ProfileModel;>;"
    :cond_1
    sget-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    if-eqz v1, :cond_2

    .line 393
    sget-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->clearObserver()V

    .line 394
    const/4 v1, 0x0

    sput-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 396
    :cond_2
    new-instance v1, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;-><init>(I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    .line 397
    return-void
.end method

.method private updateWithProfileData(Lcom/microsoft/xbox/toolkit/AsyncResult;Z)V
    .locals 0
    .param p2, "attemptedToLoadEssentialDataOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/model/ProfileData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, "asyncResult":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/model/ProfileData;>;"
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 865
    if-eqz p2, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel;->invalidateData()V

    .line 868
    :cond_0
    return-void
.end method


# virtual methods
.method public addUserToFavoriteList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .param p2, "favoriteUserXuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 447
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 448
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 449
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public addUserToFollowingList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .param p2, "followingUserXuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 461
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 462
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 463
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFollowingListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFollowingListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public addUserToMutedList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .param p2, "mutedUserXuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 505
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 506
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 507
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToMutedListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToMutedListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public addUserToNeverList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .param p2, "blockUserXuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 487
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 488
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 489
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public addUserToShareIdentity(ZLjava/util/ArrayList;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 441
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 442
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/util/ArrayList;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddUserToFollowingResult()Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    return-object v0
.end method

.method public getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->favorites:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFollowingData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGamerPicImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaturityLevel()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->getMaturityLevel()I

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMutedList()Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    return-object v0
.end method

.method public getNeverListData()Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    return-object v0
.end method

.method public getNumberOfFollowers()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    iget v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->targetFollowerCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumberOfFollowing()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    iget v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->targetFollowingCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeopleHubPersonSummary()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubPersonSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    return-object v0
.end method

.method public getPeopleHubRecommendationsRawData()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    return-object v0
.end method

.method public getPreferedColor()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->colors:Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->colors:Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->getPrimaryColor()I

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getDefaultColor()I

    move-result v0

    goto :goto_0
.end method

.method public getPresenceData()Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceData:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    return-object v0
.end method

.method public getProfileFollowingSummaryData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->followingSummaries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProfileSummaryData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealName:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareRealNameStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealNameStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermarkUris()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v3, "uriArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URI;>;"
    sget-object v6, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v6}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "tenureLevel":Ljava/lang/String;
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 257
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getTenureWatermarkUrlFormat()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v11, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "tenureLevel":Ljava/lang/String;
    :cond_0
    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_1
    :goto_0
    sget-object v6, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v6}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "otherWatermarks":Ljava/lang/String;
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 266
    const-string v6, "\\|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v4, v6, v5

    .line 268
    .local v4, "watermark":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/net/URI;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getWatermarkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 258
    .end local v1    # "otherWatermarks":Ljava/lang/String;
    .end local v4    # "watermark":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create URI for tenure watermark: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    .restart local v1    # "otherWatermarks":Ljava/lang/String;
    .restart local v4    # "watermark":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 270
    .restart local v0    # "ex":Ljava/net/URISyntaxException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create URI for watermark "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    goto :goto_2

    .line 275
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    .end local v4    # "watermark":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public getXuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    return-object v0
.end method

.method public hasCallerMarkedTargetAsFavorite()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->hasCallerMarkedTargetAsFavorite:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCallerMarkedTargetAsIdentityShared()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->hasCallerMarkedTargetAsIdentityShared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallerFollowingTarget()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->isCallerFollowingTarget:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeProfile()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isMeXuid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTargetFollowingCaller()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->isTargetFollowingCaller:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAsync(Z)V
    .locals 4
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 408
    sget-object v0, Lcom/microsoft/xbox/service/model/UpdateType;->MeProfileData:Lcom/microsoft/xbox/service/model/UpdateType;

    new-instance v1, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    .line 409
    return-void
.end method

.method public loadPeopleHubRecommendations(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 429
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 430
    const-wide/32 v2, 0x2bf20

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPeopleHubRecommendations:Ljava/util/Date;

    new-instance v5, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v5}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public loadPresenceData(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceDataLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceDataLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 424
    :cond_0
    const-wide/32 v2, 0x2bf20

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPresenceData:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceDataLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public loadProfileSummary(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummaryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummaryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 471
    :cond_0
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshProfileSummary:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummaryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public loadSync(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/model/ProfileData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadSync(ZZ)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public loadSync(ZZ)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 2
    .param p1, "forceRefresh"    # Z
    .param p2, "loadEssentialsOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/model/ProfileData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Z)V

    invoke-super {p0, p1, v0}, Lcom/microsoft/xbox/service/model/ModelBase;->loadData(ZLcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public loadUserMutedList(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshMutedList:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$GetMutedListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetMutedListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public loadUserNeverList(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshNeverList:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public removeUserFromFavoriteList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .param p2, "favoriteUserXuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 454
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 455
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 456
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFavoriteListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFavoriteListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public removeUserFromFollowingList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .param p2, "followingUserXuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 476
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 477
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 478
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFollowingListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFollowingListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public removeUserFromMutedList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .param p2, "mutedUserXuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 512
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 513
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 514
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromMutedListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromMutedListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public removeUserFromNeverList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .param p2, "unblockUserXuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 494
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 495
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 496
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromNeverListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromNeverListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public removeUserFromShareIdentity(ZLjava/util/ArrayList;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 435
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 436
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/util/ArrayList;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->firstName:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastName:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setProfileFollowingSummaryData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;>;"
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->followingSummaries:Ljava/util/ArrayList;

    .line 535
    return-void
.end method

.method public shouldRefreshPresenceData()Z
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPresenceData:Ljava/util/Date;

    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    invoke-static {v0, v2, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result v0

    return v0
.end method

.method public shouldRefreshProfileSummary()Z
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshProfileSummary:Ljava/util/Date;

    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    invoke-static {v0, v2, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result v0

    return v0
.end method

.method public submitFeedbackForUser(ZLcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 10
    .param p1, "forceRefresh"    # Z
    .param p2, "feedbackType"    # Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .param p3, "textReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/xbox/service/model/sls/FeedbackType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 519
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 520
    iget-wide v6, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->submitFeedbackForUserLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)V

    move v1, p1

    move-wide v2, v6

    move-object v4, v8

    move-object v5, v9

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 7
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
    .local p1, "asyncResult":Lcom/microsoft/xbox/toolkit/AsyncResult;, "Lcom/microsoft/xbox/toolkit/AsyncResult<Lcom/microsoft/xbox/service/model/ProfileData;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 827
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v5, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 829
    invoke-super {p0, p1}, Lcom/microsoft/xbox/service/model/ModelBase;->updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 831
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v2

    sget-object v5, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v2, v5, :cond_0

    .line 832
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/ProfileData;

    .line 833
    .local v0, "profileData":Lcom/microsoft/xbox/service/model/ProfileData;
    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isMeProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileData;->getShareRealName()Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealName:Z

    .line 840
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileData;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealNameStatus:Ljava/lang/String;

    .line 842
    const-string v2, "ProfileModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shareRealNameStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealNameStatus:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileData;->getSharingRealNameTransitively()Z

    move-result v2

    iput-boolean v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->sharingRealNameTransitively:Z

    .line 846
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileData;->getProfileResult()Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    move-result-object v1

    .line 848
    .local v1, "userProfileResult":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 849
    iget-object v2, v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iput-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    .line 850
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileImageUrl:Ljava/lang/String;

    .line 854
    .end local v0    # "profileData":Lcom/microsoft/xbox/service/model/ProfileData;
    .end local v1    # "userProfileResult":Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    :cond_0
    new-instance v2, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v4, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v5, Lcom/microsoft/xbox/service/model/UpdateType;->ProfileData:Lcom/microsoft/xbox/service/model/UpdateType;

    invoke-direct {v4, v5, v3}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    invoke-direct {v2, v4, p0, v3}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 855
    return-void

    :cond_1
    move v2, v4

    .line 827
    goto :goto_0

    .restart local v0    # "profileData":Lcom/microsoft/xbox/service/model/ProfileData;
    :cond_2
    move v2, v3

    .line 839
    goto :goto_1
.end method
