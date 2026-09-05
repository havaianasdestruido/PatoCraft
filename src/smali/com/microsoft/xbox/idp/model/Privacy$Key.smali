.class public final enum Lcom/microsoft/xbox/idp/model/Privacy$Key;
.super Ljava/lang/Enum;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 20
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareFriendList"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 21
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareGameHistory"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 22
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "CommunicateUsingTextAndVoice"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 23
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "SharePresence"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 24
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareProfile"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 25
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareVideoAndMusicStatus"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 26
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "CommunicateUsingVideo"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 27
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "CollectVoiceData"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 28
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareXboxMusicActivity"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 29
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareExerciseInfo"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 30
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareIdentity"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 31
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareRecordedGameSessions"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 32
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "ShareIdentityTransitively"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 33
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "CanShareIdentity"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 18
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/microsoft/xbox/idp/model/Privacy$Key;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/model/Privacy$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-object v0
.end method
