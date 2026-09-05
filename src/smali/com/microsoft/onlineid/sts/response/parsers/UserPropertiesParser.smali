.class public Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "UserPropertiesParser.java"


# instance fields
.field private final _userProperties:Lcom/microsoft/onlineid/sts/UserProperties;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 28
    const-string v0, "http://schemas.microsoft.com/Passport/SoapServices/SOAPFault"

    const-string v1, "credProperties"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/microsoft/onlineid/sts/UserProperties;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/UserProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    .line 30
    return-void
.end method


# virtual methods
.method public getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->verifyParseCalled()V

    .line 75
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    return-object v0
.end method

.method protected onParse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->nextStartTagNoThrow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, ""

    const-string v5, "Name"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->skipElement()V

    goto :goto_0

    .line 56
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->valueOf(Ljava/lang/String;)Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    .local v0, "credProperty":Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/microsoft/onlineid/sts/UserProperties;->put(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;Ljava/lang/String;)Lcom/microsoft/onlineid/sts/UserProperties;

    goto :goto_0

    .line 58
    .end local v0    # "credProperty":Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->skipElement()V

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method
