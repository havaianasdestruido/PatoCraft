.class public Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "TokenCollectionParser.java"


# instance fields
.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _ticket:Lcom/microsoft/onlineid/Ticket;

.field private _ticketError:Lcom/microsoft/onlineid/sts/StsError;

.field private _ticketInlineAuthUrl:Ljava/lang/String;

.field private final _ticketScope:Lcom/microsoft/onlineid/ISecurityScope;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "ticketScope"    # Lcom/microsoft/onlineid/ISecurityScope;

    .prologue
    .line 41
    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestSecurityTokenResponseCollection"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    .line 43
    return-void
.end method


# virtual methods
.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->verifyParseCalled()V

    .line 112
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->verifyParseCalled()V

    .line 121
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    return-object v0
.end method

.method public getTicketError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->verifyParseCalled()V

    .line 130
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getTicketInlineAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->verifyParseCalled()V

    .line 139
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketInlineAuthUrl:Ljava/lang/String;

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    :cond_0
    :goto_0
    const-string v1, "wst:RequestSecurityTokenResponse"

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    sget-object v5, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ServiceRequest:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    invoke-direct {v0, v1, v4, v5}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V

    .line 67
    .local v0, "parser":Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->parse()V

    .line 69
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 74
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getDAToken()Lcom/microsoft/onlineid/sts/DAToken;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 82
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicketError()Lcom/microsoft/onlineid/sts/StsError;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    .line 83
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicketInlineAuthUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketInlineAuthUrl:Ljava/lang/String;

    .line 86
    :cond_2
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    if-nez v1, :cond_5

    move v1, v2

    :goto_3
    invoke-static {v1}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 91
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getTicket()Lcom/microsoft/onlineid/Ticket;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 72
    goto :goto_1

    :cond_4
    move v1, v3

    .line 80
    goto :goto_2

    :cond_5
    move v1, v3

    .line 89
    goto :goto_3

    .line 99
    .end local v0    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;
    :cond_6
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenCollectionParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    if-nez v1, :cond_7

    .line 101
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v2, "No ticket or ticket error found."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 104
    :cond_7
    return-void
.end method
