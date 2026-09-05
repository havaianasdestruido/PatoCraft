.class public Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "StringCodeErrorParser.java"


# instance fields
.field private _code:Ljava/lang/String;

.field private _error:Lcom/microsoft/onlineid/sts/StringCodeServerError;

.field private _subCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getError()Lcom/microsoft/onlineid/sts/StringCodeServerError;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->verifyParseCalled()V

    .line 54
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_error:Lcom/microsoft/onlineid/sts/StringCodeServerError;

    return-object v0
.end method

.method protected onParse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->nextStartTagNoThrow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "tagName":Ljava/lang/String;
    const-string v3, "Error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, ""

    const-string v5, "Code"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_code:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    const-string v3, "ErrorSubcode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "hexCode":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Integers;->parseIntHex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_subCode:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v4, "Hex error code could not be parsed: %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-direct {v3, v4, v0, v5}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v3

    .line 88
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v1    # "hexCode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->skipElement()V

    goto :goto_0

    .line 92
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_code:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 94
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v4, "Required node \"Error\" is missing or empty."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_subCode:Ljava/lang/Integer;

    if-nez v3, :cond_4

    .line 98
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v4, "Required node \"ErrorSubcode\" is missing."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 102
    :cond_4
    new-instance v3, Lcom/microsoft/onlineid/sts/StringCodeServerError;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_code:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_subCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/StringCodeServerError;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/StringCodeErrorParser;->_error:Lcom/microsoft/onlineid/sts/StringCodeServerError;

    .line 104
    return-void
.end method
