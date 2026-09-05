.class public final enum Lcom/microsoft/xbox/idp/model/Privacy$Value;
.super Ljava/lang/Enum;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Value;

.field public static final enum Blocked:Lcom/microsoft/xbox/idp/model/Privacy$Value;

.field public static final enum Everyone:Lcom/microsoft/xbox/idp/model/Privacy$Value;

.field public static final enum FriendCategoryShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Value;

.field public static final enum NotSet:Lcom/microsoft/xbox/idp/model/Privacy$Value;

.field public static final enum PeopleOnMyList:Lcom/microsoft/xbox/idp/model/Privacy$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    const-string v1, "NotSet"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;->NotSet:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    .line 38
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    const-string v1, "Everyone"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/idp/model/Privacy$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;->Everyone:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    .line 39
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    const-string v1, "PeopleOnMyList"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/idp/model/Privacy$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;->PeopleOnMyList:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    .line 40
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    const-string v1, "FriendCategoryShareIdentity"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/idp/model/Privacy$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    .line 41
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    const-string v1, "Blocked"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/idp/model/Privacy$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;->Blocked:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/microsoft/xbox/idp/model/Privacy$Value;

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Value;->NotSet:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Value;->Everyone:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Value;->PeopleOnMyList:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Value;->FriendCategoryShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Value;->Blocked:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    aput-object v1, v0, v6

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Value;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/model/Privacy$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/model/Privacy$Value;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Value;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/model/Privacy$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/model/Privacy$Value;

    return-object v0
.end method
