.class public final enum Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;
.super Ljava/lang/Enum;
.source "FriendFinderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/FriendFinderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

.field public static final enum LARGE:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

.field public static final enum MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

.field public static final enum SMALL:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->UNKNOWN:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    .line 16
    new-instance v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->SMALL:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    .line 18
    new-instance v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->LARGE:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->UNKNOWN:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->SMALL:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->MEDIUM:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->LARGE:Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->$VALUES:[Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->$VALUES:[Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/app/FriendFinderSettings$IconImageSize;

    return-object v0
.end method
