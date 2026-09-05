.class public Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "NgcSecurityTokenParser.java"


# instance fields
.field private _tokenBlob:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 41
    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestedSecurityToken"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getTokenBlob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->verifyParseCalled()V

    .line 63
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    return-object v0
.end method

.method protected onParse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v1, "EncryptedData"

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->nextStartTag(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 53
    .local v0, "esnParser":Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->parse()V

    .line 54
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->getCipherValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->_tokenBlob:Ljava/lang/String;

    .line 55
    return-void
.end method
