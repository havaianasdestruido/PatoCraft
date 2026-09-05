.class public Lcom/microsoft/bond/Bonded;
.super Ljava/lang/Object;
.source "Bonded.java"

# interfaces
.implements Lcom/microsoft/bond/BondSerializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/microsoft/bond/BondSerializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/bond/BondSerializable;"
    }
.end annotation


# instance fields
.field private Data:Lcom/microsoft/bond/ProtocolReader;

.field private Value:Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/BondSerializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    .local p1, "value":Lcom/microsoft/bond/BondSerializable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 0
    .param p1, "data"    # Lcom/microsoft/bond/ProtocolReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Bonded;->read(Lcom/microsoft/bond/ProtocolReader;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/SchemaDef;)V
    .locals 0
    .param p1, "data"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "schema"    # Lcom/microsoft/bond/SchemaDef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/bond/Bonded;->read(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondSerializable;)V

    .line 20
    return-void
.end method


# virtual methods
.method public clone()Lcom/microsoft/bond/BondSerializable;
    .locals 3

    .prologue
    .line 35
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    iget-object v1, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    if-eqz v1, :cond_0

    .line 37
    :try_start_0
    new-instance v1, Lcom/microsoft/bond/Bonded;

    iget-object v2, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    invoke-virtual {v2}, Lcom/microsoft/bond/ProtocolReader;->cloneReader()Lcom/microsoft/bond/ProtocolReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/bond/Bonded;-><init>(Lcom/microsoft/bond/ProtocolReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Lcom/microsoft/bond/Bonded;

    iget-object v2, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    invoke-direct {v1, v2}, Lcom/microsoft/bond/Bonded;-><init>(Lcom/microsoft/bond/BondSerializable;)V

    goto :goto_0
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
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-virtual {p0}, Lcom/microsoft/bond/Bonded;->clone()Lcom/microsoft/bond/BondSerializable;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/microsoft/bond/BondSerializable;)V
    .locals 1
    .param p1, "value"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    invoke-interface {p1, v0}, Lcom/microsoft/bond/BondSerializable;->read(Lcom/microsoft/bond/ProtocolReader;)V

    .line 32
    return-void
.end method

.method public getValue()Lcom/microsoft/bond/BondSerializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    return-object v0
.end method

.method public marshal(Lcom/microsoft/bond/ProtocolWriter;)V
    .locals 0
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-static {p0, p1}, Lcom/microsoft/bond/internal/Marshaler;->marshal(Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/ProtocolWriter;)V

    .line 90
    return-void
.end method

.method public memberwiseCompare(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 93
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    invoke-interface {v0, p1}, Lcom/microsoft/bond/BondSerializable;->memberwiseCompare(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 0
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Bonded;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 55
    return-void
.end method

.method public read(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondSerializable;)V
    .locals 0
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p2, "schema"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Bonded;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    .line 59
    return-void
.end method

.method public readNested(Lcom/microsoft/bond/ProtocolReader;)V
    .locals 1
    .param p1, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    .line 63
    invoke-virtual {p1}, Lcom/microsoft/bond/ProtocolReader;->cloneReader()Lcom/microsoft/bond/ProtocolReader;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    .line 64
    sget-object v0, Lcom/microsoft/bond/BondDataType;->BT_STRUCT:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p1, v0}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 65
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    .line 50
    iput-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    .line 51
    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-static {p1, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V

    .line 69
    return-void
.end method

.method public unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "schema"    # Lcom/microsoft/bond/BondSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    check-cast p2, Lcom/microsoft/bond/SchemaDef;

    .end local p2    # "schema":Lcom/microsoft/bond/BondSerializable;
    invoke-static {p1, p2, p0}, Lcom/microsoft/bond/internal/Marshaler;->unmarshal(Ljava/io/InputStream;Lcom/microsoft/bond/BondSerializable;Lcom/microsoft/bond/BondSerializable;)V

    .line 73
    return-void
.end method

.method public write(Lcom/microsoft/bond/ProtocolWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Data:Lcom/microsoft/bond/ProtocolReader;

    invoke-virtual {v0}, Lcom/microsoft/bond/ProtocolReader;->cloneReader()Lcom/microsoft/bond/ProtocolReader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/bond/Transcoder;->transcode(Lcom/microsoft/bond/ProtocolWriter;Lcom/microsoft/bond/ProtocolReader;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/microsoft/bond/Bonded;->Value:Lcom/microsoft/bond/BondSerializable;

    invoke-interface {v0, p1}, Lcom/microsoft/bond/BondSerializable;->write(Lcom/microsoft/bond/ProtocolWriter;)V

    goto :goto_0
.end method

.method public writeNested(Lcom/microsoft/bond/ProtocolWriter;Z)V
    .locals 0
    .param p1, "writer"    # Lcom/microsoft/bond/ProtocolWriter;
    .param p2, "isBase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/microsoft/bond/Bonded;, "Lcom/microsoft/bond/Bonded<TT;>;"
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Bonded;->write(Lcom/microsoft/bond/ProtocolWriter;)V

    .line 86
    return-void
.end method
