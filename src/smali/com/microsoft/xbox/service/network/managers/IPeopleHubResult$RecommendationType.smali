.class public final enum Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
.super Ljava/lang/Enum;
.source "IPeopleHubResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecommendationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Dummy:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum FriendOfFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

.field public static final enum VIP:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 13
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "Dummy"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Dummy:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 14
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "Follower"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 15
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "FacebookFriend"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 16
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "PhoneContact"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "FriendOfFriend"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FriendOfFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 18
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    const-string v1, "VIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->VIP:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Dummy:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->PhoneContact:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FriendOfFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->VIP:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->$VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getRecommendationType(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 5
    .param p0, "recommendationType"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->values()[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 22
    .local v0, "status":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    .end local v0    # "status":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    :goto_1
    return-object v0

    .line 21
    .restart local v0    # "status":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "status":Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->Unknown:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->$VALUES:[Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    return-object v0
.end method
