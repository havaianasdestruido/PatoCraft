.class public Lcom/microsoft/bond/io/MemoryBondOutputStream;
.super Lcom/microsoft/bond/io/BondOutputStream;
.source "MemoryBondOutputStream.java"


# static fields
.field private static final DEFAULT_CAPACITY_BYTES:I = 0x400


# instance fields
.field private buffer:[B

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/microsoft/bond/io/MemoryBondOutputStream;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacityBytes"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/microsoft/bond/io/BondOutputStream;-><init>()V

    .line 19
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    .line 21
    return-void
.end method

.method private ensureBufferSizeForExtraBytes(I)V
    .locals 5
    .param p1, "extraBytes"    # I

    .prologue
    const/4 v4, 0x0

    .line 43
    iget-object v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int/2addr v3, p1

    if-lt v2, v3, :cond_0

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v3, v3

    shr-int/lit8 v3, v3, 0x1

    add-int v1, v2, v3

    .line 50
    .local v1, "newSize":I
    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_1

    .line 51
    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int v1, v2, p1

    .line 54
    :cond_1
    new-array v0, v1, [B

    .line 55
    .local v0, "newBuffer":[B
    iget-object v2, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    iget v3, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iput-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    .line 26
    return-void
.end method

.method public getPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(I)I
    .locals 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 83
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot jump to position [%d]. Valid positions are from [%d] to [%d] inclusive."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iput p1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    .line 91
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    return v0
.end method

.method public setPositionRelative(I)I
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/io/MemoryBondOutputStream;->setPosition(I)I

    move-result v0

    return v0
.end method

.method public toBondBlod()Lcom/microsoft/bond/BondBlob;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/microsoft/bond/BondBlob;

    iget-object v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/BondBlob;-><init>([BII)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    new-array v0, v1, [B

    .line 66
    .local v0, "bufferToReturn":[B
    iget-object v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-object v0
.end method

.method public write(B)V
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/microsoft/bond/io/MemoryBondOutputStream;->ensureBufferSizeForExtraBytes(I)V

    .line 31
    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    aput-byte p1, v0, v1

    .line 32
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    .line 33
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 61
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/microsoft/bond/io/MemoryBondOutputStream;->write([BII)V

    .line 62
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 37
    invoke-direct {p0, p3}, Lcom/microsoft/bond/io/MemoryBondOutputStream;->ensureBufferSizeForExtraBytes(I)V

    .line 38
    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->buffer:[B

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondOutputStream;->position:I

    .line 40
    return-void
.end method
