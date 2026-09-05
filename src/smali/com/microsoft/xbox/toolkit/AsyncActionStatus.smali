.class public final enum Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
.super Ljava/lang/Enum;
.source "AsyncActionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field private static final MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v1, "NO_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v1, "NO_OP_SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v1, "NO_OP_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->$VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v7

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

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

.method public static getIsFail(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Z
    .locals 1
    .param p0, "status"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 7
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs merge(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 6
    .param p0, "x"    # Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .param p1, "y"    # [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .prologue
    .line 31
    move-object v0, p0

    .line 32
    .local v0, "left":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 33
    .local v1, "right":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    sget-object v4, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v5

    aget-object v0, v4, v5

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "right":Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->$VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method
