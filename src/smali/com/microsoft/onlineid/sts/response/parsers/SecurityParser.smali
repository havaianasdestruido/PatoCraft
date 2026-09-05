.class public Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SecurityParser.java"


# instance fields
.field private _encKeyNonce:[B

.field private _expires:Ljava/util/Date;

.field private final _validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "validator"    # Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    .prologue
    .line 43
    const-string v0, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"

    const-string v1, "Security"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    .line 45
    return-void
.end method


# virtual methods
.method public getEncKeyNonce()[B
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->verifyParseCalled()V

    .line 114
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_encKeyNonce:[B

    return-object v0
.end method

.method public getResponseExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->verifyParseCalled()V

    .line 105
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method protected onParse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->nextStartTagNoThrow()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 57
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "tag":Ljava/lang/String;
    const-string v5, "wsu:Timestamp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-virtual {v5, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 63
    .local v3, "subParser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    new-instance v2, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    .local v2, "parser":Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->parse()V

    .line 66
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->getExpires()Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_expires:Ljava/util/Date;

    goto :goto_0

    .line 61
    .end local v2    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;
    .end local v3    # "subParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    goto :goto_1

    .line 68
    :cond_2
    const-string v5, "wssc:DerivedKeyToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v6, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

    const-string v7, "Id"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "id":Ljava/lang/String;
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v5}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 72
    .local v0, "derivedKeyTokenParser":Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->parse()V

    .line 74
    const-string v5, "EncKey"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->getNonce()[B

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_encKeyNonce:[B

    goto :goto_0

    .line 78
    :cond_3
    const-string v5, "SignKey"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->getNonce()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->setSignKeyNonce([B)V

    goto :goto_0

    .line 83
    .end local v0    # "derivedKeyTokenParser":Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;
    .end local v1    # "id":Ljava/lang/String;
    :cond_4
    const-string v5, "Signature"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v5, :cond_5

    .line 85
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-virtual {v5, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->parseSignatureNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V

    goto :goto_0

    .line 89
    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->skipElement()V

    goto/16 :goto_0

    .line 93
    .end local v4    # "tag":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->_expires:Ljava/util/Date;

    if-nez v5, :cond_7

    .line 95
    new-instance v5, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v6, "wsu:Timestamp node not found."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 97
    :cond_7
    return-void
.end method
