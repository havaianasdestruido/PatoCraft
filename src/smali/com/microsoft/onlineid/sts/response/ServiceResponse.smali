.class public Lcom/microsoft/onlineid/sts/response/ServiceResponse;
.super Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;
.source "ServiceResponse.java"


# instance fields
.field private final _clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

.field private final _decryptionSessionKey:[B

.field private _parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

.field private final _ticketScope:Lcom/microsoft/onlineid/ISecurityScope;


# direct methods
.method public constructor <init>([BLcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .locals 0
    .param p1, "sessionKey"    # [B
    .param p2, "scope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "clockSkewManager"    # Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/response/AbstractSoapResponse;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_decryptionSessionKey:[B

    .line 47
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    .line 48
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .line 49
    return-void
.end method

.method public constructor <init>([BLcom/microsoft/onlineid/sts/ClockSkewManager;)V
    .locals 1
    .param p1, "sessionKey"    # [B
    .param p2, "clockSkewManager"    # Lcom/microsoft/onlineid/sts/ClockSkewManager;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;-><init>([BLcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/ClockSkewManager;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getConfigVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    .line 149
    .local v0, "error":Lcom/microsoft/onlineid/sts/StsError;
    if-nez v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    .line 154
    :cond_0
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
    .line 129
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getFlights()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInlineAuthUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getInlineAuthUrl()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getTicketInlineAuthUrl()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    return-object v0
.end method

.method public getPuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getPuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getTicketError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v0

    return-object v0
.end method

.method public getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getUserProperties()Lcom/microsoft/onlineid/sts/UserProperties;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each response object may only parse its respone once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_decryptionSessionKey:[B

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-direct {v0, p1, v1, v2}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;[BLcom/microsoft/onlineid/ISecurityScope;)V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    .line 79
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->parse()V

    .line 81
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->validateExpirationTime()V

    .line 82
    return-void
.end method

.method protected validateExpirationTime()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_clockSkewManager:Lcom/microsoft/onlineid/sts/ClockSkewManager;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/ClockSkewManager;->getCurrentServerTime()Ljava/util/Date;

    move-result-object v0

    .line 164
    .local v0, "currentTime":Ljava/util/Date;
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/ServiceResponse;->_parser:Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;

    invoke-virtual {v2}, Lcom/microsoft/onlineid/sts/response/parsers/ServiceResponseParser;->getResponseExpiry()Ljava/util/Date;

    move-result-object v1

    .line 165
    .local v1, "expiryTime":Ljava/util/Date;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v3, "Response is expired. Current time: %s Expiry Time: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 168
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 170
    :cond_0
    return-void
.end method
