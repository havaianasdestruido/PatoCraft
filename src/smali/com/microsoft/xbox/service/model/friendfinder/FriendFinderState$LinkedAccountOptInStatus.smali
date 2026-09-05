.class public final enum Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;
.super Ljava/lang/Enum;
.source "FriendFinderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkedAccountOptInStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

.field public static final enum Excluded:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

.field public static final enum NotShown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

.field public static final enum OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

.field public static final enum OptedOut:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

.field public static final enum ShowPrompt:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

.field public static final enum Unset:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    .line 7
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    const-string v1, "Unset"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->Unset:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    .line 8
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    const-string v1, "Excluded"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->Excluded:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    .line 9
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    const-string v1, "NotShown"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->NotShown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    .line 10
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    const-string v1, "ShowPrompt"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->ShowPrompt:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    .line 11
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    const-string v1, "OptedIn"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    const-string v1, "OptedOut"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->OptedOut:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->Unknown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->Unset:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->Excluded:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->NotShown:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->ShowPrompt:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->OptedOut:Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getOptedInStatus(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;
    .locals 5
    .param p0, "optInStatusString"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->values()[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 15
    .local v0, "status":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    return-object v0

    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    .end local v0    # "status":Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/friendfinder/FriendFinderState$LinkedAccountOptInStatus;

    return-object v0
.end method
