.class public final enum Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
.super Ljava/lang/Enum;
.source "ErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/ui/ErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

.field public static final enum OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;


# instance fields
.field public final errorFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/idp/compat/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final leftButtonTextId:I

.field public final type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    const-string v1, "BAN"

    sget-object v3, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v4, Lcom/microsoft/xbox/idp/ui/BanErrorFragment;

    sget v5, Lcom/microsoft/xbox/idp/R$string;->xbid_more_info:I

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .line 120
    new-instance v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    const-string v4, "CREATION"

    sget-object v6, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v7, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;

    sget v8, Lcom/microsoft/xbox/idp/R$string;->xbid_try_again:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .line 121
    new-instance v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    const-string v4, "OFFLINE"

    sget-object v6, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v7, Lcom/microsoft/xbox/idp/ui/OfflineErrorFragment;

    sget v8, Lcom/microsoft/xbox/idp/R$string;->xbid_try_again:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .line 122
    new-instance v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    const-string v4, "CATCHALL"

    sget-object v6, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-class v7, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;

    sget v8, Lcom/microsoft/xbox/idp/R$string;->xbid_try_again:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;-><init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    aput-object v1, v0, v9

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    aput-object v1, v0, v10

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    aput-object v1, v0, v11

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->$VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/microsoft/xbox/idp/interop/Interop$ErrorType;Ljava/lang/Class;I)V
    .locals 0
    .param p3, "type"    # Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
    .param p5, "leftButtonId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/xbox/idp/compat/BaseFragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p4, "errorFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/xbox/idp/compat/BaseFragment;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 130
    iput-object p4, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->errorFragmentClass:Ljava/lang/Class;

    .line 131
    iput p5, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->leftButtonTextId:I

    .line 132
    return-void
.end method

.method public static fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 135
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 136
    .local v0, "t":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    iget-object v4, v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-virtual {v4}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 140
    .end local v0    # "t":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    :goto_1
    return-object v0

    .line 135
    .restart local v0    # "t":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "t":Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->$VALUES:[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    return-object v0
.end method
