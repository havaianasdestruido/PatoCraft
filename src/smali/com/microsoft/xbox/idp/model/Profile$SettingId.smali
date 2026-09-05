.class public final enum Lcom/microsoft/xbox/idp/model/Profile$SettingId;
.super Ljava/lang/Enum;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AccountTier:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AppDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AppDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Background:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum GameDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum PreferredColor:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum PublicGamerpicType:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum RealName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum ShowUserAsAvatar:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum TenureLevel:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum TileTransparency:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Watermarks:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum XboxOneRep:Lcom/microsoft/xbox/idp/model/Profile$SettingId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "AppDisplayName"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 64
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "GameDisplayName"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 65
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "Gamertag"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 66
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "RealName"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->RealName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 67
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "FirstName"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 68
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "LastName"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 69
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "AppDisplayPicRaw"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 70
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "GameDisplayPicRaw"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 71
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "AccountTier"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AccountTier:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 72
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "TenureLevel"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TenureLevel:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 73
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "Gamerscore"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 74
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "PreferredColor"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PreferredColor:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 75
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "Watermarks"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Watermarks:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 76
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "XboxOneRep"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->XboxOneRep:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 77
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "Background"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Background:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 78
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "PublicGamerpicType"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PublicGamerpicType:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 79
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "ShowUserAsAvatar"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->ShowUserAsAvatar:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 80
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    const-string v1, "TileTransparency"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TileTransparency:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 62
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->RealName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AccountTier:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TenureLevel:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PreferredColor:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Watermarks:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->XboxOneRep:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Background:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PublicGamerpicType:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->ShowUserAsAvatar:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TileTransparency:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->$VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/model/Profile$SettingId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/model/Profile$SettingId;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->$VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    return-object v0
.end method
