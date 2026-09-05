.class public final enum Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
.super Ljava/lang/Enum;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum LARGE:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum LARGE_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "TINY"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "TINY_3X4"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "TINY_4X3"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v6}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "SMALL_3X4"

    invoke-direct {v0, v1, v7}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "SMALL_4X3"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "MEDIUM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "MEDIUM_3X4"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "MEDIUM_4X3"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "LARGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->LARGE:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "LARGE_3X4"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->LARGE_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    .line 309
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    sget-object v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->LARGE:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->LARGE_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->$VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

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
    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 2
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 314
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 318
    :goto_0
    return-object v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 309
    const-class v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->$VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    return-object v0
.end method
