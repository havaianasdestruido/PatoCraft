.class public Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "ProofTokenParser.java"


# instance fields
.field private _sessionKey:[B


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 30
    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestedProofToken"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getSessionKey()[B
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->verifyParseCalled()V

    .line 79
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    return-object v0
.end method

.method protected onParse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->nextStartTagNoThrow()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "prefixedTagName":Ljava/lang/String;
    const-string v2, "EncryptedKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v5, "EncryptedKey"

    invoke-direct {v0, v2, v5}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 47
    .local v0, "esnParser":Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->parse()V

    .line 55
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    const-string v5, "Only one of EncryptedKey or wst:BinarySecret is expected"

    invoke-static {v2, v5}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    goto :goto_0

    :cond_0
    move v2, v4

    .line 55
    goto :goto_1

    .line 58
    .end local v0    # "esnParser":Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
    :cond_1
    const-string v2, "wst:BinarySecret"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    const-string v5, "Only one of EncryptedKey or wst:BinarySecret is expected"

    invoke-static {v2, v5}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseBase64(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->_sessionKey:[B

    goto :goto_0

    :cond_2
    move v2, v4

    .line 62
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->skipElement()V

    goto :goto_0

    .line 70
    .end local v1    # "prefixedTagName":Ljava/lang/String;
    :cond_4
    return-void
.end method
