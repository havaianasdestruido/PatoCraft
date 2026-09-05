.class Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;
.super Ljava/lang/Object;
.source "ProfileModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowingAndFavoritesComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/microsoft/xbox/service/model/FollowersData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/service/model/ProfileModel;
    .param p2, "x1"    # Lcom/microsoft/xbox/service/model/ProfileModel$1;

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/microsoft/xbox/service/model/FollowersData;Lcom/microsoft/xbox/service/model/FollowersData;)I
    .locals 2
    .param p1, "object1"    # Lcom/microsoft/xbox/service/model/FollowersData;
    .param p2, "object2"    # Lcom/microsoft/xbox/service/model/FollowersData;

    .prologue
    .line 986
    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    iget-object v1, p2, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v1, v1, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 983
    check-cast p1, Lcom/microsoft/xbox/service/model/FollowersData;

    check-cast p2, Lcom/microsoft/xbox/service/model/FollowersData;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;->compare(Lcom/microsoft/xbox/service/model/FollowersData;Lcom/microsoft/xbox/service/model/FollowersData;)I

    move-result v0

    return v0
.end method
