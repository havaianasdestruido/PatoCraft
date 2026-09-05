.class public Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "ServiceHeaderParser.java"


# instance fields
.field private _encKeyNonce:[B

.field private _encryptedHeader:Ljava/lang/String;

.field private _expires:Ljava/util/Date;

.field private _passportParser:Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

.field private final _validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "validator"    # Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    .prologue
    .line 46
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Header"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    .line 48
    return-void
.end method


# virtual methods
.method public getEncKeyNonce()[B
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->verifyParseCalled()V

    .line 117
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_encKeyNonce:[B

    return-object v0
.end method

.method public getEncryptedHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->verifyParseCalled()V

    .line 135
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_encryptedHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportParser()Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->verifyParseCalled()V

    .line 126
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_passportParser:Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    return-object v0
.end method

.method public getResponseExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->verifyParseCalled()V

    .line 108
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_expires:Ljava/util/Date;

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
    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->nextStartTagNoThrow()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 60
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "tag":Ljava/lang/String;
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v6, "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"

    const-string v7, "Id"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "id":Ljava/lang/String;
    const-string v5, "wsse:Security"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    new-instance v2, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-direct {v2, v5, v6}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V

    .line 66
    .local v2, "parser":Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->parse()V

    .line 68
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->getResponseExpiry()Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_expires:Ljava/util/Date;

    .line 69
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;->getEncKeyNonce()[B

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_encKeyNonce:[B

    goto :goto_0

    .line 71
    .end local v2    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/SecurityParser;
    :cond_0
    const-string v5, "psf:pp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    new-instance v5, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v5, v6}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_passportParser:Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    .line 74
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_passportParser:Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->parse()V

    goto :goto_0

    .line 76
    :cond_1
    const-string v5, "psf:EncryptedPP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    .line 79
    .local v0, "encryptedPPScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    const-string v5, "EncryptedData"

    invoke-virtual {v0, v5}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    .line 81
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-virtual {v5, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 83
    .local v3, "subParser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    new-instance v2, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 84
    .local v2, "parser":Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->parse()V

    .line 86
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->getCipherValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_encryptedHeader:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    goto :goto_0

    .line 81
    .end local v2    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
    .end local v3    # "subParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    goto :goto_1

    .line 90
    .end local v0    # "encryptedPPScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :cond_3
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    if-eqz v5, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 93
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->_validator:Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    invoke-virtual {v5, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;

    goto/16 :goto_0

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->skipElement()V

    goto/16 :goto_0

    .line 100
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_5
    return-void
.end method
