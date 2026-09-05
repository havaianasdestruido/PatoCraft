.class public Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "DeviceAuthResponseParser.java"


# instance fields
.field private _authState:I

.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private _configVersion:Ljava/lang/String;

.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _error:Lcom/microsoft/onlineid/sts/StsError;

.field private _expires:Ljava/util/Date;

.field private _reqStatus:I


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "clockSkewManager"    # Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .prologue
    .line 37
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Envelope"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 39
    return-void
.end method


# virtual methods
.method public getAuthState()I
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->verifyParseCalled()V

    .line 144
    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_authState:I

    return v0
.end method

.method public getConfigVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->verifyParseCalled()V

    .line 117
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_configVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->verifyParseCalled()V

    .line 126
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->verifyParseCalled()V

    .line 135
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getReqStatus()I
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->verifyParseCalled()V

    .line 153
    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_reqStatus:I

    return v0
.end method

.method getResponseExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->verifyParseCalled()V

    .line 108
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method protected onParse()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->nextStartTagNoThrow()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "S:Header"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v1, v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 55
    .local v1, "parser":Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->parse()V

    .line 57
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getResponseExpiry()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    .line 59
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getPassportParser()Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    move-result-object v2

    .line 60
    .local v2, "passportParser":Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    if-nez v2, :cond_0

    .line 62
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v5, "Missing passport node in device auth response."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 65
    :cond_0
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getAuthState()I

    move-result v4

    iput v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_authState:I

    .line 66
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getReqStatus()I

    move-result v4

    iput v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_reqStatus:I

    .line 67
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getConfigVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_configVersion:Ljava/lang/String;

    goto :goto_0

    .line 69
    .end local v1    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;
    .end local v2    # "passportParser":Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    :cond_1
    const-string v4, "S:Body"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v1, v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 72
    .local v1, "parser":Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->parse()V

    .line 74
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    .line 75
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    goto :goto_0

    .line 79
    .end local v1    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->skipElement()V

    goto :goto_0

    .line 84
    .end local v3    # "tag":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    if-nez v4, :cond_4

    .line 86
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v5, "S:Header tag not found"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 89
    :cond_4
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    if-nez v4, :cond_5

    .line 91
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v5, "S:Body tag not found"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 94
    :cond_5
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v0

    .line 95
    .local v0, "currentTime":Ljava/util/Date;
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v5, "Response is expired. Current time: %s Expiry Time: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->_expires:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 100
    :cond_6
    return-void
.end method
