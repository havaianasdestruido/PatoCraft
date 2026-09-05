.class public Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;
.super Ljava/lang/Object;
.source "SignatureValidator.java"


# instance fields
.field private final _computedDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _parsedDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _sessionKey:[B

.field private _signKeyNonce:[B

.field private _signatureValue:Ljava/lang/String;

.field private _signedInfoXml:Ljava/lang/String;

.field private final _signer:Lcom/microsoft/onlineid/sts/XmlSigner;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "sessionKey"    # [B

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_sessionKey:[B

    .line 46
    new-instance v0, Lcom/microsoft/onlineid/sts/XmlSigner;

    invoke-direct {v0}, Lcom/microsoft/onlineid/sts/XmlSigner;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_computedDigests:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;
    .param p1, "x1"    # Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->parseSignedInfoNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    return-object v0
.end method

.method private parseSignedInfoNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
    .locals 4
    .param p1, "parser"    # Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->readRawOuterXml()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    .line 141
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 142
    .local v0, "subParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 144
    new-instance v1, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;

    const/4 v2, 0x0

    const-string v3, "SignedInfo"

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;-><init>(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$2;->parse()V

    .line 177
    return-void
.end method


# virtual methods
.method public canValidate()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_sessionKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signKeyNonce:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeNodeDigest(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 7
    .param p1, "parser"    # Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/microsoft/onlineid/sts/exception/StsParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 65
    iget-object v2, p1, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 66
    .local v2, "subParser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x2

    invoke-interface {v2, v4, v5, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "Id"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->readRawOuterXml()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "xml":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    invoke-virtual {v4, v3}, Lcom/microsoft/onlineid/sts/XmlSigner;->computeDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "digest":Ljava/lang/String;
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_computedDigests:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    new-instance v4, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate element for Id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_computedDigests:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 82
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 84
    .end local v0    # "digest":Ljava/lang/String;
    .end local v3    # "xml":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public parseSignatureNode(Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;)V
    .locals 4
    .param p1, "parser"    # Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsParseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;

    iget-object v1, p1, Lcom/microsoft/onlineid/sts/response/parsers/BasePullParser;->_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://www.w3.org/2000/09/xmldsig#"

    const-string v3, "Signature"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;-><init>(Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator$1;->parse()V

    .line 127
    return-void
.end method

.method public setSignKeyNonce([B)V
    .locals 0
    .param p1, "signKeyNonce"    # [B

    .prologue
    .line 186
    iput-object p1, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signKeyNonce:[B

    .line 187
    return-void
.end method

.method public validate()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/onlineid/sts/exception/StsSignatureException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 212
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_computedDigests:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "digest":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Digest mismatch: id=\"%s\", expected=\"%s\", actual=\"%s\""

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    .line 220
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 232
    .end local v0    # "digest":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 234
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to compute digests for element ids "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_parsedDigests:Ljava/util/Map;

    .line 235
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v4, "<SignedInfo> node was missing."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 244
    :cond_3
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signKeyNonce:[B

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signKeyNonce:[B

    array-length v3, v3

    if-nez v3, :cond_5

    .line 246
    :cond_4
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    const-string v4, "SignKey nonce was missing or invalid."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 250
    :cond_5
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signer:Lcom/microsoft/onlineid/sts/XmlSigner;

    iget-object v4, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_sessionKey:[B

    iget-object v5, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signKeyNonce:[B

    iget-object v6, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signedInfoXml:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/microsoft/onlineid/sts/XmlSigner;->computeSignatureForResponse([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "signature":Ljava/lang/String;
    iget-object v3, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 253
    new-instance v3, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Signature mismatch: expected=\"%s\", actual=\"%s\""

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/microsoft/onlineid/sts/response/parsers/SignatureValidator;->_signatureValue:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/microsoft/onlineid/sts/exception/StsSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 259
    :cond_6
    return-void
.end method
