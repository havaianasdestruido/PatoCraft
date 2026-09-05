.class public Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "TokenParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;
    }
.end annotation


# instance fields
.field private _daToken:Lcom/microsoft/onlineid/sts/DAToken;

.field private _inlineAuthUrl:Ljava/lang/String;

.field private final _securityTokenMode:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

.field private _ticket:Lcom/microsoft/onlineid/Ticket;

.field private _ticketError:Lcom/microsoft/onlineid/sts/StsError;

.field private final _ticketScope:Lcom/microsoft/onlineid/ISecurityScope;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "ticketScope"    # Lcom/microsoft/onlineid/ISecurityScope;
    .param p3, "securityTokenParseMode"    # Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    .prologue
    .line 81
    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/trust"

    const-string v1, "RequestSecurityTokenResponse"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    .line 83
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_securityTokenMode:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V
    .locals 1
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "securityTokenParseMode"    # Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lcom/microsoft/onlineid/ISecurityScope;Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getDAToken()Lcom/microsoft/onlineid/sts/DAToken;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->verifyParseCalled()V

    .line 203
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    return-object v0
.end method

.method public getTicket()Lcom/microsoft/onlineid/Ticket;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->verifyParseCalled()V

    .line 212
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticket:Lcom/microsoft/onlineid/Ticket;

    return-object v0
.end method

.method public getTicketError()Lcom/microsoft/onlineid/sts/StsError;
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->verifyParseCalled()V

    .line 221
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    return-object v0
.end method

