.class public Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;
.super Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
.source "EncryptedSoapNodeParser.java"


# instance fields
.field private _cipherValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 25
    const-string v0, "EncryptedData"

    invoke-direct {p0, p1, v0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 1
    .param p1, "underlyingParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "expectedTag"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "http://www.w3.org/2001/04/xmlenc#"

    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getCipherValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->verifyParseCalled()V

    .line 58
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->_cipherValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onParse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v1, "CipherData"

    invoke-virtual {p0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->nextStartTag(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->getLocation()Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;

    move-result-object v0

    .line 45
    .local v0, "cipherDataScope":Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;
    const-string v1, "CipherValue"

    invoke-virtual {v0, v1}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->nextStartTag(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->nextRequiredText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/EncryptedSoapNodeParser;->_cipherValue:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/NodeScope;->finish()V

    .line 50
    return-void
.end method
