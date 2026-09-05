.class public Lcom/microsoft/bond/io/MemoryBondInputStream;
.super Lcom/microsoft/bond/io/BondInputStream;
.source "MemoryBondInputStream.java"


# instance fields
.field private final buffer:[B

.field private final bufferLength:I

.field private final bufferOffset:I

.field private readPosition:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 18
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/bond/io/MemoryBondInputStream;-><init>([BII)V

    .line 19
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/microsoft/bond/io/BondInputStream;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->buffer:[B

    .line 23
    iput p2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferOffset:I

    .line 24
    iput p3, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferLength:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    .line 26
    return-void
.end method

.method private validateNewPosition(I)V
    .locals 5
    .param p1, "newPosition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 47
    if-gez p1, :cond_0

    .line 48
    new-instance v0, Lcom/microsoft/bond/BondException;

    const-string v1, "Invalid stream position [%s]."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/bond/BondException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferLength:I

    if-le p1, v0, :cond_1

    .line 51
    new-instance v0, Lcom/microsoft/bond/BondException;

    const-string v1, "Position [%s] is past the end of the buffer."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/bond/BondException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    return-void
.end method

.method private validateRead(I)V
    .locals 6
    .param p1, "bytesToBeRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 72
    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int v0, v1, p1

    .line 73
    .local v0, "newPosition":I
    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferLength:I

    if-le v0, v1, :cond_0

    .line 74
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF reached. Trying to read [%d] bytes"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public clone(Z)Lcom/microsoft/bond/io/BondInputStream;
    .locals 4
    .param p1, "asReadonlyStream"    # Z

    .prologue
    .line 95
    new-instance v0, Lcom/microsoft/bond/io/MemoryBondInputStream;

    iget-object v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->buffer:[B

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferOffset:I

    iget v3, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferLength:I

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/io/MemoryBondInputStream;-><init>([BII)V

    .line 97
    .local v0, "newStream":Lcom/microsoft/bond/io/MemoryBondInputStream;
    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    iput v1, v0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    .line 98
    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return v0
.end method

.method public isCloneable()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public read()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/microsoft/bond/io/MemoryBondInputStream;->validateRead(I)V

    .line 67
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    .line 68
    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->buffer:[B

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferOffset:I

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p3}, Lcom/microsoft/bond/io/MemoryBondInputStream;->validateRead(I)V

    .line 82
    iget-object v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->buffer:[B

    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->bufferOffset:I

    iget v2, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    .line 85
    return p3
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/microsoft/bond/BondBlob;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/bond/BondBlob;-><init>(Lcom/microsoft/bond/io/BondInputStream;I)V

    return-object v0
.end method

.method public setPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/microsoft/bond/io/MemoryBondInputStream;->validateNewPosition(I)V

    .line 42
    iput p1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    .line 43
    iget v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return v0
.end method

.method public setPositionRelative(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 58
    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    add-int v0, v1, p1

    .line 59
    .local v0, "newPosition":I
    invoke-direct {p0, v0}, Lcom/microsoft/bond/io/MemoryBondInputStream;->validateNewPosition(I)V

    .line 60
    iput v0, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    .line 61
    iget v1, p0, Lcom/microsoft/bond/io/MemoryBondInputStream;->readPosition:I

    return v1
.end method
