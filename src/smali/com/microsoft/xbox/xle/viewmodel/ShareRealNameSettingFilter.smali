.class public final enum Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
.super Ljava/lang/Enum;
.source "ShareRealNameSettingFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum Everyone:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum FriendCategoryShareIdentity:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

.field public static final enum PeopleOnMyList:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "Blocked"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "Everyone"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Everyone:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "PeopleOnMyList"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->PeopleOnMyList:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    const-string v1, "FriendCategoryShareIdentity"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Blocked:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->Everyone:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->PeopleOnMyList:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->$VALUES:[Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/viewmodel/ShareRealNameSettingFilter;

    return-object v0
.end method
