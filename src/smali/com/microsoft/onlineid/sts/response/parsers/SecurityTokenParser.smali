.class public Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "SecurityTokenParser.java"


# instance fields
.field private _tokenBlob:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 27
    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestedSecurityToken"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getTokenBlob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->verifyParseCalled()V

    .line 62
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    return-object v0
.end method

.method protected onParse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->nextStartTagNoThrow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "tagName":Ljava/lang/String;
    const-string v1, "EncryptedData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->readRawOuterXml()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move v1, v3

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    const-string v1, "wsse:BinarySecurityToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 46
    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->skipElement()V

    goto :goto_0

    .line 54
    .end local v0    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method
