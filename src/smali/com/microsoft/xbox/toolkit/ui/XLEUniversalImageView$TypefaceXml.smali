.class public final enum Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
.super Ljava/lang/Enum;
.source "XLEUniversalImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypefaceXml"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

.field public static final enum MONOSPACE:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

.field public static final enum NORMAL:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

.field public static final enum SANS:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

.field public static final enum SERIF:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 394
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->NORMAL:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    const-string v1, "SANS"

    invoke-direct {v0, v1, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->SANS:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    const-string v1, "SERIF"

    invoke-direct {v0, v1, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->SERIF:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    const-string v1, "MONOSPACE"

    invoke-direct {v0, v1, v5}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->MONOSPACE:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    .line 393
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->NORMAL:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->SANS:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    aput-object v1, v0, v3

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->SERIF:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    aput-object v1, v0, v4

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->MONOSPACE:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    aput-object v1, v0, v5

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->$VALUES:[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

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
    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIndex(I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    .locals 2
    .param p0, "typefaceIndex"    # I

    .prologue
    .line 397
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->values()[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    move-result-object v0

    .line 398
    .local v0, "vals":[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object v1, v0, p0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static typefaceFromIndex(I)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "typefaceIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->fromIndex(I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    move-result-object v0

    .line 403
    .local v0, "tfx":Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    if-eqz v0, :cond_0

    .line 404
    sget-object v2, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$2;->$SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml:[I

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 408
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 410
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 412
    :pswitch_3
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    const-class v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    return-object v0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->$VALUES:[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    return-object v0
.end method
