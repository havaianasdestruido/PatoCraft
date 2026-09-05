.class public final enum Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
.super Ljava/lang/Enum;
.source "FollowersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/FollowersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DummyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/model/FollowersData$DummyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_ERROR:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_FRIENDS_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_FRIENDS_WHO_PLAY:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_LINK_TO_FACEBOOK:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_LOADING:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_NO_DATA:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum DUMMY_VIPS:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field public static final enum NOT_SET:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "NOT_SET"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->NOT_SET:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 15
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_HEADER"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 16
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_FRIENDS_HEADER"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_FRIENDS_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_LINK_TO_FACEBOOK"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LINK_TO_FACEBOOK:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 18
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_FRIENDS_WHO_PLAY"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_FRIENDS_WHO_PLAY:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 19
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_VIPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_VIPS:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 20
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_ERROR:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 21
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_NO_DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_NO_DATA:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 22
    new-instance v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    const-string v1, "DUMMY_LOADING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LOADING:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    sget-object v1, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->NOT_SET:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_FRIENDS_HEADER:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LINK_TO_FACEBOOK:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_FRIENDS_WHO_PLAY:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_VIPS:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_ERROR:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_NO_DATA:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LOADING:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->$VALUES:[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->$VALUES:[Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-object v0
.end method
