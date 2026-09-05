.class public Lcom/microsoft/bond/BondBlob;
.super Ljava/lang/Object;
.source "BondBlob.java"


# instance fields
.field private final buffer:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    .line 14
    iput v1, p0, Lcom/microsoft/bond/BondBlob;->length:I

    .line 15
    iput v1, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/BondBlob;)V
    .locals 1
    .param p1, "that"    # Lcom/microsoft/bond/BondBlob;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iput-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    .line 34
    iget v0, p1, Lcom/microsoft/bond/BondBlob;->offset:I

    iput v0, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    .line 35
    iget v0, p1, Lcom/microsoft/bond/BondBlob;->length:I

    iput v0, p0, Lcom/microsoft/bond/BondBlob;->length:I

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/io/BondInputStream;I)V
    .locals 3
    .param p1, "stream"    # Lcom/microsoft/bond/io/BondInputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    .line 20
    iput p2, p0, Lcom/microsoft/bond/BondBlob;->length:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    .line 23
    iget-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iget v1, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    iget v2, p0, Lcom/microsoft/bond/BondBlob;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/microsoft/bond/io/BondInputStream;->read([BII)I

    .line 24
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    .line 28
    iput p2, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    .line 29
    iput p3, p0, Lcom/microsoft/bond/BondBlob;->length:I

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Lcom/microsoft/bond/BondBlob;)Z
    .locals 5
    .param p1, "that"    # Lcom/microsoft/bond/BondBlob;

    .prologue
    const/4 v1, 0x0

    .line 51
    iget v2, p0, Lcom/microsoft/bond/BondBlob;->length:I

    iget v3, p1, Lcom/microsoft/bond/BondBlob;->length:I

    if-eq v2, v3, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/microsoft/bond/BondBlob;->length:I

    if-ge v0, v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iget v3, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p1, Lcom/microsoft/bond/BondBlob;->buffer:[B

    iget v4, p1, Lcom/microsoft/bond/BondBlob;->offset:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/microsoft/bond/BondBlob;->buffer:[B

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/microsoft/bond/BondBlob;->offset:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/microsoft/bond/BondBlob;->length:I

    return v0
.end method
