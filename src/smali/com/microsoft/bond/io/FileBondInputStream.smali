.class public Lcom/microsoft/bond/io/FileBondInputStream;
.super Lcom/microsoft/bond/io/BondInputStream;
.source "FileBondInputStream.java"


# instance fields
.field private final file:Ljava/io/File;

.field private fileLength:I

.field private position:I

.field private stream:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/microsoft/bond/io/BondInputStream;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->file:Ljava/io/File;

    .line 22
    invoke-direct {p0}, Lcom/microsoft/bond/io/FileBondInputStream;->resetStream()V

    .line 23
    return-void
.end method

.method private resetStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->fileLength:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    .line 58
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    .line 59
    return-void
.end method


# virtual methods
.method public clone(Z)Lcom/microsoft/bond/io/BondInputStream;
    .locals 2
    .param p1, "asReadonlyStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/microsoft/bond/io/FileBondInputStream;

    iget-object v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/microsoft/bond/io/FileBondInputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v0, "newStream":Lcom/microsoft/bond/io/FileBondInputStream;
    iget v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    invoke-virtual {v0, v1}, Lcom/microsoft/bond/io/FileBondInputStream;->setPosition(I)I

    .line 97
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 27
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    return v0
.end method

.method public isCloneable()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public read()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    .line 69
    iget-object v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "readBytes":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 84
    :cond_0
    iget v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    return v0

    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    throw v1
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
    .locals 4
    .param p1, "newPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->fileLength:I

    if-le p1, v1, :cond_1

    .line 39
    :cond_0
    new-instance v1, Lcom/microsoft/bond/BondException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/bond/BondException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    .local v0, "skipBytes":I
    iget v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    if-lt p1, v1, :cond_2

    .line 44
    iget v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    sub-int v0, p1, v1

    .line 49
    :goto_0
    iput p1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    .line 50
    iget-object v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->stream:Ljava/io/FileInputStream;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    .line 52
    iget v1, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    return v1

    .line 46
    :cond_2
    move v0, p1

    .line 47
    invoke-direct {p0}, Lcom/microsoft/bond/io/FileBondInputStream;->resetStream()V

    goto :goto_0
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
    .line 62
    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/microsoft/bond/io/FileBondInputStream;->setPosition(I)I

    .line 63
    iget v0, p0, Lcom/microsoft/bond/io/FileBondInputStream;->position:I

    return v0
.end method
