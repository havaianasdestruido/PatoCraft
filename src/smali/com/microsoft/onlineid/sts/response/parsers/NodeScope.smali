.class Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
.super Ljava/lang/Object;
.source "NodeScope.java"


# instance fields
.field private final _depth:I

.field private final _parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    iput v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_depth:I

    .line 34
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method getDepth()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_depth:I

    return v0
.end method

.method hasMore()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 59
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    :pswitch_1
    return v0

    .line 51
    :pswitch_2
    iget v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_depth:I

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method nextRequiredText()Ljava/lang/String;
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

    .line 179
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "innerText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    new-instance v2, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Expected text of %s is empty"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 187
    :cond_0
    return-object v0
.end method

.method nextStartTag(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefixedTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v1, "Required node \"%s\" is missing."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 167
    :cond_0
    return-void
.end method

.method nextStartTagNoThrow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextStartTagNoThrow(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefixedTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 150
    :goto_1
    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->skipElement()V

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected skipElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 91
    .local v1, "startDepth":I
    iget v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_depth:I

    if-ne v1, v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    .line 104
    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 100
    .local v0, "eventType":I
    :goto_0
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method
