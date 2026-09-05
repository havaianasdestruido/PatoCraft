.class public Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;
.super Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;
.source "DeviceAuthResponse.java"


# instance fields
.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private _parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .locals 0
    .param p1, "clockSkewManager"    # Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 31
    return-void
.end method


# virtual methods
.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each response object may only parse its respone once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-direct {v0, p1, v1}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    .line 48
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceAuthResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceAuthResponseParser;->parse()V

    .line 49
    return-void
.end method
