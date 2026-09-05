.class public Lcom/microsoft/onlineid/sts/SharedKeyGenerator;
.super Ljava/lang/Object;
.source "SharedKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
    }
.end annotation


# static fields
.field static final NonceLengthBytes:I = 0x20


# instance fields
.field private final _sessionKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "sessionKey"    # [B

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->_sessionKey:[B

    .line 35
    return-void
.end method

.method static deriveSP800108HmacSHA256Key(I[BLjava/lang/String;[B)[B
    .locals 9
    .param p0, "keySizeBytes"    # I
    .param p1, "secret"    # [B
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "context"    # [B

    .prologue
    const/4 v8, 0x0

    .line 124
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 125
    .local v2, "derivedKey":Ljava/nio/ByteBuffer;
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 126
    .local v4, "integerByteBuffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "HmacSHA256"

    invoke-direct {v6, p1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .local v6, "key":Ljava/security/Key;
    invoke-static {v6}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacSha256Digester(Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 129
    .local v3, "hmac":Ljavax/crypto/Mac;
    const/4 v1, 0x1

    .local v1, "counter":I
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    if-ge v7, p0, :cond_1

    .line 131
    invoke-virtual {v3}, Ljavax/crypto/Mac;->reset()V

    .line 134
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 137
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 140
    sget-object v7, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljavax/crypto/Mac;->update([B)V

    .line 143
    invoke-virtual {v3, v8}, Ljavax/crypto/Mac;->update(B)V

    .line 146
    invoke-virtual {v3, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 149
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 150
    mul-int/lit8 v7, p0, 0x8

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    .line 156
    .local v5, "iterationHash":[B
    array-length v0, v5

    .line 157
    .local v0, "bytesToAdd":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v0, v7, :cond_0

    .line 160
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 163
    :cond_0
    invoke-virtual {v2, v5, v8, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "bytesToAdd":I
    .end local v5    # "iterationHash":[B
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public generateKey(Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;[B)[B
    .locals 3
    .param p1, "purpose"    # Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;
    .param p2, "nonce"    # [B

    .prologue
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->getKeyLengthBytes()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->_sessionKey:[B

    .line 102
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v0, v1, v2, p2}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->deriveSP800108HmacSHA256Key(I[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
