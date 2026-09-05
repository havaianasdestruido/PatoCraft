.class public Lcom/microsoft/bond/Transcoder;
.super Ljava/lang/Object;
.source "Transcoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transcode(Lcom/microsoft/bond/ProtocolWriter;Lcom/microsoft/bond/ProtocolReader;)V
    .locals 3
    .param p0, "dst"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p1, "src"    # Lcom/microsoft/bond/ProtocolReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    sget-object v2, Lcom/microsoft/bond/ProtocolCapability;->CAN_SEEK:Lcom/microsoft/bond/ProtocolCapability;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->hasCapability(Lcom/microsoft/bond/ProtocolCapability;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Lcom/microsoft/bond/ProtocolReader;->isProtocolSame(Lcom/microsoft/bond/ProtocolWriter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->getPosition()I

    move-result v1

    .line 12
    .local v1, "start":I
    sget-object v2, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v2}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->getPosition()I

    move-result v2

    sub-int v0, v2, v1

    .line 14
    .local v0, "length":I
    invoke-virtual {p1, v1}, Lcom/microsoft/bond/ProtocolReader;->setPosition(I)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->readBlob(I)Lcom/microsoft/bond/BondBlob;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/bond/ProtocolWriter;->writeBlob(Lcom/microsoft/bond/BondBlob;)V

    .line 20
    .end local v0    # "length":I
    .end local v1    # "start":I
    :cond_0
    return-void
.end method
