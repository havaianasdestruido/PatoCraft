.class public final Lcom/microsoft/bond/internal/DecimalHelper;
.super Ljava/lang/Object;
.source "DecimalHelper.java"


# static fields
.field public static final SIZEOF_DOUBLE:I = 0x8

.field public static final SIZEOF_FLOAT:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static decodeDouble([B)D
    .locals 10
    .param p0, "buffer"    # [B

    .prologue
    const-wide/16 v8, 0xff

    .line 24
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long v0, v2, v4

    .line 34
    .local v0, "bits":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static decodeFloat([B)F
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    .line 13
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 19
    .local v0, "bits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static encodeDouble(D[B)V
    .locals 6
    .param p0, "value"    # D
    .param p2, "writeBuffer"    # [B

    .prologue
    .line 47
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 49
    .local v0, "valueBits":J
    const/4 v2, 0x0

    long-to-int v3, v0

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 50
    const/4 v2, 0x1

    const/16 v3, 0x8

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 51
    const/4 v2, 0x2

    const/16 v3, 0x10

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 52
    const/4 v2, 0x3

    const/16 v3, 0x18

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 53
    const/4 v2, 0x4

    const/16 v3, 0x20

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 54
    const/4 v2, 0x5

    const/16 v3, 0x28

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 55
    const/4 v2, 0x6

    const/16 v3, 0x30

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 56
    const/4 v2, 0x7

    const/16 v3, 0x38

    shr-long v4, v0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 57
    return-void
.end method

.method public static encodeFloat(F[B)V
    .locals 3
    .param p0, "value"    # F
    .param p1, "writeBuffer"    # [B

    .prologue
    .line 38
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 40
    .local v0, "valueBits":I
    const/4 v1, 0x0

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    .line 41
    const/4 v1, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 42
    const/4 v1, 0x2

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 43
    const/4 v1, 0x3

    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 44
    return-void
.end method
