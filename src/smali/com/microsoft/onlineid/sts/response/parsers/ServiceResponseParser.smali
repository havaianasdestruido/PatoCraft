.class public Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "ServiceResponseParser.java"


# instance fields
.field private _authState:I

.field private _configVersion:Ljava/lang/String;

.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _encKeyNonce:[B

.field private _error:Lcom/microsoft/onlineid/sts/StsError;

.field private _expires:Ljava/util/Date;

.field private _flights:Ljava/util/Set;
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

.field private _puid:Ljava/lang/String;

.field private _reqStatus:I

.field private final _sessionKey:[B

.field private _ticket:Lcom/microsoft/onlineid/Ticket;

.field private _ticketError:Lcom/microsoft/onlineid/sts/StsError;

.field private _ticketInlineAuthUrl:Ljava/lang/String;

.field private final _ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

.field private _userProperties:Lcom/microsoft/onlineid/sts/UserProperties;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;[B)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "sessionKey"    # [B

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;[BLcom/microsoft/onlineid/ISecurityScope;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;[BLcom/microsoft/onlineid/ISecurityScope;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "sessionKey"    # [B
    .param p3, "ticketScope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 72
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Envelope"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_sessionKey:[B

    .line 75
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    .line 76
    return-void
.end method

.method private decryptEncryptedBlob(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "encryptedBlob"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p1}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 234
    .local v2, "encryptedBlobBytes":[B
    new-instance v3, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_sessionKey:[B

    invoke-direct {v3, v4}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;-><init>([B)V

    sget-object v4, Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;->STSDigest:Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_encKeyNonce:[B

    invoke-virtual {v3, v4, v5}, Lcom/microsoft/onlineid/sts/SharedKeyGenerator;->generateKey(Lcom/microsoft/onlineid/sts/SharedKeyGenerator$KeyPurpose;[B)[B

    move-result-object v0

    .line 238
    .local v0, "derivedKey":[B
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 239
    invoke-static {v2, v0}, Lcom/microsoft/onlineid/sts/Cryptography;->decryptWithAesCbcPcs5PaddingCipher([B[B)[B

    move-result-object v4

    sget-object v5, Lcom/microsoft/onlineid/internal/Strings;->Utf8Charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    return-object v3

    .line 242
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v3, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 251
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v3, v1}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private parseAndSaveFromPassport(Ljava/lang/String;)V
    .locals 3
    .param p1, "pp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 174
    .local v1, "underlyingParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 176
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 177
    .local v0, "parser":Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->parse()V

    .line 179
    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->saveFromPassport(Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;)V

    .line 180
    return-void
.end method

.method private parseAndSaveFromTokenCollection(Ljava/lang/String;)V
    .locals 3
    .param p1, "responseTokenCollection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 214
    .local v1, "underlyingParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 216
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;)V

    .line 217
    .local v0, "tokenCollectionParser":Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->parse()V

    .line 219
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    .line 220
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    .line 221
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    .line 222
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->getTicketInlineAuthUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketInlineAuthUrl:Ljava/lang/String;

    .line 223
    return-void
.end method

.method private saveFromPassport(Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;)V
    .locals 3
    .param p1, "parser"    # Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getAuthState()I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_authState:I

    .line 190
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getReqStatus()I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_reqStatus:I

    .line 191
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getInlineAuthUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_inlineAuthUrl:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_configVersion:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getPuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_puid:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    .line 195
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getFlights()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_flights:Ljava/util/Set;

    .line 198
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    sget-object v1, Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;->CID:Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/UserProperties;->get(Lcom/microsoft/onlineid/sts/UserProperties$UserProperty;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v1, "CID not found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthState()I
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 341
    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_authState:I

    return v0
.end method

.method public getConfigVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 295
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_configVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 304
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getEncKeyNonce()[B
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 268
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_encKeyNonce:[B

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 332
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

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
    .line 386
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 387
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_flights:Ljava/util/Set;

    return-object v0
.end method

.method public getInlineAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 359
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_inlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 286
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_puid:Ljava/lang/String;

    return-object v0
.end method

.method public getReqStatus()I
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 350
    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_reqStatus:I

    return v0
.end method

.method public getResponseExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 314
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_expires:Ljava/util/Date;

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 277
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    return-object v0
.end method

.method public getTicketError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 368
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getTicketInlineAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 378
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_ticketInlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->verifyParseCalled()V

    .line 323
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_userProperties:Lcom/microsoft/onlineid/sts/UserProperties;

    return-object v0
.end method

.method protected onParse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v7, 0x0

    .line 98
    .local v7, "unencryptedPassportParser":Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    const/4 v3, 0x0

    .line 99
    .local v3, "encryptedHeader":Ljava/lang/String;
    const/4 v2, 0x0

    .line 101
    .local v2, "encryptedBody":Ljava/lang/String;
    new-instance v8, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    iget-object v9, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_sessionKey:[B

    invoke-direct {v8, v9}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;-><init>([B)V

    .line 103
    .local v8, "validator":Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->nextStartTagNoThrow()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "tag":Ljava/lang/String;
    const-string v9, "S:Header"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 109
    new-instance v4, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;

    iget-object v9, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v4, v9, v8}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)V

    .line 110
    .local v4, "parser":Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->parse()V

    .line 112
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getResponseExpiry()Ljava/util/Date;

    move-result-object v9

    iput-object v9, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_expires:Ljava/util/Date;

    .line 113
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getEncKeyNonce()[B

    move-result-object v9

    iput-object v9, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_encKeyNonce:[B

    .line 117
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getPassportParser()Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    move-result-object v7

    .line 119
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;->getEncryptedHeader()Ljava/lang/String;

    move-result-object v3

    .line 120
    goto :goto_0

    .line 121
    .end local v4    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/ServiceHeaderParser;
    :cond_0
    const-string v9, "S:Body"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 123
    invoke-virtual {v8, p0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 125
    .local v5, "subParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;

    invoke-direct {v4, v5}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 126
    .local v4, "parser":Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->parse()V

    .line 128
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v9

    iput-object v9, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    .line 129
    invoke-virtual {v4}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;->getEncryptedBody()Ljava/lang/String;

    move-result-object v2

    .line 130
    goto :goto_0

    .line 133
    .end local v4    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/ServiceBodyParser;
    .end local v5    # "subParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->skipElement()V

    goto :goto_0

    .line 139
    .end local v6    # "tag":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_encKeyNonce:[B

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->canValidate()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 141
    :cond_3
    invoke-virtual {v8}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->validate()V

    .line 145
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 148
    invoke-direct {p0, v3}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->decryptEncryptedBlob(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "decryptedHeader":Ljava/lang/String;
    new-instance v9, Lcom/microsoft/onlineid/internal/log/RedactableResponse;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrypted service response header: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/microsoft/onlineid/internal/log/RedactableResponse;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V

    .line 150
    invoke-direct {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->parseAndSaveFromPassport(Ljava/lang/String;)V

    .line 158
    .end local v1    # "decryptedHeader":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->_error:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v9, :cond_6

    .line 160
    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->decryptEncryptedBlob(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "decryptedBody":Ljava/lang/String;
    new-instance v9, Lcom/microsoft/onlineid/internal/log/RedactableResponse;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrypted service response body: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/microsoft/onlineid/internal/log/RedactableResponse;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/microsoft/onlineid/internal/log/Logger;->info(Lcom/microsoft/onlineid/internal/log/IRedactable;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->parseAndSaveFromTokenCollection(Ljava/lang/String;)V

    .line 164
    .end local v0    # "decryptedBody":Ljava/lang/String;
    :cond_6
    return-void

    .line 152
    :cond_7
    if-eqz v7, :cond_5

    .line 155
    invoke-direct {p0, v7}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->saveFromPassport(Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;)V

    goto :goto_1
.end method
