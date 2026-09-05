.class public final enum Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
.super Ljava/lang/Enum;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/privacy/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrivacySettingId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CanShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CollectVoiceData:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CommunicateUsingVideo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareExerciseInfo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareFriendList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareGameHistory:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum SharePresence:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareProfile:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareRecordedGameSessions:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareVideoAndMusicStatus:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareXboxMusicActivity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 6
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareFriendList"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareFriendList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 7
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareGameHistory"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareGameHistory:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 8
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "CommunicateUsingTextAndVoice"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 9
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "SharePresence"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->SharePresence:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 10
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareProfile"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareProfile:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 11
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareVideoAndMusicStatus"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "CommunicateUsingVideo"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingVideo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 13
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "CollectVoiceData"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CollectVoiceData:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 14
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareXboxMusicActivity"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareXboxMusicActivity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 15
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareExerciseInfo"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareExerciseInfo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 16
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareIdentity"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareRecordedGameSessions"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareRecordedGameSessions:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 18
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "ShareIdentityTransitively"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 19
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "CanShareIdentity"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CanShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 4
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareFriendList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareGameHistory:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->SharePresence:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareProfile:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingVideo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CollectVoiceData:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareXboxMusicActivity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareExerciseInfo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareRecordedGameSessions:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CanShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPrivacySettingId(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 24
    .local v0, "status":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    .end local v0    # "status":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    :goto_1
    return-object v0

    .line 23
    .restart local v0    # "status":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "status":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object v0
.end method
