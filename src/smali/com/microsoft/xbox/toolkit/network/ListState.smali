.class public final enum Lcom/microsoft/xbox/toolkit/network/ListState;
.super Ljava/lang/Enum;
.source "ListState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/network/ListState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/network/ListState;

.field public static final enum ErrorState:Lcom/microsoft/xbox/toolkit/network/ListState;

.field public static final enum LoadingState:Lcom/microsoft/xbox/toolkit/network/ListState;

.field public static final enum NoContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

.field public static final enum ValidContentState:Lcom/microsoft/xbox/toolkit/network/ListState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/ListState;

    const-string v1, "ValidContentState"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/network/ListState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/ListState;->ValidContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/ListState;

    const-string v1, "ErrorState"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/network/ListState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/ListState;->ErrorState:Lcom/microsoft/xbox/toolkit/network/ListState;

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/ListState;

    const-string v1, "NoContentState"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/network/ListState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/ListState;->NoContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/ListState;

    const-string v1, "LoadingState"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/network/ListState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/ListState;->LoadingState:Lcom/microsoft/xbox/toolkit/network/ListState;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/network/ListState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->ValidContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->ErrorState:Lcom/microsoft/xbox/toolkit/network/ListState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->NoContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->LoadingState:Lcom/microsoft/xbox/toolkit/network/ListState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/ListState;->$VALUES:[Lcom/microsoft/xbox/toolkit/network/ListState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/network/ListState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/xbox/toolkit/network/ListState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/network/ListState;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/network/ListState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/ListState;->$VALUES:[Lcom/microsoft/xbox/toolkit/network/ListState;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/network/ListState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/network/ListState;

    return-object v0
.end method
