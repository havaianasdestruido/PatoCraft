.class public final enum Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
.super Ljava/lang/Enum;
.source "UserProfileSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "RealName"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "GameDisplayName"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "AppDisplayName"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "AppDisplayPicRaw"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Gamerscore"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Gamertag"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "GameDisplayPicRaw"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "AccountTier"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "TenureLevel"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "XboxOneRep"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "PreferredColor"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Location"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Bio"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "Watermarks"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-object v0
.end method
