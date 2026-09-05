.class public Lcom/microsoft/bond/internal/SkipHelper;
.super Ljava/lang/Object;
.source "SkipHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/bond/internal/SkipHelper$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static skip(Lcom/microsoft/bond/ProtocolReader;Lcom/microsoft/bond/BondDataType;)V
    .locals 6
    .param p0, "reader"    # Lcom/microsoft/bond/ProtocolReader;
    .param p1, "type"    # Lcom/microsoft/bond/BondDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    sget-object v3, Lcom/microsoft/bond/internal/SkipHelper$1;->$SwitchMap$com$microsoft$bond$BondDataType:[I

    invoke-virtual {p1}, Lcom/microsoft/bond/BondDataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 101
    new-instance v3, Lcom/microsoft/bond/BondException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type to skip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/microsoft/bond/BondDataType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/microsoft/bond/BondException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readBool()Z

    .line 103
    :goto_0
    return-void

    .line 21
    :pswitch_1
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt8()B

    goto :goto_0

    .line 25
    :pswitch_2
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt16()S

    goto :goto_0

    .line 29
    :pswitch_3
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt32()I

    goto :goto_0

    .line 33
    :pswitch_4
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readUInt64()J

    goto :goto_0

    .line 37
    :pswitch_5
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readFloat()F

    goto :goto_0

    .line 41
    :pswitch_6
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readDouble()D

    goto :goto_0

    .line 45
    :pswitch_7
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readString()Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_8
    new-instance v0, Lcom/microsoft/bond/Void;

    invoke-direct {v0}, Lcom/microsoft/bond/Void;-><init>()V

    .line 52
    .local v0, "dummy":Lcom/microsoft/bond/Void;
    invoke-virtual {v0, p0}, Lcom/microsoft/bond/Void;->readNested(Lcom/microsoft/bond/ProtocolReader;)V

    goto :goto_0

    .line 59
    .end local v0    # "dummy":Lcom/microsoft/bond/Void;
    :pswitch_9
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerBegin()Lcom/microsoft/bond/ProtocolReader$ListTag;

    move-result-object v2

    .line 60
    .local v2, "tag":Lcom/microsoft/bond/ProtocolReader$ListTag;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, v2, Lcom/microsoft/bond/ProtocolReader$ListTag;->size:I

    if-ge v1, v3, :cond_0

    .line 62
    iget-object v3, v2, Lcom/microsoft/bond/ProtocolReader$ListTag;->type:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    .end local v2    # "tag":Lcom/microsoft/bond/ProtocolReader$ListTag;
    :pswitch_a
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readMapContainerBegin()Lcom/microsoft/bond/ProtocolReader$MapTag;

    move-result-object v2

    .line 71
    .local v2, "tag":Lcom/microsoft/bond/ProtocolReader$MapTag;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v3, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->size:I

    if-ge v1, v3, :cond_1

    .line 73
    iget-object v3, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->keyType:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 74
    iget-object v3, v2, Lcom/microsoft/bond/ProtocolReader$MapTag;->valueType:Lcom/microsoft/bond/BondDataType;

    invoke-virtual {p0, v3}, Lcom/microsoft/bond/ProtocolReader;->skip(Lcom/microsoft/bond/BondDataType;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readContainerEnd()V

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    .end local v2    # "tag":Lcom/microsoft/bond/ProtocolReader$MapTag;
    :pswitch_b
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt8()B

    goto :goto_0

    .line 85
    :pswitch_c
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt16()S

    goto :goto_0

    .line 89
    :pswitch_d
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt32()I

    goto :goto_0

    .line 93
    :pswitch_e
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readInt64()J

    goto :goto_0

    .line 97
    :pswitch_f
    invoke-virtual {p0}, Lcom/microsoft/bond/ProtocolReader;->readWString()Ljava/lang/String;

    goto :goto_0

    .line 14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
