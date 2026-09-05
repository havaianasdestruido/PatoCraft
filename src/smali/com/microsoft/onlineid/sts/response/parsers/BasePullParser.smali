.class public abstract Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.super Ljava/lang/Object;
.source "BasePullParser.java"


# instance fields
.field private _parseCalled:Z

.field protected final _parser:Lorg/xmlpull/v1/XmlPullParser;

.field protected final _parserTag:Ljava/lang/String;

.field protected final _parserTagNamespace:Ljava/lang/String;

.field private final _scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "expectedNamespace"    # Ljava/lang/String;
    .param p3, "expectedTag"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parseCalled:Z

    .line 54
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 55
    iput-object p3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parserTag:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parserTagNamespace:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    .line 58
    return-void
.end method

.method private finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    .line 320
    return-void
.end method

.method private getPrefixedAttributeName(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 297
    .local v0, "eventType":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 299
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Attribute should only be retrieved on a start or end tag."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    :cond_0
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 304
    :cond_1
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid attribute location."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    :cond_2
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "name":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPrefixedNamespaceName(I)Ljava/lang/String;
    .locals 5
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 271
    .local v1, "eventType":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 273
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Namespace name should only be retrieved on a start or end tag."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 277
    .local v0, "depth":I
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v3

    if-lt p1, v3, :cond_1

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 279
    :cond_1
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid namespace location."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    :cond_2
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "prefix":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "xmlns"

    :goto_0
    return-object v3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 250
    .local v0, "eventType":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 252
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Tag name should only be retrieved on a start or end tag."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "prefix":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    .locals 2

    .prologue
    .line 343
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method protected getPrefixedTagName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasMore()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->hasMore()Z

    move-result v0

    return v0
.end method

.method protected nextRequiredText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected nextStartTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefixedTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected nextStartTagNoThrow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow()Z

    move-result v0

    return v0
.end method

.method protected nextStartTagNoThrow(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefixedTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTagNoThrow(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract onParse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation
.end method

.method public final parse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parseCalled:Z

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Parse has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/microsoft/onlineid/sts/exception/StsParseException;

    const-string v2, "XML was either invalid or failed to parse."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0, v3}, Lcom/microsoft/onlineid/sts/exception/StsParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1

    .line 78
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parseCalled:Z

    .line 80
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->getDepth()I

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parserTagNamespace:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parserTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->onParse()V

    .line 102
    invoke-direct {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->finish()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    return-void
.end method

.method protected readRawOuterXml()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x22

    const/16 v8, 0x20

    const/16 v7, 0x3e

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "contents":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v1

    .line 179
    .local v1, "currentScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 217
    :goto_1
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 184
    :pswitch_0
    const/16 v5, 0x3c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v4

    .line 187
    .local v4, "nsStart":I
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v3

    .line 188
    .local v3, "nsEnd":I
    move v2, v4

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 190
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 191
    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedNamespaceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\""

    .line 192
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 193
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 194
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 197
    :cond_0
    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 199
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 200
    invoke-direct {p0, v2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\""

    .line 201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 202
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 203
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 206
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    .end local v2    # "i":I
    .end local v3    # "nsEnd":I
    .end local v4    # "nsStart":I
    :pswitch_1
    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 214
    :pswitch_2
    const-string v5, "</"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 221
    :cond_2
    const-string v5, "</"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->getPrefixedTagName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected skipElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_scope:Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->skipElement()V

    .line 166
    return-void
.end method

.method protected verifyParseCalled()V
    .locals 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parseCalled:Z

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method without calling parse."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    return-void
.end method
