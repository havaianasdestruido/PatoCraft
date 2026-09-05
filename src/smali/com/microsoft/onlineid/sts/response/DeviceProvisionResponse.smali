.class public Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;
.super Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;
.source "DeviceProvisionResponse.java"


# instance fields
.field private _parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/response/AbstractStsResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->getPuid()Ljava/lang/String;

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
    .line 27
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each response object may only parse its respone once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    invoke-direct {v0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    .line 33
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/DeviceProvisionResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/DeviceProvisionResponseParser;->parse()V

    .line 34
    return-void
.end method
