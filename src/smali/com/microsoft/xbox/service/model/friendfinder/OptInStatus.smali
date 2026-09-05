.class public final enum Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;
.super Ljava/lang/Enum;
.source "OptInStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

.field public static final enum DontShow:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

.field public static final enum OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

.field public static final enum OptedOut:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

.field public static final enum ShowPrompt:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

.field public static final enum TokenRenewalRequired:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    const-string v1, "ShowPrompt"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->ShowPrompt:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    .line 5
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    const-string v1, "OptedIn"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    .line 6
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    const-string v1, "OptedOut"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedOut:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    .line 7
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    const-string v1, "TokenRenewalRequired"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->TokenRenewalRequired:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    .line 8
    new-instance v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    const-string v1, "DontShow"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->DontShow:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->ShowPrompt:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedIn:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->OptedOut:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->TokenRenewalRequired:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->DontShow:Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/friendfinder/OptInStatus;

    return-object v0
.end method
