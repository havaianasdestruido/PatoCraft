.class public Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "PassportParser.java"


# instance fields
.field private _authState:I

.field private _configVersion:Ljava/lang/String;

.field private final _flights:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _inlineAuthUrl:Ljava/lang/String;

.field private _nonce:Ljava/lang/String;

.field private _puid:Ljava/lang/String;

.field private _reqStatus:I

.field private _userProperties:Lcom/microsoft/onlineid/sts/UserProperties;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 35
    const/4 v0, 0x0

    const-string v1, "pp"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_flights:Ljava/util/Set;

    .line 36
    return-void
.end method


# virtual methods
.method public getAuthState()I
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->verifyParseCalled()V

    .line 100
    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_authState:I

    return v0
.end method

.method public getConfigVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->verifyParseCalled()V

    .line 136
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_configVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFlights()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->verifyParseCalled()V

    .line 163
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_flights:Ljava/util/Set;

    return-object v0
.end method

.method public getInlineAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->verifyParseCalled()V

    .line 118
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_inlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->verifyParseCalled()V

    .line 127
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->verifyParseCalled()V

    .line 145
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public getReqStatus()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->verifyParseCalled()V

    .line 109
    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_reqStatus:I

    return v0
.end method

.method public getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->verifyParseCalled()V

    .line 154
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    return-object v0
.end method

.method protected onParse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->nextStartTagNoThrow()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 46
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "psf:authstate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_authState:I

    goto :goto_0

    .line 52
    :cond_1
    const-string v4, "psf:reqstatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_reqStatus:I

    goto :goto_0

    .line 56
    :cond_2
    const-string v4, "psf:inlineauthurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_inlineAuthUrl:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_3
    const-string v4, "psf:signChallenge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_nonce:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_4
    const-string v4, "psf:configVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_configVersion:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_5
    const-string v4, "psf:PUID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 70
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_puid:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_6
    const-string v4, "psf:flights"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 74
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "flightsAsString":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 77
    .local v0, "flight":Ljava/lang/String;
    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_flights:Ljava/util/Set;

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseIntHex(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "flight":Ljava/lang/String;
    .end local v1    # "flightsAsString":[Ljava/lang/String;
    :cond_7
    const-string v4, "psf:credProperties"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 82
    new-instance v2, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v2, v4}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 83
    .local v2, "parser":Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->parse()V

    .line 85
    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;->getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;

    move-result-object v4

    iput-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    goto/16 :goto_0

    .line 89
    .end local v2    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/UserPropertiesParser;
    :cond_8
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->skipElement()V

    goto/16 :goto_0

    .line 92
    .end local v3    # "tag":Ljava/lang/String;
    :cond_9
    return-void
.end method
