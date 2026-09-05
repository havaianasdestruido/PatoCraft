.class public Lcom/microsoft/bond/internal/CompactBinaryV2Reader;
.super Lcom/microsoft/bond/CompactBinaryReader;
.source "CompactBinaryV2Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/internal/CompactBinaryV2Reader$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/microsoft/bond/io/BondInputStream;)V
    .locals 1
    .param p1, "stream"    # Lcom/microsoft/bond/io/BondInputStream;

    .prologue
    .line 13
    sget-object v0, Lcom/microsoft/bond/ProtocolVersion;->TWO:Lcom/microsoft/bond/ProtocolVersion;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/bond/CompactBinaryReader;-><init>(Lcom/microsoft/bond/ProtocolVersion;Lcom/microsoft/bond/io/BondInputStream;)V

    .line 14
    return-void
.end method


# virtual methods
.method public readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;->readUInt8()B

    move-result v1

    .line 26
    .local v1, "rawValue":B
    and-int/lit8 v3, v1, 0x1f

    invoke-static {v3}, Lcom/microsoft/bond/BondDataType;->fromValue(I)Lcom/microsoft/bond/BondDataType;

    move-result-object v0

    .line 27
    .local v0, "elementType":Lcom/microsoft/bond/BondDataType;
    and-int/lit16 v3, v1, 0xe0

    if-eqz v3, :cond_0

    .line 29
    new-instance v3, Lcom/microsoft/bond/ProtocolReader$ListTag;

    shr-int/lit8 v4, v1, 0x5

    int-to-byte v4, v4

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4, v0}, Lcom/microsoft/bond/ProtocolReader$ListTag;-><init>(ILcom/microsoft/bond/BondDataType;)V

    .line 32
    :goto_0
    return-object v3

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;->readUInt32()I

    move-result v2

    .line 32
    .local v2, "size":I
    new-instance v3, Lcom/microsoft/bond/ProtocolReader$ListTag;

    invoke-direct {v3, v2, v0}, Lcom/microsoft/bond/ProtocolReader$ListTag;-><init>(ILcom/microsoft/bond/BondDataType;)V

    goto :goto_0
.end method

.method public readStructBegin(Z)V
    .locals 0
    .param p1, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;->readUInt32()I

    .line 21
    :cond_0
    return-void
.end method

.method public skip(Lcom/microsoft/bond/BondDataType;)V
    .locals 3
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    sget-object v1, Lcom/microsoft/bond/internal/CompactBinaryV2Reader$1;->$SwitchMap$com$microsoft$bond$BondDataType:[I

    invoke-virtual {p1}, Lcom/microsoft/bond/BondDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 46
    invoke-super {p0, p1}, Lcom/microsoft/bond/CompactBinaryReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 49
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;->readUInt32()I

    move-result v0

    .line 42
    .local v0, "length":I
    iget-object v1, p0, Lcom/microsoft/bond/internal/CompactBinaryV2Reader;->stream:Lcom/microsoft/bond/io/BondInputStream;

    invoke-virtual {v1, v0}, Lcom/microsoft/bond/io/BondInputStream;->setPositionRelative(I)I

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
