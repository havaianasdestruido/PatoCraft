.class public Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "DerivedKeyTokenParser.java"


# instance fields
.field private _nonce:[B


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 26
    const-string v0, "http://schemas.xmlsoap.org/ws/2005/02/sc"

    const-string v1, "DerivedKeyToken"

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getNonce()[B
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->verifyParseCalled()V

    .line 48
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->_nonce:[B

    return-object v0
.end method

.method protected onParse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "wssc:Nonce"

    invoke-virtual {p0, v0}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->nextStartTag(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/onlineid/sts/response/parsers/TextParsers;->parseBase64(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/DerivedKeyTokenParser;->_nonce:[B

    .line 40
    return-void
.end method
