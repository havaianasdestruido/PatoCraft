.class public Lcom/microsoft/bond/io/GenericBondInputStream;
.super Lcom/microsoft/bond/io/BondInputStream;
.source "GenericBondInputStream.java"


# instance fields
.field private final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/microsoft/bond/io/BondInputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/microsoft/bond/io/GenericBondInputStream;->stream:Ljava/io/InputStream;

    .line 15
    return-void
.end method


# virtual methods
.method public clone(Z)Lcom/microsoft/bond/io/BondInputStream;
    .locals 1
    .param p1, "asReadonlyStream"    # Z

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/microsoft/bond/io/GenericBondInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 19
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCloneable()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public read()B
    .locals 2

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/bond/io/GenericBondInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-byte v1, v1

    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/microsoft/bond/BondException;

    invoke-direct {v1, v0}, Lcom/microsoft/bond/BondException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/bond/io/GenericBondInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/microsoft/bond/BondException;

    invoke-direct {v1, v0}, Lcom/microsoft/bond/BondException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public readBlob(I)Lcom/microsoft/bond/BondBlob;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPositionRelative(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
