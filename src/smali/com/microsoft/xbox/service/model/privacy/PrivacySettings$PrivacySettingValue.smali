.class public final enum Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
.super Ljava/lang/Enum;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/privacy/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrivacySettingValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum Everyone:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum FriendCategoryShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

.field public static final enum PeopleOnMyList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v1, "NotSet"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    .line 34
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v1, "Everyone"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Everyone:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    .line 35
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v1, "PeopleOnMyList"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->PeopleOnMyList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    .line 36
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v1, "FriendCategoryShareIdentity"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    .line 37
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    const-string v1, "Blocked"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Everyone:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->PeopleOnMyList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Blocked:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    aput-object v1, v0, v6

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPrivacySettingValue(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 42
    .local v0, "status":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    .end local v0    # "status":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    :goto_1
    return-object v0

    .line 41
    .restart local v0    # "status":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "status":Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->NotSet:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    return-object v0
.end method
