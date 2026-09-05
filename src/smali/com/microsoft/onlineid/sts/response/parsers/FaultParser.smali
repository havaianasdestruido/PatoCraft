.class public Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "FaultParser.java"


# instance fields
.field private _error:Lcom/microsoft/onlineid/sts/StsError;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 28
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Fault"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->verifyParseCalled()V

    .line 103
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method protected onParse()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 39
    const-string v7, "S:Detail"

    invoke-virtual {p0, v7}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->nextStartTag(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    .line 42
    .local v0, "detailScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    const-string v7, "psf:error"

    invoke-virtual {v0, v7}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "errorCode":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 46
    .local v4, "internalError":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 48
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v3

    .line 49
    .local v3, "errorScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "tag":Ljava/lang/String;
    const-string v7, "psf:value"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_1
    const-string v7, "psf:internalerror"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 58
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v5

    .line 59
    .local v5, "internalErrorScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :goto_1
    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v6

    .line 62
    const-string v7, "psf:code"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 66
    :cond_2
    const-string v7, "psf:text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 68
    iget-object v7, p0, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->skipElement()V

    goto :goto_1

    .line 78
    .end local v5    # "internalErrorScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->skipElement()V

    goto :goto_0

    .line 82
    .end local v6    # "tag":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    .line 84
    if-nez v1, :cond_6

    .line 86
    new-instance v7, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v8, "psf:value node does not exist."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 89
    :cond_6
    if-nez v4, :cond_7

    .line 91
    new-instance v7, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v8, "psf:code node does not exist."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 94
    :cond_7
    new-instance v7, Lcom/microsoft/onlineid/sts/StsError;

    new-instance v8, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v8, v9, v10, v2}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(IILjava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/microsoft/onlineid/sts/StsError;-><init>(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)V

    iput-object v7, p0, Lcom/microsoft/onlineid/sts/response/parsers/FaultParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    .line 95
    return-void
.end method