.method public getTicketInlineAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->verifyParseCalled()V

    .line 230
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_inlineAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onParse()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v14, 0x0

    .line 95
    .local v14, "tokenType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 96
    .local v11, "target":Ljava/lang/String;
    const/4 v13, 0x0

    .line 97
    .local v13, "tokenBlob":Ljava/lang/String;
    const/4 v9, 0x0

    .line 98
    .local v9, "sessionKey":[B
    const/4 v4, 0x0

    .line 100
    .local v4, "expires":Ljava/util/Date;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->nextStartTagNoThrow()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "tag":Ljava/lang/String;
    const-string v15, "wst:TokenType"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 107
    :cond_0
    const-string v15, "wsp:AppliesTo"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v1

    .line 110
    .local v1, "appliesToScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    const-string v15, "wsa:EndpointReference"

    invoke-virtual {v1, v15}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v3

    .line 113
    .local v3, "endpointReferenceScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    const-string v15, "wsa:Address"

    invoke-virtual {v3, v15}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v11

    .line 117
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    goto :goto_0

    .line 119
    .end local v1    # "appliesToScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    .end local v3    # "endpointReferenceScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :cond_1
    const-string v15, "wst:Lifetime"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 121
    new-instance v12, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v12, v15}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 122
    .local v12, "timeParser":Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;
    invoke-virtual {v12}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->parse()V

    .line 124
    invoke-virtual {v12}, Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;->getExpires()Ljava/util/Date;

    move-result-object v4

    .line 125
    goto :goto_0

    .line 126
    .end local v12    # "timeParser":Lcom/microsoft/onlineid/sts/response/parsers/TimeListParser;
    :cond_2
    const-string v15, "wst:RequestedSecurityToken"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 130
    sget-object v15, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$1;->$SwitchMap$com$microsoft$onlineid$sts$response$parsers$TokenParser$SecurityTokenMode:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_securityTokenMode:Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser$SecurityTokenMode;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    new-instance v8, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v8, v15}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 135
    .local v8, "securityTokenParser":Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;
    invoke-virtual {v8}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->parse()V

    .line 136
    invoke-virtual {v8}, Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;->getTokenBlob()Ljava/lang/String;

    move-result-object v13

    .line 137
    goto :goto_0

    .line 140
    .end local v8    # "securityTokenParser":Lcom/microsoft/onlineid/sts/response/parsers/SecurityTokenParser;
    :pswitch_1
    new-instance v5, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v5, v15}, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 142
    .local v5, "ngcSecurityTokenParser":Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;
    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->parse()V

    .line 143
    invoke-virtual {v5}, Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;->getTokenBlob()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 147
    .end local v5    # "ngcSecurityTokenParser":Lcom/microsoft/onlineid/sts/response/parsers/NgcSecurityTokenParser;
    :cond_3
    const-string v15, "wst:RequestedProofToken"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 149
    new-instance v7, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v7, v15}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 150
    .local v7, "ptParser":Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;
    invoke-virtual {v7}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->parse()V

    .line 151
    invoke-virtual {v7}, Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;->getSessionKey()[B

    move-result-object v9

    .line 152
    goto/16 :goto_0

    .line 153
    .end local v7    # "ptParser":Lcom/microsoft/onlineid/sts/response/parsers/ProofTokenParser;
    :cond_4
    const-string v15, "psf:pp"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 155
    new-instance v6, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v6, v15}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 156
    .local v6, "parser":Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    invoke-virtual {v6}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->parse()V

    .line 158
    new-instance v15, Lcom/microsoft/onlineid/sts/StsError;

    new-instance v16, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;

    invoke-virtual {v6}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getReqStatus()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Lcom/microsoft/onlineid/sts/IntegerCodeServerError;-><init>(I)V

    invoke-direct/range {v15 .. v16}, Lcom/microsoft/onlineid/sts/StsError;-><init>(Lcom/microsoft/onlineid/sts/IntegerCodeServerError;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    .line 159
    invoke-virtual {v6}, Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;->getInlineAuthUrl()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_inlineAuthUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 163
    .end local v6    # "parser":Lcom/microsoft/onlineid/sts/response/parsers/PassportParser;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->skipElement()V

    goto/16 :goto_0

    .line 168
    .end local v10    # "tag":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v15, :cond_7

    if-nez v14, :cond_7

    .line 170
    new-instance v15, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v16, "wst:TokenType node is missing"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v15

    .line 175
    :cond_7
    :try_start_0
    const-string v15, "urn:passport:legacy"

    invoke-static {v14, v15}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    if-eqz v9, :cond_9

    .line 177
    sget-object v15, Lcom/microsoft/onlineid/sts/DAToken;->Scope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-interface {v15}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v15}, Lcom/microsoft/onlineid/internal/Assertion;->check(Z)V

    .line 178
    new-instance v15, Lcom/microsoft/onlineid/sts/DAToken;

    invoke-direct {v15, v13, v9}, Lcom/microsoft/onlineid/sts/DAToken;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_daToken:Lcom/microsoft/onlineid/sts/DAToken;

    .line 195
    :cond_8
    :goto_1
    return-void

    .line 180
    :cond_9
    const-string v15, "urn:passport:compact"

    invoke-static {v14, v15}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, "urn:passport:loginprooftoken"

    .line 181
    invoke-static {v14, v15}, Lcom/microsoft/onlineid/internal/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 183
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketError:Lcom/microsoft/onlineid/sts/StsError;

    if-nez v15, :cond_8

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    invoke-interface {v15}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Expected returned target "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to equal requested target "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    move-object/from16 v17, v0

    .line 186
    invoke-interface/range {v17 .. v17}, Lcom/microsoft/onlineid/ISecurityScope;->getTarget()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 185
    invoke-static/range {v15 .. v16}, Lcom/microsoft/onlineid/internal/Assertion;->check(ZLjava/lang/Object;)V

    .line 187
    new-instance v15, Lcom/microsoft/onlineid/Ticket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticketScope:Lcom/microsoft/onlineid/ISecurityScope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4, v13}, Lcom/microsoft/onlineid/Ticket;-><init>(Lcom/microsoft/onlineid/ISecurityScope;Ljava/util/Date;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/microsoft/onlineid/sts/response/parsers/TokenParser;->_ticket:Lcom/microsoft/onlineid/Ticket;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v15, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    invoke-direct {v15, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 185
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    const/4 v15, 0x0

    goto :goto_2

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
