.class public Lcom/microsoft/bond/RandomProtocolReader;
.super Lcom/microsoft/bond/ProtocolReader;
.source "RandomProtocolReader.java"


# static fields
.field private static final DEFAULT_MAX_CONTAINER_SIZE:I = 0xa

.field private static final DEFAULT_MAX_STRING_LENGTH:I = 0x14


# instance fields
.field private final maxContainerSize:I

.field private final maxStringLength:I

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolReader;-><init>()V

    .line 14
    const/16 v0, 0x14

    iput v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxStringLength:I

    .line 15
    const/16 v0, 0xa

    iput v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxContainerSize:I

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    .line 17
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "seed"    # J

    .prologue
    .line 20
    const/16 v0, 0x14

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/microsoft/bond/RandomProtocolReader;-><init>(JII)V

    .line 21
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 1
    .param p1, "seed"    # J
    .param p3, "maxStringLength"    # I
    .param p4, "maxContainerSize"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/microsoft/bond/ProtocolReader;-><init>()V

    .line 24
    iput p3, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxStringLength:I

    .line 25
    iput p4, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxContainerSize:I

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    .line 27
    return-void
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/ProtocolReader;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/microsoft/bond/RandomProtocolReader;->clone()Lcom/microsoft/bond/ProtocolReader;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z
    .locals 1
    .param p1, "capability"    # Lcom/microsoft/bond/ProtocolCapability;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isProtocolSame(Lcom/microsoft/bond/ProtocolWriter;)Z
    .locals 1
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public readBool()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/microsoft/bond/ProtocolReader$ListTag;

    iget-object v1, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    iget v2, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxContainerSize:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/bond/ProtocolReader$ListTag;-><init>(ILcom/microsoft/bond/BondDataType;)V

    return-object v0
.end method

.method public readContainerEnd()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public readDouble()D
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public readFloat()F
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public readInt16()S
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public readInt32()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt8()B
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7f

    int-to-byte v0, v0

    return v0
.end method

.method public readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/microsoft/bond/ProtocolReader$MapTag;

    iget-object v1, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    iget v2, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxContainerSize:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    sget-object v3, Lcom/microsoft/bond/BondDataType;->BT_UNAVAILABLE:Lcom/microsoft/bond/BondDataType;

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/bond/ProtocolReader$MapTag;-><init>(ILcom/microsoft/bond/BondDataType;Lcom/microsoft/bond/BondDataType;)V

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    iget-object v3, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    iget v4, p0, Lcom/microsoft/bond/RandomProtocolReader;->maxStringLength:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 100
    .local v2, "length":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 103
    iget-object v3, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    const/16 v4, 0x5e

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public readUInt16()S
    .locals 2

    .prologue
    .line 70
    const v0, 0xffff

    iget-object v1, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUInt32()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt8()B
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/microsoft/bond/RandomProtocolReader;->random:Ljava/util/Random;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readWString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/microsoft/bond/RandomProtocolReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(Lcom/microsoft/bond/BondDataType;)V
    .locals 0
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;

    .prologue
    .line 114
    return-void
.end method
