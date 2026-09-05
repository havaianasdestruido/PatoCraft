.class public Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;
.super Ljava/lang/Object;
.source "OneTimeCredentialSigner.java"


# static fields
.field private static final ApplicationIDLabel:Ljava/lang/String; = "appid"

.field private static final BinaryVersionLabel:Ljava/lang/String; = "bver"

.field private static final CurrentTimeLabel:Ljava/lang/String; = "ct"

.field private static final DATokenLabel:Ljava/lang/String; = "da"

.field private static final HashAlgorithmLabel:Ljava/lang/String; = "hashalg"

.field private static final HashAlgorithmValue:Ljava/lang/String; = "SHA256"

.field private static final HashLabel:Ljava/lang/String; = "hash"

.field private static final HmacSha256Algorithm:Ljava/lang/String; = "HmacSHA256"

.field private static final NonceLabel:Ljava/lang/String; = "nonce"


# instance fields
.field private final _currentServerTime:Ljava/util/Date;

.field private final _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private final _secureRandom:Ljava/security/SecureRandom;

.field private final _sharedKeyGenerator:Lcom/microsoft/onlineid/sts/SharedKeyGenerator;


# direct methods
.method constructor <init>(Lcom/microsoft/onlineid/sts/DAToken;Ljava/util/Date;Ljava/security/SecureRandom;Lcom/microsoft/onlineid/sts/SharedKeyGenerator;)V
    .locals 0
    .param p1, "mockDAToken"    # Lcom/microsoft/onlineid/sts/DAToken;
    .param p2, "currentServerTime"    # Ljava/util/Date;
    .param p3, "mockSecureRandom"    # Ljava/security/SecureRandom;
    .param p4, "mockSharedKeyGenerator"    # Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    .line 62
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_currentServerTime:Ljava/util/Date;

    .line 63
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_secureRandom:Ljava/security/SecureRandom;

    .line 64
    iput-object p4, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_sharedKeyGenerator:Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/microsoft/onlineid/sts/DAToken;)V
    .locals 2
    .param p1, "currentServerTime"    # Ljava/util/Date;
    .param p2, "token"    # Lcom/microsoft/onlineid/sts/DAToken;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    .line 47
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_currentServerTime:Ljava/util/Date;

    .line 48
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_secureRandom:Ljava/security/SecureRandom;

    .line 49
    new-instance v0, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    invoke-virtual {p2}, Lcom/microsoft/onlineid/sts/DAToken;->getSessionKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;-><init>([B)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_sharedKeyGenerator:Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    .line 50
    return-void
.end method


# virtual methods
.method public generateOneTimeSignedCredential(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    .line 90
    const/16 v6, 0x20

    new-array v4, v6, [B

    .line 91
    .local v4, "nonce":[B
    iget-object v6, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 94
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "ct"

    iget-object v8, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_currentServerTime:Ljava/util/Date;

    .line 95
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "hashalg"

    const-string v8, "SHA256"

    .line 96
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "bver"

    const-string v8, "11"

    .line 97
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "appid"

    .line 98
    invoke-virtual {v6, v7, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "da"

    iget-object v8, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    .line 99
    invoke-virtual {v8}, Lcom/microsoft/onlineid/sts/DAToken;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "nonce"

    .line 100
    invoke-static {v4, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 103
    .local v5, "signedOneTimeCredential":Landroid/net/Uri$Builder;
    iget-object v6, p0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->_sharedKeyGenerator:Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    sget-object v7, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->CredentialSignature:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    invoke-virtual {v6, v7, v4}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->generateKey(Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;[B)[B

    move-result-object v1

    .line 104
    .local v1, "derivedKeyBytes":[B
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "HmacSHA256"

    invoke-direct {v0, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 107
    .local v0, "derivedKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0}, Lcom/microsoft/onlineid/sts/Cryptography;->getInitializedHmacSha256Digester(Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 110
    .local v3, "hmac":Ljavax/crypto/Mac;
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 113
    .local v2, "hash":[B
    const-string v6, "hash"

    .line 114
    invoke-static {v2, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 115
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 116
    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v6

    .line 113
    return-object v6
.end method
