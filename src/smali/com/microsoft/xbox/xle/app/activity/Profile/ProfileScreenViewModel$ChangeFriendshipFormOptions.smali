.class public final enum Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;
.super Ljava/lang/Enum;
.source "ProfileScreenViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeFriendshipFormOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldRemoveUserFromFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

.field public static final enum ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v1, "ShouldAddUserToFriendList"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    .line 587
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v1, "ShouldRemoveUserFromFriendList"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    .line 588
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v1, "ShouldAddUserToFavoriteList"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    .line 589
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v1, "ShouldRemoveUserFromFavoriteList"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    .line 590
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v1, "ShouldAddUserToShareIdentityList"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    .line 591
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    const-string v1, "ShouldRemoveUserFromShareIdentityList"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    .line 585
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->$VALUES:[Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 585
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 585
    const-class v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;
    .locals 1

    .prologue
    .line 585
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->$VALUES:[Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    return-object v0
.end method
