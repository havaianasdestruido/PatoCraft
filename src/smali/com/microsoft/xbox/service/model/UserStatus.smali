.class public final enum Lcom/microsoft/xbox/service/model/UserStatus;
.super Ljava/lang/Enum;
.source "UserStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/service/model/UserStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/UserStatus;

.field public static final enum Offline:Lcom/microsoft/xbox/service/model/UserStatus;

.field public static final enum Online:Lcom/microsoft/xbox/service/model/UserStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/microsoft/xbox/service/model/UserStatus;

    const-string v1, "Offline"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/UserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->Offline:Lcom/microsoft/xbox/service/model/UserStatus;

    new-instance v0, Lcom/microsoft/xbox/service/model/UserStatus;

    const-string v1, "Online"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/service/model/UserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->Online:Lcom/microsoft/xbox/service/model/UserStatus;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/xbox/service/model/UserStatus;

    sget-object v1, Lcom/microsoft/xbox/service/model/UserStatus;->Offline:Lcom/microsoft/xbox/service/model/UserStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/service/model/UserStatus;->Online:Lcom/microsoft/xbox/service/model/UserStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/UserStatus;

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

.method public static getStatusFromString(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/UserStatus;
    .locals 1
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 9
    sget-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->Online:Lcom/microsoft/xbox/service/model/UserStatus;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/UserStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->stringsEqualCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->Online:Lcom/microsoft/xbox/service/model/UserStatus;

    .line 13
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->Offline:Lcom/microsoft/xbox/service/model/UserStatus;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/UserStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/microsoft/xbox/service/model/UserStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/UserStatus;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/UserStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/UserStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/UserStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/UserStatus;

    return-object v0
.end method
