.class public Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "DeviceProvisionResponseParser.java"


# instance fields
.field private _error:Lcom/microsoft/onlineid/sts/StsError;

.field private _puid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 28
    const-string v0, ""

    const-string v1, "DeviceAddResponse"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->verifyParseCalled()V

    .line 69
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->verifyParseCalled()V

    .line 60
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_puid:Ljava/lang/String;

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
    .line 39
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, ""

    const-string v4, "Success"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "success":Ljava/lang/String;
    const-string v2, "true"

    invoke-static {v1, v2}, Lcom/microsoft/onlineid/internal/Strings;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "puid"

    invoke-virtual {p0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->nextStartTag(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_puid:Ljava/lang/String;

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 48
    .local v0, "parser":Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->parse()V

    .line 50
    new-instance v2, Lcom/microsoft/onlineid/sts/StsError;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->getError()Lcom/microsoft/onlineid/sts/StringCodeServerError;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/onlineid/sts/StsError;-><init>(Lcom/microsoft/onlineid/sts/StringCodeServerError;)V

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    goto :goto_0
.end method
