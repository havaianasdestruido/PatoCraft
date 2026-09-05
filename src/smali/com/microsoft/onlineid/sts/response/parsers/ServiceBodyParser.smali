.class public Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "ServiceBodyParser.java"


# instance fields
.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _encryptedBody:Ljava/lang/String;

.field private _error:Lcom/microsoft/onlineid/sts/StsError;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 31
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Body"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->verifyParseCalled()V

    .line 97
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getEncryptedBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->verifyParseCalled()V

    .line 88
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_encryptedBody:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->verifyParseCalled()V

    .line 79
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method protected onParse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->nextStartTagNoThrow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "S:Fault"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v3}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 48
    .local v0, "parser":Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->parse()V

    .line 50
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    goto :goto_0

    .line 52
    .end local v0    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;
    :cond_0
    const-string v3, "EncryptedData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v3}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 55
    .local v0, "parser":Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->parse()V

    .line 57
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->getCipherValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_encryptedBody:Ljava/lang/String;

    goto :goto_0

    .line 59
    .end local v0    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
    :cond_1
    const-string v3, "wst:RequestSecurityTokenResponse"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    new-instance v2, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ServiceRequest:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V

    .line 62
    .local v2, "tokenParser":Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->parse()V

    .line 64
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    goto :goto_0

    .line 68
    .end local v2    # "tokenParser":Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->skipElement()V

    goto :goto_0

    .line 71
    .end local v1    # "tag":Ljava/lang/String;
    :cond_3
    return-void
.end method
