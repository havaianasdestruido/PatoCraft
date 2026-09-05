.class public final Lcom/microsoft/bond/internal/IntegerHelper;
.super Ljava/lang/Object;
.source "IntegerHelper.java"


# static fields
.field public static final MAX_BYTES_VARINT16:I = 0x3

.field public static final MAX_BYTES_VARINT32:I = 0x5

.field public static final MAX_BYTES_VARINT64:I = 0xa

.field public static final MAX_VARINT_SIZE_BYTES:I = 0xa

.field public static final SIZEOF_BYTE:I = 0x1

.field public static final SIZEOF_INT:I = 0x4

.field public static final SIZEOF_LONG:I = 0x8

.field public static final SIZEOF_SHORT:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeVarInt16(Lcom/microsoft/bond/io/BondInputStream;)S
    .locals 2
    .param p0, "stream"    # Lcom/microsoft/bond/io/BondInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static decodeVarInt32(Lcom/microsoft/bond/io/BondInputStream;)I
    .locals 2
    .param p0, "stream"    # Lcom/microsoft/bond/io/BondInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p0}, Lcom/microsoft/bond/internal/IntegerHelper;->decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static decodeVarInt64(Lcom/microsoft/bond/io/BondInputStream;)J
    .locals 6
    .param p0, "stream"    # Lcom/microsoft/bond/io/BondInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const-wide/16 v2, 0x0

    .line 148
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "shift":I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/microsoft/bond/io/BondInputStream;->read()B

    move-result v0

    .line 151
    .local v0, "raw":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 153
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_1

    .line 158
    .end local v0    # "raw":B
    :cond_0
    return-wide v2

    .line 148
    .restart local v0    # "raw":B
    :cond_1
    add-int/lit8 v1, v1, 0x7

    goto :goto_0
.end method

.method public static decodeZigzag16(S)S
    .locals 2
    .param p0, "value"    # S

    .prologue
    .line 178
    const v0, 0xffff

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static decodeZigzag32(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 183
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigzag64(J)J
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 188
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static encodeVarUInt16(S[BI)I
    .locals 3
    .param p0, "src"    # S
    .param p1, "dst"    # [B
    .param p2, "offset"    # I

    .prologue
    const v2, 0xff80

    .line 33
    and-int v1, v2, p0

    if-eqz v1, :cond_0

    .line 34
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 35
    ushr-int/lit8 v1, p0, 0x7

    int-to-short p0, v1

    .line 37
    and-int v1, v2, p0

    if-eqz v1, :cond_1

    .line 38
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 39
    ushr-int/lit8 v1, p0, 0x7

    int-to-short p0, v1

    .line 43
    :cond_0
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    and-int/lit8 v1, p0, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 44
    return v0

    :cond_1
    move p2, v0

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0
.end method

.method public static encodeVarUInt16([BS)I
    .locals 1
    .param p0, "dst"    # [B
    .param p1, "src"    # S

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt16(S[BI)I

    move-result v0

    return v0
.end method

.method public static encodeVarUInt32(I[B)I
    .locals 1
    .param p0, "src"    # I
    .param p1, "dst"    # [B

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt32(I[BI)I

    move-result v0

    return v0
.end method

.method public static encodeVarUInt32(I[BI)I
    .locals 2
    .param p0, "src"    # I
    .param p1, "dst"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 53
    and-int/lit8 v1, p0, -0x80

    if-eqz v1, :cond_0

    .line 54
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 55
    ushr-int/lit8 p0, p0, 0x7

    .line 57
    and-int/lit8 v1, p0, -0x80

    if-eqz v1, :cond_1

    .line 58
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 59
    ushr-int/lit8 p0, p0, 0x7

    .line 61
    and-int/lit8 v1, p0, -0x80

    if-eqz v1, :cond_0

    .line 62
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 63
    ushr-int/lit8 p0, p0, 0x7

    .line 65
    and-int/lit8 v1, p0, -0x80

    if-eqz v1, :cond_1

    .line 66
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 67
    ushr-int/lit8 p0, p0, 0x7

    .line 73
    :cond_0
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    and-int/lit8 v1, p0, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 74
    return v0

    :cond_1
    move p2, v0

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0
.end method

.method public static encodeVarUInt64(J[B)I
    .locals 2
    .param p0, "src"    # J
    .param p2, "dst"    # [B

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/bond/internal/IntegerHelper;->encodeVarUInt64(J[BI)I

    move-result v0

    return v0
.end method

.method public static encodeVarUInt64(J[BI)I
    .locals 6
    .param p0, "src"    # J
    .param p2, "dst"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 83
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 84
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .local v0, "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 85
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    .line 87
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 88
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 89
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    .line 91
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 92
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .restart local v0    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 93
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    .line 95
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 96
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 97
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    .line 99
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 100
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .restart local v0    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 101
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    .line 103
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 104
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 105
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    .line 107
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 108
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .restart local v0    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 109
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    .line 111
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 112
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 113
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    .line 115
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 116
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .restart local v0    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 117
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    move p3, v0

    .line 128
    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    :cond_0
    :goto_0
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .restart local v0    # "offset":I
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 129
    return v0

    :cond_1
    move p3, v0

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    goto :goto_0
.end method

.method public static encodeZigzag16(S)S
    .locals 2
    .param p0, "value"    # S

    .prologue
    .line 163
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0xf

    xor-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static encodeZigzag32(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 168
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigzag64(J)J
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 173
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static getVarUInt16Size(S)I
    .locals 1
    .param p0, "value"    # S

    .prologue
    .line 195
    const v0, 0xff80

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 196
    const v0, 0xc000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x3

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 201
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getVarUInt32Size(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 209
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 210
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x5

    .line 220
    :goto_0
    return v0

    .line 213
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 214
    :cond_1
    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_3

    .line 215
    and-int/lit16 v0, p0, -0x4000

    if-eqz v0, :cond_2

    .line 216
    const/4 v0, 0x3

    goto :goto_0

    .line 218
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 220
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getVarUInt64Size(J)I
    .locals 4
    .param p0, "value"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 228
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    .line 229
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 230
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 231
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 232
    const/16 v0, 0xa

    .line 252
    :goto_0
    return v0

    .line 234
    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    .line 236
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 237
    :cond_2
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    .line 238
    const/4 v0, 0x7

    goto :goto_0

    .line 240
    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    .line 241
    :cond_4
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_6

    .line 242
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_5

    .line 243
    const/4 v0, 0x5

    goto :goto_0

    .line 245
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 246
    :cond_6
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_8

    .line 247
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_7

    .line 248
    const/4 v0, 0x3

    goto :goto_0

    .line 250
    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    .line 252
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readBigEndianInt32([B)I
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    .line 263
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 268
    .local v0, "value":I
    return v0
.end method

.method public static writeBigEndianInt32(I[B)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "writeBuffer"    # [B

    .prologue
    .line 256
    const/4 v0, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 257
    const/4 v0, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 258
    const/4 v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 259
    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 260
    return-void
.end method
