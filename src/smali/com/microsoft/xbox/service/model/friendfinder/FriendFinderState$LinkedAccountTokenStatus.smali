.class public final enum Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
.super Ljava/lang/Enum;
.source "FriendFinderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkedAccountTokenStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

.field public static final enum OK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

.field public static final enum TokenRenewalRequired:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

.field public static final enum Unset:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    .line 25
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const-string v1, "Unset"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->Unset:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    .line 26
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->OK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    .line 27
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    const-string v1, "TokenRenewalRequired"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->TokenRenewalRequired:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->Unset:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->OK:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->TokenRenewalRequired:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getTokenStatus(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    .locals 5
    .param p0, "tokenStatusString"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->values()[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 30
    .local v0, "status":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    return-object v0

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "status":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountTokenStatus;

    return-object v0
.end method
