.class public interface abstract Lcom/microsoft/bond/BondSerializable;
.super Ljava/lang/Object;
.source "BondSerializable.java"


# virtual methods
.method public abstract clone()Lcom/microsoft/bond/BondSerializable;
.end method

.method public abstract marshal(Lcom/microsoft/bond/ProtocolWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract memberwiseCompare(Ljava/lang/Object;)Z
.end method

.method public abstract read(Lcom/microsoft/bond/ProtocolReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondSerializable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readNested(Lcom/microsoft/bond/ProtocolReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract unmarshal(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Lcom/microsoft/bond/ProtocolWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
