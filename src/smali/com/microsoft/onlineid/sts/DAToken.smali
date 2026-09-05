.class public Lcom/microsoft/onlineid/sts/DAToken;
.super Ljava/lang/Object;
.source "DAToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Scope:Lcom/microsoft/onlineid/ISecurityScope;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _sessionKey:[B

.field private final _token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/microsoft/onlineid/sts/DAToken$1;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/DAToken$1;-><init>()V

    sput-object v0, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "sessionKey"    # [B

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/microsoft/onlineid/internal/Strings;->verifyArgumentNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "sessionKey"

    invoke-static {p2, v0}, Lcom/microsoft/onlineid/internal/Objects;->verifyArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lcom/microsoft/onlineid/sts/DAToken;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 111
    check-cast v0, Lcom/microsoft/onlineid/sts/DAToken;

    .line 112
    .local v0, "token":Lcom/microsoft/onlineid/sts/DAToken;
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

    iget-object v4, v0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "token":Lcom/microsoft/onlineid/sts/DAToken;
    :cond_3
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public getOneTimeSignedCredential(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "currentServerTime"    # Ljava/util/Date;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;-><init>(Ljava/util/Date;Lcom/microsoft/onlineid/sts/DAToken;)V

    .line 76
    .local v0, "signer":Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;
    invoke-virtual {v0, p2}, Lcom/microsoft/onlineid/sts/OneTimeCredentialSigner;->generateOneTimeSignedCredential(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSessionKey()[B
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/DAToken;->_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/DAToken;->_sessionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
