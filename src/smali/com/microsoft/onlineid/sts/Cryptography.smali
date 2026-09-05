.class public Lcom/microsoft/onlineid/sts/Cryptography;
.super Ljava/lang/Object;
.source "Cryptography.java"


# static fields
.field public static final AesAlgorithm:Ljava/lang/String; = "AES"

.field public static final AesCbcPkcs5PaddingInitializationVectorByteCount:I = 0x10

.field public static final AesCbcPkcs5PaddingTransformation:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final ByteToBase32Lookup:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

.field public static final HmacSha1Algorithm:Ljava/lang/String; = "HmacSHA1"

.field public static final HmacSha256Algorithm:Ljava/lang/String; = "HmacSHA256"

.field public static final Sha256Algorithm:Ljava/lang/String; = "SHA256"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptWithAesCbcPcs5PaddingCipher([B[B)[B
    .locals 5
    .param p0, "encryptedData"    # [B
    .param p1, "encryptionKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    .line 147
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 148
    .local v2, "key":Ljava/security/Key;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 150
    .local v1, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    .line 151
    invoke-static {v3, v2, v1}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedDecryptionCipher(Ljava/lang/String;Ljava/security/Key;Ljavax/crypto/spec/IvParameterSpec;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 153
    .local v0, "cipher":Ljavax/crypto/Cipher;
    array-length v3, p0

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {v0, p0, v4, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    return-object v3
.end method

.method public static encodeBase32([B)Ljava/lang/String;
    .locals 12
    .param p0, "input"    # [B

    .prologue
    .line 217
    if-eqz p0, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x8

    div-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v4, "output":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_2

    .line 226
    const/16 v5, 0x8

    new-array v1, v5, [B

    .line 227
    .local v1, "buffer":[B
    array-length v5, p0

    sub-int/2addr v5, v2

    const/4 v8, 0x5

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 228
    .local v3, "numBytes":I
    array-length v5, v1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {p0, v2, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 231
    .local v6, "val":J
    add-int/lit8 v5, v3, 0x1

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v0, v5, -0x5

    .local v0, "bitOffset":I
    :goto_2
    const/4 v5, 0x3

    if-le v0, v5, :cond_1

    .line 233
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    ushr-long v8, v6, v0

    const-wide/16 v10, 0x1f

    and-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 217
    .end local v0    # "bitOffset":I
    .end local v1    # "buffer":[B
    .end local v2    # "i":I
    .end local v3    # "numBytes":I
    .end local v4    # "output":Ljava/lang/StringBuilder;
    .end local v6    # "val":J
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 222
    .restart local v0    # "bitOffset":I
    .restart local v1    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v3    # "numBytes":I
    .restart local v4    # "output":Ljava/lang/StringBuilder;
    .restart local v6    # "val":J
    :cond_1
    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    .line 237
    .end local v0    # "bitOffset":I
    .end local v1    # "buffer":[B
    .end local v3    # "numBytes":I
    .end local v6    # "val":J
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getInitializedDecryptionCipher(Ljava/lang/String;Ljava/security/Key;Ljavax/crypto/spec/IvParameterSpec;)Ljavax/crypto/Cipher;
    .locals 3
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "iv"    # Ljavax/crypto/spec/IvParameterSpec;

    .prologue
    .line 173
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 174
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 175
    return-object v0

    .line 177
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 182
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 187
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 193
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 195
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 201
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getInitializedHmacDigester(Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 3
    .param p0, "derivedKey"    # Ljava/security/Key;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 112
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    return-object v1

    .line 114
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 122
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInitializedHmacSha1Digester(Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "derivedKey"    # Ljava/security/Key;

    .prologue
    .line 82
    const-string v0, "HmacSHA1"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacDigester(Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getInitializedHmacSha256Digester(Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "derivedKey"    # Ljava/security/Key;

    .prologue
    .line 94
    const-string v0, "HmacSHA256"

    invoke-static {p0, v0}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacDigester(Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getSha256Digester()Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 45
    :try_start_0
    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getShaDigester()Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 64
    :try_start_0
    const-string v1, "SHA"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
